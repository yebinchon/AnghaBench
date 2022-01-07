; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/enhmfdrv/extr_graphics.c_EMFDRV_ExtTextOut.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/enhmfdrv/extr_graphics.c_EMFDRV_ExtTextOut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_37__ = type { i32 }
%struct.TYPE_36__ = type { i32, i32, i64, i64 }
%struct.TYPE_39__ = type { i64 }
%struct.TYPE_28__ = type { i32, i64 }
%struct.TYPE_38__ = type { i64, double, double, %struct.TYPE_30__, %struct.TYPE_31__, %struct.TYPE_33__ }
%struct.TYPE_30__ = type { i32, i32 }
%struct.TYPE_31__ = type { i32, i32, i64, i64 }
%struct.TYPE_33__ = type { i32, i32, i32, i32, %struct.TYPE_29__, %struct.TYPE_32__ }
%struct.TYPE_29__ = type { i32, i32, i64, i64 }
%struct.TYPE_32__ = type { i64, i64 }
%struct.TYPE_35__ = type { i64, i32 }
%struct.TYPE_34__ = type { i64 }

@.str = private unnamed_addr constant [27 x i8] c"%s %s count %d nSize = %d\0A\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@GM_COMPATIBLE = common dso_local global i64 0, align 8
@HORZSIZE = common dso_local global i32 0, align 4
@HORZRES = common dso_local global i32 0, align 4
@VERTSIZE = common dso_local global i32 0, align 4
@VERTRES = common dso_local global i32 0, align 4
@EMR_EXTTEXTOUTW = common dso_local global i32 0, align 4
@TA_LEFT = common dso_local global i32 0, align 4
@TA_TOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EMFDRV_ExtTextOut(%struct.TYPE_37__* %0, i64 %1, i64 %2, i32 %3, %struct.TYPE_36__* %4, i64* %5, i32 %6, i64* %7) #0 {
  %9 = alloca %struct.TYPE_37__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_36__*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  %17 = alloca %struct.TYPE_39__*, align 8
  %18 = alloca %struct.TYPE_28__*, align 8
  %19 = alloca %struct.TYPE_38__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca %struct.TYPE_35__, align 8
  %33 = alloca %struct.TYPE_35__, align 8
  %34 = alloca i32, align 4
  %35 = alloca %struct.TYPE_35__, align 8
  %36 = alloca i32, align 4
  %37 = alloca i64*, align 8
  %38 = alloca %struct.TYPE_35__, align 8
  %39 = alloca %struct.TYPE_34__, align 8
  store %struct.TYPE_37__* %0, %struct.TYPE_37__** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.TYPE_36__* %4, %struct.TYPE_36__** %13, align 8
  store i64* %5, i64** %14, align 8
  store i32 %6, i32* %15, align 4
  store i64* %7, i64** %16, align 8
  %40 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %41 = call %struct.TYPE_39__* @get_emf_physdev(%struct.TYPE_37__* %40)
  store %struct.TYPE_39__* %41, %struct.TYPE_39__** %17, align 8
  %42 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %43 = call %struct.TYPE_28__* @get_physdev_dc(%struct.TYPE_37__* %42)
  store %struct.TYPE_28__* %43, %struct.TYPE_28__** %18, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %44 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %45 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %24, align 4
  %47 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %48 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %25, align 8
  %50 = load i32, i32* %15, align 4
  %51 = add nsw i32 %50, 1
  %52 = and i32 %51, -2
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 4
  %55 = add i64 112, %54
  %56 = load i32, i32* %15, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 8
  %59 = add i64 %55, %58
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %20, align 4
  %61 = load i64*, i64** %14, align 8
  %62 = load i32, i32* %15, align 4
  %63 = call i32 @debugstr_wn(i64* %61, i32 %62)
  %64 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %65 = call i32 @wine_dbgstr_rect(%struct.TYPE_36__* %64)
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* %20, align 4
  %68 = call i32 @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %65, i32 %66, i32 %67)
  %69 = call i32 (...) @GetProcessHeap()
  %70 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %71 = load i32, i32* %20, align 4
  %72 = call %struct.TYPE_38__* @HeapAlloc(i32 %69, i32 %70, i32 %71)
  store %struct.TYPE_38__* %72, %struct.TYPE_38__** %19, align 8
  %73 = load i64, i64* %25, align 8
  %74 = load i64, i64* @GM_COMPATIBLE, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %133

