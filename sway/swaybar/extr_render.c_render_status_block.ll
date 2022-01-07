; ModuleID = '/home/carl/AnghaBench/sway/swaybar/extr_render.c_render_status_block.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/extr_render.c_render_status_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaybar_output = type { i32, i64, i64, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_5__*, %struct.swaybar_config* }
%struct.TYPE_5__ = type { i64 }
%struct.swaybar_config = type { double, i8*, i32, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64, i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64 }
%struct.i3bar_block = type { i8*, i8*, i32, i8*, i32, i64, i32, i32, i32, i64, double, double, i64*, i64, i64, i32, i32 }
%struct.swaybar_hotspot = type { double, i32, i32, %struct.i3bar_block*, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@block_hotspot_callback = common dso_local global i32 0, align 4
@i3bar_block_unref_callback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"center\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.swaybar_output*, %struct.i3bar_block*, double*, i32, i32)* @render_status_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @render_status_block(i32* %0, %struct.swaybar_output* %1, %struct.i3bar_block* %2, double* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.swaybar_output*, align 8
  %10 = alloca %struct.i3bar_block*, align 8
  %11 = alloca double*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.swaybar_config*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca double, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca %struct.swaybar_hotspot*, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca double, align 8
  %38 = alloca double, align 8
  %39 = alloca i64, align 8
  %40 = alloca double, align 8
  store i32* %0, i32** %8, align 8
  store %struct.swaybar_output* %1, %struct.swaybar_output** %9, align 8
  store %struct.i3bar_block* %2, %struct.i3bar_block** %10, align 8
  store double* %3, double** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %41 = load %struct.i3bar_block*, %struct.i3bar_block** %10, align 8
  %42 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %6
  %46 = load %struct.i3bar_block*, %struct.i3bar_block** %10, align 8
  %47 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i8, i8* %48, align 1
  %50 = icmp ne i8 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %45, %6
  store i64 0, i64* %7, align 8
  br label %764

52:                                               ; preds = %45
  %53 = load %struct.i3bar_block*, %struct.i3bar_block** %10, align 8
  %54 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %14, align 8
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %52
  %59 = load %struct.i3bar_block*, %struct.i3bar_block** %10, align 8
  %60 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %74

63:                                               ; preds = %58
  %64 = load %struct.i3bar_block*, %struct.i3bar_block** %10, align 8
  %65 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load %struct.i3bar_block*, %struct.i3bar_block** %10, align 8
  %72 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** %14, align 8
  br label %74

74:                                               ; preds = %70, %63, %58, %52
  %75 = load %struct.swaybar_output*, %struct.swaybar_output** %9, align 8
  %76 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %75, i32 0, i32 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = load %struct.swaybar_config*, %struct.swaybar_config** %78, align 8
  store %struct.swaybar_config* %79, %struct.swaybar_config** %15, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = load %struct.swaybar_config*, %struct.swaybar_config** %15, align 8
  %82 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.swaybar_output*, %struct.swaybar_output** %9, align 8
  %85 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.i3bar_block*, %struct.i3bar_block** %10, align 8
  %88 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i8*, i8** %14, align 8
  %91 = call i32 @get_text_size(i32* %80, i32 %83, i32* %16, i32* %17, i32* null, i32 %86, i32 %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %90)
  %92 = load %struct.swaybar_output*, %struct.swaybar_output** %9, align 8
  %93 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = mul nsw i32 3, %94
  store i32 %95, i32* %18, align 4
  %96 = load %struct.swaybar_config*, %struct.swaybar_config** %15, align 8
  %97 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %96, i32 0, i32 0
  %98 = load double, double* %97, align 8
  %99 = load %struct.swaybar_output*, %struct.swaybar_output** %9, align 8
  %100 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sitofp i32 %101 to double
  %103 = fmul double %98, %102
  store double %103, double* %19, align 8
  %104 = load i32, i32* %16, align 4
  store i32 %104, i32* %20, align 4
  %105 = load %struct.i3bar_block*, %struct.i3bar_block** %10, align 8
  %106 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %105, i32 0, i32 3
  %107 = load i8*, i8** %106, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %127

109:                                              ; preds = %74
  %110 = load i32*, i32** %8, align 8
  %111 = load %struct.swaybar_config*, %struct.swaybar_config** %15, align 8
  %112 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.swaybar_output*, %struct.swaybar_output** %9, align 8
  %115 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.i3bar_block*, %struct.i3bar_block** %10, align 8
  %118 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.i3bar_block*, %struct.i3bar_block** %10, align 8
  %121 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %120, i32 0, i32 3
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @get_text_size(i32* %110, i32 %113, i32* %21, i32* null, i32* null, i32 %116, i32 %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %122)
  %124 = load i32, i32* %21, align 4
  %125 = load %struct.i3bar_block*, %struct.i3bar_block** %10, align 8
  %126 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %125, i32 0, i32 4
  store i32 %124, i32* %126, align 8
  br label %127

127:                                              ; preds = %109, %74
  %128 = load i32, i32* %20, align 4
  %129 = load %struct.i3bar_block*, %struct.i3bar_block** %10, align 8
  %130 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = icmp slt i32 %128, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %127
  %134 = load %struct.i3bar_block*, %struct.i3bar_block** %10, align 8
  %135 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  store i32 %136, i32* %20, align 4
  br label %137

137:                                              ; preds = %133, %127
  %138 = load i32, i32* %20, align 4
  %139 = sitofp i32 %138 to double
  store double %139, double* %22, align 8
  %140 = load i32, i32* %17, align 4
  %141 = sitofp i32 %140 to double
  %142 = load double, double* %19, align 8
  %143 = fmul double %142, 2.000000e+00
  %144 = fadd double %141, %143
  %145 = fptosi double %144 to i64
  store i64 %145, i64* %23, align 8
  %146 = load i64, i64* %23, align 8
  %147 = load %struct.swaybar_output*, %struct.swaybar_output** %9, align 8
  %148 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = sdiv i64 %146, %150
  store i64 %151, i64* %24, align 8
  %152 = load %struct.swaybar_output*, %struct.swaybar_output** %9, align 8
  %153 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %152, i32 0, i32 4
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 1
  %156 = load %struct.swaybar_config*, %struct.swaybar_config** %155, align 8
  %157 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 8
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %168, label %160

160:                                              ; preds = %137
  %161 = load %struct.swaybar_output*, %struct.swaybar_output** %9, align 8
  %162 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* %24, align 8
  %165 = icmp slt i64 %163, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %160
  %167 = load i64, i64* %24, align 8
  store i64 %167, i64* %7, align 8
  br label %764

168:                                              ; preds = %160, %137
  %169 = load i32, i32* %20, align 4
  %170 = sitofp i32 %169 to double
  %171 = load double*, double** %11, align 8
  %172 = load double, double* %171, align 8
  %173 = fsub double %172, %170
  store double %173, double* %171, align 8
  %174 = load %struct.i3bar_block*, %struct.i3bar_block** %10, align 8
  %175 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %174, i32 0, i32 5
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %183, label %178

178:                                              ; preds = %168
  %179 = load %struct.i3bar_block*, %struct.i3bar_block** %10, align 8
  %180 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %179, i32 0, i32 14
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %214

183:                                              ; preds = %178, %168
  %184 = load %struct.i3bar_block*, %struct.i3bar_block** %10, align 8
  %185 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %184, i32 0, i32 6
  %186 = load i32, i32* %185, align 8
  %187 = icmp sgt i32 %186, 0
  br i1 %187, label %188, label %214

188:                                              ; preds = %183
  %189 = load %struct.i3bar_block*, %struct.i3bar_block** %10, align 8
  %190 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %189, i32 0, i32 6
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.swaybar_output*, %struct.swaybar_output** %9, align 8
  %193 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = mul nsw i32 %191, %194
  %196 = load i32, i32* %18, align 4
  %197 = add nsw i32 %195, %196
  %198 = sitofp i32 %197 to double
  %199 = load double*, double** %11, align 8
  %200 = load double, double* %199, align 8
  %201 = fsub double %200, %198
  store double %201, double* %199, align 8
  %202 = load %struct.i3bar_block*, %struct.i3bar_block** %10, align 8
  %203 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %202, i32 0, i32 6
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.swaybar_output*, %struct.swaybar_output** %9, align 8
  %206 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = mul nsw i32 %204, %207
  %209 = load i32, i32* %18, align 4
  %210 = add nsw i32 %208, %209
  %211 = sitofp i32 %210 to double
  %212 = load double, double* %22, align 8
  %213 = fadd double %212, %211
  store double %213, double* %22, align 8
  br label %214

214:                                              ; preds = %188, %183, %178
  %215 = load %struct.i3bar_block*, %struct.i3bar_block** %10, align 8
  %216 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %215, i32 0, i32 5
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %224, label %219

219:                                              ; preds = %214
  %220 = load %struct.i3bar_block*, %struct.i3bar_block** %10, align 8
  %221 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %220, i32 0, i32 14
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %255

224:                                              ; preds = %219, %214
  %225 = load %struct.i3bar_block*, %struct.i3bar_block** %10, align 8
  %226 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %225, i32 0, i32 7
  %227 = load i32, i32* %226, align 4
  %228 = icmp sgt i32 %227, 0
  br i1 %228, label %229, label %255

229:                                              ; preds = %224
  %230 = load %struct.i3bar_block*, %struct.i3bar_block** %10, align 8
  %231 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %230, i32 0, i32 7
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.swaybar_output*, %struct.swaybar_output** %9, align 8
  %234 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = mul nsw i32 %232, %235
  %237 = load i32, i32* %18, align 4
  %238 = add nsw i32 %236, %237
  %239 = sitofp i32 %238 to double
  %240 = load double*, double** %11, align 8
  %241 = load double, double* %240, align 8
  %242 = fsub double %241, %239
  store double %242, double* %240, align 8
  %243 = load %struct.i3bar_block*, %struct.i3bar_block** %10, align 8
  %244 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %243, i32 0, i32 7
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.swaybar_output*, %struct.swaybar_output** %9, align 8
  %247 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = mul nsw i32 %245, %248
  %250 = load i32, i32* %18, align 4
  %251 = add nsw i32 %249, %250
  %252 = sitofp i32 %251 to double
  %253 = load double, double* %22, align 8
  %254 = fadd double %253, %252
  store double %254, double* %22, align 8
  br label %255

255:                                              ; preds = %229, %224, %219
  %256 = load %struct.i3bar_block*, %struct.i3bar_block** %10, align 8
  %257 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %256, i32 0, i32 8
  %258 = load i32, i32* %257, align 8
  store i32 %258, i32* %27, align 4
  %259 = load i32, i32* %12, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %322, label %261

261:                                              ; preds = %255
  %262 = load %struct.swaybar_config*, %struct.swaybar_config** %15, align 8
  %263 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %262, i32 0, i32 1
  %264 = load i8*, i8** %263, align 8
  %265 = icmp ne i8* %264, null
  br i1 %265, label %266, label %316

266:                                              ; preds = %261
  %267 = load i32*, i32** %8, align 8
  %268 = load %struct.swaybar_config*, %struct.swaybar_config** %15, align 8
  %269 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.swaybar_output*, %struct.swaybar_output** %9, align 8
  %272 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.swaybar_config*, %struct.swaybar_config** %15, align 8
  %275 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %274, i32 0, i32 1
  %276 = load i8*, i8** %275, align 8
  %277 = call i32 @get_text_size(i32* %267, i32 %270, i32* %25, i32* %26, i32* null, i32 %273, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %276)
  %278 = load i32, i32* %26, align 4
  %279 = sitofp i32 %278 to double
  %280 = load double, double* %19, align 8
  %281 = fmul double %280, 2.000000e+00
  %282 = fadd double %279, %281
  %283 = fptosi double %282 to i64
  store i64 %283, i64* %28, align 8
  %284 = load i64, i64* %28, align 8
  %285 = load %struct.swaybar_output*, %struct.swaybar_output** %9, align 8
  %286 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = sext i32 %287 to i64
  %289 = sdiv i64 %284, %288
  store i64 %289, i64* %29, align 8
  %290 = load %struct.swaybar_output*, %struct.swaybar_output** %9, align 8
  %291 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %290, i32 0, i32 4
  %292 = load %struct.TYPE_8__*, %struct.TYPE_8__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 1
  %294 = load %struct.swaybar_config*, %struct.swaybar_config** %293, align 8
  %295 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %294, i32 0, i32 5
  %296 = load i32, i32* %295, align 8
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %306, label %298

298:                                              ; preds = %266
  %299 = load %struct.swaybar_output*, %struct.swaybar_output** %9, align 8
  %300 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %299, i32 0, i32 1
  %301 = load i64, i64* %300, align 8
  %302 = load i64, i64* %29, align 8
  %303 = icmp slt i64 %301, %302
  br i1 %303, label %304, label %306

304:                                              ; preds = %298
  %305 = load i64, i64* %29, align 8
  store i64 %305, i64* %7, align 8
  br label %764

306:                                              ; preds = %298, %266
  %307 = load i32, i32* %25, align 4
  %308 = load i32, i32* %27, align 4
  %309 = icmp sgt i32 %307, %308
  br i1 %309, label %310, label %315

310:                                              ; preds = %306
  %311 = load i32, i32* %25, align 4
  %312 = load i32, i32* %18, align 4
  %313 = mul nsw i32 %312, 2
  %314 = add nsw i32 %311, %313
  store i32 %314, i32* %27, align 4
  br label %315

315:                                              ; preds = %310, %306
  br label %316

316:                                              ; preds = %315, %261
  %317 = load i32, i32* %27, align 4
  %318 = sitofp i32 %317 to double
  %319 = load double*, double** %11, align 8
  %320 = load double, double* %319, align 8
  %321 = fsub double %320, %318
  store double %321, double* %319, align 8
  br label %340

322:                                              ; preds = %255
  %323 = load %struct.swaybar_config*, %struct.swaybar_config** %15, align 8
  %324 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %323, i32 0, i32 2
  %325 = load i32, i32* %324, align 8
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %339

327:                                              ; preds = %322
  %328 = load %struct.swaybar_config*, %struct.swaybar_config** %15, align 8
  %329 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 8
  %331 = load %struct.swaybar_output*, %struct.swaybar_output** %9, align 8
  %332 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = mul nsw i32 %330, %333
  %335 = sitofp i32 %334 to double
  %336 = load double*, double** %11, align 8
  %337 = load double, double* %336, align 8
  %338 = fsub double %337, %335
  store double %338, double* %336, align 8
  br label %339

339:                                              ; preds = %327, %322
  br label %340

340:                                              ; preds = %339, %316
  %341 = load %struct.swaybar_output*, %struct.swaybar_output** %9, align 8
  %342 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %341, i32 0, i32 1
  %343 = load i64, i64* %342, align 8
  %344 = load %struct.swaybar_output*, %struct.swaybar_output** %9, align 8
  %345 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 8
  %347 = sext i32 %346 to i64
  %348 = mul nsw i64 %343, %347
  store i64 %348, i64* %30, align 8
  %349 = load %struct.swaybar_output*, %struct.swaybar_output** %9, align 8
  %350 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %349, i32 0, i32 4
  %351 = load %struct.TYPE_8__*, %struct.TYPE_8__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %351, i32 0, i32 0
  %353 = load %struct.TYPE_5__*, %struct.TYPE_5__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %353, i32 0, i32 0
  %355 = load i64, i64* %354, align 8
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %389

357:                                              ; preds = %340
  %358 = call %struct.swaybar_hotspot* @calloc(i32 1, i32 48)
  store %struct.swaybar_hotspot* %358, %struct.swaybar_hotspot** %31, align 8
  %359 = load double*, double** %11, align 8
  %360 = load double, double* %359, align 8
  %361 = load %struct.swaybar_hotspot*, %struct.swaybar_hotspot** %31, align 8
  %362 = getelementptr inbounds %struct.swaybar_hotspot, %struct.swaybar_hotspot* %361, i32 0, i32 0
  store double %360, double* %362, align 8
  %363 = load %struct.swaybar_hotspot*, %struct.swaybar_hotspot** %31, align 8
  %364 = getelementptr inbounds %struct.swaybar_hotspot, %struct.swaybar_hotspot* %363, i32 0, i32 7
  store i64 0, i64* %364, align 8
  %365 = load i32, i32* %20, align 4
  %366 = load %struct.swaybar_hotspot*, %struct.swaybar_hotspot** %31, align 8
  %367 = getelementptr inbounds %struct.swaybar_hotspot, %struct.swaybar_hotspot* %366, i32 0, i32 1
  store i32 %365, i32* %367, align 8
  %368 = load i64, i64* %30, align 8
  %369 = load %struct.swaybar_hotspot*, %struct.swaybar_hotspot** %31, align 8
  %370 = getelementptr inbounds %struct.swaybar_hotspot, %struct.swaybar_hotspot* %369, i32 0, i32 6
  store i64 %368, i64* %370, align 8
  %371 = load i32, i32* @block_hotspot_callback, align 4
  %372 = load %struct.swaybar_hotspot*, %struct.swaybar_hotspot** %31, align 8
  %373 = getelementptr inbounds %struct.swaybar_hotspot, %struct.swaybar_hotspot* %372, i32 0, i32 5
  store i32 %371, i32* %373, align 4
  %374 = load i32, i32* @i3bar_block_unref_callback, align 4
  %375 = load %struct.swaybar_hotspot*, %struct.swaybar_hotspot** %31, align 8
  %376 = getelementptr inbounds %struct.swaybar_hotspot, %struct.swaybar_hotspot* %375, i32 0, i32 4
  store i32 %374, i32* %376, align 8
  %377 = load %struct.i3bar_block*, %struct.i3bar_block** %10, align 8
  %378 = load %struct.swaybar_hotspot*, %struct.swaybar_hotspot** %31, align 8
  %379 = getelementptr inbounds %struct.swaybar_hotspot, %struct.swaybar_hotspot* %378, i32 0, i32 3
  store %struct.i3bar_block* %377, %struct.i3bar_block** %379, align 8
  %380 = load %struct.i3bar_block*, %struct.i3bar_block** %10, align 8
  %381 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %380, i32 0, i32 16
  %382 = load i32, i32* %381, align 4
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* %381, align 4
  %384 = load %struct.swaybar_output*, %struct.swaybar_output** %9, align 8
  %385 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %384, i32 0, i32 3
  %386 = load %struct.swaybar_hotspot*, %struct.swaybar_hotspot** %31, align 8
  %387 = getelementptr inbounds %struct.swaybar_hotspot, %struct.swaybar_hotspot* %386, i32 0, i32 2
  %388 = call i32 @wl_list_insert(i32* %385, i32* %387)
  br label %389

389:                                              ; preds = %357, %340
  %390 = load double*, double** %11, align 8
  %391 = load double, double* %390, align 8
  store double %391, double* %32, align 8
  %392 = load double, double* %19, align 8
  store double %392, double* %33, align 8
  %393 = load i64, i64* %30, align 8
  %394 = sitofp i64 %393 to double
  %395 = load double, double* %19, align 8
  %396 = fmul double %395, 2.000000e+00
  %397 = fsub double %394, %396
  store double %397, double* %34, align 8
  %398 = load %struct.i3bar_block*, %struct.i3bar_block** %10, align 8
  %399 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %398, i32 0, i32 14
  %400 = load i64, i64* %399, align 8
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %402, label %408

402:                                              ; preds = %389
  %403 = load %struct.swaybar_config*, %struct.swaybar_config** %15, align 8
  %404 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %403, i32 0, i32 4
  %405 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %404, i32 0, i32 3
  %406 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %405, i32 0, i32 0
  %407 = load i64, i64* %406, align 8
  br label %412

408:                                              ; preds = %389
  %409 = load %struct.i3bar_block*, %struct.i3bar_block** %10, align 8
  %410 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %409, i32 0, i32 9
  %411 = load i64, i64* %410, align 8
  br label %412

412:                                              ; preds = %408, %402
  %413 = phi i64 [ %407, %402 ], [ %411, %408 ]
  store i64 %413, i64* %35, align 8
  %414 = load i64, i64* %35, align 8
  %415 = icmp ne i64 %414, 0
  br i1 %415, label %416, label %424

416:                                              ; preds = %412
  %417 = load i32*, i32** %8, align 8
  %418 = load i64, i64* %35, align 8
  %419 = load double, double* %32, align 8
  %420 = load double, double* %33, align 8
  %421 = load double, double* %22, align 8
  %422 = load double, double* %34, align 8
  %423 = call i32 @render_sharp_rectangle(i32* %417, i64 %418, double %419, double %420, double %421, double %422)
  br label %424

424:                                              ; preds = %416, %412
  %425 = load %struct.i3bar_block*, %struct.i3bar_block** %10, align 8
  %426 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %425, i32 0, i32 14
  %427 = load i64, i64* %426, align 8
  %428 = icmp ne i64 %427, 0
  br i1 %428, label %429, label %435

429:                                              ; preds = %424
  %430 = load %struct.swaybar_config*, %struct.swaybar_config** %15, align 8
  %431 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %430, i32 0, i32 4
  %432 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %431, i32 0, i32 3
  %433 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %432, i32 0, i32 1
  %434 = load i64, i64* %433, align 8
  br label %439

435:                                              ; preds = %424
  %436 = load %struct.i3bar_block*, %struct.i3bar_block** %10, align 8
  %437 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %436, i32 0, i32 5
  %438 = load i64, i64* %437, align 8
  br label %439

439:                                              ; preds = %435, %429
  %440 = phi i64 [ %434, %429 ], [ %438, %435 ]
  store i64 %440, i64* %36, align 8
  %441 = load i64, i64* %36, align 8
  %442 = icmp ne i64 %441, 0
  br i1 %442, label %443, label %463

443:                                              ; preds = %439
  %444 = load %struct.i3bar_block*, %struct.i3bar_block** %10, align 8
  %445 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %444, i32 0, i32 10
  %446 = load double, double* %445, align 8
  %447 = fcmp ogt double %446, 0.000000e+00
  br i1 %447, label %448, label %463

448:                                              ; preds = %443
  %449 = load i32*, i32** %8, align 8
  %450 = load i64, i64* %36, align 8
  %451 = load double, double* %32, align 8
  %452 = load double, double* %33, align 8
  %453 = load double, double* %22, align 8
  %454 = load %struct.i3bar_block*, %struct.i3bar_block** %10, align 8
  %455 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %454, i32 0, i32 10
  %456 = load double, double* %455, align 8
  %457 = load %struct.swaybar_output*, %struct.swaybar_output** %9, align 8
  %458 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 8
  %460 = sitofp i32 %459 to double
  %461 = fmul double %456, %460
  %462 = call i32 @render_sharp_line(i32* %449, i64 %450, double %451, double %452, double %453, double %461)
  br label %463

463:                                              ; preds = %448, %443, %439
  %464 = load i64, i64* %36, align 8
  %465 = icmp ne i64 %464, 0
  br i1 %465, label %466, label %497

466:                                              ; preds = %463
  %467 = load %struct.i3bar_block*, %struct.i3bar_block** %10, align 8
  %468 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %467, i32 0, i32 11
  %469 = load double, double* %468, align 8
  %470 = fcmp ogt double %469, 0.000000e+00
  br i1 %470, label %471, label %497

471:                                              ; preds = %466
  %472 = load i32*, i32** %8, align 8
  %473 = load i64, i64* %36, align 8
  %474 = load double, double* %32, align 8
  %475 = load double, double* %33, align 8
  %476 = load double, double* %34, align 8
  %477 = fadd double %475, %476
  %478 = load %struct.i3bar_block*, %struct.i3bar_block** %10, align 8
  %479 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %478, i32 0, i32 11
  %480 = load double, double* %479, align 8
  %481 = load %struct.swaybar_output*, %struct.swaybar_output** %9, align 8
  %482 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %481, i32 0, i32 0
  %483 = load i32, i32* %482, align 8
  %484 = sitofp i32 %483 to double
  %485 = fmul double %480, %484
  %486 = fsub double %477, %485
  %487 = load double, double* %22, align 8
  %488 = load %struct.i3bar_block*, %struct.i3bar_block** %10, align 8
  %489 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %488, i32 0, i32 11
  %490 = load double, double* %489, align 8
  %491 = load %struct.swaybar_output*, %struct.swaybar_output** %9, align 8
  %492 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %491, i32 0, i32 0
  %493 = load i32, i32* %492, align 8
  %494 = sitofp i32 %493 to double
  %495 = fmul double %490, %494
  %496 = call i32 @render_sharp_line(i32* %472, i64 %473, double %474, double %486, double %487, double %495)
  br label %497

497:                                              ; preds = %471, %466, %463
  %498 = load i64, i64* %36, align 8
  %499 = icmp ne i64 %498, 0
  br i1 %499, label %500, label %532

500:                                              ; preds = %497
  %501 = load %struct.i3bar_block*, %struct.i3bar_block** %10, align 8
  %502 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %501, i32 0, i32 6
  %503 = load i32, i32* %502, align 8
  %504 = icmp sgt i32 %503, 0
  br i1 %504, label %505, label %532

505:                                              ; preds = %500
  %506 = load i32*, i32** %8, align 8
  %507 = load i64, i64* %36, align 8
  %508 = load double, double* %32, align 8
  %509 = load double, double* %33, align 8
  %510 = load %struct.i3bar_block*, %struct.i3bar_block** %10, align 8
  %511 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %510, i32 0, i32 6
  %512 = load i32, i32* %511, align 8
  %513 = load %struct.swaybar_output*, %struct.swaybar_output** %9, align 8
  %514 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %513, i32 0, i32 0
  %515 = load i32, i32* %514, align 8
  %516 = mul nsw i32 %512, %515
  %517 = sitofp i32 %516 to double
  %518 = load double, double* %34, align 8
  %519 = call i32 @render_sharp_line(i32* %506, i64 %507, double %508, double %509, double %517, double %518)
  %520 = load %struct.i3bar_block*, %struct.i3bar_block** %10, align 8
  %521 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %520, i32 0, i32 6
  %522 = load i32, i32* %521, align 8
  %523 = load %struct.swaybar_output*, %struct.swaybar_output** %9, align 8
  %524 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %523, i32 0, i32 0
  %525 = load i32, i32* %524, align 8
  %526 = mul nsw i32 %522, %525
  %527 = load i32, i32* %18, align 4
  %528 = add nsw i32 %526, %527
  %529 = sitofp i32 %528 to double
  %530 = load double, double* %32, align 8
  %531 = fadd double %530, %529
  store double %531, double* %32, align 8
  br label %532

532:                                              ; preds = %505, %500, %497
  store double 0.000000e+00, double* %37, align 8
  %533 = load %struct.i3bar_block*, %struct.i3bar_block** %10, align 8
  %534 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %533, i32 0, i32 15
  %535 = load i32, i32* %534, align 8
  %536 = call i64 @strncmp(i32 %535, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %537 = icmp eq i64 %536, 0
  br i1 %537, label %538, label %540

538:                                              ; preds = %532
  %539 = load double, double* %32, align 8
  store double %539, double* %37, align 8
  br label %570

540:                                              ; preds = %532
  %541 = load %struct.i3bar_block*, %struct.i3bar_block** %10, align 8
  %542 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %541, i32 0, i32 15
  %543 = load i32, i32* %542, align 8
  %544 = call i64 @strncmp(i32 %543, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %545 = icmp eq i64 %544, 0
  br i1 %545, label %546, label %554

546:                                              ; preds = %540
  %547 = load double, double* %32, align 8
  %548 = load i32, i32* %20, align 4
  %549 = sitofp i32 %548 to double
  %550 = fadd double %547, %549
  %551 = load i32, i32* %16, align 4
  %552 = sitofp i32 %551 to double
  %553 = fsub double %550, %552
  store double %553, double* %37, align 8
  br label %569

554:                                              ; preds = %540
  %555 = load %struct.i3bar_block*, %struct.i3bar_block** %10, align 8
  %556 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %555, i32 0, i32 15
  %557 = load i32, i32* %556, align 8
  %558 = call i64 @strncmp(i32 %557, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %559 = icmp eq i64 %558, 0
  br i1 %559, label %560, label %568

560:                                              ; preds = %554
  %561 = load double, double* %32, align 8
  %562 = load i32, i32* %20, align 4
  %563 = load i32, i32* %16, align 4
  %564 = sub nsw i32 %562, %563
  %565 = sdiv i32 %564, 2
  %566 = sitofp i32 %565 to double
  %567 = fadd double %561, %566
  store double %567, double* %37, align 8
  br label %568

568:                                              ; preds = %560, %554
  br label %569

569:                                              ; preds = %568, %546
  br label %570

570:                                              ; preds = %569, %538
  %571 = load i64, i64* %30, align 8
  %572 = sitofp i64 %571 to double
  %573 = fdiv double %572, 2.000000e+00
  %574 = load i32, i32* %17, align 4
  %575 = sitofp i32 %574 to double
  %576 = fdiv double %575, 2.000000e+00
  %577 = fsub double %573, %576
  store double %577, double* %38, align 8
  %578 = load i32*, i32** %8, align 8
  %579 = load double, double* %37, align 8
  %580 = load double, double* %38, align 8
  %581 = call i64 @floor(double %580)
  %582 = trunc i64 %581 to i32
  %583 = call i32 @cairo_move_to(i32* %578, double %579, i32 %582)
  %584 = load %struct.i3bar_block*, %struct.i3bar_block** %10, align 8
  %585 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %584, i32 0, i32 12
  %586 = load i64*, i64** %585, align 8
  %587 = icmp ne i64* %586, null
  br i1 %587, label %588, label %593

588:                                              ; preds = %570
  %589 = load %struct.i3bar_block*, %struct.i3bar_block** %10, align 8
  %590 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %589, i32 0, i32 12
  %591 = load i64*, i64** %590, align 8
  %592 = load i64, i64* %591, align 8
  br label %598

593:                                              ; preds = %570
  %594 = load %struct.swaybar_config*, %struct.swaybar_config** %15, align 8
  %595 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %594, i32 0, i32 4
  %596 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %595, i32 0, i32 0
  %597 = load i64, i64* %596, align 8
  br label %598

598:                                              ; preds = %593, %588
  %599 = phi i64 [ %592, %588 ], [ %597, %593 ]
  store i64 %599, i64* %39, align 8
  %600 = load %struct.i3bar_block*, %struct.i3bar_block** %10, align 8
  %601 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %600, i32 0, i32 14
  %602 = load i64, i64* %601, align 8
  %603 = icmp ne i64 %602, 0
  br i1 %603, label %604, label %610

604:                                              ; preds = %598
  %605 = load %struct.swaybar_config*, %struct.swaybar_config** %15, align 8
  %606 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %605, i32 0, i32 4
  %607 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %606, i32 0, i32 3
  %608 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %607, i32 0, i32 2
  %609 = load i64, i64* %608, align 8
  br label %612

610:                                              ; preds = %598
  %611 = load i64, i64* %39, align 8
  br label %612

612:                                              ; preds = %610, %604
  %613 = phi i64 [ %609, %604 ], [ %611, %610 ]
  store i64 %613, i64* %39, align 8
  %614 = load i32*, i32** %8, align 8
  %615 = load i64, i64* %39, align 8
  %616 = call i32 @cairo_set_source_u32(i32* %614, i64 %615)
  %617 = load i32*, i32** %8, align 8
  %618 = load %struct.swaybar_config*, %struct.swaybar_config** %15, align 8
  %619 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %618, i32 0, i32 3
  %620 = load i32, i32* %619, align 4
  %621 = load %struct.swaybar_output*, %struct.swaybar_output** %9, align 8
  %622 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %621, i32 0, i32 0
  %623 = load i32, i32* %622, align 8
  %624 = load %struct.i3bar_block*, %struct.i3bar_block** %10, align 8
  %625 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %624, i32 0, i32 2
  %626 = load i32, i32* %625, align 8
  %627 = load i8*, i8** %14, align 8
  %628 = call i32 @pango_printf(i32* %617, i32 %620, i32 %623, i32 %626, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %627)
  %629 = load i32, i32* %20, align 4
  %630 = sitofp i32 %629 to double
  %631 = load double, double* %32, align 8
  %632 = fadd double %631, %630
  store double %632, double* %32, align 8
  %633 = load %struct.i3bar_block*, %struct.i3bar_block** %10, align 8
  %634 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %633, i32 0, i32 5
  %635 = load i64, i64* %634, align 8
  %636 = icmp ne i64 %635, 0
  br i1 %636, label %637, label %671

637:                                              ; preds = %612
  %638 = load %struct.i3bar_block*, %struct.i3bar_block** %10, align 8
  %639 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %638, i32 0, i32 7
  %640 = load i32, i32* %639, align 4
  %641 = icmp sgt i32 %640, 0
  br i1 %641, label %642, label %671

642:                                              ; preds = %637
  %643 = load i32, i32* %18, align 4
  %644 = sitofp i32 %643 to double
  %645 = load double, double* %32, align 8
  %646 = fadd double %645, %644
  store double %646, double* %32, align 8
  %647 = load i32*, i32** %8, align 8
  %648 = load i64, i64* %36, align 8
  %649 = load double, double* %32, align 8
  %650 = load double, double* %33, align 8
  %651 = load %struct.i3bar_block*, %struct.i3bar_block** %10, align 8
  %652 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %651, i32 0, i32 7
  %653 = load i32, i32* %652, align 4
  %654 = load %struct.swaybar_output*, %struct.swaybar_output** %9, align 8
  %655 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %654, i32 0, i32 0
  %656 = load i32, i32* %655, align 8
  %657 = mul nsw i32 %653, %656
  %658 = sitofp i32 %657 to double
  %659 = load double, double* %34, align 8
  %660 = call i32 @render_sharp_line(i32* %647, i64 %648, double %649, double %650, double %658, double %659)
  %661 = load %struct.i3bar_block*, %struct.i3bar_block** %10, align 8
  %662 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %661, i32 0, i32 7
  %663 = load i32, i32* %662, align 4
  %664 = load %struct.swaybar_output*, %struct.swaybar_output** %9, align 8
  %665 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %664, i32 0, i32 0
  %666 = load i32, i32* %665, align 8
  %667 = mul nsw i32 %663, %666
  %668 = sitofp i32 %667 to double
  %669 = load double, double* %32, align 8
  %670 = fadd double %669, %668
  store double %670, double* %32, align 8
  br label %671

671:                                              ; preds = %642, %637, %612
  %672 = load i32, i32* %12, align 4
  %673 = icmp ne i32 %672, 0
  br i1 %673, label %760, label %674

674:                                              ; preds = %671
  %675 = load %struct.i3bar_block*, %struct.i3bar_block** %10, align 8
  %676 = getelementptr inbounds %struct.i3bar_block, %struct.i3bar_block* %675, i32 0, i32 13
  %677 = load i64, i64* %676, align 8
  %678 = icmp ne i64 %677, 0
  br i1 %678, label %679, label %760

679:                                              ; preds = %674
  %680 = load %struct.swaybar_output*, %struct.swaybar_output** %9, align 8
  %681 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %680, i32 0, i32 2
  %682 = load i64, i64* %681, align 8
  %683 = icmp ne i64 %682, 0
  br i1 %683, label %684, label %691

684:                                              ; preds = %679
  %685 = load i32*, i32** %8, align 8
  %686 = load %struct.swaybar_config*, %struct.swaybar_config** %15, align 8
  %687 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %686, i32 0, i32 4
  %688 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %687, i32 0, i32 1
  %689 = load i64, i64* %688, align 8
  %690 = call i32 @cairo_set_source_u32(i32* %685, i64 %689)
  br label %698

691:                                              ; preds = %679
  %692 = load i32*, i32** %8, align 8
  %693 = load %struct.swaybar_config*, %struct.swaybar_config** %15, align 8
  %694 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %693, i32 0, i32 4
  %695 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %694, i32 0, i32 2
  %696 = load i64, i64* %695, align 8
  %697 = call i32 @cairo_set_source_u32(i32* %692, i64 %696)
  br label %698

698:                                              ; preds = %691, %684
  %699 = load %struct.swaybar_config*, %struct.swaybar_config** %15, align 8
  %700 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %699, i32 0, i32 1
  %701 = load i8*, i8** %700, align 8
  %702 = icmp ne i8* %701, null
  br i1 %702, label %703, label %735

703:                                              ; preds = %698
  %704 = load double, double* %32, align 8
  %705 = load i32, i32* %27, align 4
  %706 = load i32, i32* %25, align 4
  %707 = sub nsw i32 %705, %706
  %708 = sdiv i32 %707, 2
  %709 = sitofp i32 %708 to double
  %710 = fadd double %704, %709
  store double %710, double* %37, align 8
  %711 = load i64, i64* %30, align 8
  %712 = sitofp i64 %711 to double
  %713 = fdiv double %712, 2.000000e+00
  %714 = load i32, i32* %26, align 4
  %715 = sitofp i32 %714 to double
  %716 = fdiv double %715, 2.000000e+00
  %717 = fsub double %713, %716
  store double %717, double* %40, align 8
  %718 = load i32*, i32** %8, align 8
  %719 = load double, double* %37, align 8
  %720 = load double, double* %40, align 8
  %721 = call i64 @floor(double %720)
  %722 = trunc i64 %721 to i32
  %723 = call i32 @cairo_move_to(i32* %718, double %719, i32 %722)
  %724 = load i32*, i32** %8, align 8
  %725 = load %struct.swaybar_config*, %struct.swaybar_config** %15, align 8
  %726 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %725, i32 0, i32 3
  %727 = load i32, i32* %726, align 4
  %728 = load %struct.swaybar_output*, %struct.swaybar_output** %9, align 8
  %729 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %728, i32 0, i32 0
  %730 = load i32, i32* %729, align 8
  %731 = load %struct.swaybar_config*, %struct.swaybar_config** %15, align 8
  %732 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %731, i32 0, i32 1
  %733 = load i8*, i8** %732, align 8
  %734 = call i32 @pango_printf(i32* %724, i32 %727, i32 %730, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %733)
  br label %759

735:                                              ; preds = %698
  %736 = load i32*, i32** %8, align 8
  %737 = call i32 @cairo_set_line_width(i32* %736, i32 1)
  %738 = load i32*, i32** %8, align 8
  %739 = load double, double* %32, align 8
  %740 = load i32, i32* %27, align 4
  %741 = sdiv i32 %740, 2
  %742 = sitofp i32 %741 to double
  %743 = fadd double %739, %742
  %744 = load i32, i32* %18, align 4
  %745 = call i32 @cairo_move_to(i32* %738, double %743, i32 %744)
  %746 = load i32*, i32** %8, align 8
  %747 = load double, double* %32, align 8
  %748 = load i32, i32* %27, align 4
  %749 = sdiv i32 %748, 2
  %750 = sitofp i32 %749 to double
  %751 = fadd double %747, %750
  %752 = load i64, i64* %30, align 8
  %753 = load i32, i32* %18, align 4
  %754 = sext i32 %753 to i64
  %755 = sub nsw i64 %752, %754
  %756 = call i32 @cairo_line_to(i32* %746, double %751, i64 %755)
  %757 = load i32*, i32** %8, align 8
  %758 = call i32 @cairo_stroke(i32* %757)
  br label %759

759:                                              ; preds = %735, %703
  br label %760

760:                                              ; preds = %759, %674, %671
  %761 = load %struct.swaybar_output*, %struct.swaybar_output** %9, align 8
  %762 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %761, i32 0, i32 1
  %763 = load i64, i64* %762, align 8
  store i64 %763, i64* %7, align 8
  br label %764

764:                                              ; preds = %760, %304, %166, %51
  %765 = load i64, i64* %7, align 8
  ret i64 %765
}

declare dso_local i32 @get_text_size(i32*, i32, i32*, i32*, i32*, i32, i32, i8*, i8*) #1

declare dso_local %struct.swaybar_hotspot* @calloc(i32, i32) #1

declare dso_local i32 @wl_list_insert(i32*, i32*) #1

declare dso_local i32 @render_sharp_rectangle(i32*, i64, double, double, double, double) #1

declare dso_local i32 @render_sharp_line(i32*, i64, double, double, double, double) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @cairo_move_to(i32*, double, i32) #1

declare dso_local i64 @floor(double) #1

declare dso_local i32 @cairo_set_source_u32(i32*, i64) #1

declare dso_local i32 @pango_printf(i32*, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @cairo_set_line_width(i32*, i32) #1

declare dso_local i32 @cairo_line_to(i32*, double, i64) #1

declare dso_local i32 @cairo_stroke(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
