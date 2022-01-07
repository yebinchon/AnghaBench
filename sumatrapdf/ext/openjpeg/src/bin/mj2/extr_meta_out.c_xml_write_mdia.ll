; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/mj2/extr_meta_out.c_xml_write_mdia.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/mj2/extr_meta_out.c_xml_write_mdia.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__*, i64 }
%struct.TYPE_7__ = type { i32*, i32* }
%struct.TYPE_6__ = type { i32* }

@.str = private unnamed_addr constant [30 x i8] c"      <Media BoxType=\22mdia\22>\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"        <MediaHeader BoxType=\22mdhd\22>\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"          <CreationTime>\0A\00", align 1
@raw = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"            <InSeconds>%u</InSeconds>\0A\00", align 1
@notes = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [74 x i8] c"            <!-- Seconds since start of Jan. 1, 1904 UTC (Greenwich) -->\0A\00", align 1
@derived = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"            <AsLocalTime>\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"</AsLocalTime>\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"          </CreationTime>\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"          <ModificationTime>\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"          </ModificationTime>\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"          <Timescale>%d</Timescale>\0A\00", align 1
@.str.11 = private unnamed_addr constant [63 x i8] c"          <!-- Timescale defines time units in one second -->\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"          <Duration>\0A\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"            <InTimeUnits>%u</InTimeUnits>\0A\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"            <InSeconds>%12.3f</InSeconds>\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"          </Duration>\0A\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"          <Language>%s</Language>\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"        </MediaHeader>\0A\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"        <HandlerReference BoxType=\22hdlr\22>\0A\00", align 1
@.str.19 = private unnamed_addr constant [68 x i8] c"          <HandlerType Code=\22vide\22>video media track</HandlerType>\0A\00", align 1
@.str.20 = private unnamed_addr constant [56 x i8] c"          <HandlerType Code=\22soun\22>Sound</HandlerType>\0A\00", align 1
@.str.21 = private unnamed_addr constant [55 x i8] c"          <HandlerType Code=\22hint\22>Hint</HandlerType>\0A\00", align 1
@.str.22 = private unnamed_addr constant [71 x i8] c"          <!-- String value shown is not actually read from file. -->\0A\00", align 1
@.str.23 = private unnamed_addr constant [60 x i8] c"          <!-- Shown value is one used for our encode. -->\0A\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"        </HandlerReference>\0A\00", align 1
@.str.25 = private unnamed_addr constant [45 x i8] c"        <MediaInfoContainer BoxType=\22minf\22>\0A\00", align 1
@.str.26 = private unnamed_addr constant [45 x i8] c"          <VideoMediaHeader BoxType=\22vmhd\22>\0A\00", align 1
@.str.27 = private unnamed_addr constant [49 x i8] c"            <GraphicsMode>0x%02x</GraphicsMode>\0A\00", align 1
@.str.28 = private unnamed_addr constant [58 x i8] c"            <!-- Enumerated values of graphics mode: -->\0A\00", align 1
@.str.29 = private unnamed_addr constant [58 x i8] c"            <!--  0x00 = copy (over existing image); -->\0A\00", align 1
@.str.30 = private unnamed_addr constant [83 x i8] c"            <!--  0x24 = transparent; 'blue-screen' this image using opcolor; -->\0A\00", align 1
@.str.31 = private unnamed_addr constant [61 x i8] c"            <!--  0x100 = alpha; alpha-blend this image -->\0A\00", align 1
@.str.32 = private unnamed_addr constant [113 x i8] c"            <!--  0x102 = pre-multiplied black alpha; image has been already been alpha-blended with black. -->\0A\00", align 1
@.str.33 = private unnamed_addr constant [104 x i8] c"            <!--  0x110 = component alpha; blend alpha channel(s) and color channels individually. -->\0A\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"            <Opcolor>\0A\00", align 1
@.str.35 = private unnamed_addr constant [33 x i8] c"              <Red>0x%02x</Red>\0A\00", align 1
@.str.36 = private unnamed_addr constant [37 x i8] c"              <Green>0x%02x</Green>\0A\00", align 1
@.str.37 = private unnamed_addr constant [35 x i8] c"              <Blue>0x%02x</Blue>\0A\00", align 1
@.str.38 = private unnamed_addr constant [24 x i8] c"            </Opcolor>\0A\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"          </VideoMediaHeader>\0A\00", align 1
@.str.40 = private unnamed_addr constant [45 x i8] c"          <SoundMediaHeader BoxType=\22smhd\22>\0A\00", align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"            <Balance>\0A\00", align 1
@.str.42 = private unnamed_addr constant [78 x i8] c"              <!-- Track audio balance fixes mono track in stereo space. -->\0A\00", align 1
@.str.43 = private unnamed_addr constant [96 x i8] c"              <!-- Stored as fixed-point binary 8.8 value. Decimal value is approximation. -->\0A\00", align 1
@.str.44 = private unnamed_addr constant [73 x i8] c"              <!-- 0.0 = center, -1.0 = full left, 1.0 = full right -->\0A\00", align 1
@.str.45 = private unnamed_addr constant [37 x i8] c"              <AsHex>0x%04x</AsHex>\0A\00", align 1
@.str.46 = private unnamed_addr constant [44 x i8] c"              <AsDecimal>%6.3f</AsDecimal>\0A\00", align 1
@.str.47 = private unnamed_addr constant [24 x i8] c"            </Balance>\0A\00", align 1
@.str.48 = private unnamed_addr constant [31 x i8] c"          </SoundMediaHeader>\0A\00", align 1
@.str.49 = private unnamed_addr constant [44 x i8] c"          <HintMediaHeader BoxType=\22hmhd\22>\0A\00", align 1
@.str.50 = private unnamed_addr constant [43 x i8] c"            <MaxPDU_Size>%d</MaxPDU_Size>\0A\00", align 1
@.str.51 = private unnamed_addr constant [72 x i8] c"            <!-- Size in bytes of largest PDU in this hint stream. -->\0A\00", align 1
@.str.52 = private unnamed_addr constant [43 x i8] c"            <AvgPDU_Size>%d</AvgPDU_Size>\0A\00", align 1
@.str.53 = private unnamed_addr constant [83 x i8] c"            <!-- Average size in bytes of a PDU over the entire presentation. -->\0A\00", align 1
@.str.54 = private unnamed_addr constant [41 x i8] c"            <MaxBitRate>%d</MaxBitRate>\0A\00", align 1
@.str.55 = private unnamed_addr constant [83 x i8] c"            <!-- Maximum rate in bits per second over any window of 1 second. -->\0A\00", align 1
@.str.56 = private unnamed_addr constant [41 x i8] c"            <AvgBitRate>%d</AvgBitRate>\0A\00", align 1
@.str.57 = private unnamed_addr constant [84 x i8] c"            <!-- Averate rate in bits per second over the entire presentation. -->\0A\00", align 1
@.str.58 = private unnamed_addr constant [51 x i8] c"            <SlidingAvgBit>%d</SlidingAvgBitRate>\0A\00", align 1
@.str.59 = private unnamed_addr constant [85 x i8] c"            <!-- Maximum rate in bits per second over any window of one minute. -->\0A\00", align 1
@.str.60 = private unnamed_addr constant [30 x i8] c"          </HintMediaHeader>\0A\00", align 1
@.str.61 = private unnamed_addr constant [37 x i8] c"          <DataInfo BoxType=\22dinf\22>\0A\00", align 1
@.str.62 = private unnamed_addr constant [75 x i8] c"            <DataReference BoxType=\22dref\22  URL_Count=\22%d\22 URN_Count=\22%d\22>\0A\00", align 1
@.str.63 = private unnamed_addr constant [105 x i8] c"              <!-- No entries here mean that file is self-contained, as required by Simple Profile. -->\0A\00", align 1
@.str.64 = private unnamed_addr constant [52 x i8] c"            <DataEntryUrlBox BoxType=\22url[space]\22>\0A\00", align 1
@.str.65 = private unnamed_addr constant [112 x i8] c"              <!-- Only the first 16 bytes of URL location are recorded in mj2_to_metadata data structure. -->\0A\00", align 1
@.str.66 = private unnamed_addr constant [39 x i8] c"              <Location>%s</Location>\0A\00", align 1
@.str.67 = private unnamed_addr constant [32 x i8] c"            </DataEntryUrlBox>\0A\00", align 1
@.str.68 = private unnamed_addr constant [52 x i8] c"            <DataEntryUrnBox BoxType=\22urn[space]\22>\0A\00", align 1
@.str.69 = private unnamed_addr constant [135 x i8] c"              <!-- Only the first 16 bytes each of URN name and optional location are recorded in mj2_to_metadata data structure. -->\0A\00", align 1
@.str.70 = private unnamed_addr constant [21 x i8] c"              <Name>\00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"</Name>\0A\00", align 1
@.str.73 = private unnamed_addr constant [25 x i8] c"              <Location>\00", align 1
@.str.74 = private unnamed_addr constant [13 x i8] c"</Location>\0A\00", align 1
@.str.75 = private unnamed_addr constant [32 x i8] c"            </DataEntryUrnBox>\0A\00", align 1
@.str.76 = private unnamed_addr constant [30 x i8] c"            </DataReference>\0A\00", align 1
@.str.77 = private unnamed_addr constant [23 x i8] c"          </DataInfo>\0A\00", align 1
@.str.78 = private unnamed_addr constant [31 x i8] c"        </MediaInfoContainer>\0A\00", align 1
@.str.79 = private unnamed_addr constant [16 x i8] c"      </Media>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xml_write_mdia(i32* %0, i32* %1, %struct.TYPE_8__* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [5 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 4
  store i8 0, i8* %12, align 1
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 (i32*, i8*, ...) @fprintf(i32* %13, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 (i32*, i8*, ...) @fprintf(i32* %15, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 (i32*, i8*, ...) @fprintf(i32* %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %19 = load i64, i64* @raw, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load i32*, i32** %6, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (i32*, i8*, ...) @fprintf(i32* %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %21, %4
  %28 = load i64, i64* @notes, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 (i32*, i8*, ...) @fprintf(i32* %31, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i64, i64* @derived, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 (i32*, i8*, ...) @fprintf(i32* %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %39 = load i32*, i32** %6, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %42, 2082844800
  %44 = call i32 @xml_time_out(i32* %39, i32 %43)
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 (i32*, i8*, ...) @fprintf(i32* %45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  br label %47

47:                                               ; preds = %36, %33
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 (i32*, i8*, ...) @fprintf(i32* %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 (i32*, i8*, ...) @fprintf(i32* %50, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %52 = load i64, i64* @raw, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load i32*, i32** %6, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i32*, i8*, ...) @fprintf(i32* %55, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %54, %47
  %61 = load i64, i64* @derived, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %60
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 (i32*, i8*, ...) @fprintf(i32* %64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %66 = load i32*, i32** %6, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %69, 2082844800
  %71 = call i32 @xml_time_out(i32* %66, i32 %70)
  %72 = load i32*, i32** %6, align 8
  %73 = call i32 (i32*, i8*, ...) @fprintf(i32* %72, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  br label %74

74:                                               ; preds = %63, %60
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 (i32*, i8*, ...) @fprintf(i32* %75, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  %77 = load i32*, i32** %6, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (i32*, i8*, ...) @fprintf(i32* %77, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i32 %80)
  %82 = load i64, i64* @notes, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %74
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 (i32*, i8*, ...) @fprintf(i32* %85, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.11, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %74
  %88 = load i32*, i32** %6, align 8
  %89 = call i32 (i32*, i8*, ...) @fprintf(i32* %88, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0))
  %90 = load i64, i64* @raw, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load i32*, i32** %6, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i32*, i8*, ...) @fprintf(i32* %93, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %92, %87
  %99 = load i64, i64* @derived, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %98
  %102 = load i32*, i32** %6, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = sitofp i32 %105 to double
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = sitofp i32 %109 to double
  %111 = fdiv double %106, %110
  %112 = call i32 (i32*, i8*, ...) @fprintf(i32* %102, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0), double %111)
  br label %113

113:                                              ; preds = %101, %98
  %114 = load i32*, i32** %6, align 8
  %115 = call i32 (i32*, i8*, ...) @fprintf(i32* %114, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0))
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 17
  %118 = load i64, i64* %117, align 8
  %119 = trunc i64 %118 to i16
  %120 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %121 = call i32 @int16_to_3packedchars(i16 signext %119, i8* %120)
  %122 = load i32*, i32** %6, align 8
  %123 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %124 = call i32 (i32*, i8*, ...) @fprintf(i32* %122, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0), i8* %123)
  %125 = load i32*, i32** %6, align 8
  %126 = call i32 (i32*, i8*, ...) @fprintf(i32* %125, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0))
  %127 = load i32*, i32** %6, align 8
  %128 = call i32 (i32*, i8*, ...) @fprintf(i32* %127, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.18, i64 0, i64 0))
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  switch i32 %131, label %141 [
    i32 0, label %132
    i32 1, label %135
    i32 2, label %138
  ]

132:                                              ; preds = %113
  %133 = load i32*, i32** %6, align 8
  %134 = call i32 (i32*, i8*, ...) @fprintf(i32* %133, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.19, i64 0, i64 0))
  br label %141

135:                                              ; preds = %113
  %136 = load i32*, i32** %6, align 8
  %137 = call i32 (i32*, i8*, ...) @fprintf(i32* %136, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.20, i64 0, i64 0))
  br label %141

138:                                              ; preds = %113
  %139 = load i32*, i32** %6, align 8
  %140 = call i32 (i32*, i8*, ...) @fprintf(i32* %139, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.21, i64 0, i64 0))
  br label %141

141:                                              ; preds = %113, %138, %135, %132
  %142 = load i64, i64* @notes, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %141
  %145 = load i32*, i32** %6, align 8
  %146 = call i32 (i32*, i8*, ...) @fprintf(i32* %145, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.22, i64 0, i64 0))
  %147 = load i32*, i32** %6, align 8
  %148 = call i32 (i32*, i8*, ...) @fprintf(i32* %147, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.23, i64 0, i64 0))
  br label %149

149:                                              ; preds = %144, %141
  %150 = load i32*, i32** %6, align 8
  %151 = call i32 (i32*, i8*, ...) @fprintf(i32* %150, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.24, i64 0, i64 0))
  %152 = load i32*, i32** %6, align 8
  %153 = call i32 (i32*, i8*, ...) @fprintf(i32* %152, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.25, i64 0, i64 0))
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  switch i32 %156, label %307 [
    i32 0, label %157
    i32 1, label %208
    i32 2, label %247
  ]