76:                                               ; preds = %8
  %77 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @HORZSIZE, align 4
  %81 = call i64 @GetDeviceCaps(i32 %79, i32 %80)
  store i64 %81, i64* %28, align 8
  %82 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @HORZRES, align 4
  %86 = call i64 @GetDeviceCaps(i32 %84, i32 %85)
  store i64 %86, i64* %29, align 8
  %87 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @VERTSIZE, align 4
  %91 = call i64 @GetDeviceCaps(i32 %89, i32 %90)
  store i64 %91, i64* %30, align 8
  %92 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @VERTRES, align 4
  %96 = call i64 @GetDeviceCaps(i32 %94, i32 %95)
  store i64 %96, i64* %31, align 8
  %97 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @GetViewportExtEx(i32 %99, %struct.TYPE_35__* %33)
  %101 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @GetWindowExtEx(i32 %103, %struct.TYPE_35__* %32)
  %105 = load i64, i64* %28, align 8
  %106 = sitofp i64 %105 to double
  %107 = load i64, i64* %29, align 8
  %108 = sitofp i64 %107 to double
  %109 = fdiv double %106, %108
  %110 = fmul double 1.000000e+02, %109
  %111 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %32, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = sitofp i64 %112 to double
  %114 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %33, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = sitofp i64 %115 to double
  %117 = fdiv double %113, %116
  %118 = fdiv double %110, %117
  store double %118, double* %26, align 8
  %119 = load i64, i64* %30, align 8
  %120 = sitofp i64 %119 to double
  %121 = load i64, i64* %31, align 8
  %122 = sitofp i64 %121 to double
  %123 = fdiv double %120, %122
  %124 = fmul double 1.000000e+02, %123
  %125 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %32, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = sitofp i32 %126 to double
  %128 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %33, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = sitofp i32 %129 to double
  %131 = fdiv double %127, %130
  %132 = fdiv double %124, %131
  store double %132, double* %27, align 8
  br label %134

133:                                              ; preds = %8
  store double 0.000000e+00, double* %26, align 8
  store double 0.000000e+00, double* %27, align 8
  br label %134

134:                                              ; preds = %133, %76
  %135 = load i32, i32* @EMR_EXTTEXTOUTW, align 4
  %136 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %137 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %137, i32 0, i32 1
  store i32 %135, i32* %138, align 4
  %139 = load i32, i32* %20, align 4
  %140 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %141 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %141, i32 0, i32 0
  store i32 %139, i32* %142, align 8
  %143 = load i64, i64* %25, align 8
  %144 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %145 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %144, i32 0, i32 0
  store i64 %143, i64* %145, align 8
  %146 = load double, double* %26, align 8
  %147 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %148 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %147, i32 0, i32 1
  store double %146, double* %148, align 8
  %149 = load double, double* %27, align 8
  %150 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %151 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %150, i32 0, i32 2
  store double %149, double* %151, align 8
  %152 = load i64, i64* %10, align 8
  %153 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %154 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %153, i32 0, i32 5
  %155 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %154, i32 0, i32 5
  %156 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %155, i32 0, i32 1
  store i64 %152, i64* %156, align 8
  %157 = load i64, i64* %11, align 8
  %158 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %159 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %158, i32 0, i32 5
  %160 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %159, i32 0, i32 5
  %161 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %160, i32 0, i32 0
  store i64 %157, i64* %161, align 8
  %162 = load i32, i32* %15, align 4
  %163 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %164 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %163, i32 0, i32 5
  %165 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %164, i32 0, i32 0
  store i32 %162, i32* %165, align 8
  %166 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %167 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %166, i32 0, i32 5
  %168 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %167, i32 0, i32 1
  store i32 112, i32* %168, align 4
  %169 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %170 = bitcast %struct.TYPE_38__* %169 to i8*
  %171 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %172 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %171, i32 0, i32 5
  %173 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8, i8* %170, i64 %175
  %177 = load i64*, i64** %14, align 8
  %178 = load i32, i32* %15, align 4
  %179 = sext i32 %178 to i64
  %180 = mul i64 %179, 4
  %181 = trunc i64 %180 to i32
  %182 = call i32 @memcpy(i8* %176, i64* %177, i32 %181)
  %183 = load i32, i32* %12, align 4
  %184 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %185 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %184, i32 0, i32 5
  %186 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %185, i32 0, i32 2
  store i32 %183, i32* %186, align 8
  %187 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %188 = icmp ne %struct.TYPE_36__* %187, null
  br i1 %188, label %206, label %189

