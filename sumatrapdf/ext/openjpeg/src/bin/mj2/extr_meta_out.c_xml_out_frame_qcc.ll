; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/mj2/extr_meta_out.c_xml_out_frame_qcc.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/mj2/extr_meta_out.c_xml_out_frame_qcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }

@__const.xml_out_frame_qcc.spaces = private unnamed_addr constant [13 x i8] c"            \00", align 1
@j2k_default_tcp = common dso_local global %struct.TYPE_9__* null, align 8
@notes = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [93 x i8] c"%s<!-- mj2_to_metadata implementation always reports component[0] as using default QCD, -->\0A\00", align 1
@.str.1 = private unnamed_addr constant [102 x i8] c"%s<!-- and any other component, with main-header quantization values different from [0], as QCC. -->\0A\00", align 1
@.str.2 = private unnamed_addr constant [107 x i8] c"%s<!-- and any other component, with tile-part-header quantization values different from [0], as QCC. -->\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"%s<QuantizationComponent Marker=\22QCC\22 Component=\22%d\22>\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"%s  <Sqcc>\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"%s  <!-- Quantization style for this component. -->\0A\00", align 1
@raw = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"%s    <AsHex>0x%02x</AsHex>\0A\00", align 1
@derived = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [49 x i8] c"%s    <QuantizationStyle>%d</QuantizationStyle>\0A\00", align 1
@.str.8 = private unnamed_addr constant [66 x i8] c"%s    <!-- Quantization style (in Sqcc's low 5 bits) may be: -->\0A\00", align 1
@.str.9 = private unnamed_addr constant [58 x i8] c"%s    <!--   0 = No quantization. SPqcc size = 8 bits-->\0A\00", align 1
@.str.10 = private unnamed_addr constant [110 x i8] c"%s    <!--   1 = Scalar derived (values signaled for N(L)LL subband only). Use Eq. E.5. SPqcc size = 16. -->\0A\00", align 1
@.str.11 = private unnamed_addr constant [92 x i8] c"%s    <!--   2 = Scalar expounded (values signaled for each subband). SPqcc size = 16. -->\0A\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"%s    <NumberOfGuardBits>%d</NumberOfGuardBits>\0A\00", align 1
@.str.13 = private unnamed_addr constant [70 x i8] c"%s    <!-- 0-7 guard bits allowed (stored in Sqcc's high 3 bits) -->\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"%s  </Sqcc>\0A\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"%s  <SPqcc>\0A\00", align 1
@J2K_MAXBANDS = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [33 x i8] c"%s    <ReversibleStepSizeValue>\0A\00", align 1
@.str.17 = private unnamed_addr constant [84 x i8] c"%s    <!-- Current mj2_to_metadata implementation dumps entire internal table, -->\0A\00", align 1
@.str.18 = private unnamed_addr constant [62 x i8] c"%s    <!-- until an exponent with zero value is reached. -->\0A\00", align 1
@.str.19 = private unnamed_addr constant [65 x i8] c"%s    <!-- Exponent epsilon(b) of reversible dynamic range. -->\0A\00", align 1
@.str.20 = private unnamed_addr constant [62 x i8] c"%s    <!-- Hex value is as stored, in high-order 5 bits. -->\0A\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"%s      <Exponent Subband=\22%d\22>\0A\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"%s        <AsHex>0x%02x</AsHex>\0A\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"%s        <AsDecimal>%d</AsDecimal>\0A\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"%s      </Exponent>\0A\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"%s    </ReversibleStepSizeValue>\0A\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"%s    <QuantizationStepSizeValues>\0A\00", align 1
@.str.27 = private unnamed_addr constant [87 x i8] c"%s    <!-- For irreversible transformation only.  See Part I Annex E Equation E.3 -->\0A\00", align 1
@.str.28 = private unnamed_addr constant [41 x i8] c"%s      <QuantizationValuesForSubband0>\0A\00", align 1
@.str.29 = private unnamed_addr constant [36 x i8] c"%s      <!-- For N(L)LL subband: >\0A\00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"%s        <Exponent>%d</Exponent>\0A\00", align 1
@.str.31 = private unnamed_addr constant [35 x i8] c"%s        <Mantissa>%d</Mantissa>\0A\00", align 1
@.str.32 = private unnamed_addr constant [42 x i8] c"%s      </QuantizationValuesForSubband0>\0A\00", align 1
@.str.33 = private unnamed_addr constant [98 x i8] c"%s      <!-- Exponents for subbands beyond 0 are not from header, but calculated per Eq. E.5 -->\0A\00", align 1
@.str.34 = private unnamed_addr constant [87 x i8] c"%s      <!-- The mantissa for all subbands is the same, given by the value above. -->\0A\00", align 1
@.str.35 = private unnamed_addr constant [86 x i8] c"%s      <!-- Current mj2_to_metadata implementation dumps entire internal table, -->\0A\00", align 1
@.str.36 = private unnamed_addr constant [74 x i8] c"%s      <!-- until a subband with exponent of zero value is reached. -->\0A\00", align 1
@.str.37 = private unnamed_addr constant [66 x i8] c"%s      <CalculatedExponent Subband=\22%d\22>%d</CalculatedExponent>\0A\00", align 1
@.str.38 = private unnamed_addr constant [37 x i8] c"%s    </QuantizationStepSizeValues>\0A\00", align 1
@.str.39 = private unnamed_addr constant [86 x i8] c"%s    <!-- until a subband with mantissa and exponent of zero values is reached. -->\0A\00", align 1
@.str.40 = private unnamed_addr constant [43 x i8] c"%s      <QuantizationValues Subband=\22%d\22>\0A\00", align 1
@.str.41 = private unnamed_addr constant [31 x i8] c"%s      </QuantizationValues>\0A\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"%s  </SPqcc>\0A\00", align 1
@.str.43 = private unnamed_addr constant [28 x i8] c"%s</QuantizationComponent>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xml_out_frame_qcc(i32* %0, %struct.TYPE_9__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [13 x i8], align 1
  %13 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = bitcast [13 x i8]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %14, i8* align 1 getelementptr inbounds ([13 x i8], [13 x i8]* @__const.xml_out_frame_qcc.spaces, i32 0, i32 0), i64 13, i1 false)
  %15 = getelementptr inbounds [13 x i8], [13 x i8]* %12, i64 0, i64 0
  store i8* %15, i8** %13, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** @j2k_default_tcp, align 8
  %18 = icmp eq %struct.TYPE_9__* %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load i8*, i8** %13, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %13, align 8
  %22 = load i8*, i8** %13, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %13, align 8
  br label %24

