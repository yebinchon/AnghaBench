; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_chroma/extr_i420_rgb16.c_I420_RGB16.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_chroma/extr_i420_rgb16.c_I420_RGB16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_16__, %struct.TYPE_14__, %struct.TYPE_19__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i64, i64 }
%struct.TYPE_19__ = type { i32*, i64, i32, i32, i32* }
%struct.TYPE_17__ = type { %struct.TYPE_12__*, i32*, i32*, i32* }
%struct.TYPE_12__ = type { i32, i32, i64 }

@SCALE_WIDTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @I420_RGB16(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %6, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %35, align 8
  store %struct.TYPE_19__* %36, %struct.TYPE_19__** %7, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i32*
  store i32* %42, i32** %8, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %9, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %10, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %11, align 8
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %56, %61
  %63 = sdiv i32 %62, 2
  store i32 %63, i32* %19, align 4
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 4
  %66 = load i32*, i32** %65, align 8
  store i32* %66, i32** %26, align 8
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  store i32* %69, i32** %30, align 8
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i64 0
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i64 0
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %75, %81
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sub nsw i32 %82, %87
  store i32 %88, i32* %32, align 4
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i64 1
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i64 1
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 %94, %100
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sdiv i32 %106, 2
  %108 = sub nsw i32 %101, %107
  store i32 %108, i32* %33, align 4
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = sub nsw i32 %113, %118
  store i32 %119, i32* %16, align 4
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %124, %129
  %131 = sub nsw i32 0, %130
  %132 = and i32 %131, 7
  store i32 %132, i32* %17, align 4
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %137, %142
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %148, %153
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = add nsw i64 %159, %164
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %170, %175
  %177 = load i32*, i32** %30, align 8
  %178 = call i32 @SetOffset(i32 %143, i32 %154, i64 %165, i32 %176, i32* %12, i32* %13, i32* %177)
  %179 = load i32, i32* %12, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %203

181:                                              ; preds = %3
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 3
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = add nsw i32 %190, %195
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = call i64 @AllocateOrGrow(i64* %183, i32* %185, i32 %196, i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %181
  br label %343

203:                                              ; preds = %181, %3
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = inttoptr i64 %206 to i32*
  store i32* %207, i32** %28, align 8
  br label %208

208:                                              ; preds = %203
  %209 = load i32, i32* %13, align 4
  %210 = icmp eq i32 %209, 1
  br i1 %210, label %211, label %223

211:                                              ; preds = %208
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = add nsw i32 %216, %221
  br label %235

223:                                              ; preds = %208
  %224 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 4
  %234 = add nsw i32 %228, %233
  br label %235

235:                                              ; preds = %223, %211
  %236 = phi i32 [ %222, %211 ], [ %234, %223 ]
  store i32 %236, i32* %18, align 4
  store i32 0, i32* %15, align 4
  br label %237

237:                                              ; preds = %340, %235
  %238 = load i32, i32* %15, align 4
  %239 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = add nsw i32 %243, %248
  %250 = icmp ult i32 %238, %249
  br i1 %250, label %251, label %343

251:                                              ; preds = %237
  %252 = load i32*, i32** %8, align 8
  store i32* %252, i32** %20, align 8
  %253 = load i32, i32* %12, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %257

255:                                              ; preds = %251
  %256 = load i32*, i32** %28, align 8
  br label %259

257:                                              ; preds = %251
  %258 = load i32*, i32** %8, align 8
  br label %259

259:                                              ; preds = %257, %255
  %260 = phi i32* [ %256, %255 ], [ %258, %257 ]
  store i32* %260, i32** %29, align 8
  %261 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = add nsw i32 %265, %270
  %272 = sdiv i32 %271, 8
  store i32 %272, i32* %14, align 4
  br label %273

273:                                              ; preds = %277, %259
  %274 = load i32, i32* %14, align 4
  %275 = add i32 %274, -1
  store i32 %275, i32* %14, align 4
  %276 = icmp ne i32 %274, 0
  br i1 %276, label %277, label %286

277:                                              ; preds = %273
  %278 = call i32 @CONVERT_YUV_PIXEL(i32 2)
  %279 = call i32 @CONVERT_Y_PIXEL(i32 2)
  %280 = call i32 @CONVERT_YUV_PIXEL(i32 2)
  %281 = call i32 @CONVERT_Y_PIXEL(i32 2)
  %282 = call i32 @CONVERT_YUV_PIXEL(i32 2)
  %283 = call i32 @CONVERT_Y_PIXEL(i32 2)
  %284 = call i32 @CONVERT_YUV_PIXEL(i32 2)
  %285 = call i32 @CONVERT_Y_PIXEL(i32 2)
  br label %273

286:                                              ; preds = %273
  %287 = load i32, i32* %17, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %320

289:                                              ; preds = %286
  %290 = load i32, i32* %17, align 4
  %291 = load i32*, i32** %9, align 8
  %292 = sext i32 %290 to i64
  %293 = sub i64 0, %292
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  store i32* %294, i32** %9, align 8
  %295 = load i32, i32* %17, align 4
  %296 = ashr i32 %295, 1
  %297 = load i32*, i32** %10, align 8
  %298 = sext i32 %296 to i64
  %299 = sub i64 0, %298
  %300 = getelementptr inbounds i32, i32* %297, i64 %299
  store i32* %300, i32** %10, align 8
  %301 = load i32, i32* %17, align 4
  %302 = ashr i32 %301, 1
  %303 = load i32*, i32** %11, align 8
  %304 = sext i32 %302 to i64
  %305 = sub i64 0, %304
  %306 = getelementptr inbounds i32, i32* %303, i64 %305
  store i32* %306, i32** %11, align 8
  %307 = load i32, i32* %17, align 4
  %308 = load i32*, i32** %29, align 8
  %309 = sext i32 %307 to i64
  %310 = sub i64 0, %309
  %311 = getelementptr inbounds i32, i32* %308, i64 %310
  store i32* %311, i32** %29, align 8
  %312 = call i32 @CONVERT_YUV_PIXEL(i32 2)
  %313 = call i32 @CONVERT_Y_PIXEL(i32 2)
  %314 = call i32 @CONVERT_YUV_PIXEL(i32 2)
  %315 = call i32 @CONVERT_Y_PIXEL(i32 2)
  %316 = call i32 @CONVERT_YUV_PIXEL(i32 2)
  %317 = call i32 @CONVERT_Y_PIXEL(i32 2)
  %318 = call i32 @CONVERT_YUV_PIXEL(i32 2)
  %319 = call i32 @CONVERT_Y_PIXEL(i32 2)
  br label %320

320:                                              ; preds = %289, %286
  %321 = load i32, i32* @SCALE_WIDTH, align 4
  %322 = call i32 @SCALE_HEIGHT(i32 420, i32 2)
  %323 = load i32, i32* %32, align 4
  %324 = load i32*, i32** %9, align 8
  %325 = sext i32 %323 to i64
  %326 = getelementptr inbounds i32, i32* %324, i64 %325
  store i32* %326, i32** %9, align 8
  %327 = load i32, i32* %15, align 4
  %328 = urem i32 %327, 2
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %339

330:                                              ; preds = %320
  %331 = load i32, i32* %33, align 4
  %332 = load i32*, i32** %10, align 8
  %333 = sext i32 %331 to i64
  %334 = getelementptr inbounds i32, i32* %332, i64 %333
  store i32* %334, i32** %10, align 8
  %335 = load i32, i32* %33, align 4
  %336 = load i32*, i32** %11, align 8
  %337 = sext i32 %335 to i64
  %338 = getelementptr inbounds i32, i32* %336, i64 %337
  store i32* %338, i32** %11, align 8
  br label %339

339:                                              ; preds = %330, %320
  br label %340

340:                                              ; preds = %339
  %341 = load i32, i32* %15, align 4
  %342 = add i32 %341, 1
  store i32 %342, i32* %15, align 4
  br label %237

343:                                              ; preds = %202, %237
  ret void
}

declare dso_local i32 @SetOffset(i32, i32, i64, i32, i32*, i32*, i32*) #1

declare dso_local i64 @AllocateOrGrow(i64*, i32*, i32, i32) #1

declare dso_local i32 @CONVERT_YUV_PIXEL(i32) #1

declare dso_local i32 @CONVERT_Y_PIXEL(i32) #1

declare dso_local i32 @SCALE_HEIGHT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
