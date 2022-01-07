; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_croppadd.c_Filter.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_croppadd.c_Filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_21__, %struct.TYPE_19__, %struct.TYPE_25__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32* }

@__const.Filter.p_padd_color = private unnamed_addr constant [4 x i32] [i32 0, i32 128, i32 128, i32 255], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_23__* (%struct.TYPE_24__*, %struct.TYPE_23__*)* @Filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_23__* @Filter(%struct.TYPE_24__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [4 x i32], align 16
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_22__*, align 8
  %19 = alloca %struct.TYPE_22__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %28, align 8
  store %struct.TYPE_25__* %29, %struct.TYPE_25__** %6, align 8
  %30 = bitcast [4 x i32]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %30, i8* align 16 bitcast ([4 x i32]* @__const.Filter.p_padd_color to i8*), i64 16, i1 false)
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %32 = icmp ne %struct.TYPE_23__* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %2
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %3, align 8
  br label %323

34:                                               ; preds = %2
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %36 = call %struct.TYPE_23__* @filter_NewPicture(%struct.TYPE_24__* %35)
  store %struct.TYPE_23__* %36, %struct.TYPE_23__** %7, align 8
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %38 = icmp ne %struct.TYPE_23__* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %41 = call i32 @picture_Release(%struct.TYPE_23__* %40)
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %3, align 8
  br label %323

42:                                               ; preds = %34
  store i32 0, i32* %17, align 4
  br label %43

43:                                               ; preds = %316, %42
  %44 = load i32, i32* %17, align 4
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %319

49:                                               ; preds = %43
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %51, align 8
  %53 = load i32, i32* %17, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i64 %54
  store %struct.TYPE_22__* %55, %struct.TYPE_22__** %18, align 8
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %57, align 8
  %59 = load i32, i32* %17, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i64 %60
  store %struct.TYPE_22__* %61, %struct.TYPE_22__** %19, align 8
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  store i32* %64, i32** %20, align 8
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 4
  %67 = load i32*, i32** %66, align 8
  store i32* %67, i32** %21, align 8
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %22, align 4
  %71 = load i32, i32* %17, align 4
  %72 = icmp sgt i32 %71, 3
  br i1 %72, label %73, label %76

73:                                               ; preds = %49
  %74 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  %75 = load i32, i32* %74, align 16
  br label %81

76:                                               ; preds = %49
  %77 = load i32, i32* %17, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 %78
  %80 = load i32, i32* %79, align 4
  br label %81

81:                                               ; preds = %76, %73
  %82 = phi i32 [ %75, %73 ], [ %80, %76 ]
  store i32 %82, i32* %23, align 4
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %87, %90
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 %91, %94
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = mul nsw i32 %95, %98
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = sdiv i32 %99, %104
  store i32 %105, i32* %8, align 4
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = sub nsw i32 %110, %113
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = sub nsw i32 %114, %117
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = mul nsw i32 %118, %121
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = sdiv i32 %122, %127
  store i32 %128, i32* %9, align 4
  %129 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = mul nsw i32 %131, %134
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = sdiv i32 %135, %140
  store i32 %141, i32* %10, align 4
  %142 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = mul nsw i32 %144, %147
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = sdiv i32 %148, %153
  store i32 %154, i32* %11, align 4
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = mul nsw i32 %159, %162
  %164 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = sdiv i32 %163, %168
  store i32 %169, i32* %12, align 4
  %170 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = mul nsw i32 %174, %177
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = sdiv i32 %178, %183
  store i32 %184, i32* %13, align 4
  %185 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = mul nsw i32 %187, %190
  %192 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_22__*, %struct.TYPE_22__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = sdiv i32 %191, %196
  store i32 %197, i32* %14, align 4
  %198 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %198, i32 0, i32 5
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %202 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = mul nsw i32 %200, %203
  %205 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %205, i32 0, i32 1
  %207 = load %struct.TYPE_22__*, %struct.TYPE_22__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = sdiv i32 %204, %209
  store i32 %210, i32* %15, align 4
  %211 = load i32, i32* %11, align 4
  %212 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = mul nsw i32 %211, %214
  %216 = load i32*, i32** %20, align 8
  %217 = sext i32 %215 to i64
  %218 = getelementptr inbounds i32, i32* %216, i64 %217
  store i32* %218, i32** %20, align 8
  %219 = load i32*, i32** %21, align 8
  %220 = load i32, i32* %23, align 4
  %221 = load i32, i32* %15, align 4
  %222 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %223 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  %225 = mul nsw i32 %221, %224
  %226 = call i32 @memset(i32* %219, i32 %220, i32 %225)
  %227 = load i32, i32* %15, align 4
  %228 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %229 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 4
  %231 = mul nsw i32 %227, %230
  %232 = load i32*, i32** %21, align 8
  %233 = sext i32 %231 to i64
  %234 = getelementptr inbounds i32, i32* %232, i64 %233
  store i32* %234, i32** %21, align 8
  store i32 0, i32* %24, align 4
  br label %235

