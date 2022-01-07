; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_puzzle_pce.c_puzzle_generate_sectLeft2Right.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_puzzle_pce.c_puzzle_generate_sectLeft2Right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_14__*, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @puzzle_generate_sectLeft2Right(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, %struct.TYPE_11__* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %8, align 8
  store i64 %3, i64* %9, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %22 = icmp ne %struct.TYPE_11__* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %25 = icmp ne %struct.TYPE_11__* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %23, %4
  %27 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %27, i32* %5, align 4
  br label %278

28:                                               ; preds = %23
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  store %struct.TYPE_13__* %31, %struct.TYPE_13__** %10, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %11, align 4
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 4, %45
  %47 = trunc i64 %46 to i32
  %48 = call i8* @malloc(i32 %47)
  %49 = bitcast i8* %48 to %struct.TYPE_14__*
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 2
  store %struct.TYPE_14__* %49, %struct.TYPE_14__** %51, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %53, align 8
  %55 = icmp ne %struct.TYPE_14__* %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %28
  %57 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %57, i32* %5, align 4
  br label %278

58:                                               ; preds = %28
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %13, align 4
  br label %60

60:                                               ; preds = %273, %58
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %62, %63
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %276

66:                                               ; preds = %60
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %11, align 4
  %69 = sub nsw i32 %67, %68
  store i32 %69, i32* %14, align 4
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = load i64, i64* %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %15, align 4
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %78 = load i32, i32* %13, align 4
  %79 = load i64, i64* %9, align 8
  %80 = call i32 @puzzle_diagonal_limit(%struct.TYPE_12__* %77, i32 %78, i32 1, i64 %79)
  store i32 %80, i32* %16, align 4
  %81 = load i32, i32* %15, align 4
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %83 = load i32, i32* %13, align 4
  %84 = load i64, i64* %9, align 8
  %85 = call i32 @puzzle_diagonal_limit(%struct.TYPE_12__* %82, i32 %83, i32 0, i64 %84)
  %86 = sub nsw i32 %81, %85
  store i32 %86, i32* %17, align 4
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %88, align 8
  %90 = load i32, i32* %14, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* %18, align 4
  %95 = load i32, i32* %18, align 4
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %97, align 8
  %99 = load i32, i32* %14, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  store i32 %95, i32* %102, align 8
  %103 = load i32, i32* %18, align 4
  %104 = sext i32 %103 to i64
  %105 = mul i64 4, %104
  %106 = trunc i64 %105 to i32
  %107 = call i8* @malloc(i32 %106)
  %108 = bitcast i8* %107 to %struct.TYPE_14__*
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 2
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %110, align 8
  %112 = load i32, i32* %14, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 2
  store %struct.TYPE_14__* %108, %struct.TYPE_14__** %115, align 8
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %117, align 8
  %119 = load i32, i32* %14, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %122, align 8
  %124 = icmp ne %struct.TYPE_14__* %123, null
  br i1 %124, label %151, label %125

125:                                              ; preds = %66
  store i64 0, i64* %19, align 8
  br label %126

126:                                              ; preds = %140, %125
  %127 = load i64, i64* %19, align 8
  %128 = load i32, i32* %14, align 4
  %129 = sext i32 %128 to i64
  %130 = icmp ult i64 %127, %129
  br i1 %130, label %131, label %143

131:                                              ; preds = %126
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %133, align 8
  %135 = load i64, i64* %19, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 2
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %137, align 8
  %139 = call i32 @free(%struct.TYPE_14__* %138)
  br label %140

140:                                              ; preds = %131
  %141 = load i64, i64* %19, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %19, align 8
  br label %126

143:                                              ; preds = %126
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 2
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %145, align 8
  %147 = call i32 @free(%struct.TYPE_14__* %146)
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 2
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %149, align 8
  %150 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %150, i32* %5, align 4
  br label %278

151:                                              ; preds = %66
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 2
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %153, align 8
  %155 = load i32, i32* %14, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i64 0
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 2
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %164, align 8
  %166 = load i32, i32* %14, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 2
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i64 0
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 3
  store i32 %162, i32* %172, align 8
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 2
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %174, align 8
  %176 = load i32, i32* %14, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 2
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i64 0
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %17, align 4
  %185 = add nsw i32 %183, %184
  %186 = load i32, i32* %16, align 4
  %187 = sub nsw i32 %185, %186
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 2
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %189, align 8
  %191 = load i32, i32* %14, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 2
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i64 0
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 1
  store i32 %187, i32* %197, align 4
  store i32 0, i32* %20, align 4
  br label %198

198:                                              ; preds = %269, %151
  %199 = load i32, i32* %20, align 4
  %200 = load i32, i32* %18, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %272

202:                                              ; preds = %198
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 2
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %204, align 8
  %206 = load i32, i32* %14, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 2
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %209, align 8
  %211 = load i32, i32* %18, align 4
  %212 = sub nsw i32 %211, 1
  %213 = load i32, i32* %20, align 4
  %214 = sub nsw i32 %212, %213
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 2
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %220, align 8
  %222 = load i32, i32* %14, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 2
  %226 = load %struct.TYPE_14__*, %struct.TYPE_14__** %225, align 8
  %227 = load i32, i32* %20, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 3
  store i32 %218, i32* %230, align 8
  %231 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i32 0, i32 2
  %233 = load %struct.TYPE_14__*, %struct.TYPE_14__** %232, align 8
  %234 = load i32, i32* %14, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 2
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** %237, align 8
  %239 = load i32, i32* %18, align 4
  %240 = sub nsw i32 %239, 1
  %241 = load i32, i32* %20, align 4
  %242 = sub nsw i32 %240, %241
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* %20, align 4
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %253

249:                                              ; preds = %202
  %250 = load i32, i32* %17, align 4
  %251 = load i32, i32* %16, align 4
  %252 = sub nsw i32 %250, %251
  br label %254

253:                                              ; preds = %202
  br label %254

254:                                              ; preds = %253, %249
  %255 = phi i32 [ %252, %249 ], [ 0, %253 ]
  %256 = add nsw i32 %246, %255
  %257 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 2
  %259 = load %struct.TYPE_14__*, %struct.TYPE_14__** %258, align 8
  %260 = load i32, i32* %14, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %259, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %262, i32 0, i32 2
  %264 = load %struct.TYPE_14__*, %struct.TYPE_14__** %263, align 8
  %265 = load i32, i32* %20, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i32 0, i32 1
  store i32 %256, i32* %268, align 4
  br label %269

269:                                              ; preds = %254
  %270 = load i32, i32* %20, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %20, align 4
  br label %198

272:                                              ; preds = %198
  br label %273

273:                                              ; preds = %272
  %274 = load i32, i32* %13, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %13, align 4
  br label %60

276:                                              ; preds = %60
  %277 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %277, i32* %5, align 4
  br label %278

278:                                              ; preds = %276, %143, %56, %26
  %279 = load i32, i32* %5, align 4
  ret i32 %279
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @puzzle_diagonal_limit(%struct.TYPE_12__*, i32, i32, i64) #1

declare dso_local i32 @free(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
