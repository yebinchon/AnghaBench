; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_tree.c_treeRepairList.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_tree.c_treeRepairList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i64, i64 }
%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_16__* }

@LSM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @treeRepairList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @treeRepairList(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %13 = load i32, i32* @LSM_OK, align 4
  store i32 %13, i32* %3, align 4
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %6, align 8
  store i64 0, i64* %7, align 8
  store i32 1, i32* %4, align 4
  br label %14

14:                                               ; preds = %51, %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @LSM_OK, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %20, %24
  br label %26

26:                                               ; preds = %18, %14
  %27 = phi i1 [ false, %14 ], [ %25, %18 ]
  br i1 %27, label %28, label %54

28:                                               ; preds = %26
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call %struct.TYPE_16__* @treeShmChunkRc(%struct.TYPE_14__* %29, i32 %30, i32* %3)
  store %struct.TYPE_16__* %31, %struct.TYPE_16__** %5, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %33 = icmp ne %struct.TYPE_16__* %32, null
  br i1 %33, label %34, label %50

34:                                               ; preds = %28
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %36 = icmp eq %struct.TYPE_16__* %35, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %34
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @shm_sequence_ge(i64 %40, i64 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %37, %34
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %47, %struct.TYPE_16__** %6, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %7, align 8
  br label %50

50:                                               ; preds = %46, %37, %28
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %14

54:                                               ; preds = %26
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @LSM_OK, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %297

58:                                               ; preds = %54
  store i32 1, i32* %8, align 4
  br label %59

59:                                               ; preds = %68, %58
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %65, 1
  %67 = icmp slt i64 %61, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %59
  %69 = load i32, i32* %8, align 4
  %70 = mul nsw i32 %69, 2
  store i32 %70, i32* %8, align 4
  br label %59

71:                                               ; preds = %59
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = mul i64 16, %73
  %75 = mul i64 %74, 2
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %9, align 4
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call %struct.TYPE_15__* @lsmMallocZeroRc(i32 %79, i32 %80, i32* %3)
  store %struct.TYPE_15__* %81, %struct.TYPE_15__** %11, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %10, align 8
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* @LSM_OK, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %165

88:                                               ; preds = %71
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = sub nsw i64 %91, 1
  store i64 %92, i64* %10, align 8
  store i32 1, i32* %4, align 4
  br label %93

93:                                               ; preds = %143, %88
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp slt i64 %95, %99
  br i1 %100, label %101, label %146

101:                                              ; preds = %93
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %103 = load i32, i32* %4, align 4
  %104 = call %struct.TYPE_16__* @treeShmChunk(%struct.TYPE_14__* %102, i32 %103)
  store %struct.TYPE_16__* %104, %struct.TYPE_16__** %5, align 8
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %107 = load i32, i32* %4, align 4
  %108 = sub nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 1
  store %struct.TYPE_16__* %105, %struct.TYPE_16__** %111, align 8
  %112 = load i32, i32* %4, align 4
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %114 = load i32, i32* %4, align 4
  %115 = sub nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  store i32 %112, i32* %118, align 8
  %119 = load i32, i32* %4, align 4
  %120 = sext i32 %119 to i64
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %120, %124
  br i1 %125, label %126, label %142

126:                                              ; preds = %101
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @shm_sequence_ge(i64 %129, i64 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %126
  %137 = load i64, i64* %10, align 8
  %138 = add nsw i64 %137, -1
  store i64 %138, i64* %10, align 8
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 0
  store i64 %137, i64* %140, align 8
  br label %141

141:                                              ; preds = %136, %126
  br label %142

142:                                              ; preds = %141, %101
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %4, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %4, align 4
  br label %93

146:                                              ; preds = %93
  %147 = load i64, i64* %7, align 8
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %147, %151
  br i1 %152, label %153, label %164

153:                                              ; preds = %146
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = trunc i64 %158 to i32
  %160 = call %struct.TYPE_16__* @treeShmChunk(%struct.TYPE_14__* %154, i32 %159)
  store %struct.TYPE_16__* %160, %struct.TYPE_16__** %5, align 8
  %161 = load i64, i64* %10, align 8
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 0
  store i64 %161, i64* %163, align 8
  br label %164

164:                                              ; preds = %153, %146
  br label %165

165:                                              ; preds = %164, %71
  %166 = load i32, i32* %3, align 4
  %167 = load i32, i32* @LSM_OK, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %296

169:                                              ; preds = %165
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i64 %172
  store %struct.TYPE_15__* %173, %struct.TYPE_15__** %12, align 8
  store i32 0, i32* %4, align 4
  br label %174

174:                                              ; preds = %234, %169
  %175 = load i32, i32* %4, align 4
  %176 = load i32, i32* %8, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %237

178:                                              ; preds = %174
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %180 = load i32, i32* %4, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %183, align 8
  %185 = icmp ne %struct.TYPE_16__* %184, null
  br i1 %185, label %186, label %233

186:                                              ; preds = %178
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %188 = load i32, i32* %4, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* %10, align 8
  %196 = call i32 @shm_sequence_ge(i64 %194, i64 %195)
  %197 = call i32 @assert(i32 %196)
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %200 = load i32, i32* %4, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 1
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* %10, align 8
  %208 = sub nsw i64 %206, %207
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_16__*, %struct.TYPE_16__** %210, align 8
  %212 = icmp eq %struct.TYPE_16__* %211, null
  %213 = zext i1 %212 to i32
  %214 = call i32 @assert(i32 %213)
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %217 = load i32, i32* %4, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 1
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* %10, align 8
  %225 = sub nsw i64 %223, %224
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i64 %225
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %228 = load i32, i32* %4, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i64 %229
  %231 = bitcast %struct.TYPE_15__* %226 to i8*
  %232 = bitcast %struct.TYPE_15__* %230 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %231, i8* align 8 %232, i64 16, i1 false)
  br label %233

233:                                              ; preds = %186, %178
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %4, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %4, align 4
  br label %174

237:                                              ; preds = %174
  %238 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %239 = load i32, i32* %8, align 4
  %240 = sub nsw i32 %239, 1
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %242, i32 0, i32 1
  %244 = load %struct.TYPE_16__*, %struct.TYPE_16__** %243, align 8
  %245 = icmp ne %struct.TYPE_16__* %244, null
  br i1 %245, label %246, label %255

246:                                              ; preds = %237
  %247 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %248 = load i32, i32* %8, align 4
  %249 = sub nsw i32 %248, 1
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %247, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 1
  %253 = load %struct.TYPE_16__*, %struct.TYPE_16__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 1
  store i32 0, i32* %254, align 8
  br label %255

255:                                              ; preds = %246, %237
  store i32 0, i32* %4, align 4
  br label %256

256:                                              ; preds = %285, %255
  %257 = load i32, i32* %4, align 4
  %258 = load i32, i32* %8, align 4
  %259 = sub nsw i32 %258, 1
  %260 = icmp slt i32 %257, %259
  br i1 %260, label %261, label %288

261:                                              ; preds = %256
  %262 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %263 = load i32, i32* %4, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %262, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %265, i32 0, i32 1
  %267 = load %struct.TYPE_16__*, %struct.TYPE_16__** %266, align 8
  %268 = icmp ne %struct.TYPE_16__* %267, null
  br i1 %268, label %269, label %284

269:                                              ; preds = %261
  %270 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %271 = load i32, i32* %4, align 4
  %272 = add nsw i32 %271, 1
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %278 = load i32, i32* %4, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 1
  %282 = load %struct.TYPE_16__*, %struct.TYPE_16__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %282, i32 0, i32 1
  store i32 %276, i32* %283, align 8
  br label %284

284:                                              ; preds = %269, %261
  br label %285

285:                                              ; preds = %284
  %286 = load i32, i32* %4, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %4, align 4
  br label %256

288:                                              ; preds = %256
  %289 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %290 = call i32 @treeCheckLinkedList(%struct.TYPE_14__* %289)
  store i32 %290, i32* %3, align 4
  %291 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %295 = call i32 @lsmFree(i32 %293, %struct.TYPE_15__* %294)
  br label %296

296:                                              ; preds = %288, %165
  br label %297

297:                                              ; preds = %296, %54
  %298 = load i32, i32* %3, align 4
  ret i32 %298
}

declare dso_local %struct.TYPE_16__* @treeShmChunkRc(%struct.TYPE_14__*, i32, i32*) #1

declare dso_local i32 @shm_sequence_ge(i64, i64) #1

declare dso_local %struct.TYPE_15__* @lsmMallocZeroRc(i32, i32, i32*) #1

declare dso_local %struct.TYPE_16__* @treeShmChunk(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @assert(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @treeCheckLinkedList(%struct.TYPE_14__*) #1

declare dso_local i32 @lsmFree(i32, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