157:                                              ; preds = %149
  %158 = load i32*, i32** %6, align 8
  %159 = call i32 (i32*, i8*, ...) @fprintf(i32* %158, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.26, i64 0, i64 0))
  %160 = load i32*, i32** %6, align 8
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 4
  %164 = call i32 (i32*, i8*, ...) @fprintf(i32* %160, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.27, i64 0, i64 0), i32 %163)
  %165 = load i64, i64* @notes, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %180

167:                                              ; preds = %157
  %168 = load i32*, i32** %6, align 8
  %169 = call i32 (i32*, i8*, ...) @fprintf(i32* %168, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.28, i64 0, i64 0))
  %170 = load i32*, i32** %6, align 8
  %171 = call i32 (i32*, i8*, ...) @fprintf(i32* %170, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.29, i64 0, i64 0))
  %172 = load i32*, i32** %6, align 8
  %173 = call i32 (i32*, i8*, ...) @fprintf(i32* %172, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.30, i64 0, i64 0))
  %174 = load i32*, i32** %6, align 8
  %175 = call i32 (i32*, i8*, ...) @fprintf(i32* %174, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.31, i64 0, i64 0))
  %176 = load i32*, i32** %6, align 8
  %177 = call i32 (i32*, i8*, ...) @fprintf(i32* %176, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.32, i64 0, i64 0))
  %178 = load i32*, i32** %6, align 8
  %179 = call i32 (i32*, i8*, ...) @fprintf(i32* %178, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.33, i64 0, i64 0))
  br label %180

