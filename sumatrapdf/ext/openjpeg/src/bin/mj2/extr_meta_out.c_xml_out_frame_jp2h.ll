; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/mj2/extr_meta_out.c_xml_out_frame_jp2h.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/mj2/extr_meta_out.c_xml_out_frame_jp2h.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"              <JP2Header BoxType=\22jp2h\22>\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"                <ImageHeader BoxType=\22ihdr\22>\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"                  <HEIGHT>%d</HEIGHT>\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"                  <WIDTH>%d</WIDTH>\0A\00", align 1
@notes = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [97 x i8] c"                  <!-- HEIGHT here, if 2 fields per image, is of total deinterlaced height. -->\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"                  <NC>%d</NC>\0A\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"                  <!-- NC is number of components -->\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"                  <BPC>\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"                    <AsHex>0x%02x</AsHex>\0A\00", align 1
@.str.9 = private unnamed_addr constant [102 x i8] c"                    <!-- BPC = 0xff means bits per pixel varies with component; see table below. -->\0A\00", align 1
@raw = common dso_local global i64 0, align 8
@derived = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [53 x i8] c"                    <BitsPerPixel>%d</BitsPerPixel>\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"                    <Signed>%d</Signed>\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"                  </BPC>\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"                  <C>%d</C>\0A\00", align 1
@.str.14 = private unnamed_addr constant [81 x i8] c"                  <!-- C is compression type.  Only \227\22 is allowed to date. -->\0A\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"                  <UnkC>%d</UnkC>\0A\00", align 1
@.str.16 = private unnamed_addr constant [109 x i8] c"                  <!-- Colourspace Unknown. 1 = unknown, 0 = known (e.g., colourspace spec is accurate) -->\0A\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"                  <IPR>%d</IPR>\0A\00", align 1
@.str.18 = private unnamed_addr constant [98 x i8] c"                  <!-- IPR is 1 if frame contains an Intellectual Property box; 0 otherwise. -->\0A\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"                </ImageHeader>\0A\00", align 1
@.str.20 = private unnamed_addr constant [51 x i8] c"                <BitsPerComponent BoxType=\22bpcc\22>\0A\00", align 1
@.str.21 = private unnamed_addr constant [85 x i8] c"                <!-- Pixel depth (range 1 to 38) is low 7 bits of hex value + 1 -->\0A\00", align 1
@.str.22 = private unnamed_addr constant [41 x i8] c"                  <AsHex>0x%02x</AsHex>\0A\00", align 1
@.str.23 = private unnamed_addr constant [51 x i8] c"                  <BitsPerPixel>%d</BitsPerPixel>\0A\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"                  <Signed>%d</Signed>\0A\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"                </BitsPerComponent>\0A\00", align 1
@.str.26 = private unnamed_addr constant [54 x i8] c"                <ColourSpecification BoxType=\22colr\22>\0A\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"                  <METH>%d</METH>\0A\00", align 1
@.str.28 = private unnamed_addr constant [73 x i8] c"                  <!-- Valid values of specification method so far: -->\0A\00", align 1
@.str.29 = private unnamed_addr constant [74 x i8] c"                  <!--   1 = Enumerated colourspace, in EnumCS field -->\0A\00", align 1
@.str.30 = private unnamed_addr constant [75 x i8] c"                  <!--   2 = Restricted ICC Profile, in PROFILE field -->\0A\00", align 1
@.str.31 = private unnamed_addr constant [35 x i8] c"                  <PREC>%d</PREC>\0A\00", align 1
@.str.32 = private unnamed_addr constant [72 x i8] c"                  <!-- 0 is only valid value of precedence so far. -->\0A\00", align 1
@.str.33 = private unnamed_addr constant [39 x i8] c"                  <APPROX>%d</APPROX>\0A\00", align 1
@.str.34 = private unnamed_addr constant [87 x i8] c"                  <!-- 0 is only valid value of colourspace approximation so far. -->\0A\00", align 1
@.str.35 = private unnamed_addr constant [39 x i8] c"                  <EnumCS>%d</EnumCS>\0A\00", align 1
@.str.36 = private unnamed_addr constant [79 x i8] c"                  <!-- Valid values of enumerated MJ2 colourspace so far: -->\0A\00", align 1
@.str.37 = private unnamed_addr constant [68 x i8] c"                  <!--   16: sRGB as defined by IEC 61966-2-1. -->\0A\00", align 1
@.str.38 = private unnamed_addr constant [63 x i8] c"                  <!--   17: greyscale (related to sRGB). -->\0A\00", align 1
@.str.39 = private unnamed_addr constant [69 x i8] c"                  <!--   18: sRGB YCC (from JPEG 2000 Part II). -->\0A\00", align 1
@.str.40 = private unnamed_addr constant [76 x i8] c"                  <!-- (Additional JPX values are defined in Part II). -->\0A\00", align 1
@.str.41 = private unnamed_addr constant [87 x i8] c"                  <!-- PROFILE is not handled by current OpenJPEG implementation. -->\0A\00", align 1
@.str.42 = private unnamed_addr constant [40 x i8] c"                </ColourSpecification>\0A\00", align 1
@.str.43 = private unnamed_addr constant [28 x i8] c"              </JP2Header>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xml_out_frame_jp2h(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 (i32*, i8*, ...) @fprintf(i32* %6, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 (i32*, i8*, ...) @fprintf(i32* %8, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %10 = load i32*, i32** %3, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 (i32*, i8*, ...) @fprintf(i32* %10, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %13)
  %15 = load i32*, i32** %3, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i32*, i8*, ...) @fprintf(i32* %15, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %18)
  %20 = load i64, i64* @notes, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 (i32*, i8*, ...) @fprintf(i32* %23, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.4, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %2
  %26 = load i32*, i32** %3, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i32*, i8*, ...) @fprintf(i32* %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %29)
  %31 = load i64, i64* @notes, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 (i32*, i8*, ...) @fprintf(i32* %34, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %25
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 (i32*, i8*, ...) @fprintf(i32* %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 255
  br i1 %42, label %43, label %55

43:                                               ; preds = %36
  %44 = load i32*, i32** %3, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i32*, i8*, ...) @fprintf(i32* %44, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i32 %47)
  %49 = load i64, i64* @notes, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 (i32*, i8*, ...) @fprintf(i32* %52, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.9, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %43
  br label %87

55:                                               ; preds = %36
  %56 = load i64, i64* @raw, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %55
  %59 = load i32*, i32** %3, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i32*, i8*, ...) @fprintf(i32* %59, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i32 %62)
  %64 = load i64, i64* @notes, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 (i32*, i8*, ...) @fprintf(i32* %67, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.9, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %58
  br label %70

70:                                               ; preds = %69, %55
  %71 = load i64, i64* @derived, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %70
  %74 = load i32*, i32** %3, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 127
  %79 = call i32 (i32*, i8*, ...) @fprintf(i32* %74, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i64 0, i64 0), i32 %78)
  %80 = load i32*, i32** %3, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = ashr i32 %83, 7
  %85 = call i32 (i32*, i8*, ...) @fprintf(i32* %80, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %73, %70
  br label %87

87:                                               ; preds = %86, %54
  %88 = load i32*, i32** %3, align 8
  %89 = call i32 (i32*, i8*, ...) @fprintf(i32* %88, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0))
  %90 = load i32*, i32** %3, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = call i32 (i32*, i8*, ...) @fprintf(i32* %90, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i32 %93)
  %95 = load i64, i64* @notes, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %87
  %98 = load i32*, i32** %3, align 8
  %99 = call i32 (i32*, i8*, ...) @fprintf(i32* %98, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.14, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %87
  %101 = load i32*, i32** %3, align 8
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (i32*, i8*, ...) @fprintf(i32* %101, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0), i32 %104)
  %106 = load i64, i64* @notes, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %100
  %109 = load i32*, i32** %3, align 8
  %110 = call i32 (i32*, i8*, ...) @fprintf(i32* %109, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.16, i64 0, i64 0))
  br label %111

