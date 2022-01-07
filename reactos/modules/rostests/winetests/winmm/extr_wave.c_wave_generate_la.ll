; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/winmm/extr_wave.c_wave_generate_la.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/winmm/extr_wave.c_wave_generate_la.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { double, i32, i32, i32, i64 }
%struct.TYPE_4__ = type { i32 }
%union.anon = type { float }

@PI = common dso_local global double 0.000000e+00, align 8
@WAVE_FORMAT_PCM = common dso_local global i64 0, align 8
@WAVE_FORMAT_EXTENSIBLE = common dso_local global i64 0, align 8
@KSDATAFORMAT_SUBTYPE_PCM = common dso_local global i32 0, align 4
@KSDATAFORMAT_SUBTYPE_IEEE_FLOAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_5__*, double, i32*)* @wave_generate_la to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @wave_generate_la(%struct.TYPE_5__* %0, double %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca double, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca double, align 8
  %14 = alloca i8, align 1
  %15 = alloca i16, align 2
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %union.anon, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store double %1, double* %5, align 8
  store i32* %2, i32** %6, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = bitcast %struct.TYPE_5__* %19 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %12, align 8
  %21 = load double, double* %5, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load double, double* %23, align 8
  %25 = fmul double %21, %24
  %26 = fptosi double %25 to i32
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = mul nsw i32 %27, %30
  %32 = load i32*, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  %33 = call i32 (...) @GetProcessHeap()
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @HeapAlloc(i32 %33, i32 0, i32 %35)
  store i8* %36, i8** %10, align 8
  store i8* %36, i8** %11, align 8
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %271, %3
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %274

41:                                               ; preds = %37
  %42 = load double, double* @PI, align 8
  %43 = fmul double 8.800000e+02, %42
  %44 = load i32, i32* %7, align 4
  %45 = sitofp i32 %44 to double
  %46 = fmul double %43, %45
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load double, double* %48, align 8
  %50 = fdiv double %46, %49
  %51 = call double @sin(double %50) #3
  store double %51, double* %13, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 8
  br i1 %55, label %56, label %75

56:                                               ; preds = %41
  %57 = load double, double* %13, align 8
  %58 = fadd double %57, 1.000000e+00
  %59 = fmul double 1.275000e+02, %58
  %60 = fptoui double %59 to i8
  store i8 %60, i8* %14, align 1
  store i32 0, i32* %8, align 4
  br label %61

61:                                               ; preds = %71, %56
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load i8, i8* %14, align 1
  %69 = load i8*, i8** %11, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %11, align 8
  store i8 %68, i8* %69, align 1
  br label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %61

74:                                               ; preds = %61
  br label %270

75:                                               ; preds = %41
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 16
  br i1 %79, label %80, label %110

80:                                               ; preds = %75
  %81 = load double, double* %13, align 8
  %82 = fmul double 3.276750e+04, %81
  %83 = fsub double %82, 5.000000e-01
  %84 = fptosi double %83 to i16
  store i16 %84, i16* %15, align 2
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %106, %80
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %109

91:                                               ; preds = %85
  %92 = load i16, i16* %15, align 2
  %93 = sext i16 %92 to i32
  %94 = and i32 %93, 255
  %95 = trunc i32 %94 to i8
  %96 = load i8*, i8** %11, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 0
  store i8 %95, i8* %97, align 1
  %98 = load i16, i16* %15, align 2
  %99 = sext i16 %98 to i32
  %100 = ashr i32 %99, 8
  %101 = trunc i32 %100 to i8
  %102 = load i8*, i8** %11, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 1
  store i8 %101, i8* %103, align 1
  %104 = load i8*, i8** %11, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 2
  store i8* %105, i8** %11, align 8
  br label %106

106:                                              ; preds = %91
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %8, align 4
  br label %85

109:                                              ; preds = %85
  br label %269

110:                                              ; preds = %75
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 24
  br i1 %114, label %115, label %150

115:                                              ; preds = %110
  %116 = load double, double* %13, align 8
  %117 = fmul double 0x415FFFFFE0000000, %116
  %118 = fsub double %117, 5.000000e-01
  %119 = fptosi double %118 to i32
  store i32 %119, i32* %16, align 4
  store i32 0, i32* %8, align 4
  br label %120

120:                                              ; preds = %146, %115
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = icmp slt i32 %121, %124
  br i1 %125, label %126, label %149

126:                                              ; preds = %120
  %127 = load i32, i32* %16, align 4
  %128 = and i32 %127, 255
  %129 = trunc i32 %128 to i8
  %130 = load i8*, i8** %11, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 0
  store i8 %129, i8* %131, align 1
  %132 = load i32, i32* %16, align 4
  %133 = ashr i32 %132, 8
  %134 = and i32 %133, 255
  %135 = trunc i32 %134 to i8
  %136 = load i8*, i8** %11, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 1
  store i8 %135, i8* %137, align 1
  %138 = load i32, i32* %16, align 4
  %139 = ashr i32 %138, 16
  %140 = and i32 %139, 255
  %141 = trunc i32 %140 to i8
  %142 = load i8*, i8** %11, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 2
  store i8 %141, i8* %143, align 1
  %144 = load i8*, i8** %11, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 3
  store i8* %145, i8** %11, align 8
  br label %146

146:                                              ; preds = %126
  %147 = load i32, i32* %8, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %8, align 4
  br label %120

149:                                              ; preds = %120
  br label %268

150:                                              ; preds = %110
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = icmp eq i32 %153, 32
  br i1 %154, label %155, label %213

155:                                              ; preds = %150
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 4
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @WAVE_FORMAT_PCM, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %172, label %161

161:                                              ; preds = %155
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 4
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @WAVE_FORMAT_EXTENSIBLE, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %213

167:                                              ; preds = %161
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = call i64 @IsEqualGUID(i32* %169, i32* @KSDATAFORMAT_SUBTYPE_PCM)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %213

172:                                              ; preds = %167, %155
  %173 = load double, double* %13, align 8
  %174 = fmul double 0x41DFFFFFFFE00000, %173
  %175 = fsub double %174, 5.000000e-01
  %176 = fptosi double %175 to i32
  store i32 %176, i32* %17, align 4
  store i32 0, i32* %8, align 4
  br label %177

177:                                              ; preds = %209, %172
  %178 = load i32, i32* %8, align 4
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = icmp slt i32 %178, %181
  br i1 %182, label %183, label %212

183:                                              ; preds = %177
  %184 = load i32, i32* %17, align 4
  %185 = and i32 %184, 255
  %186 = trunc i32 %185 to i8
  %187 = load i8*, i8** %11, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 0
  store i8 %186, i8* %188, align 1
  %189 = load i32, i32* %17, align 4
  %190 = ashr i32 %189, 8
  %191 = and i32 %190, 255
  %192 = trunc i32 %191 to i8
  %193 = load i8*, i8** %11, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 1
  store i8 %192, i8* %194, align 1
  %195 = load i32, i32* %17, align 4
  %196 = ashr i32 %195, 16
  %197 = and i32 %196, 255
  %198 = trunc i32 %197 to i8
  %199 = load i8*, i8** %11, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 2
  store i8 %198, i8* %200, align 1
  %201 = load i32, i32* %17, align 4
  %202 = ashr i32 %201, 24
  %203 = and i32 %202, 255
  %204 = trunc i32 %203 to i8
  %205 = load i8*, i8** %11, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 3
  store i8 %204, i8* %206, align 1
  %207 = load i8*, i8** %11, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 4
  store i8* %208, i8** %11, align 8
  br label %209

209:                                              ; preds = %183
  %210 = load i32, i32* %8, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %8, align 4
  br label %177

212:                                              ; preds = %177
  br label %267

213:                                              ; preds = %167, %161, %150
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = icmp eq i32 %216, 32
  br i1 %217, label %218, label %266

218:                                              ; preds = %213
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 4
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @WAVE_FORMAT_EXTENSIBLE, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %266

224:                                              ; preds = %218
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 0
  %227 = call i64 @IsEqualGUID(i32* %226, i32* @KSDATAFORMAT_SUBTYPE_IEEE_FLOAT)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %266

229:                                              ; preds = %224
  %230 = load double, double* %13, align 8
  %231 = fptrunc double %230 to float
  %232 = bitcast %union.anon* %18 to float*
  store float %231, float* %232, align 4
  store i32 0, i32* %8, align 4
  br label %233

233:                                              ; preds = %262, %229
  %234 = load i32, i32* %8, align 4
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 8
  %238 = icmp slt i32 %234, %237
  br i1 %238, label %239, label %265

239:                                              ; preds = %233
  %240 = bitcast %union.anon* %18 to [4 x i8]*
  %241 = getelementptr inbounds [4 x i8], [4 x i8]* %240, i64 0, i64 0
  %242 = load i8, i8* %241, align 4
  %243 = load i8*, i8** %11, align 8
  %244 = getelementptr inbounds i8, i8* %243, i64 0
  store i8 %242, i8* %244, align 1
  %245 = bitcast %union.anon* %18 to [4 x i8]*
  %246 = getelementptr inbounds [4 x i8], [4 x i8]* %245, i64 0, i64 1
  %247 = load i8, i8* %246, align 1
  %248 = load i8*, i8** %11, align 8
  %249 = getelementptr inbounds i8, i8* %248, i64 1
  store i8 %247, i8* %249, align 1
  %250 = bitcast %union.anon* %18 to [4 x i8]*
  %251 = getelementptr inbounds [4 x i8], [4 x i8]* %250, i64 0, i64 2
  %252 = load i8, i8* %251, align 2
  %253 = load i8*, i8** %11, align 8
  %254 = getelementptr inbounds i8, i8* %253, i64 2
  store i8 %252, i8* %254, align 1
  %255 = bitcast %union.anon* %18 to [4 x i8]*
  %256 = getelementptr inbounds [4 x i8], [4 x i8]* %255, i64 0, i64 3
  %257 = load i8, i8* %256, align 1
  %258 = load i8*, i8** %11, align 8
  %259 = getelementptr inbounds i8, i8* %258, i64 3
  store i8 %257, i8* %259, align 1
  %260 = load i8*, i8** %11, align 8
  %261 = getelementptr inbounds i8, i8* %260, i64 4
  store i8* %261, i8** %11, align 8
  br label %262

262:                                              ; preds = %239
  %263 = load i32, i32* %8, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %8, align 4
  br label %233

265:                                              ; preds = %233
  br label %266

266:                                              ; preds = %265, %224, %218, %213
  br label %267

267:                                              ; preds = %266, %212
  br label %268

268:                                              ; preds = %267, %149
  br label %269

269:                                              ; preds = %268, %109
  br label %270

270:                                              ; preds = %269, %74
  br label %271

271:                                              ; preds = %270
  %272 = load i32, i32* %7, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %7, align 4
  br label %37

274:                                              ; preds = %37
  %275 = load i8*, i8** %10, align 8
  ret i8* %275
}

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

; Function Attrs: nounwind
declare dso_local double @sin(double) #2

declare dso_local i64 @IsEqualGUID(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
