; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/mj2/extr_meta_out.c_xml_out_frame_coc.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/mj2/extr_meta_out.c_xml_out_frame_coc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32*, i32* }

@__const.xml_out_frame_coc.spaces = private unnamed_addr constant [13 x i8] c"            \00", align 1
@j2k_default_tcp = common dso_local global %struct.TYPE_7__* null, align 8
@notes = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [93 x i8] c"%s<!-- mj2_to_metadata implementation always reports component[0] as using default COD, -->\0A\00", align 1
@.str.1 = private unnamed_addr constant [95 x i8] c"%s<!-- and any other component, with main-header style values different from [0], as COC. -->\0A\00", align 1
@.str.2 = private unnamed_addr constant [100 x i8] c"%s<!-- and any other component, with tile-part-header style values different from [0], as COC. -->\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"%s<CodingStyleComponent Marker=\22COC\22>\0A\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"%s  <!-- See Ccoc below for zero-based component number. -->\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"%s  <Scoc>0x%02x</Scoc>\0A\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"%s  <!-- Scoc defines entropy coder precincts: -->\0A\00", align 1
@.str.7 = private unnamed_addr constant [83 x i8] c"%s  <!--   0 = maximum, namely (PPx=15, PPy=15); 1 = precincts defined below. -->\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"%s  <Ccoc>%d</Ccoc>\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"%s  <SPcoc>\0A\00", align 1
@.str.10 = private unnamed_addr constant [69 x i8] c"%s    <NumberOfDecompositionLevels>%d</NumberOfDecompositionLevels>\0A\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"%s    <CodeblockWidth>%d</CodeblockWidth>\0A\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"%s    <CodeblockHeight>%d</CodeblockHeight>\0A\00", align 1
@.str.13 = private unnamed_addr constant [73 x i8] c"%s    <!-- CBW and CBH are non-negative, and summed cannot exceed 8 -->\0A\00", align 1
@.str.14 = private unnamed_addr constant [53 x i8] c"%s    <!-- Codeblock dimension is 2^(value + 2) -->\0A\00", align 1
@.str.15 = private unnamed_addr constant [47 x i8] c"%s    <CodeblockStyle>0x%02x</CodeblockStyle>\0A\00", align 1
@.str.16 = private unnamed_addr constant [80 x i8] c"%s    <!-- For CodeblockStyle, bits mean (with value 1=feature on, 0=off): -->\0A\00", align 1
@.str.17 = private unnamed_addr constant [59 x i8] c"%s    <!-- bit 0: Selective arithmetic coding bypass. -->\0A\00", align 1
@.str.18 = private unnamed_addr constant [78 x i8] c"%s    <!-- bit 1: Reset context probabilities on coding pass boundaries. -->\0A\00", align 1
@.str.19 = private unnamed_addr constant [56 x i8] c"%s    <!-- bit 2: Termination on each coding pass. -->\0A\00", align 1
@.str.20 = private unnamed_addr constant [50 x i8] c"%s    <!-- bit 3: Vertically causal context. -->\0A\00", align 1
@.str.21 = private unnamed_addr constant [48 x i8] c"%s    <!-- bit 4: Predictable termination. -->\0A\00", align 1
@.str.22 = private unnamed_addr constant [54 x i8] c"%s    <!-- bit 5: Segmentation symbols are used. -->\0A\00", align 1
@.str.23 = private unnamed_addr constant [43 x i8] c"%s    <Transformation>%d</Transformation>\0A\00", align 1
@.str.24 = private unnamed_addr constant [91 x i8] c"%s    <!-- For Transformation, 0=\229-7 irreversible filter\22, 1=\225-3 reversible filter\22 -->\0A\00", align 1
@J2K_CP_CSTY_PRT = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [22 x i8] c"%s    <PrecinctSize>\0A\00", align 1
@.str.26 = private unnamed_addr constant [109 x i8] c"%s      <!-- These are size exponents PPx and PPy. May be zero only for first level (aka N(L)LL subband)-->\0A\00", align 1
@.str.27 = private unnamed_addr constant [56 x i8] c"%s      <PrecinctHeightAndWidth  ResolutionLevel=\22%d\22>\0A\00", align 1
@raw = common dso_local global i64 0, align 8
@.str.28 = private unnamed_addr constant [33 x i8] c"%s        <AsHex>0x%02x</AsHex>\0A\00", align 1
@derived = common dso_local global i64 0, align 8
@.str.29 = private unnamed_addr constant [47 x i8] c"%s        <WidthAsDecimal>%d</WidthAsDecimal>\0A\00", align 1
@.str.30 = private unnamed_addr constant [49 x i8] c"%s        <HeightAsDecimal>%d</HeightAsDecimal>\0A\00", align 1
@.str.31 = private unnamed_addr constant [35 x i8] c"%s      </PrecinctHeightAndWidth>\0A\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"%s    </PrecinctSize>\0A\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"%s  </SPcoc>\0A\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"%s</CodingStyleComponent>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xml_out_frame_coc(i32* %0, %struct.TYPE_7__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [13 x i8], align 1
  %12 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = bitcast [13 x i8]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 getelementptr inbounds ([13 x i8], [13 x i8]* @__const.xml_out_frame_coc.spaces, i32 0, i32 0), i64 13, i1 false)
  %14 = getelementptr inbounds [13 x i8], [13 x i8]* %11, i64 0, i64 0
  store i8* %14, i8** %12, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** @j2k_default_tcp, align 8
  %17 = icmp eq %struct.TYPE_7__* %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load i8*, i8** %12, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %12, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %12, align 8
  br label %23

