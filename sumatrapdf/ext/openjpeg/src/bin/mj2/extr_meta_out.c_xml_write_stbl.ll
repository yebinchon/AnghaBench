; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/mj2/extr_meta_out.c_xml_write_stbl.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/mj2/extr_meta_out.c_xml_write_stbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__*, i64, %struct.TYPE_8__*, %struct.TYPE_7__*, i64, i64, i64, i64, i32, i64* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"          <SampleTable BoxType=\22stbl\22>\0A\00", align 1
@notes = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [102 x i8] c"            <!-- What follows are specific instances of generic SampleDescription BoxType=\22stsd\22 -->\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"            <VisualSampleEntry BoxType=\22mjp2\22>\0A\00", align 1
@.str.3 = private unnamed_addr constant [83 x i8] c"            <!-- If multiple instances of this box, only first is shown here. -->\0A\00", align 1
@.str.4 = private unnamed_addr constant [109 x i8] c"            <!-- Width and Height are in pixels.  Unlike the Track Header, there is no fractional part. -->\0A\00", align 1
@.str.5 = private unnamed_addr constant [127 x i8] c"            <!-- In mj2_to_metadata implementation, the values are not represented separately from Track Header's values. -->\0A\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"              <WidthAsInteger>%d</WidthAsInteger>\0A\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"              <HeightAsInteger>%d</HeightAsInteger>\0A\00", align 1
@.str.8 = private unnamed_addr constant [120 x i8] c"              <!-- Resolutions are in pixels per inch, for the highest-resolution component (typically luminance). -->\0A\00", align 1
@.str.9 = private unnamed_addr constant [107 x i8] c"              <!-- Both stored as fixed-point binary 16.16 values. Decimal values are approximations. -->\0A\00", align 1
@.str.10 = private unnamed_addr constant [81 x i8] c"              <!-- Typical value for both resolutions is 0x00480000  (72.0) -->\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"              <HorizontalRes>\0A\00", align 1
@raw = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [39 x i8] c"                <AsHex>0x%08x</AsHex>\0A\00", align 1
@derived = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [47 x i8] c"                <AsDecimal>%12.6f</AsDecimal>\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"              </HorizontalRes>\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"              <VerticalRes>\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"              </VerticalRes>\0A\00", align 1
@.str.17 = private unnamed_addr constant [51 x i8] c"              <CompressorName>%s</CompressorName>\0A\00", align 1
@.str.18 = private unnamed_addr constant [99 x i8] c"              <!-- Compressor name for debugging.  Standard restricts max length to 31 bytes. -->\0A\00", align 1
@.str.19 = private unnamed_addr constant [59 x i8] c"              <!-- Usually blank or \22Motion JPEG2000\22 -->\0A\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"              <Depth>0x%02x</Depth>\0A\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"              <!-- Depth is: -->\0A\00", align 1
@.str.22 = private unnamed_addr constant [76 x i8] c"              <!--   0x20: alpha channels present (color or grayscale) -->\0A\00", align 1
@.str.23 = private unnamed_addr constant [56 x i8] c"              <!--   0x28: grayscale without alpha -->\0A\00", align 1
@.str.24 = private unnamed_addr constant [52 x i8] c"              <!--   0x18: color without alpha -->\0A\00", align 1
@.str.25 = private unnamed_addr constant [44 x i8] c"              <FieldCoding BoxType=\22fiel\22>\0A\00", align 1
@.str.26 = private unnamed_addr constant [45 x i8] c"                <FieldCount>%d</FieldCount>\0A\00", align 1
@.str.27 = private unnamed_addr constant [48 x i8] c"                <!-- Must be either 1 or 2 -->\0A\00", align 1
@.str.28 = private unnamed_addr constant [45 x i8] c"                <FieldOrder>%d</FieldOrder>\0A\00", align 1
@.str.29 = private unnamed_addr constant [63 x i8] c"                <!-- When FieldCount=2, FieldOrder means: -->\0A\00", align 1
@.str.30 = private unnamed_addr constant [52 x i8] c"                <!--   0: Field coding unknown -->\0A\00", align 1
@.str.31 = private unnamed_addr constant [111 x i8] c"                <!--   1: Field with topmost line is stored first in sample; fields are in temporal order -->\0A\00", align 1
@.str.32 = private unnamed_addr constant [112 x i8] c"                <!--   6: Field with topmost line is stored second in sample; fields are in temporal order -->\0A\00", align 1
@.str.33 = private unnamed_addr constant [94 x i8] c"                <!-- Defaults: FieldCount=1, FieldOrder=0 if FieldCoding box not present -->\0A\00", align 1
@.str.34 = private unnamed_addr constant [98 x i8] c"                <!-- Current implementation doesn't retain whether box was actually present. -->\0A\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"              </FieldCoding>\0A\00", align 1
@.str.36 = private unnamed_addr constant [56 x i8] c"              <MJP2_Profile BoxType=\22jp2p\22 Count=\22%d\22>\0A\00", align 1
@.str.37 = private unnamed_addr constant [55 x i8] c"                <CompatibleBrand>%s</CompatibleBrand>\0A\00", align 1
@.str.38 = private unnamed_addr constant [31 x i8] c"              </MJP2_Profile>\0A\00", align 1
@.str.39 = private unnamed_addr constant [55 x i8] c"              <MJP2_Prefix BoxType=\22jp2x\22 Count=\22%d\22>\0A\00", align 1
@.str.40 = private unnamed_addr constant [37 x i8] c"                <Data>0x%02x</Data>\0A\00", align 1
@.str.41 = private unnamed_addr constant [30 x i8] c"              </MJP2_Prefix>\0A\00", align 1
@.str.42 = private unnamed_addr constant [49 x i8] c"              <MJP2_SubSampling BoxType=\22jsub\22>\0A\00", align 1
@.str.43 = private unnamed_addr constant [63 x i8] c"              <!-- Typical subsample value is 2 for 4:2:0 -->\0A\00", align 1
@.str.44 = private unnamed_addr constant [51 x i8] c"                <HorizontalSub>%d</HorizontalSub>\0A\00", align 1
@.str.45 = private unnamed_addr constant [47 x i8] c"                <VerticalSub>%d</VerticalSub>\0A\00", align 1
@.str.46 = private unnamed_addr constant [57 x i8] c"                <HorizontalOffset>%d</HorizontalOffset>\0A\00", align 1
@.str.47 = private unnamed_addr constant [53 x i8] c"                <VerticalOffset>%d</VerticalOffset>\0A\00", align 1
@.str.48 = private unnamed_addr constant [79 x i8] c"                <!-- Typical {horizontal, vertical} chroma offset values: -->\0A\00", align 1
@.str.49 = private unnamed_addr constant [91 x i8] c"                <!-- 4:2:2 format (CCIR601, H.262, MPEG2, MPEG4, recom. Exif): {0, 0} -->\0A\00", align 1
@.str.50 = private unnamed_addr constant [91 x i8] c"                <!-- 4:2:2 format (JFIF):                                      {1, 0} -->\0A\00", align 1
@.str.51 = private unnamed_addr constant [91 x i8] c"                <!-- 4:2:0 format (H.262, MPEG2, MPEG4):                       {0, 1} -->\0A\00", align 1
@.str.52 = private unnamed_addr constant [91 x i8] c"                <!-- 4:2:0 format (MPEG1, H.261, JFIF, recom. Exif):           {1, 1} -->\0A\00", align 1
@.str.53 = private unnamed_addr constant [35 x i8] c"              </MJP2_SubSampling>\0A\00", align 1
@.str.54 = private unnamed_addr constant [52 x i8] c"              <MJP2_OriginalFormat BoxType=\22orfo\22>\0A\00", align 1
@.str.55 = private unnamed_addr constant [61 x i8] c"                <OriginalFieldCount>%u</OriginalFieldCount>\0A\00", align 1
@.str.56 = private unnamed_addr constant [87 x i8] c"                <!-- In original material before encoding.  Must be either 1 or 2 -->\0A\00", align 1
@.str.57 = private unnamed_addr constant [61 x i8] c"                <OriginalFieldOrder>%u</OriginalFieldOrder>\0A\00", align 1
@.str.58 = private unnamed_addr constant [74 x i8] c"                <!--   11: Topmost line came from the earlier field; -->\0A\00", align 1
@.str.59 = private unnamed_addr constant [73 x i8] c"                <!--   16:  Topmost line came form the later field. -->\0A\00", align 1
@.str.60 = private unnamed_addr constant [38 x i8] c"              </MJP2_OriginalFormat>\0A\00", align 1
@.str.61 = private unnamed_addr constant [34 x i8] c"            </VisualSampleEntry>\0A\00", align 1
@.str.62 = private unnamed_addr constant [86 x i8] c"            <!-- mj2_to_metadata's data structure doesn't record this currently. -->\0A\00", align 1
@.str.63 = private unnamed_addr constant [43 x i8] c"            <TimeToSample BoxType=\22stts\22>\0A\00", align 1
@.str.64 = private unnamed_addr constant [34 x i8] c"              <SampleStatistics>\0A\00", align 1
@.str.65 = private unnamed_addr constant [49 x i8] c"                <TotalSamples>%d</TotalSamples>\0A\00", align 1
@.str.66 = private unnamed_addr constant [117 x i8] c"                <!-- For video, gives the total frames in the track, by summing all entries in the Sample Table -->\0A\00", align 1
@.str.67 = private unnamed_addr constant [35 x i8] c"              </SampleStatistics>\0A\00", align 1
@.str.68 = private unnamed_addr constant [47 x i8] c"              <SampleEntries EntryCount=\22%d\22>\0A\00", align 1
@.str.69 = private unnamed_addr constant [72 x i8] c"                <Table Entry=\22%u\22 SampleCount=\22%d\22 SampleDelta=\22%u\22 />\0A\00", align 1
@.str.70 = private unnamed_addr constant [32 x i8] c"              </SampleEntries>\0A\00", align 1
@.str.71 = private unnamed_addr constant [29 x i8] c"            </TimeToSample>\0A\00", align 1
@.str.72 = private unnamed_addr constant [55 x i8] c"            <SampleToChunk BoxType=\22stsc\22 Count=\22%d\22>\0A\00", align 1
@.str.73 = private unnamed_addr constant [43 x i8] c"              <FirstChunk>%u</FirstChunk>\0A\00", align 1
@.str.74 = private unnamed_addr constant [53 x i8] c"              <SamplesPerChunk>%u</SamplesPerChunk>\0A\00", align 1
@.str.75 = private unnamed_addr constant [55 x i8] c"              <SampleDescrIndex>%u</SampleDescrIndex>\0A\00", align 1
@.str.76 = private unnamed_addr constant [30 x i8] c"            </SampleToChunk>\0A\00", align 1
@.str.77 = private unnamed_addr constant [41 x i8] c"            <SampleSize BoxType=\22stsz\22>\0A\00", align 1
@.str.78 = private unnamed_addr constant [45 x i8] c"              <Sample_Size>%u</Sample_Size>\0A\00", align 1
@.str.79 = private unnamed_addr constant [73 x i8] c"              <!-- Non-zero value means all samples have that size. -->\0A\00", align 1
@.str.80 = private unnamed_addr constant [138 x i8] c"              <!-- So <Sample_Count> (aka Entry_Count in std.) has no meaning, is suppressed from this output, and no table follows. -->\0A\00", align 1
@.str.81 = private unnamed_addr constant [44 x i8] c"              <Sample_Size>0</Sample_Size>\0A\00", align 1
@sampletables = common dso_local global i64 0, align 8
@.str.82 = private unnamed_addr constant [140 x i8] c"              <!-- Zero value means samples have different sizes, given in table next of length Sample_Count (aka Entry_Count in std). -->\0A\00", align 1
@.str.83 = private unnamed_addr constant [147 x i8] c"              <!-- Zero value means samples have different sizes, given in table (not shown) of length Sample_Count (aka Entry_Count in std). -->\0A\00", align 1
@.str.84 = private unnamed_addr constant [47 x i8] c"              <Sample_Count>%u</Sample_Count>\0A\00", align 1
@.str.85 = private unnamed_addr constant [50 x i8] c"              <EntrySize Num=\22%u\22>%u</EntrySize>\0A\00", align 1
@.str.86 = private unnamed_addr constant [27 x i8] c"            </SampleSize>\0A\00", align 1
@.str.87 = private unnamed_addr constant [42 x i8] c"            <ChunkOffset BoxType=\22stco\22>\0A\00", align 1
@.str.88 = private unnamed_addr constant [43 x i8] c"              <EntryCount>%u</EntryCount>\0A\00", align 1
@.str.89 = private unnamed_addr constant [126 x i8] c"              <!-- For this implementation, EntryCount shown is one calculated during file read of <SampleToChunk> data. -->\0A\00", align 1
@.str.90 = private unnamed_addr constant [129 x i8] c"              <!-- Implementation will report failure during file read of <ChunkOffset> data if read entry-count disagrees. -->\0A\00", align 1
@.str.91 = private unnamed_addr constant [56 x i8] c"              <Chunk_Offset Num=\22%d\22>%u</Chunk_Offset>\0A\00", align 1
@.str.92 = private unnamed_addr constant [28 x i8] c"            </ChunkOffset>\0A\00", align 1
@.str.93 = private unnamed_addr constant [26 x i8] c"          </SampleTable>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xml_write_stbl(i32* %0, i32* %1, %struct.TYPE_11__* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [5 x i8], align 1
  %10 = alloca [33 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 4
  store i8 0, i8* %13, align 1
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 (i32*, i8*, ...) @fprintf(i32* %14, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %16 = load i64, i64* @notes, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 (i32*, i8*, ...) @fprintf(i32* %19, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %354 [
    i32 0, label %25
    i32 1, label %347
    i32 2, label %347
  ]

25:                                               ; preds = %21
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 (i32*, i8*, ...) @fprintf(i32* %26, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i64, i64* @notes, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 (i32*, i8*, ...) @fprintf(i32* %31, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.3, i64 0, i64 0))
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 (i32*, i8*, ...) @fprintf(i32* %33, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.4, i64 0, i64 0))
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 (i32*, i8*, ...) @fprintf(i32* %35, i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.5, i64 0, i64 0))
  br label %37

37:                                               ; preds = %30, %25
  %38 = load i32*, i32** %6, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i32*, i8*, ...) @fprintf(i32* %38, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i32 %41)
  %43 = load i32*, i32** %6, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i32*, i8*, ...) @fprintf(i32* %43, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i32 %46)
  %48 = load i64, i64* @notes, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %37
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 (i32*, i8*, ...) @fprintf(i32* %51, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.8, i64 0, i64 0))
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 (i32*, i8*, ...) @fprintf(i32* %53, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.9, i64 0, i64 0))
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 (i32*, i8*, ...) @fprintf(i32* %55, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.10, i64 0, i64 0))
  br label %57