235:                                              ; preds = %300, %81
  %236 = load i32, i32* %24, align 4
  %237 = load i32, i32* %9, align 4
  %238 = icmp slt i32 %236, %237
  br i1 %238, label %239, label %303

239:                                              ; preds = %235
  %240 = load i32*, i32** %20, align 8
  %241 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %242 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %240, i64 %244
  store i32* %245, i32** %25, align 8
  %246 = load i32*, i32** %21, align 8
  %247 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %248 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %246, i64 %250
  store i32* %251, i32** %26, align 8
  %252 = load i32, i32* %10, align 4
  %253 = load i32, i32* %22, align 4
  %254 = mul nsw i32 %252, %253
  %255 = load i32*, i32** %20, align 8
  %256 = sext i32 %254 to i64
  %257 = getelementptr inbounds i32, i32* %255, i64 %256
  store i32* %257, i32** %20, align 8
  %258 = load i32*, i32** %21, align 8
  %259 = load i32, i32* %23, align 4
  %260 = load i32, i32* %14, align 4
  %261 = load i32, i32* %22, align 4
  %262 = mul nsw i32 %260, %261
  %263 = call i32 @memset(i32* %258, i32 %259, i32 %262)
  %264 = load i32, i32* %14, align 4
  %265 = load i32, i32* %22, align 4
  %266 = mul nsw i32 %264, %265
  %267 = load i32*, i32** %21, align 8
  %268 = sext i32 %266 to i64
  %269 = getelementptr inbounds i32, i32* %267, i64 %268
  store i32* %269, i32** %21, align 8
  %270 = load i32*, i32** %21, align 8
  %271 = load i32*, i32** %20, align 8
  %272 = load i32, i32* %8, align 4
  %273 = load i32, i32* %22, align 4
  %274 = mul nsw i32 %272, %273
  %275 = call i32 @memcpy(i32* %270, i32* %271, i32 %274)
  %276 = load i32, i32* %8, align 4
  %277 = load i32, i32* %22, align 4
  %278 = mul nsw i32 %276, %277
  %279 = load i32*, i32** %21, align 8
  %280 = sext i32 %278 to i64
  %281 = getelementptr inbounds i32, i32* %279, i64 %280
  store i32* %281, i32** %21, align 8
  %282 = load i32, i32* %8, align 4
  %283 = load i32, i32* %22, align 4
  %284 = mul nsw i32 %282, %283
  %285 = load i32*, i32** %20, align 8
  %286 = sext i32 %284 to i64
  %287 = getelementptr inbounds i32, i32* %285, i64 %286
  store i32* %287, i32** %20, align 8
  %288 = load i32*, i32** %21, align 8
  %289 = load i32, i32* %23, align 4
  %290 = load i32, i32* %12, align 4
  %291 = load i32, i32* %14, align 4
  %292 = sub nsw i32 %290, %291
  %293 = load i32, i32* %8, align 4
  %294 = sub nsw i32 %292, %293
  %295 = load i32, i32* %22, align 4
  %296 = mul nsw i32 %294, %295
  %297 = call i32 @memset(i32* %288, i32 %289, i32 %296)
  %298 = load i32*, i32** %25, align 8
  store i32* %298, i32** %20, align 8
  %299 = load i32*, i32** %26, align 8
  store i32* %299, i32** %21, align 8
  br label %300

300:                                              ; preds = %239
  %301 = load i32, i32* %24, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %24, align 4
  br label %235

303:                                              ; preds = %235
  %304 = load i32*, i32** %21, align 8
  %305 = load i32, i32* %23, align 4
  %306 = load i32, i32* %13, align 4
  %307 = load i32, i32* %15, align 4
  %308 = sub nsw i32 %306, %307
  %309 = load i32, i32* %9, align 4
  %310 = sub nsw i32 %308, %309
  %311 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %312 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %311, i32 0, i32 3
  %313 = load i32, i32* %312, align 4
  %314 = mul nsw i32 %310, %313
  %315 = call i32 @memset(i32* %304, i32 %305, i32 %314)
  br label %316

316:                                              ; preds = %303
  %317 = load i32, i32* %17, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %17, align 4
  br label %43

319:                                              ; preds = %43
  %320 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %321 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %322 = call %struct.TYPE_23__* @CopyInfoAndRelease(%struct.TYPE_23__* %320, %struct.TYPE_23__* %321)
  store %struct.TYPE_23__* %322, %struct.TYPE_23__** %3, align 8
  br label %323

323:                                              ; preds = %319, %39, %33
  %324 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  ret %struct.TYPE_23__* %324
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_23__* @filter_NewPicture(%struct.TYPE_24__*) #2

declare dso_local i32 @picture_Release(%struct.TYPE_23__*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local %struct.TYPE_23__* @CopyInfoAndRelease(%struct.TYPE_23__*, %struct.TYPE_23__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