180:                                              ; preds = %167, %157
  %181 = load i32*, i32** %6, align 8
  %182 = call i32 (i32*, i8*, ...) @fprintf(i32* %181, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i64 0, i64 0))
  %183 = load i32*, i32** %6, align 8
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 6
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 0
  %188 = load i32, i32* %187, align 4
  %189 = call i32 (i32*, i8*, ...) @fprintf(i32* %183, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.35, i64 0, i64 0), i32 %188)
  %190 = load i32*, i32** %6, align 8
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 6
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 1
  %195 = load i32, i32* %194, align 4
  %196 = call i32 (i32*, i8*, ...) @fprintf(i32* %190, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.36, i64 0, i64 0), i32 %195)
  %197 = load i32*, i32** %6, align 8
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 6
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 2
  %202 = load i32, i32* %201, align 4
  %203 = call i32 (i32*, i8*, ...) @fprintf(i32* %197, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.37, i64 0, i64 0), i32 %202)
  %204 = load i32*, i32** %6, align 8
  %205 = call i32 (i32*, i8*, ...) @fprintf(i32* %204, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.38, i64 0, i64 0))
  %206 = load i32*, i32** %6, align 8
  %207 = call i32 (i32*, i8*, ...) @fprintf(i32* %206, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.39, i64 0, i64 0))
  br label %307