57:                                               ; preds = %50, %37
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 (i32*, i8*, ...) @fprintf(i32* %58, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  %60 = load i32, i32* @raw, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load i32*, i32** %6, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i32*, i8*, ...) @fprintf(i32* %63, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %62, %57
  %69 = load i32, i32* @derived, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load i32*, i32** %6, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = sitofp i32 %75 to double
  %77 = fdiv double %76, 6.553600e+04
  %78 = call i32 (i32*, i8*, ...) @fprintf(i32* %72, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0), double %77)
  br label %79

79:                                               ; preds = %71, %68
  %80 = load i32*, i32** %6, align 8
  %81 = call i32 (i32*, i8*, ...) @fprintf(i32* %80, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0))
  %82 = load i32*, i32** %6, align 8
  %83 = call i32 (i32*, i8*, ...) @fprintf(i32* %82, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0))
  %84 = load i32, i32* @raw, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %79
  %87 = load i32*, i32** %6, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = call i32 (i32*, i8*, ...) @fprintf(i32* %87, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %86, %79
  %93 = load i32, i32* @derived, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %92
  %96 = load i32*, i32** %6, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = sitofp i32 %99 to double
  %101 = fdiv double %100, 6.553600e+04
  %102 = call i32 (i32*, i8*, ...) @fprintf(i32* %96, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0), double %101)
  br label %103

