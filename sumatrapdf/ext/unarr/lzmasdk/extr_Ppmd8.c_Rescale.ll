; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/lzmasdk/extr_Ppmd8.c_Rescale.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/lzmasdk/extr_Ppmd8.c_Rescale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, %struct.TYPE_13__*, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@MAX_FREQ = common dso_local global i32 0, align 4
@PPMD8_RESTORE_METHOD_FREEZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @Rescale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Rescale(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_11__, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_11__, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_11__, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %19 = call i8* @STATS(%struct.TYPE_13__* %18)
  %20 = bitcast i8* %19 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %7, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %8, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %25 = bitcast %struct.TYPE_11__* %9 to i8*
  %26 = bitcast %struct.TYPE_11__* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 8, i1 false)
  br label %27

27:                                               ; preds = %38, %1
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %30 = icmp ne %struct.TYPE_11__* %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i64 0
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i64 -1
  %36 = bitcast %struct.TYPE_11__* %33 to i8*
  %37 = bitcast %struct.TYPE_11__* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 8, i1 false)
  br label %38

38:                                               ; preds = %31
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 -1
  store %struct.TYPE_11__* %40, %struct.TYPE_11__** %8, align 8
  br label %27

41:                                               ; preds = %27
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %43 = bitcast %struct.TYPE_11__* %42 to i8*
  %44 = bitcast %struct.TYPE_11__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 %44, i64 8, i1 false)
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sub i32 %49, %52
  store i32 %53, i32* %6, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 4
  store i32 %57, i32* %55, align 4
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %4, align 4
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %4, align 4
  %67 = add i32 %65, %66
  %68 = lshr i32 %67, 1
  %69 = zext i32 %68 to i64
  %70 = inttoptr i64 %69 to i8*
  %71 = ptrtoint i8* %70 to i32
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %5, align 4
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %146, %41
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 1
  store %struct.TYPE_11__* %84, %struct.TYPE_11__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %6, align 4
  %88 = sub i32 %87, %86
  store i32 %88, i32* %6, align 4
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %4, align 4
  %93 = add i32 %91, %92
  %94 = lshr i32 %93, 1
  %95 = zext i32 %94 to i64
  %96 = inttoptr i64 %95 to i8*
  %97 = ptrtoint i8* %96 to i32
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %5, align 4
  %104 = add i32 %103, %102
  store i32 %104, i32* %5, align 4
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i64 0
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i64 -1
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp sgt i32 %108, %112
  br i1 %113, label %114, label %145

114:                                              ; preds = %82
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %115, %struct.TYPE_11__** %10, align 8
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %117 = bitcast %struct.TYPE_11__* %11 to i8*
  %118 = bitcast %struct.TYPE_11__* %116 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %117, i8* align 4 %118, i64 8, i1 false)
  br label %119

119:                                              ; preds = %139, %114
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i64 0
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i64 -1
  %124 = bitcast %struct.TYPE_11__* %121 to i8*
  %125 = bitcast %struct.TYPE_11__* %123 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %124, i8* align 4 %125, i64 8, i1 false)
  br label %126

126:                                              ; preds = %119
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 -1
  store %struct.TYPE_11__* %128, %struct.TYPE_11__** %10, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %130 = icmp ne %struct.TYPE_11__* %128, %129
  br i1 %130, label %131, label %139

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i64 -1
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp sgt i32 %133, %137
  br label %139

139:                                              ; preds = %131, %126
  %140 = phi i1 [ false, %126 ], [ %138, %131 ]
  br i1 %140, label %119, label %141

141:                                              ; preds = %139
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %143 = bitcast %struct.TYPE_11__* %142 to i8*
  %144 = bitcast %struct.TYPE_11__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %143, i8* align 4 %144, i64 8, i1 false)
  br label %145

145:                                              ; preds = %141, %82
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %3, align 4
  %148 = add i32 %147, -1
  store i32 %148, i32* %3, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %82, label %150

150:                                              ; preds = %146
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %323