208:                                              ; preds = %149
  %209 = load i32*, i32** %6, align 8
  %210 = call i32 (i32*, i8*, ...) @fprintf(i32* %209, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.40, i64 0, i64 0))
  %211 = load i32*, i32** %6, align 8
  %212 = call i32 (i32*, i8*, ...) @fprintf(i32* %211, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.41, i64 0, i64 0))
  %213 = load i64, i64* @notes, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %222

215:                                              ; preds = %208
  %216 = load i32*, i32** %6, align 8
  %217 = call i32 (i32*, i8*, ...) @fprintf(i32* %216, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.42, i64 0, i64 0))
  %218 = load i32*, i32** %6, align 8
  %219 = call i32 (i32*, i8*, ...) @fprintf(i32* %218, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.43, i64 0, i64 0))
  %220 = load i32*, i32** %6, align 8
  %221 = call i32 (i32*, i8*, ...) @fprintf(i32* %220, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.44, i64 0, i64 0))
  br label %222

222:                                              ; preds = %215, %208
  %223 = load i64, i64* @raw, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %231

225:                                              ; preds = %222
  %226 = load i32*, i32** %6, align 8
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 7
  %229 = load i32, i32* %228, align 8
  %230 = call i32 (i32*, i8*, ...) @fprintf(i32* %226, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.45, i64 0, i64 0), i32 %229)
  br label %231

