; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/mj2/extr_meta_out.c_xml_out_frame_cod.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/mj2/extr_meta_out.c_xml_out_frame_cod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32*, i32* }

@__const.xml_out_frame_cod.spaces = private unnamed_addr constant [13 x i8] c"            \00", align 1
@j2k_default_tcp = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"%s<CodingStyleDefault Marker=\22COD\22>\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"%s  <Scod>0x%02x</Scod>\0A\00", align 1
@notes = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [81 x i8] c"%s  <!-- For Scod, specific bits mean (where bit 0 is lowest or rightmost): -->\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"%s  <!-- bit 0: Defines entropy coder precincts -->\0A\00", align 1
@.str.4 = private unnamed_addr constant [72 x i8] c"%s  <!--        0 = (PPx=15, PPy=15); 1 = precincts defined below. -->\0A\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"%s  <!-- bit 1: 1 = SOP marker may be used; 0 = not. -->\0A\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"%s  <!-- bit 2: 1 = EPH marker may be used; 0 = not. -->\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"%s  <SGcod>\0A\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"%s    <ProgressionOrder>%d</ProgressionOrder>\0A\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"%s    <!-- Defined Progression Order Values are: -->\0A\00", align 1
@.str.10 = private unnamed_addr constant [65 x i8] c"%s    <!-- 0 = LRCP; 1 = RLCP; 2 = RPCL; 3 = PCRL; 4 = CPRL -->\0A\00", align 1
@.str.11 = private unnamed_addr constant [92 x i8] c"%s    <!-- where L = \22layer\22, R = \22resolution level\22, C = \22component\22, P = \22position\22. -->\0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"%s    <NumberOfLayers>%d</NumberOfLayers>\0A\00", align 1
@.str.13 = private unnamed_addr constant [77 x i8] c"%s    <MultipleComponentTransformation>%d</MultipleComponentTransformation>\0A\00", align 1
@.str.14 = private unnamed_addr constant [103 x i8] c"%s    <!-- For MCT, 0 = none, 1 = transform first 3 components for efficiency, per Part I Annex G -->\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"%s  </SGcod>\0A\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"%s  <SPcod>\0A\00", align 1
@.str.17 = private unnamed_addr constant [69 x i8] c"%s    <NumberOfDecompositionLevels>%d</NumberOfDecompositionLevels>\0A\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"%s    <CodeblockWidth>%d</CodeblockWidth>\0A\00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"%s    <CodeblockHeight>%d</CodeblockHeight>\0A\00", align 1
@.str.20 = private unnamed_addr constant [73 x i8] c"%s    <!-- CBW and CBH are non-negative, and summed cannot exceed 8 -->\0A\00", align 1
@.str.21 = private unnamed_addr constant [53 x i8] c"%s    <!-- Codeblock dimension is 2^(value + 2) -->\0A\00", align 1
@.str.22 = private unnamed_addr constant [47 x i8] c"%s    <CodeblockStyle>0x%02x</CodeblockStyle>\0A\00", align 1
@.str.23 = private unnamed_addr constant [80 x i8] c"%s    <!-- For CodeblockStyle, bits mean (with value 1=feature on, 0=off): -->\0A\00", align 1
@.str.24 = private unnamed_addr constant [59 x i8] c"%s    <!-- bit 0: Selective arithmetic coding bypass. -->\0A\00", align 1
@.str.25 = private unnamed_addr constant [78 x i8] c"%s    <!-- bit 1: Reset context probabilities on coding pass boundaries. -->\0A\00", align 1
@.str.26 = private unnamed_addr constant [56 x i8] c"%s    <!-- bit 2: Termination on each coding pass. -->\0A\00", align 1
@.str.27 = private unnamed_addr constant [50 x i8] c"%s    <!-- bit 3: Vertically causal context. -->\0A\00", align 1
@.str.28 = private unnamed_addr constant [48 x i8] c"%s    <!-- bit 4: Predictable termination. -->\0A\00", align 1
@.str.29 = private unnamed_addr constant [54 x i8] c"%s    <!-- bit 5: Segmentation symbols are used. -->\0A\00", align 1
@.str.30 = private unnamed_addr constant [43 x i8] c"%s    <Transformation>%d</Transformation>\0A\00", align 1
@.str.31 = private unnamed_addr constant [91 x i8] c"%s    <!-- For Transformation, 0=\229-7 irreversible filter\22, 1=\225-3 reversible filter\22 -->\0A\00", align 1
@J2K_CP_CSTY_PRT = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [22 x i8] c"%s    <PrecinctSize>\0A\00", align 1
@.str.33 = private unnamed_addr constant [107 x i8] c"%s    <!-- These are size exponents PPx and PPy. May be zero only for first level (aka N(L)LL subband)-->\0A\00", align 1
@.str.34 = private unnamed_addr constant [56 x i8] c"%s      <PrecinctHeightAndWidth  ResolutionLevel=\22%d\22>\0A\00", align 1
@raw = common dso_local global i64 0, align 8
@.str.35 = private unnamed_addr constant [33 x i8] c"%s        <AsHex>0x%02x</AsHex>\0A\00", align 1
@derived = common dso_local global i64 0, align 8
@.str.36 = private unnamed_addr constant [47 x i8] c"%s        <WidthAsDecimal>%d</WidthAsDecimal>\0A\00", align 1
@.str.37 = private unnamed_addr constant [49 x i8] c"%s        <HeightAsDecimal>%d</HeightAsDecimal>\0A\00", align 1
@.str.38 = private unnamed_addr constant [35 x i8] c"%s      </PrecinctHeightAndWidth>\0A\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"%s    </PrecinctSize>\0A\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"%s  </SPcod>\0A\00", align 1
@.str.41 = private unnamed_addr constant [25 x i8] c"%s</CodingStyleDefault>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xml_out_frame_cod(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [13 x i8], align 1
  %8 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %9 = bitcast [13 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 getelementptr inbounds ([13 x i8], [13 x i8]* @__const.xml_out_frame_cod.spaces, i32 0, i32 0), i64 13, i1 false)
  %10 = getelementptr inbounds [13 x i8], [13 x i8]* %7, i64 0, i64 0
  store i8* %10, i8** %8, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @j2k_default_tcp, align 8
  %13 = icmp eq %struct.TYPE_5__* %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i8*, i8** %8, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %8, align 8
  br label %19