103:                                              ; preds = %95, %92
  %104 = load i32*, i32** %6, align 8
  %105 = call i32 (i32*, i8*, ...) @fprintf(i32* %104, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0))
  %106 = getelementptr inbounds [33 x i8], [33 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %106, align 16
  store i32 0, i32* %11, align 4
  br label %107

107:                                              ; preds = %124, %103
  %108 = load i32, i32* %11, align 4
  %109 = icmp slt i32 %108, 8
  br i1 %109, label %110, label %127

110:                                              ; preds = %107
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 28
  %113 = load i64*, i64** %112, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %113, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = trunc i64 %117 to i32
  %119 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %120 = call i32 @uint_to_chars(i32 %118, i8* %119)
  %121 = getelementptr inbounds [33 x i8], [33 x i8]* %10, i64 0, i64 0
  %122 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %123 = call i32 @strcat(i8* %121, i8* %122)
  br label %124

124:                                              ; preds = %110
  %125 = load i32, i32* %11, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %11, align 4
  br label %107

127:                                              ; preds = %107
  %128 = getelementptr inbounds [33 x i8], [33 x i8]* %10, i64 0, i64 0
  %129 = load i8, i8* %128, align 16
  %130 = sext i8 %129 to i32
  store i32 %130, i32* %12, align 4
  %131 = load i32, i32* %12, align 4
  %132 = add nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [33 x i8], [33 x i8]* %10, i64 0, i64 %133
  store i8 0, i8* %134, align 1
  %135 = load i32*, i32** %6, align 8
  %136 = getelementptr inbounds [33 x i8], [33 x i8]* %10, i64 0, i64 0
  %137 = getelementptr inbounds i8, i8* %136, i64 1
  %138 = call i32 (i32*, i8*, ...) @fprintf(i32* %135, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.17, i64 0, i64 0), i8* %137)
  %139 = load i64, i64* @notes, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %127
  %142 = load i32*, i32** %6, align 8
  %143 = call i32 (i32*, i8*, ...) @fprintf(i32* %142, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.18, i64 0, i64 0))
  %144 = load i32*, i32** %6, align 8
  %145 = call i32 (i32*, i8*, ...) @fprintf(i32* %144, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.19, i64 0, i64 0))
  br label %146