189:                                              ; preds = %134
  %190 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %191 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %190, i32 0, i32 5
  %192 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %191, i32 0, i32 4
  %193 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %192, i32 0, i32 2
  store i64 0, i64* %193, align 8
  %194 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %195 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %194, i32 0, i32 5
  %196 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %195, i32 0, i32 4
  %197 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %196, i32 0, i32 3
  store i64 0, i64* %197, align 8
  %198 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %199 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %198, i32 0, i32 5
  %200 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %199, i32 0, i32 4
  %201 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %200, i32 0, i32 1
  store i32 -1, i32* %201, align 4
  %202 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %203 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %202, i32 0, i32 5
  %204 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %203, i32 0, i32 4
  %205 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %204, i32 0, i32 0
  store i32 -1, i32* %205, align 8
  br label %235

206:                                              ; preds = %134
  %207 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %208 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %207, i32 0, i32 3
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %211 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %210, i32 0, i32 5
  %212 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %211, i32 0, i32 4
  %213 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %212, i32 0, i32 3
  store i64 %209, i64* %213, align 8
  %214 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %215 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %218 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %217, i32 0, i32 5
  %219 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %218, i32 0, i32 4
  %220 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %219, i32 0, i32 2
  store i64 %216, i64* %220, align 8
  %221 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %222 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %225 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %224, i32 0, i32 5
  %226 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %225, i32 0, i32 4
  %227 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %226, i32 0, i32 0
  store i32 %223, i32* %227, align 8
  %228 = load %struct.TYPE_36__*, %struct.TYPE_36__** %13, align 8
  %229 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %232 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %231, i32 0, i32 5
  %233 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %232, i32 0, i32 4
  %234 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %233, i32 0, i32 1
  store i32 %230, i32* %234, align 4
  br label %235

235:                                              ; preds = %206, %189
  %236 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %237 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %236, i32 0, i32 5
  %238 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = sext i32 %239 to i64
  %241 = load i32, i32* %15, align 4
  %242 = add nsw i32 %241, 1
  %243 = and i32 %242, -2
  %244 = sext i32 %243 to i64
  %245 = mul i64 %244, 4
  %246 = add i64 %240, %245
  %247 = trunc i64 %246 to i32
  %248 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %249 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %248, i32 0, i32 5
  %250 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %249, i32 0, i32 3
  store i32 %247, i32* %250, align 4
  %251 = load i64*, i64** %16, align 8
  %252 = icmp ne i64* %251, null
  br i1 %252, label %253, label %297

253:                                              ; preds = %235
  %254 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %255 = bitcast %struct.TYPE_38__* %254 to i8*
  %256 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %257 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %256, i32 0, i32 5
  %258 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i8, i8* %255, i64 %260
  %262 = load i64*, i64** %16, align 8
  %263 = load i32, i32* %15, align 4
  %264 = sext i32 %263 to i64
  %265 = mul i64 %264, 8
  %266 = trunc i64 %265 to i32
  %267 = call i32 @memcpy(i8* %261, i64* %262, i32 %266)
  store i32 0, i32* %34, align 4
  br label %268

