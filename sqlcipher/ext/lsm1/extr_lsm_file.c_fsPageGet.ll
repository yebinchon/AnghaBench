; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_file.c_fsPageGet.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_file.c_fsPageGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, i64, i32, %struct.TYPE_26__**, i32, i32, i32, %struct.TYPE_26__*, i64, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, i64, i64, i64, i64, i32, i32*, %struct.TYPE_26__*, %struct.TYPE_27__*, i64, %struct.TYPE_26__* }
%struct.TYPE_25__ = type { i32 }

@LSM_OK = common dso_local global i32 0, align 4
@PAGE_FREE = common dso_local global i32 0, align 4
@PAGE_HASPREV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_27__*, %struct.TYPE_25__*, i64, i32, %struct.TYPE_26__**, i32*)* @fsPageGet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsPageGet(%struct.TYPE_27__* %0, %struct.TYPE_25__* %1, i64 %2, i32 %3, %struct.TYPE_26__** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_26__**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_26__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %8, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_26__** %4, %struct.TYPE_26__*** %12, align 8
  store i32* %5, i32** %13, align 8
  %22 = load i32, i32* @LSM_OK, align 4
  store i32 %22, i32* %16, align 4
  %23 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %25 = icmp ne %struct.TYPE_25__* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %6
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  br label %31

30:                                               ; preds = %6
  br label %31

31:                                               ; preds = %30, %26
  %32 = phi i32 [ %29, %26 ], [ 0, %30 ]
  %33 = load i64, i64* %10, align 8
  %34 = call i64 @lsmFsRedirectPage(%struct.TYPE_27__* %23, i32 %32, i64 %33)
  store i64 %34, i64* %17, align 8
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %36 = call i32 @assert_lists_are_ok(%struct.TYPE_27__* %35)
  %37 = load i64, i64* %10, align 8
  %38 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %39 = call i64 @fsFirstPageOnBlock(%struct.TYPE_27__* %38, i32 1)
  %40 = icmp sge i64 %37, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load i64, i64* %17, align 8
  %44 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %45 = call i64 @fsFirstPageOnBlock(%struct.TYPE_27__* %44, i32 1)
  %46 = icmp sge i64 %43, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %12, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %49, align 8
  %50 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %51 = load i64, i64* %17, align 8
  %52 = call %struct.TYPE_26__* @fsPageFindInHash(%struct.TYPE_27__* %50, i64 %51, i32* %15)
  store %struct.TYPE_26__* %52, %struct.TYPE_26__** %14, align 8
  %53 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %54 = icmp ne %struct.TYPE_26__* %53, null
  br i1 %54, label %55, label %71

55:                                               ; preds = %31
  %56 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @PAGE_FREE, align 4
  %60 = and i32 %58, %59
  %61 = call i32 @assert(i32 %60)
  %62 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %55
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %68 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %69 = call i32 @fsPageRemoveFromLru(%struct.TYPE_27__* %67, %struct.TYPE_26__* %68)
  br label %70

70:                                               ; preds = %66, %55
  br label %315

71:                                               ; preds = %31
  %72 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %73 = load i64, i64* %17, align 8
  %74 = call i64 @fsMmapPage(%struct.TYPE_27__* %72, i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %171

76:                                               ; preds = %71
  %77 = load i64, i64* %17, align 8
  %78 = trunc i64 %77 to i32
  %79 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = mul nsw i32 %78, %81
  store i32 %82, i32* %18, align 4
  %83 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %84 = load i32, i32* %18, align 4
  %85 = call i32 @fsGrowMapping(%struct.TYPE_27__* %83, i32 %84, i32* %16)
  %86 = load i32, i32* %16, align 4
  %87 = load i32, i32* @LSM_OK, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %76
  %90 = load i32, i32* %16, align 4
  store i32 %90, i32* %7, align 4
  br label %388

91:                                               ; preds = %76
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %92, i32 0, i32 9
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %93, align 8
  %95 = icmp ne %struct.TYPE_26__* %94, null
  br i1 %95, label %96, label %111

96:                                               ; preds = %91
  %97 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %97, i32 0, i32 9
  %99 = load %struct.TYPE_26__*, %struct.TYPE_26__** %98, align 8
  store %struct.TYPE_26__* %99, %struct.TYPE_26__** %14, align 8
  %100 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %100, i32 0, i32 10
  %102 = load %struct.TYPE_26__*, %struct.TYPE_26__** %101, align 8
  %103 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %103, i32 0, i32 9
  store %struct.TYPE_26__* %102, %struct.TYPE_26__** %104, align 8
  %105 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %107, 0
  %109 = zext i1 %108 to i32
  %110 = call i32 @assert(i32 %109)
  br label %124

111:                                              ; preds = %91
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 8
  %115 = call %struct.TYPE_26__* @lsmMallocZeroRc(i32 %114, i32 88, i32* %16)
  store %struct.TYPE_26__* %115, %struct.TYPE_26__** %14, align 8
  %116 = load i32, i32* %16, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = load i32, i32* %16, align 4
  store i32 %119, i32* %7, align 4
  br label %388

120:                                              ; preds = %111
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %122, i32 0, i32 8
  store %struct.TYPE_27__* %121, %struct.TYPE_27__** %123, align 8
  br label %124

124:                                              ; preds = %120, %96
  %125 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %125, i32 0, i32 8
  %127 = load i64, i64* %126, align 8
  %128 = inttoptr i64 %127 to i32*
  %129 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = sext i32 %131 to i64
  %133 = load i64, i64* %17, align 8
  %134 = sub nsw i64 %133, 1
  %135 = mul nsw i64 %132, %134
  %136 = getelementptr inbounds i32, i32* %128, i64 %135
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %138 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %137, i32 0, i32 6
  store i32* %136, i32** %138, align 8
  %139 = load i64, i64* %17, align 8
  %140 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %141 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %140, i32 0, i32 9
  store i64 %139, i64* %141, align 8
  %142 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %143 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = icmp eq i64 %144, 0
  %146 = zext i1 %145 to i32
  %147 = call i32 @assert(i32 %146)
  %148 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %148, i32 0, i32 7
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %149, align 8
  %151 = ptrtoint %struct.TYPE_26__* %150 to i64
  %152 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %153 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %152, i32 0, i32 2
  store i64 %151, i64* %153, align 8
  %154 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %155 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %155, i32 0, i32 7
  store %struct.TYPE_26__* %154, %struct.TYPE_26__** %156, align 8
  %157 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = icmp eq i64 %159, 0
  %161 = zext i1 %160 to i32
  %162 = call i32 @assert(i32 %161)
  %163 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %164 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @PAGE_FREE, align 4
  %167 = and i32 %165, %166
  %168 = icmp eq i32 %167, 0
  %169 = zext i1 %168 to i32
  %170 = call i32 @assert(i32 %169)
  br label %288

171:                                              ; preds = %71
  %172 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %173 = call i32 @fsPageBuffer(%struct.TYPE_27__* %172, %struct.TYPE_26__** %14)
  store i32 %173, i32* %16, align 4
  %174 = load i32, i32* %16, align 4
  %175 = load i32, i32* @LSM_OK, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %287

177:                                              ; preds = %171
  store i32 0, i32* %19, align 4
  %178 = load i64, i64* %17, align 8
  %179 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %180 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %179, i32 0, i32 9
  store i64 %178, i64* %180, align 8
  %181 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %182 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %181, i32 0, i32 1
  store i64 0, i64* %182, align 8
  %183 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %184 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %185 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %184, i32 0, i32 8
  store %struct.TYPE_27__* %183, %struct.TYPE_27__** %185, align 8
  %186 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %187 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %196, label %190

190:                                              ; preds = %177
  %191 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %192 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @PAGE_FREE, align 4
  %195 = icmp eq i32 %193, %194
  br label %196

196:                                              ; preds = %190, %177
  %197 = phi i1 [ true, %177 ], [ %195, %190 ]
  %198 = zext i1 %197 to i32
  %199 = call i32 @assert(i32 %198)
  %200 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %201 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %200, i32 0, i32 3
  %202 = load i64, i64* %201, align 8
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %196
  %205 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %206 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %205, i32 0, i32 4
  %207 = load i64, i64* %206, align 8
  %208 = icmp eq i64 %207, 0
  br label %209

209:                                              ; preds = %204, %196
  %210 = phi i1 [ false, %196 ], [ %208, %204 ]
  %211 = zext i1 %210 to i32
  %212 = call i32 @assert(i32 %211)
  %213 = load i32, i32* %11, align 4
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %253

215:                                              ; preds = %209
  %216 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %215
  %221 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %222 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %223 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %224 = call i32 @fsReadPagedata(%struct.TYPE_27__* %221, %struct.TYPE_25__* %222, %struct.TYPE_26__* %223, i32* %19)
  store i32 %224, i32* %16, align 4
  br label %248

225:                                              ; preds = %215
  %226 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  store i32 %228, i32* %20, align 4
  %229 = load i64, i64* %17, align 8
  %230 = sub nsw i64 %229, 1
  %231 = trunc i64 %230 to i32
  %232 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = mul nsw i32 %231, %234
  store i32 %235, i32* %21, align 4
  %236 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %236, i32 0, i32 6
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %239, i32 0, i32 5
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* %21, align 4
  %243 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %244 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %243, i32 0, i32 6
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* %20, align 4
  %247 = call i32 @lsmEnvRead(i32 %238, i32 %241, i32 %242, i32* %245, i32 %246)
  store i32 %247, i32* %16, align 4
  br label %248

248:                                              ; preds = %225, %220
  %249 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %250 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %249, i32 0, i32 4
  %251 = load i32, i32* %250, align 8
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %250, align 8
  br label %253

253:                                              ; preds = %248, %209
  %254 = load i32, i32* %16, align 4
  %255 = load i32, i32* @LSM_OK, align 4
  %256 = icmp eq i32 %254, %255
  br i1 %256, label %257, label %277

257:                                              ; preds = %253
  %258 = load i32, i32* %19, align 4
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %277

260:                                              ; preds = %257
  %261 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %261, i32 0, i32 3
  %263 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %262, align 8
  %264 = load i32, i32* %15, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %263, i64 %265
  %267 = load %struct.TYPE_26__*, %struct.TYPE_26__** %266, align 8
  %268 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %269 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %268, i32 0, i32 7
  store %struct.TYPE_26__* %267, %struct.TYPE_26__** %269, align 8
  %270 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %271 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %272 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %271, i32 0, i32 3
  %273 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %272, align 8
  %274 = load i32, i32* %15, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %273, i64 %275
  store %struct.TYPE_26__* %270, %struct.TYPE_26__** %276, align 8
  br label %286

277:                                              ; preds = %257, %253
  %278 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %279 = call i32 @fsPageBufferFree(%struct.TYPE_26__* %278)
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %14, align 8
  %280 = load i32*, i32** %13, align 8
  %281 = icmp ne i32* %280, null
  br i1 %281, label %282, label %285

282:                                              ; preds = %277
  %283 = load i32, i32* %19, align 4
  %284 = load i32*, i32** %13, align 8
  store i32 %283, i32* %284, align 4
  br label %285

285:                                              ; preds = %282, %277
  br label %286

286:                                              ; preds = %285, %260
  br label %287

287:                                              ; preds = %286, %171
  br label %288

288:                                              ; preds = %287, %124
  %289 = load i32, i32* %16, align 4
  %290 = load i32, i32* @LSM_OK, align 4
  %291 = icmp eq i32 %289, %290
  br i1 %291, label %292, label %302

292:                                              ; preds = %288
  %293 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %294 = icmp ne %struct.TYPE_26__* %293, null
  br i1 %294, label %311, label %295

295:                                              ; preds = %292
  %296 = load i32*, i32** %13, align 8
  %297 = icmp ne i32* %296, null
  br i1 %297, label %298, label %302

298:                                              ; preds = %295
  %299 = load i32*, i32** %13, align 8
  %300 = load i32, i32* %299, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %311, label %302

302:                                              ; preds = %298, %295, %288
  %303 = load i32, i32* %16, align 4
  %304 = load i32, i32* @LSM_OK, align 4
  %305 = icmp ne i32 %303, %304
  br i1 %305, label %306, label %309

306:                                              ; preds = %302
  %307 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %308 = icmp eq %struct.TYPE_26__* %307, null
  br label %309

309:                                              ; preds = %306, %302
  %310 = phi i1 [ false, %302 ], [ %308, %306 ]
  br label %311

311:                                              ; preds = %309, %298, %292
  %312 = phi i1 [ true, %298 ], [ true, %292 ], [ %310, %309 ]
  %313 = zext i1 %312 to i32
  %314 = call i32 @assert(i32 %313)
  br label %315

315:                                              ; preds = %311, %70
  %316 = load i32, i32* %16, align 4
  %317 = load i32, i32* @LSM_OK, align 4
  %318 = icmp eq i32 %316, %317
  br i1 %318, label %319, label %384

319:                                              ; preds = %315
  %320 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %321 = icmp ne %struct.TYPE_26__* %320, null
  br i1 %321, label %322, label %384

322:                                              ; preds = %319
  %323 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %324 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %323, i32 0, i32 1
  %325 = load i64, i64* %324, align 8
  %326 = icmp eq i64 %325, 0
  br i1 %326, label %327, label %364

327:                                              ; preds = %322
  %328 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %329 = load i64, i64* %17, align 8
  %330 = call i64 @fsIsLast(%struct.TYPE_27__* %328, i64 %329)
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %337, label %332

332:                                              ; preds = %327
  %333 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %334 = load i64, i64* %17, align 8
  %335 = call i64 @fsIsFirst(%struct.TYPE_27__* %333, i64 %334)
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %364

337:                                              ; preds = %332, %327
  %338 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %339 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = sub nsw i32 %340, 4
  %342 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %343 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %342, i32 0, i32 5
  store i32 %341, i32* %343, align 8
  %344 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %345 = load i64, i64* %17, align 8
  %346 = call i64 @fsIsFirst(%struct.TYPE_27__* %344, i64 %345)
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %363

348:                                              ; preds = %337
  %349 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %350 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %349, i32 0, i32 1
  %351 = load i64, i64* %350, align 8
  %352 = icmp eq i64 %351, 0
  br i1 %352, label %353, label %363

353:                                              ; preds = %348
  %354 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %355 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %354, i32 0, i32 6
  %356 = load i32*, i32** %355, align 8
  %357 = getelementptr inbounds i32, i32* %356, i64 4
  store i32* %357, i32** %355, align 8
  %358 = load i32, i32* @PAGE_HASPREV, align 4
  %359 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %360 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  %362 = or i32 %361, %358
  store i32 %362, i32* %360, align 8
  br label %363

363:                                              ; preds = %353, %348, %337
  br label %370

364:                                              ; preds = %332, %322
  %365 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %366 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 8
  %368 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %369 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %368, i32 0, i32 5
  store i32 %367, i32* %369, align 8
  br label %370

370:                                              ; preds = %364, %363
  %371 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %372 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %371, i32 0, i32 1
  %373 = load i64, i64* %372, align 8
  %374 = icmp eq i64 %373, 0
  %375 = zext i1 %374 to i32
  %376 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %377 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %376, i32 0, i32 2
  %378 = load i32, i32* %377, align 8
  %379 = add nsw i32 %378, %375
  store i32 %379, i32* %377, align 8
  %380 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %381 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %380, i32 0, i32 1
  %382 = load i64, i64* %381, align 8
  %383 = add nsw i64 %382, 1
  store i64 %383, i64* %381, align 8
  br label %384

384:                                              ; preds = %370, %319, %315
  %385 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %386 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %12, align 8
  store %struct.TYPE_26__* %385, %struct.TYPE_26__** %386, align 8
  %387 = load i32, i32* %16, align 4
  store i32 %387, i32* %7, align 4
  br label %388

388:                                              ; preds = %384, %118, %89
  %389 = load i32, i32* %7, align 4
  ret i32 %389
}

declare dso_local i64 @lsmFsRedirectPage(%struct.TYPE_27__*, i32, i64) #1

declare dso_local i32 @assert_lists_are_ok(%struct.TYPE_27__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @fsFirstPageOnBlock(%struct.TYPE_27__*, i32) #1

declare dso_local %struct.TYPE_26__* @fsPageFindInHash(%struct.TYPE_27__*, i64, i32*) #1

declare dso_local i32 @fsPageRemoveFromLru(%struct.TYPE_27__*, %struct.TYPE_26__*) #1

declare dso_local i64 @fsMmapPage(%struct.TYPE_27__*, i64) #1

declare dso_local i32 @fsGrowMapping(%struct.TYPE_27__*, i32, i32*) #1

declare dso_local %struct.TYPE_26__* @lsmMallocZeroRc(i32, i32, i32*) #1

declare dso_local i32 @fsPageBuffer(%struct.TYPE_27__*, %struct.TYPE_26__**) #1

declare dso_local i32 @fsReadPagedata(%struct.TYPE_27__*, %struct.TYPE_25__*, %struct.TYPE_26__*, i32*) #1

declare dso_local i32 @lsmEnvRead(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @fsPageBufferFree(%struct.TYPE_26__*) #1

declare dso_local i64 @fsIsLast(%struct.TYPE_27__*, i64) #1

declare dso_local i64 @fsIsFirst(%struct.TYPE_27__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