19:                                               ; preds = %14, %2
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i64 0
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %5, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %24, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load i32*, i32** %3, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %28, i32 %31)
  %33 = load i64, i64* @notes, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %19
  %36 = load i32*, i32** %3, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %36, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  %39 = load i32*, i32** %3, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %39, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i8* %40)
  %42 = load i32*, i32** %3, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %42, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.4, i64 0, i64 0), i8* %43)
  %45 = load i32*, i32** %3, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %45, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i8* %46)
  %48 = load i32*, i32** %3, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %48, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0), i8* %49)
  br label %51

51:                                               ; preds = %35, %19
  %52 = load i32*, i32** %3, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %52, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* %53)
  %55 = load i32*, i32** %3, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %55, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0), i8* %56, i32 %59)
  %61 = load i64, i64* @notes, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %51
  %64 = load i32*, i32** %3, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %64, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i8* %65)
  %67 = load i32*, i32** %3, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %67, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.10, i64 0, i64 0), i8* %68)
  %70 = load i32*, i32** %3, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %70, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.11, i64 0, i64 0), i8* %71)
  br label %73

73:                                               ; preds = %63, %51
  %74 = load i32*, i32** %3, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %74, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0), i8* %75, i32 %78)
  %80 = load i32*, i32** %3, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %80, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.13, i64 0, i64 0), i8* %81, i32 %84)
  %86 = load i64, i64* @notes, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %73
  %89 = load i32*, i32** %3, align 8
  %90 = load i8*, i8** %8, align 8
  %91 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %89, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.14, i64 0, i64 0), i8* %90)
  br label %92

92:                                               ; preds = %88, %73
  %93 = load i32*, i32** %3, align 8
  %94 = load i8*, i8** %8, align 8
  %95 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %93, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* %94)
  %96 = load i32*, i32** %3, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %96, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i8* %97)
  %99 = load i32*, i32** %3, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sub nsw i32 %103, 1
  %105 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %99, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.17, i64 0, i64 0), i8* %100, i32 %104)
  %106 = load i32*, i32** %3, align 8
  %107 = load i8*, i8** %8, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = sub nsw i32 %110, 2
  %112 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %106, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.18, i64 0, i64 0), i8* %107, i32 %111)
  %113 = load i32*, i32** %3, align 8
  %114 = load i8*, i8** %8, align 8
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = sub nsw i32 %117, 2
  %119 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %113, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.19, i64 0, i64 0), i8* %114, i32 %118)
  %120 = load i64, i64* @notes, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %92
  %123 = load i32*, i32** %3, align 8
  %124 = load i8*, i8** %8, align 8
  %125 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %123, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.20, i64 0, i64 0), i8* %124)
  %126 = load i32*, i32** %3, align 8
  %127 = load i8*, i8** %8, align 8
  %128 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %126, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.21, i64 0, i64 0), i8* %127)
  br label %129

129:                                              ; preds = %122, %92
  %130 = load i32*, i32** %3, align 8
  %131 = load i8*, i8** %8, align 8
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %130, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.22, i64 0, i64 0), i8* %131, i32 %134)
  %136 = load i64, i64* @notes, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %160