24:                                               ; preds = %19, %3
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i64 0
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %8, align 8
  %29 = load i64, i64* @notes, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %24
  %32 = load i32*, i32** %4, align 8
  %33 = load i8*, i8** %13, align 8
  %34 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %32, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** @j2k_default_tcp, align 8
  %37 = icmp eq %struct.TYPE_9__* %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i32*, i32** %4, align 8
  %40 = load i8*, i8** %13, align 8
  %41 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %39, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  br label %46

42:                                               ; preds = %31
  %43 = load i32*, i32** %4, align 8
  %44 = load i8*, i8** %13, align 8
  %45 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %43, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  br label %46

46:                                               ; preds = %42, %38
  br label %47

47:                                               ; preds = %46, %24
  store i32 1, i32* %11, align 4
  br label %48

48:                                               ; preds = %466, %47
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %469

52:                                               ; preds = %48
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i64 %57
  store %struct.TYPE_10__* %58, %struct.TYPE_10__** %7, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %61 = call i64 @same_component_quantization(%struct.TYPE_10__* %59, %struct.TYPE_10__* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  br label %466

64:                                               ; preds = %52
  %65 = load i32*, i32** %4, align 8
  %66 = load i8*, i8** %13, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %65, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i8* %66, i32 %67)
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** @j2k_default_tcp, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i64 0
  store %struct.TYPE_10__* %72, %struct.TYPE_10__** %7, align 8
  %73 = load i32*, i32** %4, align 8
  %74 = load i8*, i8** %13, align 8
  %75 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %74)
  %76 = load i64, i64* @notes, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %64
  %79 = load i32*, i32** %4, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %79, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i8* %80)
  br label %82

