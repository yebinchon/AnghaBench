; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/mj2/extr_meta_out.c_xml_out_frame_qcd.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/mj2/extr_meta_out.c_xml_out_frame_qcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@__const.xml_out_frame_qcd.spaces = private unnamed_addr constant [13 x i8] c"            \00", align 1
@j2k_default_tcp = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"%s<QuantizationDefault Marker=\22QCD\22>\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%s  <Sqcd>\0A\00", align 1
@notes = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [61 x i8] c"%s  <!-- Default quantization style for all components. -->\0A\00", align 1
@raw = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"%s    <AsHex>0x%02x</AsHex>\0A\00", align 1
@derived = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [49 x i8] c"%s    <QuantizationStyle>%d</QuantizationStyle>\0A\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"%s    <!-- Quantization style (in Sqcd's low 5 bits) may be: -->\0A\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"%s    <!--   0 = No quantization. SPqcd size = 8 bits-->\0A\00", align 1
@.str.7 = private unnamed_addr constant [110 x i8] c"%s    <!--   1 = Scalar derived (values signaled for N(L)LL subband only). Use Eq. E.5. SPqcd size = 16. -->\0A\00", align 1
@.str.8 = private unnamed_addr constant [92 x i8] c"%s    <!--   2 = Scalar expounded (values signaled for each subband). SPqcd size = 16. -->\0A\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"%s    <NumberOfGuardBits>%d</NumberOfGuardBits>\0A\00", align 1
@.str.10 = private unnamed_addr constant [70 x i8] c"%s    <!-- 0-7 guard bits allowed (stored in Sqcd's high 3 bits) -->\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"%s  </Sqcd>\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"%s  <SPqcd>\0A\00", align 1
@J2K_MAXBANDS = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [33 x i8] c"%s    <ReversibleStepSizeValue>\0A\00", align 1
@.str.14 = private unnamed_addr constant [84 x i8] c"%s    <!-- Current mj2_to_metadata implementation dumps entire internal table, -->\0A\00", align 1
@.str.15 = private unnamed_addr constant [62 x i8] c"%s    <!-- until an exponent with zero value is reached. -->\0A\00", align 1
@.str.16 = private unnamed_addr constant [65 x i8] c"%s    <!-- Exponent epsilon(b) of reversible dynamic range. -->\0A\00", align 1
@.str.17 = private unnamed_addr constant [62 x i8] c"%s    <!-- Hex value is as stored, in high-order 5 bits. -->\0A\00", align 1
@.str.18 = private unnamed_addr constant [45 x i8] c"%s      <DynamicRangeExponent Subband=\22%d\22>\0A\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"%s        <AsHex>0x%02x</AsHex>\0A\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"%s        <AsDecimal>%d</AsDecimal>\0A\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"%s      </DynamicRangeExponent>\0A\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"%s    </ReversibleStepSizeValue>\0A\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"%s    <QuantizationStepSizeValues>\0A\00", align 1
@.str.24 = private unnamed_addr constant [87 x i8] c"%s    <!-- For irreversible transformation only.  See Part I Annex E Equation E.3 -->\0A\00", align 1
@.str.25 = private unnamed_addr constant [42 x i8] c"%s      <QuantizationValues Subband=\220\22>\0A\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"%s      <!-- For N(L)LL subband: >\0A\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"%s        <Exponent>%d</Exponent>\0A\00", align 1
@.str.28 = private unnamed_addr constant [35 x i8] c"%s        <Mantissa>%d</Mantissa>\0A\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"%s      </QuantizationValues>\0A\00", align 1
@.str.30 = private unnamed_addr constant [98 x i8] c"%s      <!-- Exponents for subbands beyond 0 are not from header, but calculated per Eq. E.5 -->\0A\00", align 1
@.str.31 = private unnamed_addr constant [87 x i8] c"%s      <!-- The mantissa for all subbands is the same, given by the value above. -->\0A\00", align 1
@.str.32 = private unnamed_addr constant [86 x i8] c"%s      <!-- Current mj2_to_metadata implementation dumps entire internal table, -->\0A\00", align 1
@.str.33 = private unnamed_addr constant [74 x i8] c"%s      <!-- until a subband with exponent of zero value is reached. -->\0A\00", align 1
@.str.34 = private unnamed_addr constant [66 x i8] c"%s      <CalculatedExponent Subband=\22%d\22>%d</CalculatedExponent>\0A\00", align 1
@.str.35 = private unnamed_addr constant [37 x i8] c"%s    </QuantizationStepSizeValues>\0A\00", align 1
@.str.36 = private unnamed_addr constant [86 x i8] c"%s    <!-- until a subband with mantissa and exponent of zero values is reached. -->\0A\00", align 1
@.str.37 = private unnamed_addr constant [43 x i8] c"%s      <QuantizationValues Subband=\22%d\22>\0A\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"%s  </SPqcd>\0A\00", align 1
@.str.39 = private unnamed_addr constant [26 x i8] c"%s</QuantizationDefault>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xml_out_frame_qcd(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [13 x i8], align 1
  %9 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %10 = bitcast [13 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 1 getelementptr inbounds ([13 x i8], [13 x i8]* @__const.xml_out_frame_qcd.spaces, i32 0, i32 0), i64 13, i1 false)
  %11 = getelementptr inbounds [13 x i8], [13 x i8]* %8, i64 0, i64 0
  store i8* %11, i8** %9, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** @j2k_default_tcp, align 8
  %14 = icmp eq %struct.TYPE_7__* %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i8*, i8** %9, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %9, align 8
  br label %20

20:                                               ; preds = %15, %2
  %21 = load i32*, i32** %3, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %21, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i64 0
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %5, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %31 = load i64, i64* @notes, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %20
  %34 = load i32*, i32** %3, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %34, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i8* %35)
  br label %37

