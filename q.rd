<resource schema="sxps">
  <meta name="title">Second Swift-XRT Point Source catalog</meta>
  <meta name="creationDate">2020-02-21T21:11:03</meta>
  <meta name="description">
  Second Swift-XRT Point Source catalog.
  </meta>
  <meta name="creator.name">Evans et al. 2019</meta>

  <meta name="subject">Catalogs</meta>
  <meta name="subject">X-ray sources</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">X-ray</meta>
  </meta>

  <meta name="source">
    2019.inpress;
  </meta>

  <table id="main" onDisk="True" mixin="//scs#q3cindex" primary="ID">
    <index columns="RA,Dec"/>

    <column name="ID" type="integer"
      ucd="meta.id;meta.main"
      tablehead="ID" verbLevel="1"
      description="ID number"
      required="True"/>

    <column name="IAUName" type="text"
      ucd="meta.id.cross;meta.main"
      tablehead="name" verbLevel="1"
      description="Designation"
      required="True"/>

    <column name="RA" type="double precision"
      unit="deg" ucd="pos.eq.ra;meta.main"
      tablehead="RA" verbLevel="1"
      description="Right ascension"
      required="True"/>

    <column name="Dec" type="double precision"
      unit="deg" ucd="pos.eq.dec;meta.main"
      tablehead="Dec" verbLevel="1"
      description="Declination"
      required="True"/>

    <column name="Err90" type="real"
      unit="degree" ucd="pos.errorEllipse"
      tablehead="Err90" verbLevel="1"
      description="semi-major axis"
      required="True"/>

    <column name="Exposure" type="integer"
      unit="second" ucd="pos.posAng"
      tablehead="Exposure" verbLevel="1"
      description="Exposure time"
      required="True"/>

    <column name="FirstObsDate" type="text"
      ucd="time.start"
      tablehead="FirstObsDate" verbLevel="1"
      description="start time of the dataset"
      required="True"/>

    <column name="LastObsDate" type="text"
      ucd="time.end"
      tablehead="LastObsDate" verbLevel="1"
      description="end time of the dataset"
      required="True"/>

    <column name="Rate_band0" type="double precision"
      unit="count/s" ucd="phot.count;em.X-ray"
      tablehead="Rate_band0" verbLevel="1"
      description="Count rate between 0.3-10 keV"
      required="True"/>

    <column name="Rate_band0_pos" type="double precision"
      unit="count/s" ucd="stat.error;phot.count;em.X-ray"
      tablehead="Rate_band0_pos" verbLevel="1"
      description="Count rate upper error between 0.3-10 keV"
      required="True"/>

    <column name="Rate_band0_neg" type="double precision"
      unit="count/s" ucd="stat.error;phot.count;em.X-ray"
      tablehead="Rate_band0_neg" verbLevel="1"
      description="Count rate lower error between 0.3-10 keV"
      required="True"/>

    <column name="Rate_band1" type="double precision"
      unit="count/s" ucd="phot.count;em.X-ray.soft"
      tablehead="Rate_band1" verbLevel="1"
      description="Count rate between 0.3-1 keV"
      required="True"/>

    <column name="Rate_band1_pos" type="double precision"
      unit="count/s" ucd="stat.error;phot.count;em.X-ray.soft"
      tablehead="Rate_band1_pos" verbLevel="1"
      description="Count rate upper error between 0.3-1 keV"
      required="True"/>

    <column name="Rate_band1_neg" type="double precision"
      unit="count/s" ucd="stat.error;phot.count;em.X-ray.soft"
      tablehead="Rate_band1_neg" verbLevel="1"
      description="Count rate lower error between 0.3-1 keV"
      required="True"/>

    <column name="Rate_band2" type="double precision"
      unit="count/s" ucd="phot.count;em.X-ray.medium"
      tablehead="Rate_band2" verbLevel="1"
      description="Count rate between 1-2 keV"
      required="True"/>

    <column name="Rate_band2_pos" type="double precision"
      unit="count/s" ucd="stat.error;phot.count;em.X-ray.medium"
      tablehead="Rate_band2_pos" verbLevel="1"
      description="Count rate upper error between 1-2 keV"
      required="True"/>

    <column name="Rate_band2_neg" type="double precision"
      unit="count/s" ucd="stat.error;phot.count;em.X-ray.medium"
      tablehead="Rate_band2_neg" verbLevel="1"
      description="Count rate lower error between 1-2 keV"
      required="True"/>

    <column name="Rate_band3" type="double precision"
      unit="count/s" ucd="phot.count;em.X-ray.hard"
      tablehead="Rate_band3" verbLevel="1"
      description="Count rate between 2-10 keV"
      required="True"/>

    <column name="Rate_band3_pos" type="double precision"
      unit="count/s" ucd="stat.error;phot.count;em.X-ray.hard"
      tablehead="Rate_band3_pos" verbLevel="1"
      description="Count rate upper error between 2-10 keV"
      required="True"/>

    <column name="Rate_band3_neg" type="double precision"
      unit="count/s" ucd="stat.error;phot.count;em.X-ray.hard"
      tablehead="Rate_band3_neg" verbLevel="1"
      description="Count rate lower error between 2-10 keV"
      required="True"/>
 
  </table>

  <data id="import">
    <sources>sxps.fits</sources>

    <fitsTableGrammar/>

    <make table="main">
      <rowmaker idmaps="*"/>
    </make>
  </data>

  <service id="cone" allowed="scs.xml,form">
    <meta name="title">2SXPS catalog</meta>
    <meta name="shortName">4fgl cone</meta>
    <meta name="testQuery">
      <meta name="ra">20.02637</meta>
      <meta name="dec">21.98903</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <dbCore queriedTable="main">
      <FEED source="//scs#coreDescs"/>
    </dbCore>

    <publish render="scs.xml" sets="local"/>
    <publish render="form" sets="local"/>
    <outputTable verbLevel="20"/>
  </service>

</resource>