231:                                              ; preds = %225, %222
  %232 = load i64, i64* @derived, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %242

234:                                              ; preds = %231
  %235 = load i32*, i32** %6, align 8
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 7
  %238 = load i32, i32* %237, align 8
  %239 = sitofp i32 %238 to double
  %240 = fdiv double %239, 2.560000e+02
  %241 = call i32 (i32*, i8*, ...) @fprintf(i32* %235, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.46, i64 0, i64 0), double %240)
  br label %242

242:                                              ; preds = %234, %231
  %243 = load i32*, i32** %6, align 8
  %244 = call i32 (i32*, i8*, ...) @fprintf(i32* %243, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.47, i64 0, i64 0))
  %245 = load i32*, i32** %6, align 8
  %246 = call i32 (i32*, i8*, ...) @fprintf(i32* %245, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.48, i64 0, i64 0))
  br label %307

247:                                              ; preds = %149
  %248 = load i32*, i32** %6, align 8
  %249 = call i32 (i32*, i8*, ...) @fprintf(i32* %248, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.49, i64 0, i64 0))
  %250 = load i32*, i32** %6, align 8
  %251 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i32 0, i32 8
  %253 = load i32, i32* %252, align 4
  %254 = call i32 (i32*, i8*, ...) @fprintf(i32* %250, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.50, i64 0, i64 0), i32 %253)
  %255 = load i64, i64* @notes, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %247
  %258 = load i32*, i32** %6, align 8
  %259 = call i32 (i32*, i8*, ...) @fprintf(i32* %258, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.51, i64 0, i64 0))
  br label %260

