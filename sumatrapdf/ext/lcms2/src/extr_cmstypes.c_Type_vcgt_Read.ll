; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_vcgt_Read.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_vcgt_Read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_8__ = type { double, double, double }

@cmsERROR_UNKNOWN_EXTENSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Unsupported number of channels for VCGT '%d'\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Unsupported bit depth for VCGT '%d'\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Unsupported tag type for VCGT '%d'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, %struct._cms_typehandler_struct*, i32*, i32*, i32)* @Type_vcgt_Read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Type_vcgt_Read(i32 %0, %struct._cms_typehandler_struct* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._cms_typehandler_struct*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_7__**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [3 x %struct.TYPE_8__], align 16
  %21 = alloca [10 x double], align 16
  store i32 %0, i32* %7, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %22 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %23 = ptrtoint %struct._cms_typehandler_struct* %22 to i32
  %24 = call i32 @cmsUNUSED_PARAMETER(i32 %23)
  %25 = load i32*, i32** %10, align 8
  store i32 0, i32* %25, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = call i32 @_cmsReadUInt32Number(i32 %26, i32* %27, i32* %12)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %5
  store i8* null, i8** %6, align 8
  br label %256

31:                                               ; preds = %5
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @_cmsCalloc(i32 %32, i32 3, i32 8)
  %34 = inttoptr i64 %33 to %struct.TYPE_7__**
  store %struct.TYPE_7__** %34, %struct.TYPE_7__*** %15, align 8
  %35 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %15, align 8
  %36 = icmp eq %struct.TYPE_7__** %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i8* null, i8** %6, align 8
  br label %256

38:                                               ; preds = %31
  %39 = load i32, i32* %12, align 4
  switch i32 %39, label %240 [
    i32 128, label %40
    i32 129, label %151
  ]

40:                                               ; preds = %38
  %41 = load i32, i32* %7, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @_cmsReadUInt16Number(i32 %41, i32* %42, i32* %16)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  br label %249

46:                                               ; preds = %40
  %47 = load i32, i32* %16, align 4
  %48 = icmp ne i32 %47, 3
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @cmsERROR_UNKNOWN_EXTENSION, align 4
  %52 = load i32, i32* %16, align 4
  %53 = call i32 @cmsSignalError(i32 %50, i32 %51, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %249

54:                                               ; preds = %46
  %55 = load i32, i32* %7, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @_cmsReadUInt16Number(i32 %55, i32* %56, i32* %17)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  br label %249

60:                                               ; preds = %54
  %61 = load i32, i32* %7, align 4
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @_cmsReadUInt16Number(i32 %61, i32* %62, i32* %18)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  br label %249

66:                                               ; preds = %60
  %67 = load i32, i32* %17, align 4
  %68 = icmp eq i32 %67, 256
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load i32, i32* %18, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i32, i32* %11, align 4
  %74 = icmp eq i32 %73, 1576
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 2, i32* %18, align 4
  br label %76

76:                                               ; preds = %75, %72, %69, %66
  store i32 0, i32* %13, align 4
  br label %77

77:                                               ; preds = %147, %76
  %78 = load i32, i32* %13, align 4
  %79 = icmp slt i32 %78, 3
  br i1 %79, label %80, label %150

80:                                               ; preds = %77
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %17, align 4
  %83 = call %struct.TYPE_7__* @cmsBuildTabulatedToneCurve16(i32 %81, i32 %82, i32* null)
  %84 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %15, align 8
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %84, i64 %86
  store %struct.TYPE_7__* %83, %struct.TYPE_7__** %87, align 8
  %88 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %15, align 8
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %88, i64 %90
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = icmp eq %struct.TYPE_7__* %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %80
  br label %249

95:                                               ; preds = %80
  %96 = load i32, i32* %18, align 4
  switch i32 %96, label %140 [
    i32 1, label %97
    i32 2, label %125
  ]

97:                                               ; preds = %95
  store i32 0, i32* %14, align 4
  br label %98

98:                                               ; preds = %121, %97
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %17, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %124

102:                                              ; preds = %98
  %103 = load i32, i32* %7, align 4
  %104 = load i32*, i32** %9, align 8
  %105 = call i32 @_cmsReadUInt8Number(i32 %103, i32* %104, i32* %19)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %102
  br label %249

108:                                              ; preds = %102
  %109 = load i32, i32* %19, align 4
  %110 = call i32 @FROM_8_TO_16(i32 %109)
  %111 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %15, align 8
  %112 = load i32, i32* %13, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %111, i64 %113
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %14, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  store i32 %110, i32* %120, align 4
  br label %121

121:                                              ; preds = %108
  %122 = load i32, i32* %14, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %14, align 4
  br label %98

124:                                              ; preds = %98
  br label %146

125:                                              ; preds = %95
  %126 = load i32, i32* %7, align 4
  %127 = load i32*, i32** %9, align 8
  %128 = load i32, i32* %17, align 4
  %129 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %15, align 8
  %130 = load i32, i32* %13, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %129, i64 %131
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = call i32 @_cmsReadUInt16Array(i32 %126, i32* %127, i32 %128, i32* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %125
  br label %249

139:                                              ; preds = %125
  br label %146

140:                                              ; preds = %95
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* @cmsERROR_UNKNOWN_EXTENSION, align 4
  %143 = load i32, i32* %18, align 4
  %144 = mul nsw i32 %143, 8
  %145 = call i32 @cmsSignalError(i32 %141, i32 %142, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %144)
  br label %249

146:                                              ; preds = %139, %124
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %13, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %13, align 4
  br label %77

150:                                              ; preds = %77
  br label %245

151:                                              ; preds = %38
  store i32 0, i32* %13, align 4
  br label %152

152:                                              ; preds = %236, %151
  %153 = load i32, i32* %13, align 4
  %154 = icmp slt i32 %153, 3
  br i1 %154, label %155, label %239

155:                                              ; preds = %152
  %156 = load i32, i32* %7, align 4
  %157 = load i32*, i32** %9, align 8
  %158 = load i32, i32* %13, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [3 x %struct.TYPE_8__], [3 x %struct.TYPE_8__]* %20, i64 0, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = call i32 @_cmsRead15Fixed16Number(i32 %156, i32* %157, double* %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %155
  br label %249

165:                                              ; preds = %155
  %166 = load i32, i32* %7, align 4
  %167 = load i32*, i32** %9, align 8
  %168 = load i32, i32* %13, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [3 x %struct.TYPE_8__], [3 x %struct.TYPE_8__]* %20, i64 0, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 1
  %172 = call i32 @_cmsRead15Fixed16Number(i32 %166, i32* %167, double* %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %165
  br label %249

175:                                              ; preds = %165
  %176 = load i32, i32* %7, align 4
  %177 = load i32*, i32** %9, align 8
  %178 = load i32, i32* %13, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [3 x %struct.TYPE_8__], [3 x %struct.TYPE_8__]* %20, i64 0, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 2
  %182 = call i32 @_cmsRead15Fixed16Number(i32 %176, i32* %177, double* %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %175
  br label %249

185:                                              ; preds = %175
  %186 = load i32, i32* %13, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [3 x %struct.TYPE_8__], [3 x %struct.TYPE_8__]* %20, i64 0, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 0
  %190 = load double, double* %189, align 8
  %191 = getelementptr inbounds [10 x double], [10 x double]* %21, i64 0, i64 0
  store double %190, double* %191, align 16
  %192 = load i32, i32* %13, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [3 x %struct.TYPE_8__], [3 x %struct.TYPE_8__]* %20, i64 0, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 2
  %196 = load double, double* %195, align 8
  %197 = load i32, i32* %13, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [3 x %struct.TYPE_8__], [3 x %struct.TYPE_8__]* %20, i64 0, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 1
  %201 = load double, double* %200, align 8
  %202 = fsub double %196, %201
  %203 = load i32, i32* %13, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [3 x %struct.TYPE_8__], [3 x %struct.TYPE_8__]* %20, i64 0, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  %207 = load double, double* %206, align 8
  %208 = fdiv double 1.000000e+00, %207
  %209 = call double @pow(double %202, double %208) #3
  %210 = getelementptr inbounds [10 x double], [10 x double]* %21, i64 0, i64 1
  store double %209, double* %210, align 8
  %211 = getelementptr inbounds [10 x double], [10 x double]* %21, i64 0, i64 2
  store double 0.000000e+00, double* %211, align 16
  %212 = getelementptr inbounds [10 x double], [10 x double]* %21, i64 0, i64 3
  store double 0.000000e+00, double* %212, align 8
  %213 = getelementptr inbounds [10 x double], [10 x double]* %21, i64 0, i64 4
  store double 0.000000e+00, double* %213, align 16
  %214 = load i32, i32* %13, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [3 x %struct.TYPE_8__], [3 x %struct.TYPE_8__]* %20, i64 0, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 1
  %218 = load double, double* %217, align 8
  %219 = getelementptr inbounds [10 x double], [10 x double]* %21, i64 0, i64 5
  store double %218, double* %219, align 8
  %220 = getelementptr inbounds [10 x double], [10 x double]* %21, i64 0, i64 6
  store double 0.000000e+00, double* %220, align 16
  %221 = load i32, i32* %7, align 4
  %222 = getelementptr inbounds [10 x double], [10 x double]* %21, i64 0, i64 0
  %223 = call %struct.TYPE_7__* @cmsBuildParametricToneCurve(i32 %221, i32 5, double* %222)
  %224 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %15, align 8
  %225 = load i32, i32* %13, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %224, i64 %226
  store %struct.TYPE_7__* %223, %struct.TYPE_7__** %227, align 8
  %228 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %15, align 8
  %229 = load i32, i32* %13, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %228, i64 %230
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %231, align 8
  %233 = icmp eq %struct.TYPE_7__* %232, null
  br i1 %233, label %234, label %235

234:                                              ; preds = %185
  br label %249

235:                                              ; preds = %185
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %13, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %13, align 4
  br label %152

239:                                              ; preds = %152
  br label %245

240:                                              ; preds = %38
  %241 = load i32, i32* %7, align 4
  %242 = load i32, i32* @cmsERROR_UNKNOWN_EXTENSION, align 4
  %243 = load i32, i32* %12, align 4
  %244 = call i32 @cmsSignalError(i32 %241, i32 %242, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %243)
  br label %249

245:                                              ; preds = %239, %150
  %246 = load i32*, i32** %10, align 8
  store i32 1, i32* %246, align 4
  %247 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %15, align 8
  %248 = bitcast %struct.TYPE_7__** %247 to i8*
  store i8* %248, i8** %6, align 8
  br label %256

249:                                              ; preds = %240, %234, %184, %174, %164, %140, %138, %107, %94, %65, %59, %49, %45
  %250 = load i32, i32* %7, align 4
  %251 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %15, align 8
  %252 = call i32 @cmsFreeToneCurveTriple(i32 %250, %struct.TYPE_7__** %251)
  %253 = load i32, i32* %7, align 4
  %254 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %15, align 8
  %255 = call i32 @_cmsFree(i32 %253, %struct.TYPE_7__** %254)
  store i8* null, i8** %6, align 8
  br label %256

256:                                              ; preds = %249, %245, %37, %30
  %257 = load i8*, i8** %6, align 8
  ret i8* %257
}

declare dso_local i32 @cmsUNUSED_PARAMETER(i32) #1

declare dso_local i32 @_cmsReadUInt32Number(i32, i32*, i32*) #1

declare dso_local i64 @_cmsCalloc(i32, i32, i32) #1

declare dso_local i32 @_cmsReadUInt16Number(i32, i32*, i32*) #1

declare dso_local i32 @cmsSignalError(i32, i32, i8*, i32) #1

declare dso_local %struct.TYPE_7__* @cmsBuildTabulatedToneCurve16(i32, i32, i32*) #1

declare dso_local i32 @_cmsReadUInt8Number(i32, i32*, i32*) #1

declare dso_local i32 @FROM_8_TO_16(i32) #1

declare dso_local i32 @_cmsReadUInt16Array(i32, i32*, i32, i32*) #1

declare dso_local i32 @_cmsRead15Fixed16Number(i32, i32*, double*) #1

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #2

declare dso_local %struct.TYPE_7__* @cmsBuildParametricToneCurve(i32, i32, double*) #1

declare dso_local i32 @cmsFreeToneCurveTriple(i32, %struct.TYPE_7__**) #1

declare dso_local i32 @_cmsFree(i32, %struct.TYPE_7__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
