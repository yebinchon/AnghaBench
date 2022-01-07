; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_puzzle_pce.c_puzzle_generate_sectTop2Btm.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_puzzle_pce.c_puzzle_generate_sectTop2Btm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_14__*, i64 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @puzzle_generate_sectTop2Btm(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, %struct.TYPE_11__* %2, i64 %3) #0 {
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
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %8, align 8
  store i64 %3, i64* %9, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %30 = icmp ne %struct.TYPE_11__* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %33 = icmp ne %struct.TYPE_11__* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %31, %4
  %35 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %35, i32* %5, align 4
  br label %379

36:                                               ; preds = %31
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  store %struct.TYPE_13__* %39, %struct.TYPE_13__** %10, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %11, align 4
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %12, align 4
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = load i64, i64* %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %13, align 4
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = load i64, i64* %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %11, align 4
  %61 = sub nsw i32 %59, %60
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %13, align 4
  %63 = sdiv i32 %62, 2
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %15, align 4
  %66 = sub nsw i32 %64, %65
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* %16, align 4
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %15, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* %16, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 4, %74
  %76 = trunc i64 %75 to i32
  %77 = call i8* @malloc(i32 %76)
  %78 = bitcast i8* %77 to %struct.TYPE_14__*
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 2
  store %struct.TYPE_14__* %78, %struct.TYPE_14__** %80, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %82, align 8
  %84 = icmp ne %struct.TYPE_14__* %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %36
  %86 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %86, i32* %5, align 4
  br label %379

87:                                               ; preds = %36
  %88 = load i32, i32* %15, align 4
  store i32 %88, i32* %17, align 4
  br label %89

89:                                               ; preds = %374, %87
  %90 = load i32, i32* %17, align 4
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* %15, align 4
  %93 = add nsw i32 %91, %92
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %377

95:                                               ; preds = %89
  %96 = load i32, i32* %15, align 4
  %97 = mul nsw i32 2, %96
  %98 = load i32, i32* %17, align 4
  %99 = sub nsw i32 %97, %98
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* %12, align 4
  %102 = sub nsw i32 %100, %101
  %103 = add nsw i32 %99, %102
  store i32 %103, i32* %18, align 4
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* %15, align 4
  %106 = sub nsw i32 %104, %105
  store i32 %106, i32* %19, align 4
  %107 = load i32, i32* %18, align 4
  %108 = load i32, i32* %11, align 4
  %109 = sub nsw i32 %107, %108
  store i32 %109, i32* %20, align 4
  %110 = load i32, i32* %20, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %95
  %113 = load i32, i32* %20, align 4
  %114 = load i32, i32* %12, align 4
  %115 = icmp sge i32 %113, %114
  br i1 %115, label %116, label %200

116:                                              ; preds = %112, %95
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %118, align 8
  %120 = load i32, i32* %19, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  store i32 1, i32* %123, align 8
  %124 = call i8* @malloc(i32 4)
  %125 = bitcast i8* %124 to %struct.TYPE_14__*
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %127, align 8
  %129 = load i32, i32* %19, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 2
  store %struct.TYPE_14__* %125, %struct.TYPE_14__** %132, align 8
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %134, align 8
  %136 = load i32, i32* %19, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 2
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %139, align 8
  %141 = icmp ne %struct.TYPE_14__* %140, null
  br i1 %141, label %168, label %142

142:                                              ; preds = %116
  store i64 0, i64* %21, align 8
  br label %143

143:                                              ; preds = %157, %142
  %144 = load i64, i64* %21, align 8
  %145 = load i32, i32* %19, align 4
  %146 = sext i32 %145 to i64
  %147 = icmp ult i64 %144, %146
  br i1 %147, label %148, label %160

148:                                              ; preds = %143
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 2
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %150, align 8
  %152 = load i64, i64* %21, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 2
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %154, align 8
  %156 = call i32 @free(%struct.TYPE_14__* %155)
  br label %157

157:                                              ; preds = %148
  %158 = load i64, i64* %21, align 8
  %159 = add i64 %158, 1
  store i64 %159, i64* %21, align 8
  br label %143

160:                                              ; preds = %143
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 2
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %162, align 8
  %164 = call i32 @free(%struct.TYPE_14__* %163)
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 2
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %166, align 8
  %167 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %167, i32* %5, align 4
  br label %379