23:                                               ; preds = %18, %3
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i64 0
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %8, align 8
  %28 = load i64, i64* @notes, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %23
  %31 = load i32*, i32** %4, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %31, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str, i64 0, i64 0), i8* %32)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** @j2k_default_tcp, align 8
  %36 = icmp eq %struct.TYPE_7__* %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i32*, i32** %4, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %38, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  br label %45

41:                                               ; preds = %30
  %42 = load i32*, i32** %4, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %42, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.2, i64 0, i64 0), i8* %43)
  br label %45

45:                                               ; preds = %41, %37
  br label %46

46:                                               ; preds = %45, %23
  store i32 1, i32* %10, align 4
  br label %47

47:                                               ; preds = %266, %46
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %269

51:                                               ; preds = %47
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i64 %56
  store %struct.TYPE_8__* %57, %struct.TYPE_8__** %7, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %60 = call i64 @same_component_style(%struct.TYPE_8__* %58, %struct.TYPE_8__* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  br label %266

63:                                               ; preds = %51
  %64 = load i32*, i32** %4, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %64, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %65)
  %67 = load i64, i64* @notes, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load i32*, i32** %4, align 8
  %71 = load i8*, i8** %12, align 8
  %72 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %70, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0), i8* %71)
  br label %73

73:                                               ; preds = %69, %63
  %74 = load i32*, i32** %4, align 8
  %75 = load i8*, i8** %12, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %74, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %75, i32 %78)
  %80 = load i64, i64* @notes, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %73
  %83 = load i32*, i32** %4, align 8
  %84 = load i8*, i8** %12, align 8
  %85 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %83, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i8* %84)
  %86 = load i32*, i32** %4, align 8
  %87 = load i8*, i8** %12, align 8
  %88 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %86, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.7, i64 0, i64 0), i8* %87)
  br label %89

89:                                               ; preds = %82, %73
  %90 = load i32*, i32** %4, align 8
  %91 = load i8*, i8** %12, align 8
  %92 = load i32, i32* %10, align 4
  %93 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %90, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* %91, i32 %92)
  %94 = load i32*, i32** %4, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %94, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* %95)
  %97 = load i32*, i32** %4, align 8
  %98 = load i8*, i8** %12, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = sub nsw i32 %101, 1
  %103 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %97, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.10, i64 0, i64 0), i8* %98, i32 %102)
  %104 = load i32*, i32** %4, align 8
  %105 = load i8*, i8** %12, align 8
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = sub nsw i32 %108, 2
  %110 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %104, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0), i8* %105, i32 %109)
  %111 = load i32*, i32** %4, align 8
  %112 = load i8*, i8** %12, align 8
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = sub nsw i32 %115, 2
  %117 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %111, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0), i8* %112, i32 %116)
  %118 = load i64, i64* @notes, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %89
  %121 = load i32*, i32** %4, align 8
  %122 = load i8*, i8** %12, align 8
  %123 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %121, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.13, i64 0, i64 0), i8* %122)
  %124 = load i32*, i32** %4, align 8
  %125 = load i8*, i8** %12, align 8
  %126 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %124, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.14, i64 0, i64 0), i8* %125)
  br label %127

127:                                              ; preds = %120, %89
  %128 = load i32*, i32** %4, align 8
  %129 = load i8*, i8** %12, align 8
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %128, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.15, i64 0, i64 0), i8* %129, i32 %132)
  %134 = load i64, i64* @notes, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %158