146:                                              ; preds = %141, %127
  %147 = load i32*, i32** %6, align 8
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 4
  %151 = call i32 (i32*, i8*, ...) @fprintf(i32* %147, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i64 0, i64 0), i32 %150)
  %152 = load i64, i64* @notes, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %146
  %155 = load i32*, i32** %6, align 8
  %156 = call i32 (i32*, i8*, ...) @fprintf(i32* %155, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i64 0, i64 0))
  %157 = load i32*, i32** %6, align 8
  %158 = call i32 (i32*, i8*, ...) @fprintf(i32* %157, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.22, i64 0, i64 0))
  %159 = load i32*, i32** %6, align 8
  %160 = call i32 (i32*, i8*, ...) @fprintf(i32* %159, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.23, i64 0, i64 0))
  %161 = load i32*, i32** %6, align 8
  %162 = call i32 (i32*, i8*, ...) @fprintf(i32* %161, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.24, i64 0, i64 0))
  br label %163

163:                                              ; preds = %154, %146
  %164 = load i32*, i32** %6, align 8
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 27
  %167 = call i32 @xml_out_frame_jp2h(i32* %164, i32* %166)
  %168 = load i32*, i32** %6, align 8
  %169 = call i32 (i32*, i8*, ...) @fprintf(i32* %168, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.25, i64 0, i64 0))
  %170 = load i32*, i32** %6, align 8
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 26
  %173 = load i64, i64* %172, align 8
  %174 = trunc i64 %173 to i32
  %175 = call i32 (i32*, i8*, ...) @fprintf(i32* %170, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.26, i64 0, i64 0), i32 %174)
  %176 = load i64, i64* @notes, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %163
  %179 = load i32*, i32** %6, align 8
  %180 = call i32 (i32*, i8*, ...) @fprintf(i32* %179, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.27, i64 0, i64 0))
  br label %181

181:                                              ; preds = %178, %163
  %182 = load i32*, i32** %6, align 8
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 25
  %185 = load i64, i64* %184, align 8
  %186 = trunc i64 %185 to i32
  %187 = call i32 (i32*, i8*, ...) @fprintf(i32* %182, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.28, i64 0, i64 0), i32 %186)
  %188 = load i64, i64* @notes, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %203

190:                                              ; preds = %181
  %191 = load i32*, i32** %6, align 8
  %192 = call i32 (i32*, i8*, ...) @fprintf(i32* %191, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.29, i64 0, i64 0))
  %193 = load i32*, i32** %6, align 8
  %194 = call i32 (i32*, i8*, ...) @fprintf(i32* %193, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.30, i64 0, i64 0))
  %195 = load i32*, i32** %6, align 8
  %196 = call i32 (i32*, i8*, ...) @fprintf(i32* %195, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.31, i64 0, i64 0))
  %197 = load i32*, i32** %6, align 8
  %198 = call i32 (i32*, i8*, ...) @fprintf(i32* %197, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.32, i64 0, i64 0))
  %199 = load i32*, i32** %6, align 8
  %200 = call i32 (i32*, i8*, ...) @fprintf(i32* %199, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.33, i64 0, i64 0))
  %201 = load i32*, i32** %6, align 8
  %202 = call i32 (i32*, i8*, ...) @fprintf(i32* %201, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.34, i64 0, i64 0))
  br label %203

