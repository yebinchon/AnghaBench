; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_block_if.c_blockif_proc.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_block_if.c_blockif_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blockif_ctxt = type { i32, i32, i32, i32 }
%struct.blockif_elem = type { i32, i32, %struct.blockif_req* }
%struct.blockif_req = type { i32, i32 (%struct.blockif_req*, i32)*, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@errno = common dso_local global i32 0, align 4
@MAXPHYS = common dso_local global i64 0, align 8
@EROFS = common dso_local global i32 0, align 4
@DKIOCSYNCHRONIZECACHE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@BST_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blockif_ctxt*, %struct.blockif_elem*, i8*)* @blockif_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blockif_proc(%struct.blockif_ctxt* %0, %struct.blockif_elem* %1, i8* %2) #0 {
  %4 = alloca %struct.blockif_ctxt*, align 8
  %5 = alloca %struct.blockif_elem*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.blockif_req*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.blockif_ctxt* %0, %struct.blockif_ctxt** %4, align 8
  store %struct.blockif_elem* %1, %struct.blockif_elem** %5, align 8
  store i8* %2, i8** %6, align 8
  %15 = load %struct.blockif_elem*, %struct.blockif_elem** %5, align 8
  %16 = getelementptr inbounds %struct.blockif_elem, %struct.blockif_elem* %15, i32 0, i32 2
  %17 = load %struct.blockif_req*, %struct.blockif_req** %16, align 8
  store %struct.blockif_req* %17, %struct.blockif_req** %7, align 8
  %18 = load %struct.blockif_req*, %struct.blockif_req** %7, align 8
  %19 = getelementptr inbounds %struct.blockif_req, %struct.blockif_req* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sle i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i8* null, i8** %6, align 8
  br label %23

23:                                               ; preds = %22, %3
  store i32 0, i32* %14, align 4
  %24 = load %struct.blockif_elem*, %struct.blockif_elem** %5, align 8
  %25 = getelementptr inbounds %struct.blockif_elem, %struct.blockif_elem* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %319 [
    i32 129, label %27
    i32 128, label %152
    i32 130, label %284
    i32 131, label %309
  ]

27:                                               ; preds = %23
  %28 = load i8*, i8** %6, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %54

30:                                               ; preds = %27
  %31 = load %struct.blockif_ctxt*, %struct.blockif_ctxt** %4, align 8
  %32 = getelementptr inbounds %struct.blockif_ctxt, %struct.blockif_ctxt* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.blockif_req*, %struct.blockif_req** %7, align 8
  %35 = getelementptr inbounds %struct.blockif_req, %struct.blockif_req* %34, i32 0, i32 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load %struct.blockif_req*, %struct.blockif_req** %7, align 8
  %38 = getelementptr inbounds %struct.blockif_req, %struct.blockif_req* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.blockif_req*, %struct.blockif_req** %7, align 8
  %41 = getelementptr inbounds %struct.blockif_req, %struct.blockif_req* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @preadv(i32 %33, %struct.TYPE_3__* %36, i32 %39, i64 %42)
  store i64 %43, i64* %9, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %30
  %46 = load i32, i32* @errno, align 4
  store i32 %46, i32* %14, align 4
  br label %53

47:                                               ; preds = %30
  %48 = load i64, i64* %9, align 8
  %49 = load %struct.blockif_req*, %struct.blockif_req** %7, align 8
  %50 = getelementptr inbounds %struct.blockif_req, %struct.blockif_req* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %51, %48
  store i64 %52, i64* %50, align 8
  br label %53

53:                                               ; preds = %47, %45
  br label %319

54:                                               ; preds = %27
  store i32 0, i32* %13, align 4
  store i64 0, i64* %12, align 8
  store i64 0, i64* %10, align 8
  br label %55

55:                                               ; preds = %142, %54
  %56 = load %struct.blockif_req*, %struct.blockif_req** %7, align 8
  %57 = getelementptr inbounds %struct.blockif_req, %struct.blockif_req* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %151

60:                                               ; preds = %55
  %61 = load %struct.blockif_req*, %struct.blockif_req** %7, align 8
  %62 = getelementptr inbounds %struct.blockif_req, %struct.blockif_req* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @MAXPHYS, align 8
  %65 = call i64 @MIN(i64 %63, i64 %64)
  store i64 %65, i64* %9, align 8
  %66 = load %struct.blockif_ctxt*, %struct.blockif_ctxt** %4, align 8
  %67 = getelementptr inbounds %struct.blockif_ctxt, %struct.blockif_ctxt* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i8*, i8** %6, align 8
  %70 = load i64, i64* %9, align 8
  %71 = load %struct.blockif_req*, %struct.blockif_req** %7, align 8
  %72 = getelementptr inbounds %struct.blockif_req, %struct.blockif_req* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %10, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @pread(i32 %68, i8* %69, i64 %70, i64 %75)
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %60
  %79 = load i32, i32* @errno, align 4
  store i32 %79, i32* %14, align 4
  br label %151

