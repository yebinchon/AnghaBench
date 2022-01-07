; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_func.c_replaceFunc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_func.c_replaceFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i64 }

@SQLITE_NULL = common dso_local global i64 0, align 8
@SQLITE_MAX_LENGTH = common dso_local global i32 0, align 4
@SQLITE_LIMIT_LENGTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @replaceFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @replaceFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_3__*, align 8
  %20 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call %struct.TYPE_3__* @sqlite3_context_db_handle(i32* %21)
  store %struct.TYPE_3__* %22, %struct.TYPE_3__** %19, align 8
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 3
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @UNUSED_PARAMETER(i32 %27)
  %29 = load i32**, i32*** %6, align 8
  %30 = getelementptr inbounds i32*, i32** %29, i64 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i8* @sqlite3_value_text(i32* %31)
  store i8* %32, i8** %7, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %3
  br label %311

36:                                               ; preds = %3
  %37 = load i32**, i32*** %6, align 8
  %38 = getelementptr inbounds i32*, i32** %37, i64 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @sqlite3_value_bytes(i32* %39)
  store i32 %40, i32* %11, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = load i32**, i32*** %6, align 8
  %43 = getelementptr inbounds i32*, i32** %42, i64 0
  %44 = load i32*, i32** %43, align 8
  %45 = call i8* @sqlite3_value_text(i32* %44)
  %46 = icmp eq i8* %41, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load i32**, i32*** %6, align 8
  %50 = getelementptr inbounds i32*, i32** %49, i64 1
  %51 = load i32*, i32** %50, align 8
  %52 = call i8* @sqlite3_value_text(i32* %51)
  store i8* %52, i8** %8, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %72

55:                                               ; preds = %36
  %56 = load i32**, i32*** %6, align 8
  %57 = getelementptr inbounds i32*, i32** %56, i64 1
  %58 = load i32*, i32** %57, align 8
  %59 = call i64 @sqlite3_value_type(i32* %58)
  %60 = load i64, i64* @SQLITE_NULL, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %55
  %63 = load i32*, i32** %4, align 8
  %64 = call %struct.TYPE_3__* @sqlite3_context_db_handle(i32* %63)
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br label %68

68:                                               ; preds = %62, %55
  %69 = phi i1 [ true, %55 ], [ %67, %62 ]
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  br label %311

72:                                               ; preds = %36
  %73 = load i8*, i8** %8, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 0
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %72
  %79 = load i32**, i32*** %6, align 8
  %80 = getelementptr inbounds i32*, i32** %79, i64 1
  %81 = load i32*, i32** %80, align 8
  %82 = call i64 @sqlite3_value_type(i32* %81)
  %83 = load i64, i64* @SQLITE_NULL, align 8
  %84 = icmp ne i64 %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load i32*, i32** %4, align 8
  %88 = load i32**, i32*** %6, align 8
  %89 = getelementptr inbounds i32*, i32** %88, i64 0
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @sqlite3_result_value(i32* %87, i32* %90)
  br label %311

92:                                               ; preds = %72
  %93 = load i32**, i32*** %6, align 8
  %94 = getelementptr inbounds i32*, i32** %93, i64 1
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @sqlite3_value_bytes(i32* %95)
  store i32 %96, i32* %12, align 4
  %97 = load i8*, i8** %8, align 8
  %98 = load i32**, i32*** %6, align 8
  %99 = getelementptr inbounds i32*, i32** %98, i64 1
  %100 = load i32*, i32** %99, align 8
  %101 = call i8* @sqlite3_value_text(i32* %100)
  %102 = icmp eq i8* %97, %101
  %103 = zext i1 %102 to i32
  %104 = call i32 @assert(i32 %103)
  %105 = load i32**, i32*** %6, align 8
  %106 = getelementptr inbounds i32*, i32** %105, i64 2
  %107 = load i32*, i32** %106, align 8
  %108 = call i8* @sqlite3_value_text(i32* %107)
  store i8* %108, i8** %9, align 8
  %109 = load i8*, i8** %9, align 8
  %110 = icmp eq i8* %109, null
  br i1 %110, label %111, label %112

111:                                              ; preds = %92
  br label %311

