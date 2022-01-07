; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_block.c_block_iterate_ind.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_block.c_block_iterate_ind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_context = type { i32, i32 (%struct.TYPE_8__*, i64*, i64, i64, i32, i32)*, i32, %struct.TYPE_8__*, i64, i64, i64 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }

@BLOCK_FLAG_DEPTH_TRAVERSE = common dso_local global i32 0, align 4
@BLOCK_FLAG_DATA_ONLY = common dso_local global i32 0, align 4
@BLOCK_COUNT_IND = common dso_local global i64 0, align 8
@BLOCK_ABORT = common dso_local global i32 0, align 4
@EXT2_ET_BAD_IND_BLOCK = common dso_local global i64 0, align 8
@BLOCK_ERROR = common dso_local global i32 0, align 4
@BLOCK_FLAG_APPEND = common dso_local global i32 0, align 4
@BLOCK_CHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64, i32, %struct.block_context*)* @block_iterate_ind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @block_iterate_ind(i64* %0, i64 %1, i32 %2, %struct.block_context* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.block_context*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  store i64* %0, i64** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.block_context* %3, %struct.block_context** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %18 = load %struct.block_context*, %struct.block_context** %9, align 8
  %19 = getelementptr inbounds %struct.block_context, %struct.block_context* %18, i32 0, i32 3
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = ashr i32 %22, 2
  store i32 %23, i32* %14, align 4
  %24 = load %struct.block_context*, %struct.block_context** %9, align 8
  %25 = getelementptr inbounds %struct.block_context, %struct.block_context* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @BLOCK_FLAG_DEPTH_TRAVERSE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %55, label %30

30:                                               ; preds = %4
  %31 = load %struct.block_context*, %struct.block_context** %9, align 8
  %32 = getelementptr inbounds %struct.block_context, %struct.block_context* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @BLOCK_FLAG_DATA_ONLY, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %55, label %37

37:                                               ; preds = %30
  %38 = load i64*, i64** %6, align 8
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %17, align 8
  %40 = load %struct.block_context*, %struct.block_context** %9, align 8
  %41 = getelementptr inbounds %struct.block_context, %struct.block_context* %40, i32 0, i32 1
  %42 = load i32 (%struct.TYPE_8__*, i64*, i64, i64, i32, i32)*, i32 (%struct.TYPE_8__*, i64*, i64, i64, i32, i32)** %41, align 8
  %43 = load %struct.block_context*, %struct.block_context** %9, align 8
  %44 = getelementptr inbounds %struct.block_context, %struct.block_context* %43, i32 0, i32 3
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = load i64, i64* @BLOCK_COUNT_IND, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.block_context*, %struct.block_context** %9, align 8
  %50 = getelementptr inbounds %struct.block_context, %struct.block_context* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 %42(%struct.TYPE_8__* %45, i64* %17, i64 %46, i64 %47, i32 %48, i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i64, i64* %17, align 8
  %54 = load i64*, i64** %6, align 8
  store i64 %53, i64* %54, align 8
  br label %55

55:                                               ; preds = %37, %30, %4
  %56 = load %struct.block_context*, %struct.block_context** %9, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @check_for_ro_violation_return(%struct.block_context* %56, i32 %57)
  %59 = load i64*, i64** %6, align 8
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @BLOCK_ABORT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %62, %55
  %68 = load i32, i32* %14, align 4
  %69 = sext i32 %68 to i64
  %70 = load %struct.block_context*, %struct.block_context** %9, align 8
  %71 = getelementptr inbounds %struct.block_context, %struct.block_context* %70, i32 0, i32 6
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, %69
  store i64 %73, i64* %71, align 8
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %5, align 4
  br label %321

75:                                               ; preds = %62
  %76 = load i64*, i64** %6, align 8
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.block_context*, %struct.block_context** %9, align 8
  %79 = getelementptr inbounds %struct.block_context, %struct.block_context* %78, i32 0, i32 3
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = call i64 @ext2fs_blocks_count(%struct.TYPE_9__* %82)
  %84 = icmp sge i64 %77, %83
  br i1 %84, label %96, label %85

85:                                               ; preds = %75
  %86 = load i64*, i64** %6, align 8
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.block_context*, %struct.block_context** %9, align 8
  %89 = getelementptr inbounds %struct.block_context, %struct.block_context* %88, i32 0, i32 3
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp slt i64 %87, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %85, %75
  %97 = load i64, i64* @EXT2_ET_BAD_IND_BLOCK, align 8
  %98 = load %struct.block_context*, %struct.block_context** %9, align 8
  %99 = getelementptr inbounds %struct.block_context, %struct.block_context* %98, i32 0, i32 4
  store i64 %97, i64* %99, align 8
  %100 = load i32, i32* @BLOCK_ERROR, align 4
  %101 = load i32, i32* %10, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  store i32 %103, i32* %5, align 4
  br label %321

104:                                              ; preds = %85
  %105 = load %struct.block_context*, %struct.block_context** %9, align 8
  %106 = getelementptr inbounds %struct.block_context, %struct.block_context* %105, i32 0, i32 3
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = load i64*, i64** %6, align 8
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.block_context*, %struct.block_context** %9, align 8
  %111 = getelementptr inbounds %struct.block_context, %struct.block_context* %110, i32 0, i32 5
  %112 = load i64, i64* %111, align 8
  %113 = call i64 @ext2fs_read_ind_block(%struct.TYPE_8__* %107, i64 %109, i64 %112)
  %114 = load %struct.block_context*, %struct.block_context** %9, align 8
  %115 = getelementptr inbounds %struct.block_context, %struct.block_context* %114, i32 0, i32 4
  store i64 %113, i64* %115, align 8
  %116 = load %struct.block_context*, %struct.block_context** %9, align 8
  %117 = getelementptr inbounds %struct.block_context, %struct.block_context* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %104
  %121 = load i32, i32* @BLOCK_ERROR, align 4
  %122 = load i32, i32* %10, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %10, align 4
  store i32 %124, i32* %5, align 4
  br label %321

125:                                              ; preds = %104
  %126 = load %struct.block_context*, %struct.block_context** %9, align 8
  %127 = getelementptr inbounds %struct.block_context, %struct.block_context* %126, i32 0, i32 5
  %128 = load i64, i64* %127, align 8
  %129 = inttoptr i64 %128 to i64*
  store i64* %129, i64** %16, align 8
  store i32 0, i32* %15, align 4
  %130 = load %struct.block_context*, %struct.block_context** %9, align 8
  %131 = getelementptr inbounds %struct.block_context, %struct.block_context* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @BLOCK_FLAG_APPEND, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %188

136:                                              ; preds = %125
  store i32 0, i32* %12, align 4
  br label %137

137:                                              ; preds = %178, %136
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* %14, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %187

141:                                              ; preds = %137
  %142 = load i64*, i64** %16, align 8
  %143 = load i64, i64* %142, align 8
  store i64 %143, i64* %17, align 8
  %144 = load %struct.block_context*, %struct.block_context** %9, align 8
  %145 = getelementptr inbounds %struct.block_context, %struct.block_context* %144, i32 0, i32 1
  %146 = load i32 (%struct.TYPE_8__*, i64*, i64, i64, i32, i32)*, i32 (%struct.TYPE_8__*, i64*, i64, i64, i32, i32)** %145, align 8
  %147 = load %struct.block_context*, %struct.block_context** %9, align 8
  %148 = getelementptr inbounds %struct.block_context, %struct.block_context* %147, i32 0, i32 3
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = load %struct.block_context*, %struct.block_context** %9, align 8
  %151 = getelementptr inbounds %struct.block_context, %struct.block_context* %150, i32 0, i32 6
  %152 = load i64, i64* %151, align 8
  %153 = load i64*, i64** %6, align 8
  %154 = load i64, i64* %153, align 8
  %155 = load i32, i32* %15, align 4
  %156 = load %struct.block_context*, %struct.block_context** %9, align 8
  %157 = getelementptr inbounds %struct.block_context, %struct.block_context* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = call i32 %146(%struct.TYPE_8__* %149, i64* %17, i64 %152, i64 %154, i32 %155, i32 %158)
  store i32 %159, i32* %13, align 4
  %160 = load i64, i64* %17, align 8
  %161 = load i64*, i64** %16, align 8
  store i64 %160, i64* %161, align 8
  %162 = load i32, i32* %13, align 4
  %163 = load i32, i32* %11, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %11, align 4
  %165 = load i32, i32* %13, align 4
  %166 = load i32, i32* @BLOCK_ABORT, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %141
  %170 = load i32, i32* @BLOCK_ABORT, align 4
  %171 = load i32, i32* %10, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %10, align 4
  br label %187

173:                                              ; preds = %141
  %174 = load i32, i32* %15, align 4
  %175 = sext i32 %174 to i64
  %176 = add i64 %175, 8
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %15, align 4
  br label %178

178:                                              ; preds = %173
  %179 = load i32, i32* %12, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %12, align 4
  %181 = load %struct.block_context*, %struct.block_context** %9, align 8
  %182 = getelementptr inbounds %struct.block_context, %struct.block_context* %181, i32 0, i32 6
  %183 = load i64, i64* %182, align 8
  %184 = add nsw i64 %183, 1
  store i64 %184, i64* %182, align 8
  %185 = load i64*, i64** %16, align 8
  %186 = getelementptr inbounds i64, i64* %185, i32 1
  store i64* %186, i64** %16, align 8
  br label %137

187:                                              ; preds = %169, %137
  br label %246

188:                                              ; preds = %125
  store i32 0, i32* %12, align 4
  br label %189

189:                                              ; preds = %236, %188
  %190 = load i32, i32* %12, align 4
  %191 = load i32, i32* %14, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %245

193:                                              ; preds = %189
  %194 = load i64*, i64** %16, align 8
  %195 = load i64, i64* %194, align 8
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %193
  br label %231

198:                                              ; preds = %193
  %199 = load i64*, i64** %16, align 8
  %200 = load i64, i64* %199, align 8
  store i64 %200, i64* %17, align 8
  %201 = load %struct.block_context*, %struct.block_context** %9, align 8
  %202 = getelementptr inbounds %struct.block_context, %struct.block_context* %201, i32 0, i32 1
  %203 = load i32 (%struct.TYPE_8__*, i64*, i64, i64, i32, i32)*, i32 (%struct.TYPE_8__*, i64*, i64, i64, i32, i32)** %202, align 8
  %204 = load %struct.block_context*, %struct.block_context** %9, align 8
  %205 = getelementptr inbounds %struct.block_context, %struct.block_context* %204, i32 0, i32 3
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %205, align 8
  %207 = load %struct.block_context*, %struct.block_context** %9, align 8
  %208 = getelementptr inbounds %struct.block_context, %struct.block_context* %207, i32 0, i32 6
  %209 = load i64, i64* %208, align 8
  %210 = load i64*, i64** %6, align 8
  %211 = load i64, i64* %210, align 8
  %212 = load i32, i32* %15, align 4
  %213 = load %struct.block_context*, %struct.block_context** %9, align 8
  %214 = getelementptr inbounds %struct.block_context, %struct.block_context* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = call i32 %203(%struct.TYPE_8__* %206, i64* %17, i64 %209, i64 %211, i32 %212, i32 %215)
  store i32 %216, i32* %13, align 4
  %217 = load i64, i64* %17, align 8
  %218 = load i64*, i64** %16, align 8
  store i64 %217, i64* %218, align 8
  %219 = load i32, i32* %13, align 4
  %220 = load i32, i32* %11, align 4
  %221 = or i32 %220, %219
  store i32 %221, i32* %11, align 4
  %222 = load i32, i32* %13, align 4
  %223 = load i32, i32* @BLOCK_ABORT, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %198
  %227 = load i32, i32* @BLOCK_ABORT, align 4
  %228 = load i32, i32* %10, align 4
  %229 = or i32 %228, %227
  store i32 %229, i32* %10, align 4
  br label %245

230:                                              ; preds = %198
  br label %231

231:                                              ; preds = %230, %197
  %232 = load i32, i32* %15, align 4
  %233 = sext i32 %232 to i64
  %234 = add i64 %233, 8
  %235 = trunc i64 %234 to i32
  store i32 %235, i32* %15, align 4
  br label %236

236:                                              ; preds = %231
  %237 = load i32, i32* %12, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %12, align 4
  %239 = load %struct.block_context*, %struct.block_context** %9, align 8
  %240 = getelementptr inbounds %struct.block_context, %struct.block_context* %239, i32 0, i32 6
  %241 = load i64, i64* %240, align 8
  %242 = add nsw i64 %241, 1
  store i64 %242, i64* %240, align 8
  %243 = load i64*, i64** %16, align 8
  %244 = getelementptr inbounds i64, i64* %243, i32 1
  store i64* %244, i64** %16, align 8
  br label %189

245:                                              ; preds = %226, %189
  br label %246

246:                                              ; preds = %245, %187
  %247 = load %struct.block_context*, %struct.block_context** %9, align 8
  %248 = load i32, i32* %11, align 4
  %249 = call i32 @check_for_ro_violation_return(%struct.block_context* %247, i32 %248)
  %250 = load i32, i32* %11, align 4
  %251 = load i32, i32* @BLOCK_CHANGED, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %277

254:                                              ; preds = %246
  %255 = load %struct.block_context*, %struct.block_context** %9, align 8
  %256 = getelementptr inbounds %struct.block_context, %struct.block_context* %255, i32 0, i32 3
  %257 = load %struct.TYPE_8__*, %struct.TYPE_8__** %256, align 8
  %258 = load i64*, i64** %6, align 8
  %259 = load i64, i64* %258, align 8
  %260 = load %struct.block_context*, %struct.block_context** %9, align 8
  %261 = getelementptr inbounds %struct.block_context, %struct.block_context* %260, i32 0, i32 5
  %262 = load i64, i64* %261, align 8
  %263 = call i64 @ext2fs_write_ind_block(%struct.TYPE_8__* %257, i64 %259, i64 %262)
  %264 = load %struct.block_context*, %struct.block_context** %9, align 8
  %265 = getelementptr inbounds %struct.block_context, %struct.block_context* %264, i32 0, i32 4
  store i64 %263, i64* %265, align 8
  %266 = load %struct.block_context*, %struct.block_context** %9, align 8
  %267 = getelementptr inbounds %struct.block_context, %struct.block_context* %266, i32 0, i32 4
  %268 = load i64, i64* %267, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %276

270:                                              ; preds = %254
  %271 = load i32, i32* @BLOCK_ERROR, align 4
  %272 = load i32, i32* @BLOCK_ABORT, align 4
  %273 = or i32 %271, %272
  %274 = load i32, i32* %10, align 4
  %275 = or i32 %274, %273
  store i32 %275, i32* %10, align 4
  br label %276

276:                                              ; preds = %270, %254
  br label %277

277:                                              ; preds = %276, %246
  %278 = load %struct.block_context*, %struct.block_context** %9, align 8
  %279 = getelementptr inbounds %struct.block_context, %struct.block_context* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = load i32, i32* @BLOCK_FLAG_DEPTH_TRAVERSE, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %316

284:                                              ; preds = %277
  %285 = load %struct.block_context*, %struct.block_context** %9, align 8
  %286 = getelementptr inbounds %struct.block_context, %struct.block_context* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* @BLOCK_FLAG_DATA_ONLY, align 4
  %289 = and i32 %287, %288
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %316, label %291

291:                                              ; preds = %284
  %292 = load i32, i32* %10, align 4
  %293 = load i32, i32* @BLOCK_ABORT, align 4
  %294 = and i32 %292, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %316, label %296

296:                                              ; preds = %291
  %297 = load i64*, i64** %6, align 8
  %298 = load i64, i64* %297, align 8
  store i64 %298, i64* %17, align 8
  %299 = load %struct.block_context*, %struct.block_context** %9, align 8
  %300 = getelementptr inbounds %struct.block_context, %struct.block_context* %299, i32 0, i32 1
  %301 = load i32 (%struct.TYPE_8__*, i64*, i64, i64, i32, i32)*, i32 (%struct.TYPE_8__*, i64*, i64, i64, i32, i32)** %300, align 8
  %302 = load %struct.block_context*, %struct.block_context** %9, align 8
  %303 = getelementptr inbounds %struct.block_context, %struct.block_context* %302, i32 0, i32 3
  %304 = load %struct.TYPE_8__*, %struct.TYPE_8__** %303, align 8
  %305 = load i64, i64* @BLOCK_COUNT_IND, align 8
  %306 = load i64, i64* %7, align 8
  %307 = load i32, i32* %8, align 4
  %308 = load %struct.block_context*, %struct.block_context** %9, align 8
  %309 = getelementptr inbounds %struct.block_context, %struct.block_context* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 8
  %311 = call i32 %301(%struct.TYPE_8__* %304, i64* %17, i64 %305, i64 %306, i32 %307, i32 %310)
  %312 = load i32, i32* %10, align 4
  %313 = or i32 %312, %311
  store i32 %313, i32* %10, align 4
  %314 = load i64, i64* %17, align 8
  %315 = load i64*, i64** %6, align 8
  store i64 %314, i64* %315, align 8
  br label %316

316:                                              ; preds = %296, %291, %284, %277
  %317 = load %struct.block_context*, %struct.block_context** %9, align 8
  %318 = load i32, i32* %10, align 4
  %319 = call i32 @check_for_ro_violation_return(%struct.block_context* %317, i32 %318)
  %320 = load i32, i32* %10, align 4
  store i32 %320, i32* %5, align 4
  br label %321

321:                                              ; preds = %316, %120, %96, %67
  %322 = load i32, i32* %5, align 4
  ret i32 %322
}

declare dso_local i32 @check_for_ro_violation_return(%struct.block_context*, i32) #1

declare dso_local i64 @ext2fs_blocks_count(%struct.TYPE_9__*) #1

declare dso_local i64 @ext2fs_read_ind_block(%struct.TYPE_8__*, i64, i64) #1

declare dso_local i64 @ext2fs_write_ind_block(%struct.TYPE_8__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