80:                                               ; preds = %60
  store i64 0, i64* %11, align 8
  br label %81

81:                                               ; preds = %138, %80
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* %11, align 8
  %84 = sub nsw i64 %82, %83
  %85 = load %struct.blockif_req*, %struct.blockif_req** %7, align 8
  %86 = getelementptr inbounds %struct.blockif_req, %struct.blockif_req* %85, i32 0, i32 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = load i64, i64* %12, align 8
  %95 = sub nsw i64 %93, %94
  %96 = call i64 @MIN(i64 %84, i64 %95)
  store i64 %96, i64* %8, align 8
  %97 = load %struct.blockif_req*, %struct.blockif_req** %7, align 8
  %98 = getelementptr inbounds %struct.blockif_req, %struct.blockif_req* %97, i32 0, i32 4
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = load i64, i64* %12, align 8
  %107 = add i64 %105, %106
  %108 = inttoptr i64 %107 to i8*
  %109 = load i8*, i8** %6, align 8
  %110 = load i64, i64* %11, align 8
  %111 = getelementptr i8, i8* %109, i64 %110
  %112 = load i64, i64* %8, align 8
  %113 = call i32 @memcpy(i8* %108, i8* %111, i64 %112)
  %114 = load i64, i64* %8, align 8
  %115 = load %struct.blockif_req*, %struct.blockif_req** %7, align 8
  %116 = getelementptr inbounds %struct.blockif_req, %struct.blockif_req* %115, i32 0, i32 4
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = load i64, i64* %12, align 8
  %125 = sub nsw i64 %123, %124
  %126 = icmp slt i64 %114, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %81
  %128 = load i64, i64* %8, align 8
  %129 = load i64, i64* %12, align 8
  %130 = add nsw i64 %129, %128
  store i64 %130, i64* %12, align 8
  br label %134

131:                                              ; preds = %81
  %132 = load i32, i32* %13, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %13, align 4
  store i64 0, i64* %12, align 8
  br label %134

134:                                              ; preds = %131, %127
  %135 = load i64, i64* %8, align 8
  %136 = load i64, i64* %11, align 8
  %137 = add nsw i64 %136, %135
  store i64 %137, i64* %11, align 8
  br label %138

138:                                              ; preds = %134
  %139 = load i64, i64* %11, align 8
  %140 = load i64, i64* %9, align 8
  %141 = icmp slt i64 %139, %140
  br i1 %141, label %81, label %142

142:                                              ; preds = %138
  %143 = load i64, i64* %9, align 8
  %144 = load i64, i64* %10, align 8
  %145 = add nsw i64 %144, %143
  store i64 %145, i64* %10, align 8
  %146 = load i64, i64* %9, align 8
  %147 = load %struct.blockif_req*, %struct.blockif_req** %7, align 8
  %148 = getelementptr inbounds %struct.blockif_req, %struct.blockif_req* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = sub nsw i64 %149, %146
  store i64 %150, i64* %148, align 8
  br label %55

151:                                              ; preds = %78, %55
  br label %319

152:                                              ; preds = %23
  %153 = load %struct.blockif_ctxt*, %struct.blockif_ctxt** %4, align 8
  %154 = getelementptr inbounds %struct.blockif_ctxt, %struct.blockif_ctxt* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %152
  %158 = load i32, i32* @EROFS, align 4
  store i32 %158, i32* %14, align 4
  br label %319

159:                                              ; preds = %152
  %160 = load i8*, i8** %6, align 8
  %161 = icmp eq i8* %160, null
  br i1 %161, label %162, label %186

162:                                              ; preds = %159
  %163 = load %struct.blockif_ctxt*, %struct.blockif_ctxt** %4, align 8
  %164 = getelementptr inbounds %struct.blockif_ctxt, %struct.blockif_ctxt* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.blockif_req*, %struct.blockif_req** %7, align 8
  %167 = getelementptr inbounds %struct.blockif_req, %struct.blockif_req* %166, i32 0, i32 4
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %167, align 8
  %169 = load %struct.blockif_req*, %struct.blockif_req** %7, align 8
  %170 = getelementptr inbounds %struct.blockif_req, %struct.blockif_req* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.blockif_req*, %struct.blockif_req** %7, align 8
  %173 = getelementptr inbounds %struct.blockif_req, %struct.blockif_req* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = call i64 @pwritev(i32 %165, %struct.TYPE_3__* %168, i32 %171, i64 %174)
  store i64 %175, i64* %9, align 8
  %176 = icmp slt i64 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %162
  %178 = load i32, i32* @errno, align 4
  store i32 %178, i32* %14, align 4
  br label %185