37:                                               ; preds = %33, %20
  %38 = load i64, i64* @raw, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = load i32*, i32** %3, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = shl i32 %45, 5
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %46, %49
  %51 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %42, i32 %50)
  br label %52

52:                                               ; preds = %40, %37
  %53 = load i64, i64* @derived, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load i32*, i32** %3, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %56, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i8* %57, i32 %60)
  br label %62

62:                                               ; preds = %55, %52
  %63 = load i64, i64* @notes, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %62
  %66 = load i32*, i32** %3, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %66, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0), i8* %67)
  %69 = load i32*, i32** %3, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %69, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0), i8* %70)
  %72 = load i32*, i32** %3, align 8
  %73 = load i8*, i8** %9, align 8
  %74 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %72, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.7, i64 0, i64 0), i8* %73)
  %75 = load i32*, i32** %3, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %75, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.8, i64 0, i64 0), i8* %76)
  br label %78

78:                                               ; preds = %65, %62
  %79 = load i64, i64* @derived, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %78
  %82 = load i32*, i32** %3, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %82, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0), i8* %83, i32 %86)
  br label %88

88:                                               ; preds = %81, %78
  %89 = load i64, i64* @notes, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i32*, i32** %3, align 8
  %93 = load i8*, i8** %9, align 8
  %94 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %92, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.10, i64 0, i64 0), i8* %93)
  br label %95

95:                                               ; preds = %91, %88
  %96 = load i32*, i32** %3, align 8
  %97 = load i8*, i8** %9, align 8
  %98 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %96, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8* %97)
  %99 = load i32*, i32** %3, align 8
  %100 = load i8*, i8** %9, align 8
  %101 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %99, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i8* %100)
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  switch i32 %104, label %305 [
    i32 129, label %105
    i32 128, label %187
  ]

105:                                              ; preds = %95
  %106 = load i32, i32* @J2K_MAXBANDS, align 4
  store i32 %106, i32* %7, align 4
  %107 = load i32*, i32** %3, align 8
  %108 = load i8*, i8** %9, align 8
  %109 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %107, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0), i8* %108)
  %110 = load i64, i64* @notes, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %125