136:                                              ; preds = %127
  %137 = load i32*, i32** %4, align 8
  %138 = load i8*, i8** %12, align 8
  %139 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %137, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.16, i64 0, i64 0), i8* %138)
  %140 = load i32*, i32** %4, align 8
  %141 = load i8*, i8** %12, align 8
  %142 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %140, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.17, i64 0, i64 0), i8* %141)
  %143 = load i32*, i32** %4, align 8
  %144 = load i8*, i8** %12, align 8
  %145 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %143, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.18, i64 0, i64 0), i8* %144)
  %146 = load i32*, i32** %4, align 8
  %147 = load i8*, i8** %12, align 8
  %148 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %146, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.19, i64 0, i64 0), i8* %147)
  %149 = load i32*, i32** %4, align 8
  %150 = load i8*, i8** %12, align 8
  %151 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %149, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.20, i64 0, i64 0), i8* %150)
  %152 = load i32*, i32** %4, align 8
  %153 = load i8*, i8** %12, align 8
  %154 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %152, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.21, i64 0, i64 0), i8* %153)
  %155 = load i32*, i32** %4, align 8
  %156 = load i8*, i8** %12, align 8
  %157 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %155, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.22, i64 0, i64 0), i8* %156)
  br label %158

158:                                              ; preds = %136, %127
  %159 = load i32*, i32** %4, align 8
  %160 = load i8*, i8** %12, align 8
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 4
  %164 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %159, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.23, i64 0, i64 0), i8* %160, i32 %163)
  %165 = load i64, i64* @notes, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %158
  %168 = load i32*, i32** %4, align 8
  %169 = load i8*, i8** %12, align 8
  %170 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %168, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.24, i64 0, i64 0), i8* %169)
  br label %171

171:                                              ; preds = %167, %158
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @J2K_CP_CSTY_PRT, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %259

178:                                              ; preds = %171
  %179 = load i32*, i32** %4, align 8
  %180 = load i8*, i8** %12, align 8
  %181 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %179, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0), i8* %180)
  %182 = load i64, i64* @notes, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %178
  %185 = load i32*, i32** %4, align 8
  %186 = load i8*, i8** %12, align 8
  %187 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %185, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.26, i64 0, i64 0), i8* %186)
  br label %188

188:                                              ; preds = %184, %178
  store i32 0, i32* %9, align 4
  br label %189

189:                                              ; preds = %252, %188
  %190 = load i32, i32* %9, align 4
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = sub nsw i32 %193, 1
  %195 = icmp slt i32 %190, %194
  br i1 %195, label %196, label %255

196:                                              ; preds = %189
  %197 = load i32*, i32** %4, align 8
  %198 = load i8*, i8** %12, align 8
  %199 = load i32, i32* %9, align 4
  %200 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %197, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.27, i64 0, i64 0), i8* %198, i32 %199)
  %201 = load i64, i64* @raw, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %223

203:                                              ; preds = %196
  %204 = load i32*, i32** %4, align 8
  %205 = load i8*, i8** %12, align 8
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 6
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %9, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = shl i32 %212, 4
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 7
  %216 = load i32*, i32** %215, align 8
  %217 = load i32, i32* %9, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = or i32 %213, %220
  %222 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %204, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.28, i64 0, i64 0), i8* %205, i32 %221)
  br label %223

223:                                              ; preds = %203, %196
  %224 = load i64, i64* @derived, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %247

226:                                              ; preds = %223
  %227 = load i32*, i32** %4, align 8
  %228 = load i8*, i8** %12, align 8
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 7
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %9, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %227, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.29, i64 0, i64 0), i8* %228, i32 %235)
  %237 = load i32*, i32** %4, align 8
  %238 = load i8*, i8** %12, align 8
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 6
  %241 = load i32*, i32** %240, align 8
  %242 = load i32, i32* %9, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %237, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.30, i64 0, i64 0), i8* %238, i32 %245)
  br label %247

247:                                              ; preds = %226, %223
  %248 = load i32*, i32** %4, align 8
  %249 = load i8*, i8** %12, align 8
  %250 = load i32, i32* %9, align 4
  %251 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %248, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.31, i64 0, i64 0), i8* %249, i32 %250)
  br label %252

252:                                              ; preds = %247
  %253 = load i32, i32* %9, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %9, align 4
  br label %189

255:                                              ; preds = %189
  %256 = load i32*, i32** %4, align 8
  %257 = load i8*, i8** %12, align 8
  %258 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %256, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i64 0, i64 0), i8* %257)
  br label %259

259:                                              ; preds = %255, %171
  %260 = load i32*, i32** %4, align 8
  %261 = load i8*, i8** %12, align 8
  %262 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %260, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i64 0, i64 0), i8* %261)
  %263 = load i32*, i32** %4, align 8
  %264 = load i8*, i8** %12, align 8
  %265 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %263, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i64 0, i64 0), i8* %264)
  br label %266

266:                                              ; preds = %259, %62
  %267 = load i32, i32* %10, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %10, align 4
  br label %47

269:                                              ; preds = %47
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*, ...) #2

declare dso_local i64 @same_component_style(%struct.TYPE_8__*, %struct.TYPE_8__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