179:                                              ; preds = %162
  %180 = load i64, i64* %9, align 8
  %181 = load %struct.blockif_req*, %struct.blockif_req** %7, align 8
  %182 = getelementptr inbounds %struct.blockif_req, %struct.blockif_req* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = sub nsw i64 %183, %180
  store i64 %184, i64* %182, align 8
  br label %185

185:                                              ; preds = %179, %177
  br label %319

186:                                              ; preds = %159
  store i32 0, i32* %13, align 4
  store i64 0, i64* %12, align 8
  store i64 0, i64* %10, align 8
  br label %187

187:                                              ; preds = %274, %186
  %188 = load %struct.blockif_req*, %struct.blockif_req** %7, align 8
  %189 = getelementptr inbounds %struct.blockif_req, %struct.blockif_req* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = icmp sgt i64 %190, 0
  br i1 %191, label %192, label %283

192:                                              ; preds = %187
  %193 = load %struct.blockif_req*, %struct.blockif_req** %7, align 8
  %194 = getelementptr inbounds %struct.blockif_req, %struct.blockif_req* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @MAXPHYS, align 8
  %197 = call i64 @MIN(i64 %195, i64 %196)
  store i64 %197, i64* %9, align 8
  store i64 0, i64* %11, align 8
  br label %198

198:                                              ; preds = %255, %192
  %199 = load i64, i64* %9, align 8
  %200 = load i64, i64* %11, align 8
  %201 = sub nsw i64 %199, %200
  %202 = load %struct.blockif_req*, %struct.blockif_req** %7, align 8
  %203 = getelementptr inbounds %struct.blockif_req, %struct.blockif_req* %202, i32 0, i32 4
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %203, align 8
  %205 = load i32, i32* %13, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = sext i32 %209 to i64
  %211 = load i64, i64* %12, align 8
  %212 = sub nsw i64 %210, %211
  %213 = call i64 @MIN(i64 %201, i64 %212)
  store i64 %213, i64* %8, align 8
  %214 = load i8*, i8** %6, align 8
  %215 = load i64, i64* %11, align 8
  %216 = getelementptr i8, i8* %214, i64 %215
  %217 = load %struct.blockif_req*, %struct.blockif_req** %7, align 8
  %218 = getelementptr inbounds %struct.blockif_req, %struct.blockif_req* %217, i32 0, i32 4
  %219 = load %struct.TYPE_3__*, %struct.TYPE_3__** %218, align 8
  %220 = load i32, i32* %13, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = sext i32 %224 to i64
  %226 = load i64, i64* %12, align 8
  %227 = add i64 %225, %226
  %228 = inttoptr i64 %227 to i8*
  %229 = load i64, i64* %8, align 8
  %230 = call i32 @memcpy(i8* %216, i8* %228, i64 %229)
  %231 = load i64, i64* %8, align 8
  %232 = load %struct.blockif_req*, %struct.blockif_req** %7, align 8
  %233 = getelementptr inbounds %struct.blockif_req, %struct.blockif_req* %232, i32 0, i32 4
  %234 = load %struct.TYPE_3__*, %struct.TYPE_3__** %233, align 8
  %235 = load i32, i32* %13, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = sext i32 %239 to i64
  %241 = load i64, i64* %12, align 8
  %242 = sub nsw i64 %240, %241
  %243 = icmp slt i64 %231, %242
  br i1 %243, label %244, label %248

244:                                              ; preds = %198
  %245 = load i64, i64* %8, align 8
  %246 = load i64, i64* %12, align 8
  %247 = add nsw i64 %246, %245
  store i64 %247, i64* %12, align 8
  br label %251

248:                                              ; preds = %198
  %249 = load i32, i32* %13, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %13, align 4
  store i64 0, i64* %12, align 8
  br label %251

251:                                              ; preds = %248, %244
  %252 = load i64, i64* %8, align 8
  %253 = load i64, i64* %11, align 8
  %254 = add nsw i64 %253, %252
  store i64 %254, i64* %11, align 8
  br label %255

255:                                              ; preds = %251
  %256 = load i64, i64* %11, align 8
  %257 = load i64, i64* %9, align 8
  %258 = icmp slt i64 %256, %257
  br i1 %258, label %198, label %259