111:                                              ; preds = %108, %100
  %112 = load i32*, i32** %3, align 8
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 8
  %116 = call i32 (i32*, i8*, ...) @fprintf(i32* %112, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0), i32 %115)
  %117 = load i64, i64* @notes, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %111
  %120 = load i32*, i32** %3, align 8
  %121 = call i32 (i32*, i8*, ...) @fprintf(i32* %120, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.18, i64 0, i64 0))
  br label %122

122:                                              ; preds = %119, %111
  %123 = load i32*, i32** %3, align 8
  %124 = call i32 (i32*, i8*, ...) @fprintf(i32* %123, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i64 0, i64 0))
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = icmp eq i32 %127, 255
  br i1 %128, label %129, label %192

129:                                              ; preds = %122
  %130 = load i32*, i32** %3, align 8
  %131 = call i32 (i32*, i8*, ...) @fprintf(i32* %130, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.20, i64 0, i64 0))
  %132 = load i64, i64* @notes, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load i32*, i32** %3, align 8
  %136 = call i32 (i32*, i8*, ...) @fprintf(i32* %135, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.21, i64 0, i64 0))
  br label %137

137:                                              ; preds = %134, %129
  store i32 0, i32* %5, align 4
  br label %138

138:                                              ; preds = %186, %137
  %139 = load i32, i32* %5, align 4
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = icmp slt i32 %139, %142
  br i1 %143, label %144, label %189

144:                                              ; preds = %138
  %145 = load i64, i64* @raw, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %158

147:                                              ; preds = %144
  %148 = load i32*, i32** %3, align 8
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 11
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = load i32, i32* %5, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (i32*, i8*, ...) @fprintf(i32* %148, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.22, i64 0, i64 0), i32 %156)
  br label %158

158:                                              ; preds = %147, %144
  %159 = load i64, i64* @derived, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %185