112:                                              ; preds = %105
  %113 = load i32*, i32** %3, align 8
  %114 = load i8*, i8** %9, align 8
  %115 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %113, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.14, i64 0, i64 0), i8* %114)
  %116 = load i32*, i32** %3, align 8
  %117 = load i8*, i8** %9, align 8
  %118 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %116, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.15, i64 0, i64 0), i8* %117)
  %119 = load i32*, i32** %3, align 8
  %120 = load i8*, i8** %9, align 8
  %121 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %119, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.16, i64 0, i64 0), i8* %120)
  %122 = load i32*, i32** %3, align 8
  %123 = load i8*, i8** %9, align 8
  %124 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %122, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.17, i64 0, i64 0), i8* %123)
  br label %125

125:                                              ; preds = %112, %105
  store i32 0, i32* %6, align 4
  br label %126

126:                                              ; preds = %180, %125
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* %7, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %183

130:                                              ; preds = %126
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %130
  br label %183

141:                                              ; preds = %130
  %142 = load i32*, i32** %3, align 8
  %143 = load i8*, i8** %9, align 8
  %144 = load i32, i32* %6, align 4
  %145 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %142, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.18, i64 0, i64 0), i8* %143, i32 %144)
  %146 = load i64, i64* @raw, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %161

148:                                              ; preds = %141
  %149 = load i32*, i32** %3, align 8
  %150 = load i8*, i8** %9, align 8
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 2
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %152, align 8
  %154 = load i32, i32* %6, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = shl i32 %158, 3
  %160 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %149, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i64 0, i64 0), i8* %150, i32 %159)
  br label %161

161:                                              ; preds = %148, %141
  %162 = load i64, i64* @derived, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %176

164:                                              ; preds = %161
  %165 = load i32*, i32** %3, align 8
  %166 = load i8*, i8** %9, align 8
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 2
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %168, align 8
  %170 = load i32, i32* %6, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %165, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i64 0, i64 0), i8* %166, i32 %174)
  br label %176

176:                                              ; preds = %164, %161
  %177 = load i32*, i32** %3, align 8
  %178 = load i8*, i8** %9, align 8
  %179 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %177, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0), i8* %178)
  br label %180

180:                                              ; preds = %176
  %181 = load i32, i32* %6, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %6, align 4
  br label %126

183:                                              ; preds = %140, %126
  %184 = load i32*, i32** %3, align 8
  %185 = load i8*, i8** %9, align 8
  %186 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %184, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i64 0, i64 0), i8* %185)
  br label %414

187:                                              ; preds = %95
  %188 = load i32*, i32** %3, align 8
  %189 = load i8*, i8** %9, align 8
  %190 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %188, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i64 0, i64 0), i8* %189)
  %191 = load i64, i64* @notes, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %187
  %194 = load i32*, i32** %3, align 8
  %195 = load i8*, i8** %9, align 8
  %196 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %194, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.24, i64 0, i64 0), i8* %195)
  br label %197

197:                                              ; preds = %193, %187
  %198 = load i32*, i32** %3, align 8
  %199 = load i8*, i8** %9, align 8
  %200 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %198, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.25, i64 0, i64 0), i8* %199)
  %201 = load i64, i64* @notes, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %197
  %204 = load i32*, i32** %3, align 8
  %205 = load i8*, i8** %9, align 8
  %206 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %204, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i64 0, i64 0), i8* %205)
  br label %207

207:                                              ; preds = %203, %197
  %208 = load i64, i64* @raw, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %228

210:                                              ; preds = %207
  %211 = load i32*, i32** %3, align 8
  %212 = load i8*, i8** %9, align 8
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 2
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i64 0
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = shl i32 %218, 11
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 2
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i64 0
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = or i32 %219, %225
  %227 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %211, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i64 0, i64 0), i8* %212, i32 %226)
  br label %228

228:                                              ; preds = %210, %207
  %229 = load i64, i64* @derived, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %250