260:                                              ; preds = %257, %247
  %261 = load i32*, i32** %6, align 8
  %262 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 9
  %264 = load i32, i32* %263, align 8
  %265 = call i32 (i32*, i8*, ...) @fprintf(i32* %261, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.52, i64 0, i64 0), i32 %264)
  %266 = load i64, i64* @notes, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %271

268:                                              ; preds = %260
  %269 = load i32*, i32** %6, align 8
  %270 = call i32 (i32*, i8*, ...) @fprintf(i32* %269, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.53, i64 0, i64 0))
  br label %271

271:                                              ; preds = %268, %260
  %272 = load i32*, i32** %6, align 8
  %273 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 10
  %275 = load i32, i32* %274, align 4
  %276 = call i32 (i32*, i8*, ...) @fprintf(i32* %272, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.54, i64 0, i64 0), i32 %275)
  %277 = load i64, i64* @notes, align 8
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %282

279:                                              ; preds = %271
  %280 = load i32*, i32** %6, align 8
  %281 = call i32 (i32*, i8*, ...) @fprintf(i32* %280, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.55, i64 0, i64 0))
  br label %282

282:                                              ; preds = %279, %271
  %283 = load i32*, i32** %6, align 8
  %284 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %284, i32 0, i32 11
  %286 = load i32, i32* %285, align 8
  %287 = call i32 (i32*, i8*, ...) @fprintf(i32* %283, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.56, i64 0, i64 0), i32 %286)
  %288 = load i64, i64* @notes, align 8
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %293

290:                                              ; preds = %282
  %291 = load i32*, i32** %6, align 8
  %292 = call i32 (i32*, i8*, ...) @fprintf(i32* %291, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.57, i64 0, i64 0))
  br label %293

293:                                              ; preds = %290, %282
  %294 = load i32*, i32** %6, align 8
  %295 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %296 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %295, i32 0, i32 12
  %297 = load i32, i32* %296, align 4
  %298 = call i32 (i32*, i8*, ...) @fprintf(i32* %294, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.58, i64 0, i64 0), i32 %297)
  %299 = load i64, i64* @notes, align 8
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %304

301:                                              ; preds = %293
  %302 = load i32*, i32** %6, align 8
  %303 = call i32 (i32*, i8*, ...) @fprintf(i32* %302, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.59, i64 0, i64 0))
  br label %304

304:                                              ; preds = %301, %293
  %305 = load i32*, i32** %6, align 8
  %306 = call i32 (i32*, i8*, ...) @fprintf(i32* %305, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.60, i64 0, i64 0))
  br label %307

307:                                              ; preds = %149, %304, %242, %180
  %308 = load i32*, i32** %6, align 8
  %309 = call i32 (i32*, i8*, ...) @fprintf(i32* %308, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.61, i64 0, i64 0))
  %310 = load i32*, i32** %6, align 8
  %311 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %312 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %311, i32 0, i32 13
  %313 = load i32, i32* %312, align 8
  %314 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %314, i32 0, i32 14
  %316 = load i32, i32* %315, align 4
  %317 = call i32 (i32*, i8*, ...) @fprintf(i32* %310, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.62, i64 0, i64 0), i32 %313, i32 %316)
  %318 = load i64, i64* @notes, align 8
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %323

320:                                              ; preds = %307
  %321 = load i32*, i32** %6, align 8
  %322 = call i32 (i32*, i8*, ...) @fprintf(i32* %321, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.63, i64 0, i64 0))
  br label %323