203:                                              ; preds = %190, %181
  %204 = load i32*, i32** %6, align 8
  %205 = call i32 (i32*, i8*, ...) @fprintf(i32* %204, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.35, i64 0, i64 0))
  %206 = load i32*, i32** %6, align 8
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 6
  %209 = load i32, i32* %208, align 8
  %210 = call i32 (i32*, i8*, ...) @fprintf(i32* %206, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.36, i64 0, i64 0), i32 %209)
  store i32 0, i32* %11, align 4
  br label %211

211:                                              ; preds = %230, %203
  %212 = load i32, i32* %11, align 4
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 6
  %215 = load i32, i32* %214, align 8
  %216 = icmp slt i32 %212, %215
  br i1 %216, label %217, label %233

217:                                              ; preds = %211
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 7
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* %11, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %226 = call i32 @uint_to_chars(i32 %224, i8* %225)
  %227 = load i32*, i32** %6, align 8
  %228 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %229 = call i32 (i32*, i8*, ...) @fprintf(i32* %227, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.37, i64 0, i64 0), i8* %228)
  br label %230

230:                                              ; preds = %217
  %231 = load i32, i32* %11, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %11, align 4
  br label %211

233:                                              ; preds = %211
  %234 = load i32*, i32** %6, align 8
  %235 = call i32 (i32*, i8*, ...) @fprintf(i32* %234, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.38, i64 0, i64 0))
  %236 = load i32*, i32** %6, align 8
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 8
  %239 = load i32, i32* %238, align 8
  %240 = call i32 (i32*, i8*, ...) @fprintf(i32* %236, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.39, i64 0, i64 0), i32 %239)
  store i32 0, i32* %11, align 4
  br label %241

241:                                              ; preds = %257, %233
  %242 = load i32, i32* %11, align 4
  %243 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %243, i32 0, i32 8
  %245 = load i32, i32* %244, align 8
  %246 = icmp slt i32 %242, %245
  br i1 %246, label %247, label %260

247:                                              ; preds = %241
  %248 = load i32*, i32** %6, align 8
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 9
  %251 = load i32*, i32** %250, align 8
  %252 = load i32, i32* %11, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = call i32 (i32*, i8*, ...) @fprintf(i32* %248, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.40, i64 0, i64 0), i32 %255)
  br label %257

257:                                              ; preds = %247
  %258 = load i32, i32* %11, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %11, align 4
  br label %241

260:                                              ; preds = %241
  %261 = load i32*, i32** %6, align 8
  %262 = call i32 (i32*, i8*, ...) @fprintf(i32* %261, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.41, i64 0, i64 0))
  %263 = load i32*, i32** %6, align 8
  %264 = call i32 (i32*, i8*, ...) @fprintf(i32* %263, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.42, i64 0, i64 0))
  %265 = load i64, i64* @notes, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %260
  %268 = load i32*, i32** %6, align 8
  %269 = call i32 (i32*, i8*, ...) @fprintf(i32* %268, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.43, i64 0, i64 0))
  br label %270

270:                                              ; preds = %267, %260
  %271 = load i32*, i32** %6, align 8
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 10
  %274 = load i32, i32* %273, align 8
  %275 = call i32 (i32*, i8*, ...) @fprintf(i32* %271, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.44, i64 0, i64 0), i32 %274)
  %276 = load i32*, i32** %6, align 8
  %277 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %278 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %277, i32 0, i32 11
  %279 = load i32, i32* %278, align 4
  %280 = call i32 (i32*, i8*, ...) @fprintf(i32* %276, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.45, i64 0, i64 0), i32 %279)
  %281 = load i32*, i32** %6, align 8
  %282 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i32 0, i32 12
  %284 = load i32, i32* %283, align 8
  %285 = call i32 (i32*, i8*, ...) @fprintf(i32* %281, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.46, i64 0, i64 0), i32 %284)
  %286 = load i32*, i32** %6, align 8
  %287 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %287, i32 0, i32 13
  %289 = load i32, i32* %288, align 4
  %290 = call i32 (i32*, i8*, ...) @fprintf(i32* %286, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.47, i64 0, i64 0), i32 %289)
  %291 = load i64, i64* @notes, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %304

293:                                              ; preds = %270
  %294 = load i32*, i32** %6, align 8
  %295 = call i32 (i32*, i8*, ...) @fprintf(i32* %294, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.48, i64 0, i64 0))
  %296 = load i32*, i32** %6, align 8
  %297 = call i32 (i32*, i8*, ...) @fprintf(i32* %296, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.49, i64 0, i64 0))
  %298 = load i32*, i32** %6, align 8
  %299 = call i32 (i32*, i8*, ...) @fprintf(i32* %298, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.50, i64 0, i64 0))
  %300 = load i32*, i32** %6, align 8
  %301 = call i32 (i32*, i8*, ...) @fprintf(i32* %300, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.51, i64 0, i64 0))
  %302 = load i32*, i32** %6, align 8
  %303 = call i32 (i32*, i8*, ...) @fprintf(i32* %302, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.52, i64 0, i64 0))
  br label %304