231:                                              ; preds = %228
  %232 = load i32*, i32** %3, align 8
  %233 = load i8*, i8** %9, align 8
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 2
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i64 0
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %232, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.27, i64 0, i64 0), i8* %233, i32 %239)
  %241 = load i32*, i32** %3, align 8
  %242 = load i8*, i8** %9, align 8
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 2
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i64 0
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %241, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.28, i64 0, i64 0), i8* %242, i32 %248)
  br label %250

250:                                              ; preds = %231, %228
  %251 = load i32*, i32** %3, align 8
  %252 = load i8*, i8** %9, align 8
  %253 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %251, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i64 0, i64 0), i8* %252)
  %254 = load i64, i64* @notes, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %269

256:                                              ; preds = %250
  %257 = load i32*, i32** %3, align 8
  %258 = load i8*, i8** %9, align 8
  %259 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %257, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.30, i64 0, i64 0), i8* %258)
  %260 = load i32*, i32** %3, align 8
  %261 = load i8*, i8** %9, align 8
  %262 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %260, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.31, i64 0, i64 0), i8* %261)
  %263 = load i32*, i32** %3, align 8
  %264 = load i8*, i8** %9, align 8
  %265 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %263, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.32, i64 0, i64 0), i8* %264)
  %266 = load i32*, i32** %3, align 8
  %267 = load i8*, i8** %9, align 8
  %268 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %266, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.33, i64 0, i64 0), i8* %267)
  br label %269

269:                                              ; preds = %256, %250
  store i32 1, i32* %6, align 4
  br label %270

270:                                              ; preds = %298, %269
  %271 = load i32, i32* %6, align 4
  %272 = load i32, i32* @J2K_MAXBANDS, align 4
  %273 = icmp slt i32 %271, %272
  br i1 %273, label %274, label %301

274:                                              ; preds = %270
  %275 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 2
  %277 = load %struct.TYPE_6__*, %struct.TYPE_6__** %276, align 8
  %278 = load i32, i32* %6, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %274
  br label %301

285:                                              ; preds = %274
  %286 = load i32*, i32** %3, align 8
  %287 = load i8*, i8** %9, align 8
  %288 = load i32, i32* %6, align 4
  %289 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i32 0, i32 2
  %291 = load %struct.TYPE_6__*, %struct.TYPE_6__** %290, align 8
  %292 = load i32, i32* %6, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i64 %293
  %295 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %286, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.34, i64 0, i64 0), i8* %287, i32 %288, i32 %296)
  br label %298

298:                                              ; preds = %285
  %299 = load i32, i32* %6, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %6, align 4
  br label %270

301:                                              ; preds = %284, %270
  %302 = load i32*, i32** %3, align 8
  %303 = load i8*, i8** %9, align 8
  %304 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %302, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.35, i64 0, i64 0), i8* %303)
  br label %414

305:                                              ; preds = %95
  %306 = load i32, i32* @J2K_MAXBANDS, align 4
  store i32 %306, i32* %7, align 4
  %307 = load i32*, i32** %3, align 8
  %308 = load i8*, i8** %9, align 8
  %309 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %307, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i64 0, i64 0), i8* %308)
  %310 = load i64, i64* @notes, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %322

312:                                              ; preds = %305
  %313 = load i32*, i32** %3, align 8
  %314 = load i8*, i8** %9, align 8
  %315 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %313, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.24, i64 0, i64 0), i8* %314)
  %316 = load i32*, i32** %3, align 8
  %317 = load i8*, i8** %9, align 8
  %318 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %316, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.14, i64 0, i64 0), i8* %317)
  %319 = load i32*, i32** %3, align 8
  %320 = load i8*, i8** %9, align 8
  %321 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %319, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.36, i64 0, i64 0), i8* %320)
  br label %322

322:                                              ; preds = %312, %305
  store i32 0, i32* %6, align 4
  br label %323

323:                                              ; preds = %407, %322
  %324 = load i32, i32* %6, align 4
  %325 = load i32, i32* %7, align 4
  %326 = icmp slt i32 %324, %325
  br i1 %326, label %327, label %410