259:                                              ; preds = %255
  %260 = load %struct.blockif_ctxt*, %struct.blockif_ctxt** %4, align 8
  %261 = getelementptr inbounds %struct.blockif_ctxt, %struct.blockif_ctxt* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = load i8*, i8** %6, align 8
  %264 = load i64, i64* %9, align 8
  %265 = load %struct.blockif_req*, %struct.blockif_req** %7, align 8
  %266 = getelementptr inbounds %struct.blockif_req, %struct.blockif_req* %265, i32 0, i32 3
  %267 = load i64, i64* %266, align 8
  %268 = load i64, i64* %10, align 8
  %269 = add nsw i64 %267, %268
  %270 = call i32 @pwrite(i32 %262, i8* %263, i64 %264, i64 %269)
  %271 = icmp slt i32 %270, 0
  br i1 %271, label %272, label %274

272:                                              ; preds = %259
  %273 = load i32, i32* @errno, align 4
  store i32 %273, i32* %14, align 4
  br label %283

274:                                              ; preds = %259
  %275 = load i64, i64* %9, align 8
  %276 = load i64, i64* %10, align 8
  %277 = add nsw i64 %276, %275
  store i64 %277, i64* %10, align 8
  %278 = load i64, i64* %9, align 8
  %279 = load %struct.blockif_req*, %struct.blockif_req** %7, align 8
  %280 = getelementptr inbounds %struct.blockif_req, %struct.blockif_req* %279, i32 0, i32 2
  %281 = load i64, i64* %280, align 8
  %282 = sub nsw i64 %281, %278
  store i64 %282, i64* %280, align 8
  br label %187

283:                                              ; preds = %272, %187
  br label %319

284:                                              ; preds = %23
  %285 = load %struct.blockif_ctxt*, %struct.blockif_ctxt** %4, align 8
  %286 = getelementptr inbounds %struct.blockif_ctxt, %struct.blockif_ctxt* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %299

289:                                              ; preds = %284
  %290 = load %struct.blockif_ctxt*, %struct.blockif_ctxt** %4, align 8
  %291 = getelementptr inbounds %struct.blockif_ctxt, %struct.blockif_ctxt* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* @DKIOCSYNCHRONIZECACHE, align 4
  %294 = call i32 @ioctl(i32 %292, i32 %293)
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %298

296:                                              ; preds = %289
  %297 = load i32, i32* @errno, align 4
  store i32 %297, i32* %14, align 4
  br label %298

298:                                              ; preds = %296, %289
  br label %308

299:                                              ; preds = %284
  %300 = load %struct.blockif_ctxt*, %struct.blockif_ctxt** %4, align 8
  %301 = getelementptr inbounds %struct.blockif_ctxt, %struct.blockif_ctxt* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = call i32 @fsync(i32 %302)
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %307

305:                                              ; preds = %299
  %306 = load i32, i32* @errno, align 4
  store i32 %306, i32* %14, align 4
  br label %307

307:                                              ; preds = %305, %299
  br label %308

308:                                              ; preds = %307, %298
  br label %319

309:                                              ; preds = %23
  %310 = load %struct.blockif_ctxt*, %struct.blockif_ctxt** %4, align 8
  %311 = getelementptr inbounds %struct.blockif_ctxt, %struct.blockif_ctxt* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %316, label %314

314:                                              ; preds = %309
  %315 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %315, i32* %14, align 4
  br label %318

316:                                              ; preds = %309
  %317 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %317, i32* %14, align 4
  br label %318

318:                                              ; preds = %316, %314
  br label %319

319:                                              ; preds = %23, %318, %308, %283, %185, %157, %151, %53
  %320 = load i32, i32* @BST_DONE, align 4
  %321 = load %struct.blockif_elem*, %struct.blockif_elem** %5, align 8
  %322 = getelementptr inbounds %struct.blockif_elem, %struct.blockif_elem* %321, i32 0, i32 1
  store i32 %320, i32* %322, align 4
  %323 = load %struct.blockif_req*, %struct.blockif_req** %7, align 8
  %324 = getelementptr inbounds %struct.blockif_req, %struct.blockif_req* %323, i32 0, i32 1
  %325 = load i32 (%struct.blockif_req*, i32)*, i32 (%struct.blockif_req*, i32)** %324, align 8
  %326 = load %struct.blockif_req*, %struct.blockif_req** %7, align 8
  %327 = load i32, i32* %14, align 4
  %328 = call i32 %325(%struct.blockif_req* %326, i32 %327)
  ret void
}

declare dso_local i64 @preadv(i32, %struct.TYPE_3__*, i32, i64) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @pread(i32, i8*, i64, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @pwritev(i32, %struct.TYPE_3__*, i32, i64) #1

declare dso_local i32 @pwrite(i32, i8*, i64, i64) #1

declare dso_local i32 @ioctl(i32, i32) #1

declare dso_local i32 @fsync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