82:                                               ; preds = %78, %64
  %83 = load i64, i64* @raw, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %82
  %86 = load i32*, i32** %4, align 8
  %87 = load i8*, i8** %13, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = shl i32 %90, 5
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %91, %94
  %96 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %86, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %87, i32 %95)
  br label %97

97:                                               ; preds = %85, %82
  %98 = load i64, i64* @derived, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %97
  %101 = load i32*, i32** %4, align 8
  %102 = load i8*, i8** %13, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %101, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i8* %102, i32 %105)
  br label %107

107:                                              ; preds = %100, %97
  %108 = load i64, i64* @notes, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %107
  %111 = load i32*, i32** %4, align 8
  %112 = load i8*, i8** %13, align 8
  %113 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %111, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.8, i64 0, i64 0), i8* %112)
  %114 = load i32*, i32** %4, align 8
  %115 = load i8*, i8** %13, align 8
  %116 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %114, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.9, i64 0, i64 0), i8* %115)
  %117 = load i32*, i32** %4, align 8
  %118 = load i8*, i8** %13, align 8
  %119 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %117, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.10, i64 0, i64 0), i8* %118)
  %120 = load i32*, i32** %4, align 8
  %121 = load i8*, i8** %13, align 8
  %122 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %120, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.11, i64 0, i64 0), i8* %121)
  br label %123

123:                                              ; preds = %110, %107
  %124 = load i64, i64* @derived, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %123
  %127 = load i32*, i32** %4, align 8
  %128 = load i8*, i8** %13, align 8
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %127, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0), i8* %128, i32 %131)
  br label %133

133:                                              ; preds = %126, %123
  %134 = load i64, i64* @notes, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %133
  %137 = load i32*, i32** %4, align 8
  %138 = load i8*, i8** %13, align 8
  %139 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %137, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.13, i64 0, i64 0), i8* %138)
  br label %140

140:                                              ; preds = %136, %133
  %141 = load i32*, i32** %4, align 8
  %142 = load i8*, i8** %13, align 8
  %143 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %141, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8* %142)
  %144 = load i32*, i32** %4, align 8
  %145 = load i8*, i8** %13, align 8
  %146 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %144, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i8* %145)
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  switch i32 %149, label %350 [
    i32 129, label %150
    i32 128, label %232
  ]

150:                                              ; preds = %140
  %151 = load i32, i32* @J2K_MAXBANDS, align 4
  store i32 %151, i32* %10, align 4
  %152 = load i32*, i32** %4, align 8
  %153 = load i8*, i8** %13, align 8
  %154 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %152, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0), i8* %153)
  %155 = load i64, i64* @notes, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %170

157:                                              ; preds = %150
  %158 = load i32*, i32** %4, align 8
  %159 = load i8*, i8** %13, align 8
  %160 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %158, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.17, i64 0, i64 0), i8* %159)
  %161 = load i32*, i32** %4, align 8
  %162 = load i8*, i8** %13, align 8
  %163 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %161, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.18, i64 0, i64 0), i8* %162)
  %164 = load i32*, i32** %4, align 8
  %165 = load i8*, i8** %13, align 8
  %166 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %164, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19, i64 0, i64 0), i8* %165)
  %167 = load i32*, i32** %4, align 8
  %168 = load i8*, i8** %13, align 8
  %169 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %167, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.20, i64 0, i64 0), i8* %168)
  br label %170

170:                                              ; preds = %157, %150
  store i32 0, i32* %9, align 4
  br label %171

171:                                              ; preds = %225, %170
  %172 = load i32, i32* %9, align 4
  %173 = load i32, i32* %10, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %228

175:                                              ; preds = %171
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 2
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %177, align 8
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %175
  br label %228