268:                                              ; preds = %282, %253
  %269 = load i32, i32* %34, align 4
  %270 = load i32, i32* %15, align 4
  %271 = icmp slt i32 %269, %270
  br i1 %271, label %272, label %285

272:                                              ; preds = %268
  %273 = load i64*, i64** %16, align 8
  %274 = load i32, i32* %34, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i64, i64* %273, i64 %275
  %277 = load i64, i64* %276, align 8
  %278 = load i32, i32* %23, align 4
  %279 = sext i32 %278 to i64
  %280 = add nsw i64 %279, %277
  %281 = trunc i64 %280 to i32
  store i32 %281, i32* %23, align 4
  br label %282

282:                                              ; preds = %272
  %283 = load i32, i32* %34, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %34, align 4
  br label %268

285:                                              ; preds = %268
  %286 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %287 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = load i64*, i64** %14, align 8
  %290 = load i32, i32* %15, align 4
  %291 = call i64 @GetTextExtentPoint32W(i32 %288, i64* %289, i32 %290, %struct.TYPE_35__* %35)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %296

293:                                              ; preds = %285
  %294 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %35, i32 0, i32 1
  %295 = load i32, i32* %294, align 8
  store i32 %295, i32* %22, align 4
  br label %296

296:                                              ; preds = %293, %285
  br label %343

297:                                              ; preds = %235
  %298 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %299 = bitcast %struct.TYPE_38__* %298 to i8*
  %300 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %301 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %300, i32 0, i32 5
  %302 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %301, i32 0, i32 3
  %303 = load i32, i32* %302, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i8, i8* %299, i64 %304
  %306 = bitcast i8* %305 to i64*
  store i64* %306, i64** %37, align 8
  store i32 0, i32* %36, align 4
  br label %307

307:                                              ; preds = %339, %297
  %308 = load i32, i32* %36, align 4
  %309 = load i32, i32* %15, align 4
  %310 = icmp slt i32 %308, %309
  br i1 %310, label %311, label %342

311:                                              ; preds = %307
  %312 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %313 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = load i64*, i64** %14, align 8
  %316 = load i32, i32* %36, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i64, i64* %315, i64 %317
  %319 = call i64 @GetTextExtentPoint32W(i32 %314, i64* %318, i32 1, %struct.TYPE_35__* %38)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %338

321:                                              ; preds = %311
  %322 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %38, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = load i64*, i64** %37, align 8
  %325 = load i32, i32* %36, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i64, i64* %324, i64 %326
  store i64 %323, i64* %327, align 8
  %328 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %38, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = load i32, i32* %23, align 4
  %331 = sext i32 %330 to i64
  %332 = add nsw i64 %331, %329
  %333 = trunc i64 %332 to i32
  store i32 %333, i32* %23, align 4
  %334 = load i32, i32* %22, align 4
  %335 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %38, i32 0, i32 1
  %336 = load i32, i32* %335, align 8
  %337 = call i32 @max(i32 %334, i32 %336)
  store i32 %337, i32* %22, align 4
  br label %338

338:                                              ; preds = %321, %311
  br label %339

339:                                              ; preds = %338
  %340 = load i32, i32* %36, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %36, align 4
  br label %307

342:                                              ; preds = %307
  br label %343

343:                                              ; preds = %342, %296
  %344 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %345 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %361

348:                                              ; preds = %343
  %349 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %350 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %349, i32 0, i32 4
  %351 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %350, i32 0, i32 2
  store i64 0, i64* %351, align 8
  %352 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %353 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %352, i32 0, i32 4
  %354 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %353, i32 0, i32 3
  store i64 0, i64* %354, align 8
  %355 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %356 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %355, i32 0, i32 4
  %357 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %356, i32 0, i32 1
  store i32 -1, i32* %357, align 4
  %358 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %359 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %358, i32 0, i32 4
  %360 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %359, i32 0, i32 0
  store i32 -1, i32* %360, align 8
  br label %480