323:                                              ; preds = %320, %307
  store i32 0, i32* %11, align 4
  br label %324

324:                                              ; preds = %367, %323
  %325 = load i32, i32* %11, align 4
  %326 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %327 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %326, i32 0, i32 13
  %328 = load i32, i32* %327, align 8
  %329 = icmp slt i32 %325, %328
  br i1 %329, label %330, label %370

330:                                              ; preds = %324
  %331 = load i32*, i32** %6, align 8
  %332 = call i32 (i32*, i8*, ...) @fprintf(i32* %331, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.64, i64 0, i64 0))
  %333 = load i64, i64* @notes, align 8
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %338

335:                                              ; preds = %330
  %336 = load i32*, i32** %6, align 8
  %337 = call i32 (i32*, i8*, ...) @fprintf(i32* %336, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.65, i64 0, i64 0))
  br label %338

338:                                              ; preds = %335, %330
  store i32 0, i32* %10, align 4
  br label %339

339:                                              ; preds = %361, %338
  %340 = load i32, i32* %10, align 4
  %341 = icmp slt i32 %340, 4
  br i1 %341, label %342, label %364

342:                                              ; preds = %339
  %343 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %344 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %343, i32 0, i32 16
  %345 = load %struct.TYPE_6__*, %struct.TYPE_6__** %344, align 8
  %346 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %347 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %346, i32 0, i32 13
  %348 = load i32, i32* %347, align 8
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %345, i64 %349
  %351 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %350, i32 0, i32 0
  %352 = load i32*, i32** %351, align 8
  %353 = load i32, i32* %10, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i32, i32* %352, i64 %354
  %356 = load i32, i32* %355, align 4
  %357 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %358 = call i32 @uint_to_chars(i32 %356, i8* %357)
  %359 = load i32*, i32** %6, align 8
  %360 = call i32 (i32*, i8*, ...) @fprintf(i32* %359, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.66, i64 0, i64 0))
  br label %361

361:                                              ; preds = %342
  %362 = load i32, i32* %10, align 4
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* %10, align 4
  br label %339

364:                                              ; preds = %339
  %365 = load i32*, i32** %6, align 8
  %366 = call i32 (i32*, i8*, ...) @fprintf(i32* %365, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.67, i64 0, i64 0))
  br label %367

367:                                              ; preds = %364
  %368 = load i32, i32* %11, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %11, align 4
  br label %324

370:                                              ; preds = %324
  store i32 0, i32* %11, align 4
  br label %371

371:                                              ; preds = %449, %370
  %372 = load i32, i32* %11, align 4
  %373 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %374 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %373, i32 0, i32 14
  %375 = load i32, i32* %374, align 4
  %376 = icmp slt i32 %372, %375
  br i1 %376, label %377, label %452

377:                                              ; preds = %371
  %378 = load i32*, i32** %6, align 8
  %379 = call i32 (i32*, i8*, ...) @fprintf(i32* %378, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.68, i64 0, i64 0))
  %380 = load i64, i64* @notes, align 8
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %382, label %385

382:                                              ; preds = %377
  %383 = load i32*, i32** %6, align 8
  %384 = call i32 (i32*, i8*, ...) @fprintf(i32* %383, i8* getelementptr inbounds ([135 x i8], [135 x i8]* @.str.69, i64 0, i64 0))
  br label %385

385:                                              ; preds = %382, %377
  %386 = load i32*, i32** %6, align 8
  %387 = call i32 (i32*, i8*, ...) @fprintf(i32* %386, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.70, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %388

388:                                              ; preds = %411, %385
  %389 = load i32, i32* %10, align 4
  %390 = icmp slt i32 %389, 4
  br i1 %390, label %391, label %414

391:                                              ; preds = %388
  %392 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %393 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %392, i32 0, i32 15
  %394 = load %struct.TYPE_7__*, %struct.TYPE_7__** %393, align 8
  %395 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %396 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %395, i32 0, i32 14
  %397 = load i32, i32* %396, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %394, i64 %398
  %400 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %399, i32 0, i32 1
  %401 = load i32*, i32** %400, align 8
  %402 = load i32, i32* %10, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i32, i32* %401, i64 %403
  %405 = load i32, i32* %404, align 4
  %406 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %407 = call i32 @uint_to_chars(i32 %405, i8* %406)
  %408 = load i32*, i32** %6, align 8
  %409 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %410 = call i32 (i32*, i8*, ...) @fprintf(i32* %408, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.71, i64 0, i64 0), i8* %409)
  br label %411