168:                                              ; preds = %116
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 2
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %170, align 8
  %172 = load i32, i32* %19, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 2
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i64 0
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 3
  store i64 0, i64* %178, align 8
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %180 = load i32, i32* %17, align 4
  %181 = load i64, i64* %9, align 8
  %182 = call i32 @puzzle_diagonal_limit(%struct.TYPE_12__* %179, i32 %180, i32 0, i64 %181)
  %183 = sub nsw i32 %182, 1
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %185 = load i32, i32* %17, align 4
  %186 = load i64, i64* %9, align 8
  %187 = call i32 @puzzle_diagonal_limit(%struct.TYPE_12__* %184, i32 %185, i32 1, i64 %186)
  %188 = sub nsw i32 %187, 1
  %189 = sub nsw i32 %183, %188
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 2
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %191, align 8
  %193 = load i32, i32* %19, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 2
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i64 0
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 1
  store i32 %189, i32* %199, align 4
  br label %373

200:                                              ; preds = %112
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %202 = load i32, i32* %18, align 4
  %203 = load i64, i64* %9, align 8
  %204 = call i32 @puzzle_diagonal_limit(%struct.TYPE_12__* %201, i32 %202, i32 0, i64 %203)
  %205 = sub nsw i32 %204, 1
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %207 = load i32, i32* %18, align 4
  %208 = load i64, i64* %9, align 8
  %209 = call i32 @puzzle_diagonal_limit(%struct.TYPE_12__* %206, i32 %207, i32 1, i64 %208)
  %210 = sub nsw i32 %209, 1
  %211 = sub nsw i32 %205, %210
  store i32 %211, i32* %22, align 4
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %213 = load i32, i32* %17, align 4
  %214 = load i64, i64* %9, align 8
  %215 = call i32 @puzzle_diagonal_limit(%struct.TYPE_12__* %212, i32 %213, i32 0, i64 %214)
  %216 = sub nsw i32 %215, 1
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %218 = load i32, i32* %17, align 4
  %219 = load i64, i64* %9, align 8
  %220 = call i32 @puzzle_diagonal_limit(%struct.TYPE_12__* %217, i32 %218, i32 1, i64 %219)
  %221 = sub nsw i32 %220, 1
  %222 = sub nsw i32 %216, %221
  store i32 %222, i32* %23, align 4
  %223 = load i32, i32* %23, align 4
  %224 = load i32, i32* %22, align 4
  %225 = sub nsw i32 %223, %224
  %226 = sdiv i32 %225, 2
  store i32 %226, i32* %24, align 4
  %227 = load i32, i32* %23, align 4
  %228 = load i32, i32* %22, align 4
  %229 = sub nsw i32 %227, %228
  %230 = load i32, i32* %24, align 4
  %231 = sub nsw i32 %229, %230
  store i32 %231, i32* %25, align 4
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 2
  %234 = load %struct.TYPE_14__*, %struct.TYPE_14__** %233, align 8
  %235 = load i32, i32* %20, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  store i32 %239, i32* %26, align 4
  %240 = load i32, i32* %26, align 4
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 2
  %243 = load %struct.TYPE_14__*, %struct.TYPE_14__** %242, align 8
  %244 = load i32, i32* %19, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %243, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 0
  store i32 %240, i32* %247, align 8
  %248 = load i32, i32* %26, align 4
  %249 = sext i32 %248 to i64
  %250 = mul i64 4, %249
  %251 = trunc i64 %250 to i32
  %252 = call i8* @malloc(i32 %251)
  %253 = bitcast i8* %252 to %struct.TYPE_14__*
  %254 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 2
  %256 = load %struct.TYPE_14__*, %struct.TYPE_14__** %255, align 8
  %257 = load i32, i32* %19, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %259, i32 0, i32 2
  store %struct.TYPE_14__* %253, %struct.TYPE_14__** %260, align 8
  %261 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i32 0, i32 2
  %263 = load %struct.TYPE_14__*, %struct.TYPE_14__** %262, align 8
  %264 = load i32, i32* %19, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %263, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 2
  %268 = load %struct.TYPE_14__*, %struct.TYPE_14__** %267, align 8
  %269 = icmp ne %struct.TYPE_14__* %268, null
  br i1 %269, label %296, label %270

270:                                              ; preds = %200
  store i64 0, i64* %27, align 8
  br label %271

271:                                              ; preds = %285, %270
  %272 = load i64, i64* %27, align 8
  %273 = load i32, i32* %19, align 4
  %274 = sext i32 %273 to i64
  %275 = icmp ult i64 %272, %274
  br i1 %275, label %276, label %288

276:                                              ; preds = %271
  %277 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %278 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %277, i32 0, i32 2
  %279 = load %struct.TYPE_14__*, %struct.TYPE_14__** %278, align 8
  %280 = load i64, i64* %27, align 8
  %281 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %279, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %281, i32 0, i32 2
  %283 = load %struct.TYPE_14__*, %struct.TYPE_14__** %282, align 8
  %284 = call i32 @free(%struct.TYPE_14__* %283)
  br label %285