304:                                              ; preds = %293, %270
  %305 = load i32*, i32** %6, align 8
  %306 = call i32 (i32*, i8*, ...) @fprintf(i32* %305, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.53, i64 0, i64 0))
  %307 = load i32*, i32** %6, align 8
  %308 = call i32 (i32*, i8*, ...) @fprintf(i32* %307, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.54, i64 0, i64 0))
  %309 = load i32*, i32** %6, align 8
  %310 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %311 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %310, i32 0, i32 24
  %312 = load i64, i64* %311, align 8
  %313 = trunc i64 %312 to i32
  %314 = call i32 (i32*, i8*, ...) @fprintf(i32* %309, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.55, i64 0, i64 0), i32 %313)
  %315 = load i64, i64* @notes, align 8
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %320

317:                                              ; preds = %304
  %318 = load i32*, i32** %6, align 8
  %319 = call i32 (i32*, i8*, ...) @fprintf(i32* %318, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.56, i64 0, i64 0))
  br label %320

320:                                              ; preds = %317, %304
  %321 = load i32*, i32** %6, align 8
  %322 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %323 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %322, i32 0, i32 23
  %324 = load i64, i64* %323, align 8
  %325 = trunc i64 %324 to i32
  %326 = call i32 (i32*, i8*, ...) @fprintf(i32* %321, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.57, i64 0, i64 0), i32 %325)
  %327 = load i64, i64* @notes, align 8
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %342

329:                                              ; preds = %320
  %330 = load i32*, i32** %6, align 8
  %331 = call i32 (i32*, i8*, ...) @fprintf(i32* %330, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.29, i64 0, i64 0))
  %332 = load i32*, i32** %6, align 8
  %333 = call i32 (i32*, i8*, ...) @fprintf(i32* %332, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.30, i64 0, i64 0))
  %334 = load i32*, i32** %6, align 8
  %335 = call i32 (i32*, i8*, ...) @fprintf(i32* %334, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.58, i64 0, i64 0))
  %336 = load i32*, i32** %6, align 8
  %337 = call i32 (i32*, i8*, ...) @fprintf(i32* %336, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.59, i64 0, i64 0))
  %338 = load i32*, i32** %6, align 8
  %339 = call i32 (i32*, i8*, ...) @fprintf(i32* %338, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.33, i64 0, i64 0))
  %340 = load i32*, i32** %6, align 8
  %341 = call i32 (i32*, i8*, ...) @fprintf(i32* %340, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.34, i64 0, i64 0))
  br label %342

342:                                              ; preds = %329, %320
  %343 = load i32*, i32** %6, align 8
  %344 = call i32 (i32*, i8*, ...) @fprintf(i32* %343, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.60, i64 0, i64 0))
  %345 = load i32*, i32** %6, align 8
  %346 = call i32 (i32*, i8*, ...) @fprintf(i32* %345, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.61, i64 0, i64 0))
  br label %354

347:                                              ; preds = %21, %21
  %348 = load i64, i64* @notes, align 8
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %353

350:                                              ; preds = %347
  %351 = load i32*, i32** %6, align 8
  %352 = call i32 (i32*, i8*, ...) @fprintf(i32* %351, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.62, i64 0, i64 0))
  br label %353

353:                                              ; preds = %350, %347
  br label %354

354:                                              ; preds = %21, %353, %342
  %355 = load i32*, i32** %6, align 8
  %356 = call i32 (i32*, i8*, ...) @fprintf(i32* %355, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.63, i64 0, i64 0))
  %357 = load i32*, i32** %6, align 8
  %358 = call i32 (i32*, i8*, ...) @fprintf(i32* %357, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.64, i64 0, i64 0))
  %359 = load i32*, i32** %6, align 8
  %360 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %361 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %360, i32 0, i32 14
  %362 = load i32, i32* %361, align 8
  %363 = call i32 (i32*, i8*, ...) @fprintf(i32* %359, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.65, i64 0, i64 0), i32 %362)
  %364 = load i64, i64* @notes, align 8
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %369

366:                                              ; preds = %354
  %367 = load i32*, i32** %6, align 8
  %368 = call i32 (i32*, i8*, ...) @fprintf(i32* %367, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.66, i64 0, i64 0))
  br label %369

369:                                              ; preds = %366, %354
  %370 = load i32*, i32** %6, align 8
  %371 = call i32 (i32*, i8*, ...) @fprintf(i32* %370, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.67, i64 0, i64 0))
  %372 = load i32*, i32** %6, align 8
  %373 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %374 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %373, i32 0, i32 15
  %375 = load i32, i32* %374, align 4
  %376 = call i32 (i32*, i8*, ...) @fprintf(i32* %372, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.68, i64 0, i64 0), i32 %375)
  store i32 0, i32* %11, align 4
  br label %377

377:                                              ; preds = %404, %369
  %378 = load i32, i32* %11, align 4
  %379 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %380 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %379, i32 0, i32 15
  %381 = load i32, i32* %380, align 4
  %382 = icmp slt i32 %378, %381
  br i1 %382, label %383, label %407

383:                                              ; preds = %377
  %384 = load i32*, i32** %6, align 8
  %385 = load i32, i32* %11, align 4
  %386 = add nsw i32 %385, 1
  %387 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %388 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %387, i32 0, i32 22
  %389 = load %struct.TYPE_7__*, %struct.TYPE_7__** %388, align 8
  %390 = load i32, i32* %11, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %389, i64 %391
  %393 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 4
  %395 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %396 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %395, i32 0, i32 22
  %397 = load %struct.TYPE_7__*, %struct.TYPE_7__** %396, align 8
  %398 = load i32, i32* %11, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %397, i64 %399
  %401 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 4
  %403 = call i32 (i32*, i8*, ...) @fprintf(i32* %384, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.69, i64 0, i64 0), i32 %386, i32 %394, i32 %402)
  br label %404