361:                                              ; preds = %343
  %362 = load i32, i32* %24, align 4
  %363 = load i32, i32* @TA_LEFT, align 4
  %364 = or i32 %363, 128
  %365 = or i32 %364, 129
  %366 = and i32 %362, %365
  switch i32 %366, label %401 [
    i32 129, label %367
    i32 128, label %387
  ]

367:                                              ; preds = %361
  %368 = load i64, i64* %10, align 8
  %369 = load i32, i32* %23, align 4
  %370 = sdiv i32 %369, 2
  %371 = sext i32 %370 to i64
  %372 = sub nsw i64 %368, %371
  %373 = sub nsw i64 %372, 1
  %374 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %375 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %374, i32 0, i32 4
  %376 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %375, i32 0, i32 3
  store i64 %373, i64* %376, align 8
  %377 = load i64, i64* %10, align 8
  %378 = load i32, i32* %23, align 4
  %379 = sdiv i32 %378, 2
  %380 = sext i32 %379 to i64
  %381 = add nsw i64 %377, %380
  %382 = add nsw i64 %381, 1
  %383 = trunc i64 %382 to i32
  %384 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %385 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %384, i32 0, i32 4
  %386 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %385, i32 0, i32 0
  store i32 %383, i32* %386, align 8
  br label %415

387:                                              ; preds = %361
  %388 = load i64, i64* %10, align 8
  %389 = load i32, i32* %23, align 4
  %390 = sext i32 %389 to i64
  %391 = sub nsw i64 %388, %390
  %392 = sub nsw i64 %391, 1
  %393 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %394 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %393, i32 0, i32 4
  %395 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %394, i32 0, i32 3
  store i64 %392, i64* %395, align 8
  %396 = load i64, i64* %10, align 8
  %397 = trunc i64 %396 to i32
  %398 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %399 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %398, i32 0, i32 4
  %400 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %399, i32 0, i32 0
  store i32 %397, i32* %400, align 8
  br label %415

401:                                              ; preds = %361
  %402 = load i64, i64* %10, align 8
  %403 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %404 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %403, i32 0, i32 4
  %405 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %404, i32 0, i32 3
  store i64 %402, i64* %405, align 8
  %406 = load i64, i64* %10, align 8
  %407 = load i32, i32* %23, align 4
  %408 = sext i32 %407 to i64
  %409 = add nsw i64 %406, %408
  %410 = add nsw i64 %409, 1
  %411 = trunc i64 %410 to i32
  %412 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %413 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %412, i32 0, i32 4
  %414 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %413, i32 0, i32 0
  store i32 %411, i32* %414, align 8
  br label %415

415:                                              ; preds = %401, %387, %367
  %416 = load i32, i32* %24, align 4
  %417 = load i32, i32* @TA_TOP, align 4
  %418 = or i32 %417, 130
  %419 = or i32 %418, 131
  %420 = and i32 %416, %419
  switch i32 %420, label %461 [
    i32 131, label %421
    i32 130, label %447
  ]

421:                                              ; preds = %415
  %422 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %423 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 4
  %425 = call i32 @GetTextMetricsW(i32 %424, %struct.TYPE_34__* %39)
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %429, label %427

427:                                              ; preds = %421
  %428 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %39, i32 0, i32 0
  store i64 0, i64* %428, align 8
  br label %429