411:                                              ; preds = %391
  %412 = load i32, i32* %10, align 4
  %413 = add nsw i32 %412, 1
  store i32 %413, i32* %10, align 4
  br label %388

414:                                              ; preds = %388
  %415 = load i32*, i32** %6, align 8
  %416 = call i32 (i32*, i8*, ...) @fprintf(i32* %415, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i64 0, i64 0))
  %417 = load i32*, i32** %6, align 8
  %418 = call i32 (i32*, i8*, ...) @fprintf(i32* %417, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.73, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %419

419:                                              ; preds = %441, %414
  %420 = load i32, i32* %10, align 4
  %421 = icmp slt i32 %420, 4
  br i1 %421, label %422, label %444

422:                                              ; preds = %419
  %423 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %424 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %423, i32 0, i32 15
  %425 = load %struct.TYPE_7__*, %struct.TYPE_7__** %424, align 8
  %426 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %427 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %426, i32 0, i32 14
  %428 = load i32, i32* %427, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %425, i64 %429
  %431 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %430, i32 0, i32 0
  %432 = load i32*, i32** %431, align 8
  %433 = load i32, i32* %10, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i32, i32* %432, i64 %434
  %436 = load i32, i32* %435, align 4
  %437 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %438 = call i32 @uint_to_chars(i32 %436, i8* %437)
  %439 = load i32*, i32** %6, align 8
  %440 = call i32 (i32*, i8*, ...) @fprintf(i32* %439, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.71, i64 0, i64 0))
  br label %441

441:                                              ; preds = %422
  %442 = load i32, i32* %10, align 4
  %443 = add nsw i32 %442, 1
  store i32 %443, i32* %10, align 4
  br label %419

444:                                              ; preds = %419
  %445 = load i32*, i32** %6, align 8
  %446 = call i32 (i32*, i8*, ...) @fprintf(i32* %445, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.74, i64 0, i64 0))
  %447 = load i32*, i32** %6, align 8
  %448 = call i32 (i32*, i8*, ...) @fprintf(i32* %447, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.75, i64 0, i64 0))
  br label %449

449:                                              ; preds = %444
  %450 = load i32, i32* %11, align 4
  %451 = add nsw i32 %450, 1
  store i32 %451, i32* %11, align 4
  br label %371

452:                                              ; preds = %371
  %453 = load i32*, i32** %6, align 8
  %454 = call i32 (i32*, i8*, ...) @fprintf(i32* %453, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.76, i64 0, i64 0))
  %455 = load i32*, i32** %6, align 8
  %456 = call i32 (i32*, i8*, ...) @fprintf(i32* %455, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.77, i64 0, i64 0))
  %457 = load i32*, i32** %5, align 8
  %458 = load i32*, i32** %6, align 8
  %459 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %460 = load i32, i32* %8, align 4
  %461 = call i32 @xml_write_stbl(i32* %457, i32* %458, %struct.TYPE_8__* %459, i32 %460)
  %462 = load i32*, i32** %6, align 8
  %463 = call i32 (i32*, i8*, ...) @fprintf(i32* %462, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.78, i64 0, i64 0))
  %464 = load i32*, i32** %6, align 8
  %465 = call i32 (i32*, i8*, ...) @fprintf(i32* %464, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.79, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @xml_time_out(i32*, i32) #1

declare dso_local i32 @int16_to_3packedchars(i16 signext, i8*) #1

declare dso_local i32 @uint_to_chars(i32, i8*) #1

declare dso_local i32 @xml_write_stbl(i32*, i32*, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