285:                                              ; preds = %276
  %286 = load i64, i64* %27, align 8
  %287 = add i64 %286, 1
  store i64 %287, i64* %27, align 8
  br label %271

288:                                              ; preds = %271
  %289 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %290 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %289, i32 0, i32 2
  %291 = load %struct.TYPE_14__*, %struct.TYPE_14__** %290, align 8
  %292 = call i32 @free(%struct.TYPE_14__* %291)
  %293 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %294 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %293, i32 0, i32 2
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %294, align 8
  %295 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %295, i32* %5, align 4
  br label %379

296:                                              ; preds = %200
  store i32 0, i32* %28, align 4
  br label %297

297:                                              ; preds = %369, %296
  %298 = load i32, i32* %28, align 4
  %299 = load i32, i32* %26, align 4
  %300 = icmp slt i32 %298, %299
  br i1 %300, label %301, label %372

301:                                              ; preds = %297
  %302 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %303 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %302, i32 0, i32 2
  %304 = load %struct.TYPE_14__*, %struct.TYPE_14__** %303, align 8
  %305 = load i32, i32* %20, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %304, i64 %306
  %308 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %307, i32 0, i32 2
  %309 = load %struct.TYPE_14__*, %struct.TYPE_14__** %308, align 8
  %310 = load i32, i32* %28, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %309, i64 %311
  %313 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %312, i32 0, i32 3
  %314 = load i64, i64* %313, align 8
  %315 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %316 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %315, i32 0, i32 2
  %317 = load %struct.TYPE_14__*, %struct.TYPE_14__** %316, align 8
  %318 = load i32, i32* %19, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %317, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %320, i32 0, i32 2
  %322 = load %struct.TYPE_14__*, %struct.TYPE_14__** %321, align 8
  %323 = load i32, i32* %28, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %322, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %325, i32 0, i32 3
  store i64 %314, i64* %326, align 8
  %327 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %328 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %327, i32 0, i32 2
  %329 = load %struct.TYPE_14__*, %struct.TYPE_14__** %328, align 8
  %330 = load i32, i32* %20, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %329, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %332, i32 0, i32 2
  %334 = load %struct.TYPE_14__*, %struct.TYPE_14__** %333, align 8
  %335 = load i32, i32* %28, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %334, i64 %336
  %338 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* %28, align 4
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %344

342:                                              ; preds = %301
  %343 = load i32, i32* %24, align 4
  br label %354

344:                                              ; preds = %301
  %345 = load i32, i32* %28, align 4
  %346 = load i32, i32* %26, align 4
  %347 = sub nsw i32 %346, 1
  %348 = icmp eq i32 %345, %347
  br i1 %348, label %349, label %351

349:                                              ; preds = %344
  %350 = load i32, i32* %25, align 4
  br label %352

351:                                              ; preds = %344
  br label %352

352:                                              ; preds = %351, %349
  %353 = phi i32 [ %350, %349 ], [ 0, %351 ]
  br label %354

354:                                              ; preds = %352, %342
  %355 = phi i32 [ %343, %342 ], [ %353, %352 ]
  %356 = add nsw i32 %339, %355
  %357 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %358 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %357, i32 0, i32 2
  %359 = load %struct.TYPE_14__*, %struct.TYPE_14__** %358, align 8
  %360 = load i32, i32* %19, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %359, i64 %361
  %363 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %362, i32 0, i32 2
  %364 = load %struct.TYPE_14__*, %struct.TYPE_14__** %363, align 8
  %365 = load i32, i32* %28, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %364, i64 %366
  %368 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %367, i32 0, i32 1
  store i32 %356, i32* %368, align 4
  br label %369

369:                                              ; preds = %354
  %370 = load i32, i32* %28, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %28, align 4
  br label %297

372:                                              ; preds = %297
  br label %373

373:                                              ; preds = %372, %168
  br label %374

374:                                              ; preds = %373
  %375 = load i32, i32* %17, align 4
  %376 = add nsw i32 %375, 1
  store i32 %376, i32* %17, align 4
  br label %89

377:                                              ; preds = %89
  %378 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %378, i32* %5, align 4
  br label %379

379:                                              ; preds = %377, %288, %160, %85, %34
  %380 = load i32, i32* %5, align 4
  ret i32 %380
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @free(%struct.TYPE_14__*) #1

declare dso_local i32 @puzzle_diagonal_limit(%struct.TYPE_12__*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