186:                                              ; preds = %175
  %187 = load i32*, i32** %4, align 8
  %188 = load i8*, i8** %13, align 8
  %189 = load i32, i32* %9, align 4
  %190 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %187, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0), i8* %188, i32 %189)
  %191 = load i64, i64* @raw, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %206

193:                                              ; preds = %186
  %194 = load i32*, i32** %4, align 8
  %195 = load i8*, i8** %13, align 8
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 2
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %197, align 8
  %199 = load i32, i32* %9, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = shl i32 %203, 3
  %205 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %194, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i64 0, i64 0), i8* %195, i32 %204)
  br label %206

206:                                              ; preds = %193, %186
  %207 = load i64, i64* @derived, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %221

209:                                              ; preds = %206
  %210 = load i32*, i32** %4, align 8
  %211 = load i8*, i8** %13, align 8
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 2
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %213, align 8
  %215 = load i32, i32* %9, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %210, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.23, i64 0, i64 0), i8* %211, i32 %219)
  br label %221

221:                                              ; preds = %209, %206
  %222 = load i32*, i32** %4, align 8
  %223 = load i8*, i8** %13, align 8
  %224 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %222, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0), i8* %223)
  br label %225

225:                                              ; preds = %221
  %226 = load i32, i32* %9, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %9, align 4
  br label %171

228:                                              ; preds = %185, %171
  %229 = load i32*, i32** %4, align 8
  %230 = load i8*, i8** %13, align 8
  %231 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %229, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.25, i64 0, i64 0), i8* %230)
  br label %459

232:                                              ; preds = %140
  %233 = load i32*, i32** %4, align 8
  %234 = load i8*, i8** %13, align 8
  %235 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %233, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i64 0, i64 0), i8* %234)
  %236 = load i64, i64* @notes, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %232
  %239 = load i32*, i32** %4, align 8
  %240 = load i8*, i8** %13, align 8
  %241 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %239, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.27, i64 0, i64 0), i8* %240)
  br label %242

242:                                              ; preds = %238, %232
  %243 = load i32*, i32** %4, align 8
  %244 = load i8*, i8** %13, align 8
  %245 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %243, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.28, i64 0, i64 0), i8* %244)
  %246 = load i64, i64* @notes, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %252

248:                                              ; preds = %242
  %249 = load i32*, i32** %4, align 8
  %250 = load i8*, i8** %13, align 8
  %251 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %249, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.29, i64 0, i64 0), i8* %250)
  br label %252

252:                                              ; preds = %248, %242
  %253 = load i64, i64* @raw, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %273

255:                                              ; preds = %252
  %256 = load i32*, i32** %4, align 8
  %257 = load i8*, i8** %13, align 8
  %258 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 2
  %260 = load %struct.TYPE_8__*, %struct.TYPE_8__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i64 0
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = shl i32 %263, 11
  %265 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 2
  %267 = load %struct.TYPE_8__*, %struct.TYPE_8__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i64 0
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = or i32 %264, %270
  %272 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %256, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i64 0, i64 0), i8* %257, i32 %271)
  br label %273

273:                                              ; preds = %255, %252
  %274 = load i64, i64* @derived, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %295

276:                                              ; preds = %273
  %277 = load i32*, i32** %4, align 8
  %278 = load i8*, i8** %13, align 8
  %279 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %280 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %279, i32 0, i32 2
  %281 = load %struct.TYPE_8__*, %struct.TYPE_8__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i64 0
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %277, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.30, i64 0, i64 0), i8* %278, i32 %284)
  %286 = load i32*, i32** %4, align 8
  %287 = load i8*, i8** %13, align 8
  %288 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %289 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %288, i32 0, i32 2
  %290 = load %struct.TYPE_8__*, %struct.TYPE_8__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i64 0
  %292 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %286, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.31, i64 0, i64 0), i8* %287, i32 %293)
  br label %295

295:                                              ; preds = %276, %273
  %296 = load i32*, i32** %4, align 8
  %297 = load i8*, i8** %13, align 8
  %298 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %296, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.32, i64 0, i64 0), i8* %297)
  %299 = load i64, i64* @notes, align 8
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %314