138:                                              ; preds = %129
  %139 = load i32*, i32** %3, align 8
  %140 = load i8*, i8** %8, align 8
  %141 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %139, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.23, i64 0, i64 0), i8* %140)
  %142 = load i32*, i32** %3, align 8
  %143 = load i8*, i8** %8, align 8
  %144 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %142, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.24, i64 0, i64 0), i8* %143)
  %145 = load i32*, i32** %3, align 8
  %146 = load i8*, i8** %8, align 8
  %147 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %145, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.25, i64 0, i64 0), i8* %146)
  %148 = load i32*, i32** %3, align 8
  %149 = load i8*, i8** %8, align 8
  %150 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %148, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.26, i64 0, i64 0), i8* %149)
  %151 = load i32*, i32** %3, align 8
  %152 = load i8*, i8** %8, align 8
  %153 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %151, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.27, i64 0, i64 0), i8* %152)
  %154 = load i32*, i32** %3, align 8
  %155 = load i8*, i8** %8, align 8
  %156 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %154, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.28, i64 0, i64 0), i8* %155)
  %157 = load i32*, i32** %3, align 8
  %158 = load i8*, i8** %8, align 8
  %159 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %157, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.29, i64 0, i64 0), i8* %158)
  br label %160

160:                                              ; preds = %138, %129
  %161 = load i32*, i32** %3, align 8
  %162 = load i8*, i8** %8, align 8
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  %166 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %161, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.30, i64 0, i64 0), i8* %162, i32 %165)
  %167 = load i64, i64* @notes, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %160
  %170 = load i32*, i32** %3, align 8
  %171 = load i8*, i8** %8, align 8
  %172 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %170, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.31, i64 0, i64 0), i8* %171)
  br label %173

173:                                              ; preds = %169, %160
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @J2K_CP_CSTY_PRT, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %260

180:                                              ; preds = %173
  %181 = load i32*, i32** %3, align 8
  %182 = load i8*, i8** %8, align 8
  %183 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %181, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.32, i64 0, i64 0), i8* %182)
  %184 = load i64, i64* @notes, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %180
  %187 = load i32*, i32** %3, align 8
  %188 = load i8*, i8** %8, align 8
  %189 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %187, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.33, i64 0, i64 0), i8* %188)
  br label %190

190:                                              ; preds = %186, %180
  store i32 0, i32* %6, align 4
  br label %191

191:                                              ; preds = %253, %190
  %192 = load i32, i32* %6, align 4
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = icmp slt i32 %192, %195
  br i1 %196, label %197, label %256

197:                                              ; preds = %191
  %198 = load i32*, i32** %3, align 8
  %199 = load i8*, i8** %8, align 8
  %200 = load i32, i32* %6, align 4
  %201 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %198, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.34, i64 0, i64 0), i8* %199, i32 %200)
  %202 = load i64, i64* @raw, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %224

204:                                              ; preds = %197
  %205 = load i32*, i32** %3, align 8
  %206 = load i8*, i8** %8, align 8
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 6
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %6, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = shl i32 %213, 4
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 7
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* %6, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = or i32 %214, %221
  %223 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %205, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.35, i64 0, i64 0), i8* %206, i32 %222)
  br label %224

224:                                              ; preds = %204, %197
  %225 = load i64, i64* @derived, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %248

227:                                              ; preds = %224
  %228 = load i32*, i32** %3, align 8
  %229 = load i8*, i8** %8, align 8
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 7
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %6, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %228, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.36, i64 0, i64 0), i8* %229, i32 %236)
  %238 = load i32*, i32** %3, align 8
  %239 = load i8*, i8** %8, align 8
  %240 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 6
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* %6, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %238, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.37, i64 0, i64 0), i8* %239, i32 %246)
  br label %248

248:                                              ; preds = %227, %224
  %249 = load i32*, i32** %3, align 8
  %250 = load i8*, i8** %8, align 8
  %251 = load i32, i32* %6, align 4
  %252 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %249, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.38, i64 0, i64 0), i8* %250, i32 %251)
  br label %253

253:                                              ; preds = %248
  %254 = load i32, i32* %6, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %6, align 4
  br label %191

256:                                              ; preds = %191
  %257 = load i32*, i32** %3, align 8
  %258 = load i8*, i8** %8, align 8
  %259 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %257, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i64 0, i64 0), i8* %258)
  br label %260

260:                                              ; preds = %256, %173
  %261 = load i32*, i32** %3, align 8
  %262 = load i8*, i8** %8, align 8
  %263 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %261, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i64 0, i64 0), i8* %262)
  %264 = load i32*, i32** %3, align 8
  %265 = load i8*, i8** %8, align 8
  %266 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %264, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.41, i64 0, i64 0), i8* %265)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