112:                                              ; preds = %92
  %113 = load i32**, i32*** %6, align 8
  %114 = getelementptr inbounds i32*, i32** %113, i64 2
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @sqlite3_value_bytes(i32* %115)
  store i32 %116, i32* %13, align 4
  %117 = load i8*, i8** %9, align 8
  %118 = load i32**, i32*** %6, align 8
  %119 = getelementptr inbounds i32*, i32** %118, i64 2
  %120 = load i32*, i32** %119, align 8
  %121 = call i8* @sqlite3_value_text(i32* %120)
  %122 = icmp eq i8* %117, %121
  %123 = zext i1 %122 to i32
  %124 = call i32 @assert(i32 %123)
  %125 = load i32, i32* %11, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %14, align 4
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* @SQLITE_MAX_LENGTH, align 4
  %129 = icmp slt i32 %127, %128
  %130 = zext i1 %129 to i32
  %131 = call i32 @assert(i32 %130)
  %132 = load i32*, i32** %4, align 8
  %133 = load i32, i32* %14, align 4
  %134 = call i8* @contextMalloc(i32* %132, i32 %133)
  store i8* %134, i8** %10, align 8
  %135 = load i8*, i8** %10, align 8
  %136 = icmp eq i8* %135, null
  br i1 %136, label %137, label %138

137:                                              ; preds = %112
  br label %311

138:                                              ; preds = %112
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* %12, align 4
  %141 = sub nsw i32 %139, %140
  store i32 %141, i32* %15, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %142

142:                                              ; preds = %267, %138
  %143 = load i32, i32* %16, align 4
  %144 = load i32, i32* %15, align 4
  %145 = icmp sle i32 %143, %144
  br i1 %145, label %146, label %270

146:                                              ; preds = %142
  %147 = load i8*, i8** %7, align 8
  %148 = load i32, i32* %16, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = load i8*, i8** %8, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 0
  %155 = load i8, i8* %154, align 1
  %156 = zext i8 %155 to i32
  %157 = icmp ne i32 %152, %156
  br i1 %157, label %167, label %158