155:                                              ; preds = %150
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 2
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  store i32 %160, i32* %12, align 4
  br label %161

161:                                              ; preds = %164, %155
  %162 = load i32, i32* %3, align 4
  %163 = add i32 %162, 1
  store i32 %163, i32* %3, align 4
  br label %164

164:                                              ; preds = %161
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 -1
  store %struct.TYPE_11__* %166, %struct.TYPE_11__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %161, label %170

170:                                              ; preds = %164
  %171 = load i32, i32* %3, align 4
  %172 = load i32, i32* %6, align 4
  %173 = add i32 %172, %171
  store i32 %173, i32* %6, align 4
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 2
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %3, align 4
  %180 = sub i32 %178, %179
  %181 = zext i32 %180 to i64
  %182 = inttoptr i64 %181 to i8*
  %183 = ptrtoint i8* %182 to i32
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 2
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 1
  store i32 %183, i32* %187, align 4
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 2
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %251

194:                                              ; preds = %170
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %196 = bitcast %struct.TYPE_11__* %15 to i8*
  %197 = bitcast %struct.TYPE_11__* %195 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %196, i8* align 4 %197, i64 8, i1 false)
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = mul nsw i32 2, %199
  %201 = load i32, i32* %6, align 4
  %202 = add i32 %200, %201
  %203 = sub i32 %202, 1
  %204 = load i32, i32* %6, align 4
  %205 = udiv i32 %203, %204
  %206 = zext i32 %205 to i64
  %207 = inttoptr i64 %206 to i8*
  %208 = ptrtoint i8* %207 to i32
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  store i32 %208, i32* %209, align 4
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @MAX_FREQ, align 4
  %213 = sdiv i32 %212, 3
  %214 = icmp sgt i32 %211, %213
  br i1 %214, label %215, label %219

215:                                              ; preds = %194
  %216 = load i32, i32* @MAX_FREQ, align 4
  %217 = sdiv i32 %216, 3
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  store i32 %217, i32* %218, align 4
  br label %219

219:                                              ; preds = %215, %194
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %222 = load i32, i32* %12, align 4
  %223 = add i32 %222, 2
  %224 = lshr i32 %223, 1
  %225 = call i32 @U2I(i32 %224)
  %226 = call i32 @InsertNode(%struct.TYPE_12__* %220, %struct.TYPE_11__* %221, i32 %225)
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 2
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = and i32 %231, 16
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = icmp sge i32 %234, 64
  %236 = zext i1 %235 to i32
  %237 = mul nsw i32 8, %236
  %238 = add nsw i32 %232, %237
  %239 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %240 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i32 0, i32 2
  %241 = load %struct.TYPE_13__*, %struct.TYPE_13__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i32 0, i32 2
  store i32 %238, i32* %242, align 4
  %243 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 2
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %244, align 8
  %246 = call %struct.TYPE_11__* @ONE_STATE(%struct.TYPE_13__* %245)
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 3
  store %struct.TYPE_11__* %246, %struct.TYPE_11__** %248, align 8
  %249 = bitcast %struct.TYPE_11__* %246 to i8*
  %250 = bitcast %struct.TYPE_11__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %249, i8* align 4 %250, i64 8, i1 false)
  br label %347

251:                                              ; preds = %170
  %252 = load i32, i32* %12, align 4
  %253 = add i32 %252, 2
  %254 = lshr i32 %253, 1
  store i32 %254, i32* %13, align 4
  %255 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 2
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = add i32 %259, 2
  %261 = lshr i32 %260, 1
  store i32 %261, i32* %14, align 4
  %262 = load i32, i32* %13, align 4
  %263 = load i32, i32* %14, align 4
  %264 = icmp ne i32 %262, %263
  br i1 %264, label %265, label %276