161:                                              ; preds = %158
  %162 = load i32*, i32** %3, align 8
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 11
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %164, align 8
  %166 = load i32, i32* %5, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = and i32 %170, 127
  %172 = add nsw i32 %171, 1
  %173 = call i32 (i32*, i8*, ...) @fprintf(i32* %162, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.23, i64 0, i64 0), i32 %172)
  %174 = load i32*, i32** %3, align 8
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 11
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  %178 = load i32, i32* %5, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = ashr i32 %182, 7
  %184 = call i32 (i32*, i8*, ...) @fprintf(i32* %174, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0), i32 %183)
  br label %185

185:                                              ; preds = %161, %158
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %5, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %5, align 4
  br label %138

189:                                              ; preds = %138
  %190 = load i32*, i32** %3, align 8
  %191 = call i32 (i32*, i8*, ...) @fprintf(i32* %190, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.25, i64 0, i64 0))
  br label %192

192:                                              ; preds = %189, %122
  %193 = load i32*, i32** %3, align 8
  %194 = call i32 (i32*, i8*, ...) @fprintf(i32* %193, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.26, i64 0, i64 0))
  %195 = load i32*, i32** %3, align 8
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 7
  %198 = load i32, i32* %197, align 4
  %199 = call i32 (i32*, i8*, ...) @fprintf(i32* %195, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.27, i64 0, i64 0), i32 %198)
  %200 = load i64, i64* @notes, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %209

202:                                              ; preds = %192
  %203 = load i32*, i32** %3, align 8
  %204 = call i32 (i32*, i8*, ...) @fprintf(i32* %203, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.28, i64 0, i64 0))
  %205 = load i32*, i32** %3, align 8
  %206 = call i32 (i32*, i8*, ...) @fprintf(i32* %205, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.29, i64 0, i64 0))
  %207 = load i32*, i32** %3, align 8
  %208 = call i32 (i32*, i8*, ...) @fprintf(i32* %207, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.30, i64 0, i64 0))
  br label %209

209:                                              ; preds = %202, %192
  %210 = load i32*, i32** %3, align 8
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 8
  %213 = load i32, i32* %212, align 8
  %214 = call i32 (i32*, i8*, ...) @fprintf(i32* %210, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.31, i64 0, i64 0), i32 %213)
  %215 = load i64, i64* @notes, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %209
  %218 = load i32*, i32** %3, align 8
  %219 = call i32 (i32*, i8*, ...) @fprintf(i32* %218, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.32, i64 0, i64 0))
  br label %220

220:                                              ; preds = %217, %209
  %221 = load i32*, i32** %3, align 8
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 9
  %224 = load i32, i32* %223, align 4
  %225 = call i32 (i32*, i8*, ...) @fprintf(i32* %221, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.33, i64 0, i64 0), i32 %224)
  %226 = load i64, i64* @notes, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %220
  %229 = load i32*, i32** %3, align 8
  %230 = call i32 (i32*, i8*, ...) @fprintf(i32* %229, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.34, i64 0, i64 0))
  br label %231

231:                                              ; preds = %228, %220
  %232 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 7
  %234 = load i32, i32* %233, align 4
  %235 = icmp eq i32 %234, 1
  br i1 %235, label %236, label %256

236:                                              ; preds = %231
  %237 = load i32*, i32** %3, align 8
  %238 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 10
  %240 = load i32, i32* %239, align 8
  %241 = call i32 (i32*, i8*, ...) @fprintf(i32* %237, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.35, i64 0, i64 0), i32 %240)
  %242 = load i64, i64* @notes, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %255

244:                                              ; preds = %236
  %245 = load i32*, i32** %3, align 8
  %246 = call i32 (i32*, i8*, ...) @fprintf(i32* %245, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.36, i64 0, i64 0))
  %247 = load i32*, i32** %3, align 8
  %248 = call i32 (i32*, i8*, ...) @fprintf(i32* %247, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.37, i64 0, i64 0))
  %249 = load i32*, i32** %3, align 8
  %250 = call i32 (i32*, i8*, ...) @fprintf(i32* %249, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.38, i64 0, i64 0))
  %251 = load i32*, i32** %3, align 8
  %252 = call i32 (i32*, i8*, ...) @fprintf(i32* %251, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.39, i64 0, i64 0))
  %253 = load i32*, i32** %3, align 8
  %254 = call i32 (i32*, i8*, ...) @fprintf(i32* %253, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.40, i64 0, i64 0))
  br label %255

255:                                              ; preds = %244, %236
  br label %263

256:                                              ; preds = %231
  %257 = load i64, i64* @notes, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %262

259:                                              ; preds = %256
  %260 = load i32*, i32** %3, align 8
  %261 = call i32 (i32*, i8*, ...) @fprintf(i32* %260, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.41, i64 0, i64 0))
  br label %262

262:                                              ; preds = %259, %256
  br label %263

263:                                              ; preds = %262, %255
  %264 = load i32*, i32** %3, align 8
  %265 = call i32 (i32*, i8*, ...) @fprintf(i32* %264, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.42, i64 0, i64 0))
  %266 = load i32*, i32** %3, align 8
  %267 = call i32 (i32*, i8*, ...) @fprintf(i32* %266, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
