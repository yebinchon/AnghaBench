; ModuleID = '/home/carl/AnghaBench/sway/swaybar/extr_render.c_predict_status_block_pos.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/extr_render.c_predict_status_block_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaybar_output = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.swaybar_config* }
%struct.swaybar_config = type { double, i32, i32, i32*, i32 }
%struct.i3bar_block = type { i32, i32, i32, i32, i32, i64, i64, i32*, i32* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.swaybar_output*, %struct.i3bar_block*, double*, i32)* @predict_status_block_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @predict_status_block_pos(i32* %0, %struct.swaybar_output* %1, %struct.i3bar_block* %2, double* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.swaybar_output*, align 8
  %8 = alloca %struct.i3bar_block*, align 8
  %9 = alloca double*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.swaybar_config*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.swaybar_output* %1, %struct.swaybar_output** %7, align 8
  store %struct.i3bar_block* %2, %struct.i3bar_block** %8, align 8
  store double* %3, double** %9, align 8
  store i32 %4, i32* %10, align 4
  %25 = load %struct.i3bar_block*, %struct.i3bar_block** %8, align 8
  %26 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %25, i32 0, i32 8
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %5
  %30 = load %struct.i3bar_block*, %struct.i3bar_block** %8, align 8
  %31 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %30, i32 0, i32 8
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29, %5
  br label %276

36:                                               ; preds = %29
  %37 = load %struct.swaybar_output*, %struct.swaybar_output** %7, align 8
  %38 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load %struct.swaybar_config*, %struct.swaybar_config** %40, align 8
  store %struct.swaybar_config* %41, %struct.swaybar_config** %11, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load %struct.swaybar_config*, %struct.swaybar_config** %11, align 8
  %44 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.swaybar_output*, %struct.swaybar_output** %7, align 8
  %47 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.i3bar_block*, %struct.i3bar_block** %8, align 8
  %50 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.i3bar_block*, %struct.i3bar_block** %8, align 8
  %53 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %52, i32 0, i32 8
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @get_text_size(i32* %42, i32 %45, i32* %12, i32* %13, i32* null, i32 %48, i32 %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %54)
  %56 = load %struct.swaybar_output*, %struct.swaybar_output** %7, align 8
  %57 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = mul nsw i32 3, %58
  store i32 %59, i32* %14, align 4
  %60 = load %struct.swaybar_config*, %struct.swaybar_config** %11, align 8
  %61 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %60, i32 0, i32 0
  %62 = load double, double* %61, align 8
  %63 = load %struct.swaybar_output*, %struct.swaybar_output** %7, align 8
  %64 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sitofp i32 %65 to double
  %67 = fmul double %62, %66
  store double %67, double* %15, align 8
  %68 = load i32, i32* %12, align 4
  store i32 %68, i32* %16, align 4
  %69 = load %struct.i3bar_block*, %struct.i3bar_block** %8, align 8
  %70 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %69, i32 0, i32 7
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %91

73:                                               ; preds = %36
  %74 = load i32*, i32** %6, align 8
  %75 = load %struct.swaybar_config*, %struct.swaybar_config** %11, align 8
  %76 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.swaybar_output*, %struct.swaybar_output** %7, align 8
  %79 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.i3bar_block*, %struct.i3bar_block** %8, align 8
  %82 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.i3bar_block*, %struct.i3bar_block** %8, align 8
  %85 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %84, i32 0, i32 7
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @get_text_size(i32* %74, i32 %77, i32* %17, i32* null, i32* null, i32 %80, i32 %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %86)
  %88 = load i32, i32* %17, align 4
  %89 = load %struct.i3bar_block*, %struct.i3bar_block** %8, align 8
  %90 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %73, %36
  %92 = load i32, i32* %16, align 4
  %93 = load %struct.i3bar_block*, %struct.i3bar_block** %8, align 8
  %94 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load %struct.i3bar_block*, %struct.i3bar_block** %8, align 8
  %99 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %16, align 4
  br label %101

101:                                              ; preds = %97, %91
  %102 = load i32, i32* %13, align 4
  %103 = sitofp i32 %102 to double
  %104 = load double, double* %15, align 8
  %105 = fmul double %104, 2.000000e+00
  %106 = fadd double %103, %105
  %107 = fptosi double %106 to i64
  store i64 %107, i64* %18, align 8
  %108 = load i64, i64* %18, align 8
  %109 = load %struct.swaybar_output*, %struct.swaybar_output** %7, align 8
  %110 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = sdiv i64 %108, %112
  store i64 %113, i64* %19, align 8
  %114 = load %struct.swaybar_output*, %struct.swaybar_output** %7, align 8
  %115 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %114, i32 0, i32 2
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load %struct.swaybar_config*, %struct.swaybar_config** %117, align 8
  %119 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %129, label %122

122:                                              ; preds = %101
  %123 = load %struct.swaybar_output*, %struct.swaybar_output** %7, align 8
  %124 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* %19, align 8
  %127 = icmp slt i64 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  br label %276

129:                                              ; preds = %122, %101
  %130 = load i32, i32* %16, align 4
  %131 = sitofp i32 %130 to double
  %132 = load double*, double** %9, align 8
  %133 = load double, double* %132, align 8
  %134 = fsub double %133, %131
  store double %134, double* %132, align 8
  %135 = load %struct.i3bar_block*, %struct.i3bar_block** %8, align 8
  %136 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %135, i32 0, i32 6
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %144, label %139

139:                                              ; preds = %129
  %140 = load %struct.i3bar_block*, %struct.i3bar_block** %8, align 8
  %141 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %140, i32 0, i32 5
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %163

144:                                              ; preds = %139, %129
  %145 = load %struct.i3bar_block*, %struct.i3bar_block** %8, align 8
  %146 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %163

149:                                              ; preds = %144
  %150 = load %struct.i3bar_block*, %struct.i3bar_block** %8, align 8
  %151 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.swaybar_output*, %struct.swaybar_output** %7, align 8
  %154 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = mul nsw i32 %152, %155
  %157 = load i32, i32* %14, align 4
  %158 = add nsw i32 %156, %157
  %159 = sitofp i32 %158 to double
  %160 = load double*, double** %9, align 8
  %161 = load double, double* %160, align 8
  %162 = fsub double %161, %159
  store double %162, double* %160, align 8
  br label %163

163:                                              ; preds = %149, %144, %139
  %164 = load %struct.i3bar_block*, %struct.i3bar_block** %8, align 8
  %165 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %164, i32 0, i32 6
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %173, label %168

168:                                              ; preds = %163
  %169 = load %struct.i3bar_block*, %struct.i3bar_block** %8, align 8
  %170 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %169, i32 0, i32 5
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %192

173:                                              ; preds = %168, %163
  %174 = load %struct.i3bar_block*, %struct.i3bar_block** %8, align 8
  %175 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = icmp sgt i32 %176, 0
  br i1 %177, label %178, label %192

178:                                              ; preds = %173
  %179 = load %struct.i3bar_block*, %struct.i3bar_block** %8, align 8
  %180 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.swaybar_output*, %struct.swaybar_output** %7, align 8
  %183 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = mul nsw i32 %181, %184
  %186 = load i32, i32* %14, align 4
  %187 = add nsw i32 %185, %186
  %188 = sitofp i32 %187 to double
  %189 = load double*, double** %9, align 8
  %190 = load double, double* %189, align 8
  %191 = fsub double %190, %188
  store double %191, double* %189, align 8
  br label %192

192:                                              ; preds = %178, %173, %168
  %193 = load %struct.i3bar_block*, %struct.i3bar_block** %8, align 8
  %194 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 8
  store i32 %195, i32* %22, align 4
  %196 = load i32, i32* %10, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %258, label %198

198:                                              ; preds = %192
  %199 = load %struct.swaybar_config*, %struct.swaybar_config** %11, align 8
  %200 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %199, i32 0, i32 3
  %201 = load i32*, i32** %200, align 8
  %202 = icmp ne i32* %201, null
  br i1 %202, label %203, label %252

203:                                              ; preds = %198
  %204 = load i32*, i32** %6, align 8
  %205 = load %struct.swaybar_config*, %struct.swaybar_config** %11, align 8
  %206 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.swaybar_output*, %struct.swaybar_output** %7, align 8
  %209 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.swaybar_config*, %struct.swaybar_config** %11, align 8
  %212 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %211, i32 0, i32 3
  %213 = load i32*, i32** %212, align 8
  %214 = call i32 @get_text_size(i32* %204, i32 %207, i32* %20, i32* %21, i32* null, i32 %210, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %213)
  %215 = load i32, i32* %21, align 4
  %216 = sitofp i32 %215 to double
  %217 = load double, double* %15, align 8
  %218 = fmul double %217, 2.000000e+00
  %219 = fadd double %216, %218
  %220 = fptosi double %219 to i64
  store i64 %220, i64* %23, align 8
  %221 = load i64, i64* %23, align 8
  %222 = load %struct.swaybar_output*, %struct.swaybar_output** %7, align 8
  %223 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = sext i32 %224 to i64
  %226 = sdiv i64 %221, %225
  store i64 %226, i64* %24, align 8
  %227 = load %struct.swaybar_output*, %struct.swaybar_output** %7, align 8
  %228 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %227, i32 0, i32 2
  %229 = load %struct.TYPE_2__*, %struct.TYPE_2__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i32 0, i32 0
  %231 = load %struct.swaybar_config*, %struct.swaybar_config** %230, align 8
  %232 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %242, label %235

235:                                              ; preds = %203
  %236 = load %struct.swaybar_output*, %struct.swaybar_output** %7, align 8
  %237 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* %24, align 8
  %240 = icmp slt i64 %238, %239
  br i1 %240, label %241, label %242

241:                                              ; preds = %235
  br label %276

242:                                              ; preds = %235, %203
  %243 = load i32, i32* %20, align 4
  %244 = load i32, i32* %22, align 4
  %245 = icmp sgt i32 %243, %244
  br i1 %245, label %246, label %251

246:                                              ; preds = %242
  %247 = load i32, i32* %20, align 4
  %248 = load i32, i32* %14, align 4
  %249 = mul nsw i32 %248, 2
  %250 = add nsw i32 %247, %249
  store i32 %250, i32* %22, align 4
  br label %251

251:                                              ; preds = %246, %242
  br label %252

252:                                              ; preds = %251, %198
  %253 = load i32, i32* %22, align 4
  %254 = sitofp i32 %253 to double
  %255 = load double*, double** %9, align 8
  %256 = load double, double* %255, align 8
  %257 = fsub double %256, %254
  store double %257, double* %255, align 8
  br label %276

258:                                              ; preds = %192
  %259 = load %struct.swaybar_config*, %struct.swaybar_config** %11, align 8
  %260 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 8
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %275

263:                                              ; preds = %258
  %264 = load %struct.swaybar_config*, %struct.swaybar_config** %11, align 8
  %265 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.swaybar_output*, %struct.swaybar_output** %7, align 8
  %268 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = mul nsw i32 %266, %269
  %271 = sitofp i32 %270 to double
  %272 = load double*, double** %9, align 8
  %273 = load double, double* %272, align 8
  %274 = fsub double %273, %271
  store double %274, double* %272, align 8
  br label %275

275:                                              ; preds = %263, %258
  br label %276

276:                                              ; preds = %35, %128, %241, %275, %252
  ret void
}

declare dso_local i32 @get_text_size(i32*, i32, i32*, i32*, i32*, i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