265:                                              ; preds = %251
  %266 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %267 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %268 = load i32, i32* %13, align 4
  %269 = load i32, i32* %14, align 4
  %270 = call i32 @ShrinkUnits(%struct.TYPE_12__* %266, %struct.TYPE_11__* %267, i32 %268, i32 %269)
  %271 = call i32 @STATS_REF(i32 %270)
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 2
  %274 = load %struct.TYPE_13__*, %struct.TYPE_13__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 3
  store i32 %271, i32* %275, align 4
  br label %276

276:                                              ; preds = %265, %251
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 2
  %279 = load %struct.TYPE_13__*, %struct.TYPE_13__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 4
  %282 = and i32 %281, -9
  store i32 %282, i32* %280, align 4
  %283 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i32 0, i32 2
  %285 = load %struct.TYPE_13__*, %struct.TYPE_13__** %284, align 8
  %286 = call i8* @STATS(%struct.TYPE_13__* %285)
  %287 = bitcast i8* %286 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %287, %struct.TYPE_11__** %8, align 8
  %288 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = icmp sge i32 %289, 64
  %291 = zext i1 %290 to i32
  %292 = mul nsw i32 8, %291
  %293 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i32 0, i32 2
  %295 = load %struct.TYPE_13__*, %struct.TYPE_13__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %295, i32 0, i32 2
  %297 = load i32, i32* %296, align 4
  %298 = or i32 %297, %292
  store i32 %298, i32* %296, align 4
  %299 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %300 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %299, i32 0, i32 2
  %301 = load %struct.TYPE_13__*, %struct.TYPE_13__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  store i32 %303, i32* %3, align 4
  br label %304

304:                                              ; preds = %318, %276
  %305 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %306 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %305, i32 1
  store %struct.TYPE_11__* %306, %struct.TYPE_11__** %8, align 8
  %307 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = icmp sge i32 %308, 64
  %310 = zext i1 %309 to i32
  %311 = mul nsw i32 8, %310
  %312 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %313 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %312, i32 0, i32 2
  %314 = load %struct.TYPE_13__*, %struct.TYPE_13__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 4
  %317 = or i32 %316, %311
  store i32 %317, i32* %315, align 4
  br label %318

318:                                              ; preds = %304
  %319 = load i32, i32* %3, align 4
  %320 = add i32 %319, -1
  store i32 %320, i32* %3, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %304, label %322

322:                                              ; preds = %318
  br label %323

323:                                              ; preds = %322, %150
  %324 = load i32, i32* %5, align 4
  %325 = load i32, i32* %6, align 4
  %326 = add i32 %324, %325
  %327 = load i32, i32* %6, align 4
  %328 = lshr i32 %327, 1
  %329 = sub i32 %326, %328
  %330 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %331 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %330, i32 0, i32 2
  %332 = load %struct.TYPE_13__*, %struct.TYPE_13__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %332, i32 0, i32 0
  store i32 %329, i32* %333, align 4
  %334 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %335 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %334, i32 0, i32 2
  %336 = load %struct.TYPE_13__*, %struct.TYPE_13__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %336, i32 0, i32 2
  %338 = load i32, i32* %337, align 4
  %339 = or i32 %338, 4
  store i32 %339, i32* %337, align 4
  %340 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %341 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %340, i32 0, i32 2
  %342 = load %struct.TYPE_13__*, %struct.TYPE_13__** %341, align 8
  %343 = call i8* @STATS(%struct.TYPE_13__* %342)
  %344 = bitcast i8* %343 to %struct.TYPE_11__*
  %345 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %346 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %345, i32 0, i32 3
  store %struct.TYPE_11__* %344, %struct.TYPE_11__** %346, align 8
  br label %347

347:                                              ; preds = %323, %219
  ret void
}

declare dso_local i8* @STATS(%struct.TYPE_13__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @InsertNode(%struct.TYPE_12__*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @U2I(i32) #1

declare dso_local %struct.TYPE_11__* @ONE_STATE(%struct.TYPE_13__*) #1

declare dso_local i32 @STATS_REF(i32) #1

declare dso_local i32 @ShrinkUnits(%struct.TYPE_12__*, %struct.TYPE_11__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