404:                                              ; preds = %383
  %405 = load i32, i32* %11, align 4
  %406 = add nsw i32 %405, 1
  store i32 %406, i32* %11, align 4
  br label %377

407:                                              ; preds = %377
  %408 = load i32*, i32** %6, align 8
  %409 = call i32 (i32*, i8*, ...) @fprintf(i32* %408, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.70, i64 0, i64 0))
  %410 = load i32*, i32** %6, align 8
  %411 = call i32 (i32*, i8*, ...) @fprintf(i32* %410, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.71, i64 0, i64 0))
  %412 = load i32*, i32** %6, align 8
  %413 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %414 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %413, i32 0, i32 16
  %415 = load i32, i32* %414, align 8
  %416 = call i32 (i32*, i8*, ...) @fprintf(i32* %412, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.72, i64 0, i64 0), i32 %415)
  store i32 0, i32* %11, align 4
  br label %417

417:                                              ; preds = %454, %407
  %418 = load i32, i32* %11, align 4
  %419 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %420 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %419, i32 0, i32 16
  %421 = load i32, i32* %420, align 8
  %422 = icmp slt i32 %418, %421
  br i1 %422, label %423, label %457

423:                                              ; preds = %417
  %424 = load i32*, i32** %6, align 8
  %425 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %426 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %425, i32 0, i32 21
  %427 = load %struct.TYPE_8__*, %struct.TYPE_8__** %426, align 8
  %428 = load i32, i32* %11, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %427, i64 %429
  %431 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 4
  %433 = call i32 (i32*, i8*, ...) @fprintf(i32* %424, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.73, i64 0, i64 0), i32 %432)
  %434 = load i32*, i32** %6, align 8
  %435 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %436 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %435, i32 0, i32 21
  %437 = load %struct.TYPE_8__*, %struct.TYPE_8__** %436, align 8
  %438 = load i32, i32* %11, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %437, i64 %439
  %441 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %440, i32 0, i32 1
  %442 = load i32, i32* %441, align 4
  %443 = call i32 (i32*, i8*, ...) @fprintf(i32* %434, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.74, i64 0, i64 0), i32 %442)
  %444 = load i32*, i32** %6, align 8
  %445 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %446 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %445, i32 0, i32 21
  %447 = load %struct.TYPE_8__*, %struct.TYPE_8__** %446, align 8
  %448 = load i32, i32* %11, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %447, i64 %449
  %451 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %450, i32 0, i32 2
  %452 = load i32, i32* %451, align 4
  %453 = call i32 (i32*, i8*, ...) @fprintf(i32* %444, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.75, i64 0, i64 0), i32 %452)
  br label %454

454:                                              ; preds = %423
  %455 = load i32, i32* %11, align 4
  %456 = add nsw i32 %455, 1
  store i32 %456, i32* %11, align 4
  br label %417

457:                                              ; preds = %417
  %458 = load i32*, i32** %6, align 8
  %459 = call i32 (i32*, i8*, ...) @fprintf(i32* %458, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.76, i64 0, i64 0))
  %460 = load i32*, i32** %6, align 8
  %461 = call i32 (i32*, i8*, ...) @fprintf(i32* %460, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.77, i64 0, i64 0))
  %462 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %463 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %462, i32 0, i32 20
  %464 = load i64, i64* %463, align 8
  %465 = icmp ne i64 %464, 0
  br i1 %465, label %466, label %483

466:                                              ; preds = %457
  %467 = load i32*, i32** %6, align 8
  %468 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %469 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %468, i32 0, i32 19
  %470 = load %struct.TYPE_9__*, %struct.TYPE_9__** %469, align 8
  %471 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %470, i64 0
  %472 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %471, i32 0, i32 0
  %473 = load i32, i32* %472, align 4
  %474 = call i32 (i32*, i8*, ...) @fprintf(i32* %467, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.78, i64 0, i64 0), i32 %473)
  %475 = load i64, i64* @notes, align 8
  %476 = icmp ne i64 %475, 0
  br i1 %476, label %477, label %482

477:                                              ; preds = %466
  %478 = load i32*, i32** %6, align 8
  %479 = call i32 (i32*, i8*, ...) @fprintf(i32* %478, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.79, i64 0, i64 0))
  %480 = load i32*, i32** %6, align 8
  %481 = call i32 (i32*, i8*, ...) @fprintf(i32* %480, i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.80, i64 0, i64 0))
  br label %482

482:                                              ; preds = %477, %466
  br label %531

483:                                              ; preds = %457
  %484 = load i32*, i32** %6, align 8
  %485 = call i32 (i32*, i8*, ...) @fprintf(i32* %484, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.81, i64 0, i64 0))
  %486 = load i64, i64* @notes, align 8
  %487 = icmp ne i64 %486, 0
  br i1 %487, label %488, label %498

488:                                              ; preds = %483
  %489 = load i64, i64* @sampletables, align 8
  %490 = icmp ne i64 %489, 0
  br i1 %490, label %491, label %494