429:                                              ; preds = %427, %421
  %430 = load i64, i64* %11, align 8
  %431 = load i32, i32* %22, align 4
  %432 = sext i32 %431 to i64
  %433 = sub nsw i64 %430, %432
  %434 = sub nsw i64 %433, 1
  %435 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %436 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %435, i32 0, i32 4
  %437 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %436, i32 0, i32 2
  store i64 %434, i64* %437, align 8
  %438 = load i64, i64* %11, align 8
  %439 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %39, i32 0, i32 0
  %440 = load i64, i64* %439, align 8
  %441 = add nsw i64 %438, %440
  %442 = add nsw i64 %441, 1
  %443 = trunc i64 %442 to i32
  %444 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %445 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %444, i32 0, i32 4
  %446 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %445, i32 0, i32 1
  store i32 %443, i32* %446, align 4
  br label %475

447:                                              ; preds = %415
  %448 = load i64, i64* %11, align 8
  %449 = load i32, i32* %22, align 4
  %450 = sext i32 %449 to i64
  %451 = sub nsw i64 %448, %450
  %452 = sub nsw i64 %451, 1
  %453 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %454 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %453, i32 0, i32 4
  %455 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %454, i32 0, i32 2
  store i64 %452, i64* %455, align 8
  %456 = load i64, i64* %11, align 8
  %457 = trunc i64 %456 to i32
  %458 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %459 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %458, i32 0, i32 4
  %460 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %459, i32 0, i32 1
  store i32 %457, i32* %460, align 4
  br label %475

461:                                              ; preds = %415
  %462 = load i64, i64* %11, align 8
  %463 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %464 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %463, i32 0, i32 4
  %465 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %464, i32 0, i32 2
  store i64 %462, i64* %465, align 8
  %466 = load i64, i64* %11, align 8
  %467 = load i32, i32* %22, align 4
  %468 = sext i32 %467 to i64
  %469 = add nsw i64 %466, %468
  %470 = add nsw i64 %469, 1
  %471 = trunc i64 %470 to i32
  %472 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %473 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %472, i32 0, i32 4
  %474 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %473, i32 0, i32 1
  store i32 %471, i32* %474, align 4
  br label %475

475:                                              ; preds = %461, %447, %429
  %476 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %477 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %478 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %477, i32 0, i32 4
  %479 = call i32 @EMFDRV_UpdateBBox(%struct.TYPE_37__* %476, %struct.TYPE_31__* %478)
  br label %480

480:                                              ; preds = %475, %348
  %481 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %482 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %483 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %482, i32 0, i32 3
  %484 = call i32 @EMFDRV_WriteRecord(%struct.TYPE_37__* %481, %struct.TYPE_30__* %483)
  store i32 %484, i32* %21, align 4
  %485 = call i32 (...) @GetProcessHeap()
  %486 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %487 = call i32 @HeapFree(i32 %485, i32 0, %struct.TYPE_38__* %486)
  %488 = load i32, i32* %21, align 4
  ret i32 %488
}

declare dso_local %struct.TYPE_39__* @get_emf_physdev(%struct.TYPE_37__*) #1

declare dso_local %struct.TYPE_28__* @get_physdev_dc(%struct.TYPE_37__*) #1

declare dso_local i32 @TRACE(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @debugstr_wn(i64*, i32) #1

declare dso_local i32 @wine_dbgstr_rect(%struct.TYPE_36__*) #1

declare dso_local %struct.TYPE_38__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @GetDeviceCaps(i32, i32) #1

declare dso_local i32 @GetViewportExtEx(i32, %struct.TYPE_35__*) #1

declare dso_local i32 @GetWindowExtEx(i32, %struct.TYPE_35__*) #1

declare dso_local i32 @memcpy(i8*, i64*, i32) #1

declare dso_local i64 @GetTextExtentPoint32W(i32, i64*, i32, %struct.TYPE_35__*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @GetTextMetricsW(i32, %struct.TYPE_34__*) #1

declare dso_local i32 @EMFDRV_UpdateBBox(%struct.TYPE_37__*, %struct.TYPE_31__*) #1

declare dso_local i32 @EMFDRV_WriteRecord(%struct.TYPE_37__*, %struct.TYPE_30__*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_38__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