158:                                              ; preds = %146
  %159 = load i8*, i8** %7, align 8
  %160 = load i32, i32* %16, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  %163 = load i8*, i8** %8, align 8
  %164 = load i32, i32* %12, align 4
  %165 = call i64 @memcmp(i8* %162, i8* %163, i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %178

167:                                              ; preds = %158, %146
  %168 = load i8*, i8** %7, align 8
  %169 = load i32, i32* %16, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %168, i64 %170
  %172 = load i8, i8* %171, align 1
  %173 = load i8*, i8** %10, align 8
  %174 = load i32, i32* %17, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %17, align 4
  %176 = sext i32 %174 to i64
  %177 = getelementptr inbounds i8, i8* %173, i64 %176
  store i8 %172, i8* %177, align 1
  br label %266

178:                                              ; preds = %158
  %179 = load i32, i32* %13, align 4
  %180 = load i32, i32* %12, align 4
  %181 = icmp sgt i32 %179, %180
  br i1 %181, label %182, label %251

182:                                              ; preds = %178
  %183 = load i32, i32* %13, align 4
  %184 = load i32, i32* %12, align 4
  %185 = sub nsw i32 %183, %184
  %186 = load i32, i32* %14, align 4
  %187 = add nsw i32 %186, %185
  store i32 %187, i32* %14, align 4
  %188 = load i32, i32* %14, align 4
  %189 = sub nsw i32 %188, 1
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = load i64, i64* @SQLITE_LIMIT_LENGTH, align 8
  %194 = getelementptr inbounds i32, i32* %192, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = icmp eq i32 %189, %195
  %197 = zext i1 %196 to i32
  %198 = call i32 @testcase(i32 %197)
  %199 = load i32, i32* %14, align 4
  %200 = sub nsw i32 %199, 2
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = load i64, i64* @SQLITE_LIMIT_LENGTH, align 8
  %205 = getelementptr inbounds i32, i32* %203, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = icmp eq i32 %200, %206
  %208 = zext i1 %207 to i32
  %209 = call i32 @testcase(i32 %208)
  %210 = load i32, i32* %14, align 4
  %211 = sub nsw i32 %210, 1
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = load i64, i64* @SQLITE_LIMIT_LENGTH, align 8
  %216 = getelementptr inbounds i32, i32* %214, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = icmp sgt i32 %211, %217
  br i1 %218, label %219, label %224

219:                                              ; preds = %182
  %220 = load i32*, i32** %4, align 8
  %221 = call i32 @sqlite3_result_error_toobig(i32* %220)
  %222 = load i8*, i8** %10, align 8
  %223 = call i32 @sqlite3_free(i8* %222)
  br label %311

224:                                              ; preds = %182
  %225 = load i32, i32* %18, align 4
  %226 = add i32 %225, 1
  store i32 %226, i32* %18, align 4
  %227 = load i32, i32* %18, align 4
  %228 = load i32, i32* %18, align 4
  %229 = sub i32 %228, 1
  %230 = and i32 %227, %229
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %250

232:                                              ; preds = %224
  %233 = load i8*, i8** %10, align 8
  store i8* %233, i8** %20, align 8
  %234 = load i8*, i8** %10, align 8
  %235 = load i32, i32* %14, align 4
  %236 = load i32, i32* %14, align 4
  %237 = load i32, i32* %11, align 4
  %238 = sub nsw i32 %236, %237
  %239 = sub nsw i32 %238, 1
  %240 = add nsw i32 %235, %239
  %241 = call i8* @sqlite3_realloc64(i8* %234, i32 %240)
  store i8* %241, i8** %10, align 8
  %242 = load i8*, i8** %10, align 8
  %243 = icmp eq i8* %242, null
  br i1 %243, label %244, label %249

244:                                              ; preds = %232
  %245 = load i32*, i32** %4, align 8
  %246 = call i32 @sqlite3_result_error_nomem(i32* %245)
  %247 = load i8*, i8** %20, align 8
  %248 = call i32 @sqlite3_free(i8* %247)
  br label %311

249:                                              ; preds = %232
  br label %250

250:                                              ; preds = %249, %224
  br label %251

251:                                              ; preds = %250, %178
  %252 = load i8*, i8** %10, align 8
  %253 = load i32, i32* %17, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i8, i8* %252, i64 %254
  %256 = load i8*, i8** %9, align 8
  %257 = load i32, i32* %13, align 4
  %258 = call i32 @memcpy(i8* %255, i8* %256, i32 %257)
  %259 = load i32, i32* %13, align 4
  %260 = load i32, i32* %17, align 4
  %261 = add nsw i32 %260, %259
  store i32 %261, i32* %17, align 4
  %262 = load i32, i32* %12, align 4
  %263 = sub nsw i32 %262, 1
  %264 = load i32, i32* %16, align 4
  %265 = add nsw i32 %264, %263
  store i32 %265, i32* %16, align 4
  br label %266

266:                                              ; preds = %251, %167
  br label %267

267:                                              ; preds = %266
  %268 = load i32, i32* %16, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %16, align 4
  br label %142

270:                                              ; preds = %142
  %271 = load i32, i32* %17, align 4
  %272 = load i32, i32* %11, align 4
  %273 = add nsw i32 %271, %272
  %274 = load i32, i32* %16, align 4
  %275 = sub nsw i32 %273, %274
  %276 = add nsw i32 %275, 1
  %277 = load i32, i32* %14, align 4
  %278 = icmp sle i32 %276, %277
  %279 = zext i1 %278 to i32
  %280 = call i32 @assert(i32 %279)
  %281 = load i8*, i8** %10, align 8
  %282 = load i32, i32* %17, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i8, i8* %281, i64 %283
  %285 = load i8*, i8** %7, align 8
  %286 = load i32, i32* %16, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i8, i8* %285, i64 %287
  %289 = load i32, i32* %11, align 4
  %290 = load i32, i32* %16, align 4
  %291 = sub nsw i32 %289, %290
  %292 = call i32 @memcpy(i8* %284, i8* %288, i32 %291)
  %293 = load i32, i32* %11, align 4
  %294 = load i32, i32* %16, align 4
  %295 = sub nsw i32 %293, %294
  %296 = load i32, i32* %17, align 4
  %297 = add nsw i32 %296, %295
  store i32 %297, i32* %17, align 4
  %298 = load i32, i32* %17, align 4
  %299 = load i32, i32* %14, align 4
  %300 = icmp sle i32 %298, %299
  %301 = zext i1 %300 to i32
  %302 = call i32 @assert(i32 %301)
  %303 = load i8*, i8** %10, align 8
  %304 = load i32, i32* %17, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i8, i8* %303, i64 %305
  store i8 0, i8* %306, align 1
  %307 = load i32*, i32** %4, align 8
  %308 = load i8*, i8** %10, align 8
  %309 = load i32, i32* %17, align 4
  %310 = call i32 @sqlite3_result_text(i32* %307, i8* %308, i32 %309, i32 (i8*)* @sqlite3_free)
  br label %311

311:                                              ; preds = %270, %244, %219, %137, %111, %78, %68, %35
  ret void
}

declare dso_local %struct.TYPE_3__* @sqlite3_context_db_handle(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @UNUSED_PARAMETER(i32) #1

declare dso_local i8* @sqlite3_value_text(i32*) #1

declare dso_local i32 @sqlite3_value_bytes(i32*) #1

declare dso_local i64 @sqlite3_value_type(i32*) #1

declare dso_local i32 @sqlite3_result_value(i32*, i32*) #1

declare dso_local i8* @contextMalloc(i32*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @sqlite3_result_error_toobig(i32*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i8* @sqlite3_realloc64(i8*, i32) #1

declare dso_local i32 @sqlite3_result_error_nomem(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @sqlite3_result_text(i32*, i8*, i32, i32 (i8*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