327:                                              ; preds = %323
  %328 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %329 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %328, i32 0, i32 2
  %330 = load %struct.TYPE_6__*, %struct.TYPE_6__** %329, align 8
  %331 = load i32, i32* %6, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %330, i64 %332
  %334 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 4
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %348

337:                                              ; preds = %327
  %338 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %339 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %338, i32 0, i32 2
  %340 = load %struct.TYPE_6__*, %struct.TYPE_6__** %339, align 8
  %341 = load i32, i32* %6, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %340, i64 %342
  %344 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %348

347:                                              ; preds = %337
  br label %410

348:                                              ; preds = %337, %327
  %349 = load i32*, i32** %3, align 8
  %350 = load i8*, i8** %9, align 8
  %351 = load i32, i32* %6, align 4
  %352 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %349, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.37, i64 0, i64 0), i8* %350, i32 %351)
  %353 = load i64, i64* @raw, align 8
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %377

355:                                              ; preds = %348
  %356 = load i32*, i32** %3, align 8
  %357 = load i8*, i8** %9, align 8
  %358 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %359 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %358, i32 0, i32 2
  %360 = load %struct.TYPE_6__*, %struct.TYPE_6__** %359, align 8
  %361 = load i32, i32* %6, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %360, i64 %362
  %364 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 4
  %366 = shl i32 %365, 11
  %367 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %368 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %367, i32 0, i32 2
  %369 = load %struct.TYPE_6__*, %struct.TYPE_6__** %368, align 8
  %370 = load i32, i32* %6, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %369, i64 %371
  %373 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %372, i32 0, i32 1
  %374 = load i32, i32* %373, align 4
  %375 = or i32 %366, %374
  %376 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %356, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i64 0, i64 0), i8* %357, i32 %375)
  br label %377

377:                                              ; preds = %355, %348
  %378 = load i64, i64* @derived, align 8
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %403

380:                                              ; preds = %377
  %381 = load i32*, i32** %3, align 8
  %382 = load i8*, i8** %9, align 8
  %383 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %384 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %383, i32 0, i32 2
  %385 = load %struct.TYPE_6__*, %struct.TYPE_6__** %384, align 8
  %386 = load i32, i32* %6, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %385, i64 %387
  %389 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 4
  %391 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %381, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.27, i64 0, i64 0), i8* %382, i32 %390)
  %392 = load i32*, i32** %3, align 8
  %393 = load i8*, i8** %9, align 8
  %394 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %395 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %394, i32 0, i32 2
  %396 = load %struct.TYPE_6__*, %struct.TYPE_6__** %395, align 8
  %397 = load i32, i32* %6, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %396, i64 %398
  %400 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %399, i32 0, i32 1
  %401 = load i32, i32* %400, align 4
  %402 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %392, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.28, i64 0, i64 0), i8* %393, i32 %401)
  br label %403

403:                                              ; preds = %380, %377
  %404 = load i32*, i32** %3, align 8
  %405 = load i8*, i8** %9, align 8
  %406 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %404, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i64 0, i64 0), i8* %405)
  br label %407

407:                                              ; preds = %403
  %408 = load i32, i32* %6, align 4
  %409 = add nsw i32 %408, 1
  store i32 %409, i32* %6, align 4
  br label %323

410:                                              ; preds = %347, %323
  %411 = load i32*, i32** %3, align 8
  %412 = load i8*, i8** %9, align 8
  %413 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %411, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.35, i64 0, i64 0), i8* %412)
  br label %414

414:                                              ; preds = %410, %301, %183
  %415 = load i32*, i32** %3, align 8
  %416 = load i8*, i8** %9, align 8
  %417 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %415, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i64 0, i64 0), i8* %416)
  %418 = load i32*, i32** %3, align 8
  %419 = load i8*, i8** %9, align 8
  %420 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %418, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.39, i64 0, i64 0), i8* %419)
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