301:                                              ; preds = %295
  %302 = load i32*, i32** %4, align 8
  %303 = load i8*, i8** %13, align 8
  %304 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %302, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.33, i64 0, i64 0), i8* %303)
  %305 = load i32*, i32** %4, align 8
  %306 = load i8*, i8** %13, align 8
  %307 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %305, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.34, i64 0, i64 0), i8* %306)
  %308 = load i32*, i32** %4, align 8
  %309 = load i8*, i8** %13, align 8
  %310 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %308, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.35, i64 0, i64 0), i8* %309)
  %311 = load i32*, i32** %4, align 8
  %312 = load i8*, i8** %13, align 8
  %313 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %311, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.36, i64 0, i64 0), i8* %312)
  br label %314

314:                                              ; preds = %301, %295
  store i32 1, i32* %9, align 4
  br label %315

315:                                              ; preds = %343, %314
  %316 = load i32, i32* %9, align 4
  %317 = load i32, i32* @J2K_MAXBANDS, align 4
  %318 = icmp slt i32 %316, %317
  br i1 %318, label %319, label %346

319:                                              ; preds = %315
  %320 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %321 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %320, i32 0, i32 2
  %322 = load %struct.TYPE_8__*, %struct.TYPE_8__** %321, align 8
  %323 = load i32, i32* %9, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %322, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 4
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %330

329:                                              ; preds = %319
  br label %346

330:                                              ; preds = %319
  %331 = load i32*, i32** %4, align 8
  %332 = load i8*, i8** %13, align 8
  %333 = load i32, i32* %9, align 4
  %334 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %335 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %334, i32 0, i32 2
  %336 = load %struct.TYPE_8__*, %struct.TYPE_8__** %335, align 8
  %337 = load i32, i32* %9, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %336, i64 %338
  %340 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %331, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.37, i64 0, i64 0), i8* %332, i32 %333, i32 %341)
  br label %343

343:                                              ; preds = %330
  %344 = load i32, i32* %9, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %9, align 4
  br label %315

346:                                              ; preds = %329, %315
  %347 = load i32*, i32** %4, align 8
  %348 = load i8*, i8** %13, align 8
  %349 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %347, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.38, i64 0, i64 0), i8* %348)
  br label %459

350:                                              ; preds = %140
  %351 = load i32, i32* @J2K_MAXBANDS, align 4
  store i32 %351, i32* %10, align 4
  %352 = load i32*, i32** %4, align 8
  %353 = load i8*, i8** %13, align 8
  %354 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %352, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i64 0, i64 0), i8* %353)
  %355 = load i64, i64* @notes, align 8
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %367

357:                                              ; preds = %350
  %358 = load i32*, i32** %4, align 8
  %359 = load i8*, i8** %13, align 8
  %360 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %358, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.27, i64 0, i64 0), i8* %359)
  %361 = load i32*, i32** %4, align 8
  %362 = load i8*, i8** %13, align 8
  %363 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %361, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.17, i64 0, i64 0), i8* %362)
  %364 = load i32*, i32** %4, align 8
  %365 = load i8*, i8** %13, align 8
  %366 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %364, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.39, i64 0, i64 0), i8* %365)
  br label %367

367:                                              ; preds = %357, %350
  store i32 0, i32* %9, align 4
  br label %368

368:                                              ; preds = %452, %367
  %369 = load i32, i32* %9, align 4
  %370 = load i32, i32* %10, align 4
  %371 = icmp slt i32 %369, %370
  br i1 %371, label %372, label %455

372:                                              ; preds = %368
  %373 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %374 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %373, i32 0, i32 2
  %375 = load %struct.TYPE_8__*, %struct.TYPE_8__** %374, align 8
  %376 = load i32, i32* %9, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %375, i64 %377
  %379 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 4
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %382, label %393

382:                                              ; preds = %372
  %383 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %384 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %383, i32 0, i32 2
  %385 = load %struct.TYPE_8__*, %struct.TYPE_8__** %384, align 8
  %386 = load i32, i32* %9, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %385, i64 %387
  %389 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %388, i32 0, i32 1
  %390 = load i32, i32* %389, align 4
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %392, label %393