491:                                              ; preds = %488
  %492 = load i32*, i32** %6, align 8
  %493 = call i32 (i32*, i8*, ...) @fprintf(i32* %492, i8* getelementptr inbounds ([140 x i8], [140 x i8]* @.str.82, i64 0, i64 0))
  br label %497

494:                                              ; preds = %488
  %495 = load i32*, i32** %6, align 8
  %496 = call i32 (i32*, i8*, ...) @fprintf(i32* %495, i8* getelementptr inbounds ([147 x i8], [147 x i8]* @.str.83, i64 0, i64 0))
  br label %497

497:                                              ; preds = %494, %491
  br label %498

498:                                              ; preds = %497, %483
  %499 = load i32*, i32** %6, align 8
  %500 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %501 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %500, i32 0, i32 14
  %502 = load i32, i32* %501, align 8
  %503 = call i32 (i32*, i8*, ...) @fprintf(i32* %499, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.84, i64 0, i64 0), i32 %502)
  %504 = load i64, i64* @sampletables, align 8
  %505 = icmp ne i64 %504, 0
  br i1 %505, label %506, label %530

506:                                              ; preds = %498
  store i32 0, i32* %11, align 4
  br label %507

507:                                              ; preds = %526, %506
  %508 = load i32, i32* %11, align 4
  %509 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %510 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %509, i32 0, i32 14
  %511 = load i32, i32* %510, align 8
  %512 = icmp slt i32 %508, %511
  br i1 %512, label %513, label %529

513:                                              ; preds = %507
  %514 = load i32*, i32** %6, align 8
  %515 = load i32, i32* %11, align 4
  %516 = add nsw i32 %515, 1
  %517 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %518 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %517, i32 0, i32 19
  %519 = load %struct.TYPE_9__*, %struct.TYPE_9__** %518, align 8
  %520 = load i32, i32* %11, align 4
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %519, i64 %521
  %523 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %522, i32 0, i32 0
  %524 = load i32, i32* %523, align 4
  %525 = call i32 (i32*, i8*, ...) @fprintf(i32* %514, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.85, i64 0, i64 0), i32 %516, i32 %524)
  br label %526

526:                                              ; preds = %513
  %527 = load i32, i32* %11, align 4
  %528 = add nsw i32 %527, 1
  store i32 %528, i32* %11, align 4
  br label %507

529:                                              ; preds = %507
  br label %530

530:                                              ; preds = %529, %498
  br label %531

531:                                              ; preds = %530, %482
  %532 = load i32*, i32** %6, align 8
  %533 = call i32 (i32*, i8*, ...) @fprintf(i32* %532, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.86, i64 0, i64 0))
  %534 = load i32*, i32** %6, align 8
  %535 = call i32 (i32*, i8*, ...) @fprintf(i32* %534, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.87, i64 0, i64 0))
  %536 = load i32*, i32** %6, align 8
  %537 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %538 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %537, i32 0, i32 17
  %539 = load i32, i32* %538, align 4
  %540 = call i32 (i32*, i8*, ...) @fprintf(i32* %536, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.88, i64 0, i64 0), i32 %539)
  %541 = load i64, i64* @notes, align 8
  %542 = icmp ne i64 %541, 0
  br i1 %542, label %543, label %548

543:                                              ; preds = %531
  %544 = load i32*, i32** %6, align 8
  %545 = call i32 (i32*, i8*, ...) @fprintf(i32* %544, i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.89, i64 0, i64 0))
  %546 = load i32*, i32** %6, align 8
  %547 = call i32 (i32*, i8*, ...) @fprintf(i32* %546, i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.90, i64 0, i64 0))
  br label %548

548:                                              ; preds = %543, %531
  %549 = load i64, i64* @sampletables, align 8
  %550 = icmp ne i64 %549, 0
  br i1 %550, label %551, label %575

551:                                              ; preds = %548
  store i32 0, i32* %11, align 4
  br label %552

552:                                              ; preds = %571, %551
  %553 = load i32, i32* %11, align 4
  %554 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %555 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %554, i32 0, i32 17
  %556 = load i32, i32* %555, align 4
  %557 = icmp slt i32 %553, %556
  br i1 %557, label %558, label %574

558:                                              ; preds = %552
  %559 = load i32*, i32** %6, align 8
  %560 = load i32, i32* %11, align 4
  %561 = add nsw i32 %560, 1
  %562 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %563 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %562, i32 0, i32 18
  %564 = load %struct.TYPE_10__*, %struct.TYPE_10__** %563, align 8
  %565 = load i32, i32* %11, align 4
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %564, i64 %566
  %568 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %567, i32 0, i32 0
  %569 = load i32, i32* %568, align 4
  %570 = call i32 (i32*, i8*, ...) @fprintf(i32* %559, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.91, i64 0, i64 0), i32 %561, i32 %569)
  br label %571

571:                                              ; preds = %558
  %572 = load i32, i32* %11, align 4
  %573 = add nsw i32 %572, 1
  store i32 %573, i32* %11, align 4
  br label %552

574:                                              ; preds = %552
  br label %575

575:                                              ; preds = %574, %548
  %576 = load i32*, i32** %6, align 8
  %577 = call i32 (i32*, i8*, ...) @fprintf(i32* %576, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.92, i64 0, i64 0))
  %578 = load i32*, i32** %6, align 8
  %579 = call i32 (i32*, i8*, ...) @fprintf(i32* %578, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.93, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @uint_to_chars(i32, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @xml_out_frame_jp2h(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