392:                                              ; preds = %382
  br label %455

393:                                              ; preds = %382, %372
  %394 = load i32*, i32** %4, align 8
  %395 = load i8*, i8** %13, align 8
  %396 = load i32, i32* %9, align 4
  %397 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %394, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.40, i64 0, i64 0), i8* %395, i32 %396)
  %398 = load i64, i64* @raw, align 8
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %422

400:                                              ; preds = %393
  %401 = load i32*, i32** %4, align 8
  %402 = load i8*, i8** %13, align 8
  %403 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %404 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %403, i32 0, i32 2
  %405 = load %struct.TYPE_8__*, %struct.TYPE_8__** %404, align 8
  %406 = load i32, i32* %9, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %405, i64 %407
  %409 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 4
  %411 = shl i32 %410, 11
  %412 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %413 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %412, i32 0, i32 2
  %414 = load %struct.TYPE_8__*, %struct.TYPE_8__** %413, align 8
  %415 = load i32, i32* %9, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %414, i64 %416
  %418 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %417, i32 0, i32 1
  %419 = load i32, i32* %418, align 4
  %420 = or i32 %411, %419
  %421 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %401, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i64 0, i64 0), i8* %402, i32 %420)
  br label %422

422:                                              ; preds = %400, %393
  %423 = load i64, i64* @derived, align 8
  %424 = icmp ne i64 %423, 0
  br i1 %424, label %425, label %448

425:                                              ; preds = %422
  %426 = load i32*, i32** %4, align 8
  %427 = load i8*, i8** %13, align 8
  %428 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %429 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %428, i32 0, i32 2
  %430 = load %struct.TYPE_8__*, %struct.TYPE_8__** %429, align 8
  %431 = load i32, i32* %9, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %430, i64 %432
  %434 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %433, i32 0, i32 0
  %435 = load i32, i32* %434, align 4
  %436 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %426, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.30, i64 0, i64 0), i8* %427, i32 %435)
  %437 = load i32*, i32** %4, align 8
  %438 = load i8*, i8** %13, align 8
  %439 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %440 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %439, i32 0, i32 2
  %441 = load %struct.TYPE_8__*, %struct.TYPE_8__** %440, align 8
  %442 = load i32, i32* %9, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %441, i64 %443
  %445 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %444, i32 0, i32 1
  %446 = load i32, i32* %445, align 4
  %447 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %437, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.31, i64 0, i64 0), i8* %438, i32 %446)
  br label %448

448:                                              ; preds = %425, %422
  %449 = load i32*, i32** %4, align 8
  %450 = load i8*, i8** %13, align 8
  %451 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %449, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.41, i64 0, i64 0), i8* %450)
  br label %452

452:                                              ; preds = %448
  %453 = load i32, i32* %9, align 4
  %454 = add nsw i32 %453, 1
  store i32 %454, i32* %9, align 4
  br label %368

455:                                              ; preds = %392, %368
  %456 = load i32*, i32** %4, align 8
  %457 = load i8*, i8** %13, align 8
  %458 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %456, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.38, i64 0, i64 0), i8* %457)
  br label %459

459:                                              ; preds = %455, %346, %228
  %460 = load i32*, i32** %4, align 8
  %461 = load i8*, i8** %13, align 8
  %462 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %460, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i64 0, i64 0), i8* %461)
  %463 = load i32*, i32** %4, align 8
  %464 = load i8*, i8** %13, align 8
  %465 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %463, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i64 0, i64 0), i8* %464)
  br label %466

466:                                              ; preds = %459, %63
  %467 = load i32, i32* %11, align 4
  %468 = add nsw i32 %467, 1
  store i32 %468, i32* %11, align 4
  br label %48

469:                                              ; preds = %48
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*, ...) #2

declare dso_local i64 @same_component_quantization(%struct.TYPE_10__*, %struct.TYPE_10__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
