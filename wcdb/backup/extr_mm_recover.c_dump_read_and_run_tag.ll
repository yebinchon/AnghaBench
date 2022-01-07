; ModuleID = '/home/carl/AnghaBench/wcdb/backup/extr_mm_recover.c_dump_read_and_run_tag.c'
source_filename = "/home/carl/AnghaBench/wcdb/backup/extr_mm_recover.c_dump_read_and_run_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, i32, i32, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%union.anon = type { double }

@MMBAK_RET_OK = common dso_local global i32 0, align 4
@MMBAK_RET_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Internal error.\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@MMBAK_RET_CANCELED = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"COMMIT; BEGIN;\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Read varint failed.\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Unrecognized tag: %d\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"(FINALIZE)\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Fatal Offset [in: %lu, out: %lu]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @dump_read_and_run_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_read_and_run_tag(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca [8192 x i8], align 16
  %16 = alloca %union.anon, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i32* null, i32** %12, align 8
  store i8* null, i8** %14, align 8
  br label %17

17:                                               ; preds = %634, %2
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  %22 = xor i1 %21, true
  br i1 %22, label %23, label %635

23:                                               ; preds = %17
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = call i32 (%struct.TYPE_7__*, ...) @dump_read_stream(%struct.TYPE_7__* %24, i32* %7, i32 1)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @MMBAK_RET_OK, align 4
  store i32 %29, i32* %3, align 4
  br label %670

30:                                               ; preds = %23
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 1
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @MMBAK_RET_FAILED, align 4
  store i32 %34, i32* %3, align 4
  br label %670

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %7, align 4
  switch i32 %37, label %631 [
    i32 130, label %38
    i32 129, label %83
    i32 128, label %168
  ]

38:                                               ; preds = %36
  %39 = load i8*, i8** %10, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @CUSTOM_FAIL(i32 %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %38
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %46 = call i32 (%struct.TYPE_7__*, ...) @dump_read_stream(%struct.TYPE_7__* %45, i32* %9, i32 2)
  store i32 %46, i32* %6, align 4
  %47 = icmp ne i32 %46, 2
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @READ_STREAM_FAIL(i32 %49, i32 2, i32 %50)
  br label %52

52:                                               ; preds = %48, %44
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  %55 = mul nsw i32 %54, 65536
  %56 = call i64 @malloc(i32 %55)
  %57 = inttoptr i64 %56 to i8*
  store i8* %57, i8** %10, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %66, label %60

60:                                               ; preds = %52
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  %64 = mul nsw i32 %63, 65536
  %65 = call i32 @MEMORY_ALLOC_FAIL(i32 %61, i32 %64)
  br label %66

66:                                               ; preds = %60, %52
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = load i32, i32* %9, align 4
  %70 = mul nsw i32 %69, 65536
  %71 = call i32 (%struct.TYPE_7__*, ...) @dump_read_stream(%struct.TYPE_7__* %67, i8* %68, i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %9, align 4
  %73 = mul nsw i32 %72, 65536
  %74 = icmp ne i32 %71, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %66
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %9, align 4
  %78 = mul nsw i32 %77, 65536
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @READ_STREAM_FAIL(i32 %76, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %75, %66
  %82 = load i8*, i8** %10, align 8
  store i8* %82, i8** %11, align 8
  br label %634

83:                                               ; preds = %36
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %85 = call i32 (%struct.TYPE_7__*, ...) @dump_read_stream(%struct.TYPE_7__* %84, i32* %9, i32 2)
  store i32 %85, i32* %6, align 4
  %86 = icmp ne i32 %85, 2
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @READ_STREAM_FAIL(i32 %88, i32 2, i32 %89)
  br label %91

91:                                               ; preds = %87, %83
  %92 = load i8*, i8** %11, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %115, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = icmp ult i64 %96, 8192
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = getelementptr inbounds [8192 x i8], [8192 x i8]* %15, i64 0, i64 0
  store i8* %99, i8** %10, align 8
  br label %113

100:                                              ; preds = %94
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  %103 = call i64 @malloc(i32 %102)
  %104 = inttoptr i64 %103 to i8*
  store i8* %104, i8** %10, align 8
  %105 = load i8*, i8** %10, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %112, label %107

107:                                              ; preds = %100
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  %111 = call i32 @MEMORY_ALLOC_FAIL(i32 %108, i32 %110)
  br label %112

112:                                              ; preds = %107, %100
  br label %113

113:                                              ; preds = %112, %98
  %114 = load i8*, i8** %10, align 8
  store i8* %114, i8** %11, align 8
  br label %115

115:                                              ; preds = %113, %91
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %117 = load i8*, i8** %11, align 8
  %118 = load i32, i32* %9, align 4
  %119 = call i32 (%struct.TYPE_7__*, ...) @dump_read_stream(%struct.TYPE_7__* %116, i8* %117, i32 %118)
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %115
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @READ_STREAM_FAIL(i32 %123, i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %122, %115
  %128 = load i8*, i8** %11, align 8
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  store i8 0, i8* %131, align 1
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load i8*, i8** %10, align 8
  %136 = call i32 @sqlite3_exec(i32 %134, i8* %135, i32 0, i32 0, i8** %14)
  store i32 %136, i32* %6, align 4
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* @SQLITE_OK, align 4
  %139 = icmp ne i32 %137, %138
  br i1 %139, label %140, label %155

140:                                              ; preds = %127
  %141 = load i32, i32* %7, align 4
  %142 = load i8*, i8** %10, align 8
  %143 = load i8*, i8** %14, align 8
  %144 = call i32 @SQLITE_FAIL_ERRMSG_WARN(i32 %141, i8* %142, i8* %143)
  %145 = load i32, i32* %5, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %140
  br label %637

148:                                              ; preds = %140
  %149 = load i8*, i8** %14, align 8
  %150 = call i32 @sqlite3_free(i8* %149)
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %152, align 8
  br label %160

155:                                              ; preds = %127
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 8
  br label %160

160:                                              ; preds = %155, %148
  %161 = load i8*, i8** %10, align 8
  %162 = getelementptr inbounds [8192 x i8], [8192 x i8]* %15, i64 0, i64 0
  %163 = icmp ne i8* %161, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %160
  %165 = load i8*, i8** %10, align 8
  %166 = call i32 @free(i8* %165)
  br label %167

167:                                              ; preds = %164, %160
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  br label %634

168:                                              ; preds = %36
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %170 = call i32 (%struct.TYPE_7__*, ...) @dump_read_stream(%struct.TYPE_7__* %169, i32* %9, i32 2)
  store i32 %170, i32* %6, align 4
  %171 = icmp ne i32 %170, 2
  br i1 %171, label %172, label %176

172:                                              ; preds = %168
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* %6, align 4
  %175 = call i32 @READ_STREAM_FAIL(i32 %173, i32 2, i32 %174)
  br label %176

176:                                              ; preds = %172, %168
  %177 = load i8*, i8** %11, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %200, label %179

179:                                              ; preds = %176
  %180 = load i32, i32* %9, align 4
  %181 = sext i32 %180 to i64
  %182 = icmp ult i64 %181, 8192
  br i1 %182, label %183, label %185

183:                                              ; preds = %179
  %184 = getelementptr inbounds [8192 x i8], [8192 x i8]* %15, i64 0, i64 0
  store i8* %184, i8** %10, align 8
  br label %198

185:                                              ; preds = %179
  %186 = load i32, i32* %9, align 4
  %187 = add nsw i32 %186, 1
  %188 = call i64 @malloc(i32 %187)
  %189 = inttoptr i64 %188 to i8*
  store i8* %189, i8** %10, align 8
  %190 = load i8*, i8** %10, align 8
  %191 = icmp ne i8* %190, null
  br i1 %191, label %197, label %192

192:                                              ; preds = %185
  %193 = load i32, i32* %7, align 4
  %194 = load i32, i32* %9, align 4
  %195 = add nsw i32 %194, 1
  %196 = call i32 @MEMORY_ALLOC_FAIL(i32 %193, i32 %195)
  br label %197

197:                                              ; preds = %192, %185
  br label %198

198:                                              ; preds = %197, %183
  %199 = load i8*, i8** %10, align 8
  store i8* %199, i8** %11, align 8
  br label %200

200:                                              ; preds = %198, %176
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %202 = load i8*, i8** %11, align 8
  %203 = load i32, i32* %9, align 4
  %204 = call i32 (%struct.TYPE_7__*, ...) @dump_read_stream(%struct.TYPE_7__* %201, i8* %202, i32 %203)
  store i32 %204, i32* %6, align 4
  %205 = load i32, i32* %9, align 4
  %206 = icmp ne i32 %204, %205
  br i1 %206, label %207, label %212

207:                                              ; preds = %200
  %208 = load i32, i32* %7, align 4
  %209 = load i32, i32* %9, align 4
  %210 = load i32, i32* %6, align 4
  %211 = call i32 @READ_STREAM_FAIL(i32 %208, i32 %209, i32 %210)
  br label %212

212:                                              ; preds = %207, %200
  %213 = load i8*, i8** %11, align 8
  %214 = load i32, i32* %9, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8, i8* %213, i64 %215
  store i8 0, i8* %216, align 1
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = load i8*, i8** %10, align 8
  %221 = load i8*, i8** %11, align 8
  %222 = load i8*, i8** %10, align 8
  %223 = ptrtoint i8* %221 to i64
  %224 = ptrtoint i8* %222 to i64
  %225 = sub i64 %223, %224
  %226 = load i32, i32* %9, align 4
  %227 = sext i32 %226 to i64
  %228 = add nsw i64 %225, %227
  %229 = trunc i64 %228 to i32
  %230 = call i32 @sqlite3_prepare_v2(i32 %219, i8* %220, i32 %229, i32** %12, i32* null)
  store i32 %230, i32* %6, align 4
  %231 = load i32, i32* %6, align 4
  %232 = load i32, i32* @SQLITE_OK, align 4
  %233 = icmp ne i32 %231, %232
  br i1 %233, label %234, label %245

234:                                              ; preds = %212
  %235 = load i32, i32* %7, align 4
  %236 = load i8*, i8** %10, align 8
  %237 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @SQLITE_FAIL_GETMSG_WARN(i32 %235, i8* %236, i32 %239)
  %241 = load i32, i32* %5, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %234
  br label %637

244:                                              ; preds = %234
  store i32* null, i32** %12, align 8
  br label %245

245:                                              ; preds = %244, %212
  %246 = load i8*, i8** %10, align 8
  %247 = getelementptr inbounds [8192 x i8], [8192 x i8]* %15, i64 0, i64 0
  %248 = icmp ne i8* %246, %247
  br i1 %248, label %249, label %252

249:                                              ; preds = %245
  %250 = load i8*, i8** %10, align 8
  %251 = call i32 @free(i8* %250)
  br label %252

252:                                              ; preds = %249, %245
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i32 0, i32* %13, align 4
  br label %253

253:                                              ; preds = %613, %252
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 4
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %276

258:                                              ; preds = %253
  %259 = load i8*, i8** %10, align 8
  %260 = icmp ne i8* %259, null
  br i1 %260, label %261, label %268

261:                                              ; preds = %258
  %262 = load i8*, i8** %10, align 8
  %263 = getelementptr inbounds [8192 x i8], [8192 x i8]* %15, i64 0, i64 0
  %264 = icmp ne i8* %262, %263
  br i1 %264, label %265, label %268

265:                                              ; preds = %261
  %266 = load i8*, i8** %10, align 8
  %267 = call i32 @free(i8* %266)
  br label %268

268:                                              ; preds = %265, %261, %258
  %269 = load i32*, i32** %12, align 8
  %270 = icmp ne i32* %269, null
  br i1 %270, label %271, label %274

271:                                              ; preds = %268
  %272 = load i32*, i32** %12, align 8
  %273 = call i32 @sqlite3_finalize(i32* %272)
  br label %274

274:                                              ; preds = %271, %268
  %275 = load i32, i32* @MMBAK_RET_CANCELED, align 4
  store i32 %275, i32* %3, align 4
  br label %670

276:                                              ; preds = %253
  %277 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %278 = call i32 (%struct.TYPE_7__*, ...) @dump_read_stream(%struct.TYPE_7__* %277, i32* %7, i32 1)
  store i32 %278, i32* %6, align 4
  %279 = icmp ne i32 %278, 1
  br i1 %279, label %280, label %284

280:                                              ; preds = %276
  %281 = load i32, i32* %7, align 4
  %282 = load i32, i32* %6, align 4
  %283 = call i32 @READ_STREAM_FAIL(i32 %281, i32 1, i32 %282)
  br label %284

284:                                              ; preds = %280, %276
  %285 = load i32, i32* %7, align 4
  switch i32 %285, label %609 [
    i32 130, label %286
    i32 132, label %331
    i32 131, label %405
    i32 137, label %406
    i32 134, label %415
    i32 133, label %415
    i32 138, label %437
    i32 136, label %456
    i32 140, label %456
    i32 135, label %532
    i32 139, label %532
  ]

286:                                              ; preds = %284
  %287 = load i8*, i8** %10, align 8
  %288 = icmp ne i8* %287, null
  br i1 %288, label %289, label %292

289:                                              ; preds = %286
  %290 = load i32, i32* %7, align 4
  %291 = call i32 @CUSTOM_FAIL(i32 %290, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %292

292:                                              ; preds = %289, %286
  %293 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %294 = call i32 (%struct.TYPE_7__*, ...) @dump_read_stream(%struct.TYPE_7__* %293, i32* %9, i32 2)
  store i32 %294, i32* %6, align 4
  %295 = icmp ne i32 %294, 2
  br i1 %295, label %296, label %300

296:                                              ; preds = %292
  %297 = load i32, i32* %7, align 4
  %298 = load i32, i32* %6, align 4
  %299 = call i32 @READ_STREAM_FAIL(i32 %297, i32 2, i32 %298)
  br label %300

300:                                              ; preds = %296, %292
  %301 = load i32, i32* %9, align 4
  %302 = add nsw i32 %301, 1
  %303 = mul nsw i32 %302, 65536
  %304 = call i64 @malloc(i32 %303)
  %305 = inttoptr i64 %304 to i8*
  store i8* %305, i8** %10, align 8
  %306 = load i8*, i8** %10, align 8
  %307 = icmp ne i8* %306, null
  br i1 %307, label %314, label %308

308:                                              ; preds = %300
  %309 = load i32, i32* %7, align 4
  %310 = load i32, i32* %9, align 4
  %311 = add nsw i32 %310, 1
  %312 = mul nsw i32 %311, 65536
  %313 = call i32 @MEMORY_ALLOC_FAIL(i32 %309, i32 %312)
  br label %314

314:                                              ; preds = %308, %300
  %315 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %316 = load i8*, i8** %10, align 8
  %317 = load i32, i32* %9, align 4
  %318 = mul nsw i32 %317, 65536
  %319 = call i32 (%struct.TYPE_7__*, ...) @dump_read_stream(%struct.TYPE_7__* %315, i8* %316, i32 %318)
  store i32 %319, i32* %6, align 4
  %320 = load i32, i32* %9, align 4
  %321 = mul nsw i32 %320, 65536
  %322 = icmp ne i32 %319, %321
  br i1 %322, label %323, label %329

323:                                              ; preds = %314
  %324 = load i32, i32* %7, align 4
  %325 = load i32, i32* %9, align 4
  %326 = mul nsw i32 %325, 65536
  %327 = load i32, i32* %6, align 4
  %328 = call i32 @READ_STREAM_FAIL(i32 %324, i32 %326, i32 %327)
  br label %329

329:                                              ; preds = %323, %314
  %330 = load i8*, i8** %10, align 8
  store i8* %330, i8** %11, align 8
  br label %612

331:                                              ; preds = %284
  %332 = load i32*, i32** %12, align 8
  %333 = icmp ne i32* %332, null
  br i1 %333, label %339, label %334

334:                                              ; preds = %331
  %335 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %336 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %335, i32 0, i32 3
  %337 = load i32, i32* %336, align 8
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %336, align 8
  br label %404

339:                                              ; preds = %331
  br label %340

340:                                              ; preds = %345, %339
  %341 = load i32*, i32** %12, align 8
  %342 = call i32 @sqlite3_step(i32* %341)
  %343 = load i32, i32* @SQLITE_ROW, align 4
  %344 = icmp eq i32 %342, %343
  br i1 %344, label %345, label %346

345:                                              ; preds = %340
  br label %340

346:                                              ; preds = %340
  %347 = load i32*, i32** %12, align 8
  %348 = call i32 @sqlite3_reset(i32* %347)
  store i32 %348, i32* %6, align 4
  %349 = load i32, i32* %6, align 4
  %350 = load i32, i32* @SQLITE_OK, align 4
  %351 = icmp ne i32 %349, %350
  br i1 %351, label %352, label %368

352:                                              ; preds = %346
  %353 = load i32, i32* %7, align 4
  %354 = load i32*, i32** %12, align 8
  %355 = call i8* @sqlite3_sql(i32* %354)
  %356 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %357 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %356, i32 0, i32 2
  %358 = load i32, i32* %357, align 4
  %359 = call i32 @SQLITE_FAIL_GETMSG_WARN(i32 %353, i8* %355, i32 %358)
  %360 = load i32, i32* %5, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %363

362:                                              ; preds = %352
  br label %637

363:                                              ; preds = %352
  %364 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %365 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %364, i32 0, i32 3
  %366 = load i32, i32* %365, align 8
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %365, align 8
  br label %403

368:                                              ; preds = %346
  %369 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %370 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %370, align 8
  %373 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %374 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = srem i32 %375, 256
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %378, label %402

378:                                              ; preds = %368
  %379 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %380 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %379, i32 0, i32 2
  %381 = load i32, i32* %380, align 4
  %382 = call i32 @sqlite3_exec(i32 %381, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0, i8** %14)
  store i32 %382, i32* %6, align 4
  %383 = load i32, i32* %6, align 4
  %384 = load i32, i32* @SQLITE_OK, align 4
  %385 = icmp ne i32 %383, %384
  br i1 %385, label %386, label %401

386:                                              ; preds = %378
  %387 = load i32, i32* %7, align 4
  %388 = load i8*, i8** %10, align 8
  %389 = load i8*, i8** %14, align 8
  %390 = call i32 @SQLITE_FAIL_ERRMSG_WARN(i32 %387, i8* %388, i8* %389)
  %391 = load i32, i32* %5, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %394

393:                                              ; preds = %386
  br label %637

394:                                              ; preds = %386
  %395 = load i8*, i8** %14, align 8
  %396 = call i32 @sqlite3_free(i8* %395)
  %397 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %398 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %397, i32 0, i32 3
  %399 = load i32, i32* %398, align 8
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %398, align 8
  br label %401

401:                                              ; preds = %394, %378
  br label %402

402:                                              ; preds = %401, %368
  br label %403

403:                                              ; preds = %402, %363
  br label %404

404:                                              ; preds = %403, %334
  store i32 0, i32* %13, align 4
  br label %612

405:                                              ; preds = %284
  br label %612

406:                                              ; preds = %284
  %407 = load i32*, i32** %12, align 8
  %408 = icmp ne i32* %407, null
  br i1 %408, label %409, label %414

409:                                              ; preds = %406
  %410 = load i32*, i32** %12, align 8
  %411 = load i32, i32* %13, align 4
  %412 = add nsw i32 %411, 1
  store i32 %412, i32* %13, align 4
  %413 = call i32 @sqlite3_bind_null(i32* %410, i32 %412)
  br label %414

414:                                              ; preds = %409, %406
  br label %612

415:                                              ; preds = %284, %284
  %416 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %417 = bitcast %union.anon* %16 to i32*
  %418 = load i32, i32* %7, align 4
  %419 = icmp eq i32 %418, 133
  %420 = zext i1 %419 to i32
  %421 = call i32 @dump_read_varint(%struct.TYPE_7__* %416, i32* %417, i32 %420)
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %426

423:                                              ; preds = %415
  %424 = load i32, i32* %7, align 4
  %425 = call i32 @CUSTOM_FAIL(i32 %424, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %426

426:                                              ; preds = %423, %415
  %427 = load i32*, i32** %12, align 8
  %428 = icmp ne i32* %427, null
  br i1 %428, label %429, label %436

429:                                              ; preds = %426
  %430 = load i32*, i32** %12, align 8
  %431 = load i32, i32* %13, align 4
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* %13, align 4
  %433 = bitcast %union.anon* %16 to i32*
  %434 = load i32, i32* %433, align 8
  %435 = call i32 @sqlite3_bind_int64(i32* %430, i32 %432, i32 %434)
  br label %436

436:                                              ; preds = %429, %426
  br label %612

437:                                              ; preds = %284
  %438 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %439 = call i32 (%struct.TYPE_7__*, ...) @dump_read_stream(%struct.TYPE_7__* %438, %union.anon* %16, i32 8)
  store i32 %439, i32* %6, align 4
  %440 = icmp ne i32 %439, 8
  br i1 %440, label %441, label %445

441:                                              ; preds = %437
  %442 = load i32, i32* %7, align 4
  %443 = load i32, i32* %6, align 4
  %444 = call i32 @READ_STREAM_FAIL(i32 %442, i32 8, i32 %443)
  br label %445

445:                                              ; preds = %441, %437
  %446 = load i32*, i32** %12, align 8
  %447 = icmp ne i32* %446, null
  br i1 %447, label %448, label %455

448:                                              ; preds = %445
  %449 = load i32*, i32** %12, align 8
  %450 = load i32, i32* %13, align 4
  %451 = add nsw i32 %450, 1
  store i32 %451, i32* %13, align 4
  %452 = bitcast %union.anon* %16 to double*
  %453 = load double, double* %452, align 8
  %454 = call i32 @sqlite3_bind_double(i32* %449, i32 %451, double %453)
  br label %455

455:                                              ; preds = %448, %445
  br label %612

456:                                              ; preds = %284, %284
  %457 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %458 = call i32 (%struct.TYPE_7__*, ...) @dump_read_stream(%struct.TYPE_7__* %457, i32* %9, i32 2)
  store i32 %458, i32* %6, align 4
  %459 = icmp ne i32 %458, 2
  br i1 %459, label %460, label %464

460:                                              ; preds = %456
  %461 = load i32, i32* %7, align 4
  %462 = load i32, i32* %6, align 4
  %463 = call i32 @READ_STREAM_FAIL(i32 %461, i32 2, i32 %462)
  br label %464

464:                                              ; preds = %460, %456
  %465 = load i8*, i8** %11, align 8
  %466 = icmp ne i8* %465, null
  br i1 %466, label %479, label %467

467:                                              ; preds = %464
  %468 = load i32, i32* %9, align 4
  %469 = call i64 @malloc(i32 %468)
  %470 = inttoptr i64 %469 to i8*
  store i8* %470, i8** %10, align 8
  %471 = load i8*, i8** %10, align 8
  %472 = icmp ne i8* %471, null
  br i1 %472, label %477, label %473

473:                                              ; preds = %467
  %474 = load i32, i32* %7, align 4
  %475 = load i32, i32* %9, align 4
  %476 = call i32 @MEMORY_ALLOC_FAIL(i32 %474, i32 %475)
  br label %477

477:                                              ; preds = %473, %467
  %478 = load i8*, i8** %10, align 8
  store i8* %478, i8** %11, align 8
  br label %479

479:                                              ; preds = %477, %464
  %480 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %481 = load i8*, i8** %11, align 8
  %482 = load i32, i32* %9, align 4
  %483 = call i32 (%struct.TYPE_7__*, ...) @dump_read_stream(%struct.TYPE_7__* %480, i8* %481, i32 %482)
  store i32 %483, i32* %6, align 4
  %484 = load i32, i32* %9, align 4
  %485 = icmp ne i32 %483, %484
  br i1 %485, label %486, label %491

486:                                              ; preds = %479
  %487 = load i32, i32* %7, align 4
  %488 = load i32, i32* %9, align 4
  %489 = load i32, i32* %6, align 4
  %490 = call i32 @READ_STREAM_FAIL(i32 %487, i32 %488, i32 %489)
  br label %491

491:                                              ; preds = %486, %479
  %492 = load i32*, i32** %12, align 8
  %493 = icmp ne i32* %492, null
  br i1 %493, label %494, label %528

494:                                              ; preds = %491
  %495 = load i32, i32* %7, align 4
  %496 = icmp eq i32 %495, 136
  br i1 %496, label %497, label %512

497:                                              ; preds = %494
  %498 = load i32*, i32** %12, align 8
  %499 = load i32, i32* %13, align 4
  %500 = add nsw i32 %499, 1
  store i32 %500, i32* %13, align 4
  %501 = load i8*, i8** %10, align 8
  %502 = load i8*, i8** %11, align 8
  %503 = load i8*, i8** %10, align 8
  %504 = ptrtoint i8* %502 to i64
  %505 = ptrtoint i8* %503 to i64
  %506 = sub i64 %504, %505
  %507 = load i32, i32* %9, align 4
  %508 = sext i32 %507 to i64
  %509 = add nsw i64 %506, %508
  %510 = inttoptr i64 %509 to i8*
  %511 = call i32 @sqlite3_bind_text(i32* %498, i32 %500, i8* %501, i8* %510, i32 (i8*)* @free)
  br label %527

512:                                              ; preds = %494
  %513 = load i32*, i32** %12, align 8
  %514 = load i32, i32* %13, align 4
  %515 = add nsw i32 %514, 1
  store i32 %515, i32* %13, align 4
  %516 = load i8*, i8** %10, align 8
  %517 = load i8*, i8** %11, align 8
  %518 = load i8*, i8** %10, align 8
  %519 = ptrtoint i8* %517 to i64
  %520 = ptrtoint i8* %518 to i64
  %521 = sub i64 %519, %520
  %522 = load i32, i32* %9, align 4
  %523 = sext i32 %522 to i64
  %524 = add nsw i64 %521, %523
  %525 = inttoptr i64 %524 to i8*
  %526 = call i32 @sqlite3_bind_blob(i32* %513, i32 %515, i8* %516, i8* %525, i32 (i8*)* @free)
  br label %527

527:                                              ; preds = %512, %497
  br label %531

528:                                              ; preds = %491
  %529 = load i8*, i8** %10, align 8
  %530 = call i32 @free(i8* %529)
  br label %531

531:                                              ; preds = %528, %527
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  br label %612

532:                                              ; preds = %284, %284
  %533 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %534 = call i32 (%struct.TYPE_7__*, ...) @dump_read_stream(%struct.TYPE_7__* %533, i32* %8, i32 1)
  store i32 %534, i32* %6, align 4
  %535 = icmp ne i32 %534, 1
  br i1 %535, label %536, label %540

536:                                              ; preds = %532
  %537 = load i32, i32* %7, align 4
  %538 = load i32, i32* %6, align 4
  %539 = call i32 @READ_STREAM_FAIL(i32 %537, i32 1, i32 %538)
  br label %540

540:                                              ; preds = %536, %532
  %541 = load i32, i32* %8, align 4
  store i32 %541, i32* %9, align 4
  %542 = load i8*, i8** %11, align 8
  %543 = icmp ne i8* %542, null
  br i1 %543, label %556, label %544

544:                                              ; preds = %540
  %545 = load i32, i32* %9, align 4
  %546 = call i64 @malloc(i32 %545)
  %547 = inttoptr i64 %546 to i8*
  store i8* %547, i8** %10, align 8
  %548 = load i8*, i8** %10, align 8
  %549 = icmp ne i8* %548, null
  br i1 %549, label %554, label %550

550:                                              ; preds = %544
  %551 = load i32, i32* %7, align 4
  %552 = load i32, i32* %9, align 4
  %553 = call i32 @MEMORY_ALLOC_FAIL(i32 %551, i32 %552)
  br label %554

554:                                              ; preds = %550, %544
  %555 = load i8*, i8** %10, align 8
  store i8* %555, i8** %11, align 8
  br label %556

556:                                              ; preds = %554, %540
  %557 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %558 = load i8*, i8** %11, align 8
  %559 = load i32, i32* %9, align 4
  %560 = call i32 (%struct.TYPE_7__*, ...) @dump_read_stream(%struct.TYPE_7__* %557, i8* %558, i32 %559)
  store i32 %560, i32* %6, align 4
  %561 = load i32, i32* %9, align 4
  %562 = icmp ne i32 %560, %561
  br i1 %562, label %563, label %568

563:                                              ; preds = %556
  %564 = load i32, i32* %7, align 4
  %565 = load i32, i32* %9, align 4
  %566 = load i32, i32* %6, align 4
  %567 = call i32 @READ_STREAM_FAIL(i32 %564, i32 %565, i32 %566)
  br label %568

568:                                              ; preds = %563, %556
  %569 = load i32*, i32** %12, align 8
  %570 = icmp ne i32* %569, null
  br i1 %570, label %571, label %605

571:                                              ; preds = %568
  %572 = load i32, i32* %7, align 4
  %573 = icmp eq i32 %572, 135
  br i1 %573, label %574, label %589

574:                                              ; preds = %571
  %575 = load i32*, i32** %12, align 8
  %576 = load i32, i32* %13, align 4
  %577 = add nsw i32 %576, 1
  store i32 %577, i32* %13, align 4
  %578 = load i8*, i8** %10, align 8
  %579 = load i8*, i8** %11, align 8
  %580 = load i8*, i8** %10, align 8
  %581 = ptrtoint i8* %579 to i64
  %582 = ptrtoint i8* %580 to i64
  %583 = sub i64 %581, %582
  %584 = load i32, i32* %9, align 4
  %585 = sext i32 %584 to i64
  %586 = add nsw i64 %583, %585
  %587 = inttoptr i64 %586 to i8*
  %588 = call i32 @sqlite3_bind_text(i32* %575, i32 %577, i8* %578, i8* %587, i32 (i8*)* @free)
  br label %604

589:                                              ; preds = %571
  %590 = load i32*, i32** %12, align 8
  %591 = load i32, i32* %13, align 4
  %592 = add nsw i32 %591, 1
  store i32 %592, i32* %13, align 4
  %593 = load i8*, i8** %10, align 8
  %594 = load i8*, i8** %11, align 8
  %595 = load i8*, i8** %10, align 8
  %596 = ptrtoint i8* %594 to i64
  %597 = ptrtoint i8* %595 to i64
  %598 = sub i64 %596, %597
  %599 = load i32, i32* %9, align 4
  %600 = sext i32 %599 to i64
  %601 = add nsw i64 %598, %600
  %602 = inttoptr i64 %601 to i8*
  %603 = call i32 @sqlite3_bind_blob(i32* %590, i32 %592, i8* %593, i8* %602, i32 (i8*)* @free)
  br label %604

604:                                              ; preds = %589, %574
  br label %608

605:                                              ; preds = %568
  %606 = load i8*, i8** %10, align 8
  %607 = call i32 @free(i8* %606)
  br label %608

608:                                              ; preds = %605, %604
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  br label %612

609:                                              ; preds = %284
  %610 = load i32, i32* %7, align 4
  %611 = call i32 @LOG_AND_FAIL(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %610)
  br label %612

612:                                              ; preds = %609, %608, %531, %455, %436, %414, %405, %404, %329
  br label %613

613:                                              ; preds = %612
  %614 = load i32, i32* %7, align 4
  %615 = icmp ne i32 %614, 131
  br i1 %615, label %253, label %616

616:                                              ; preds = %613
  %617 = load i32*, i32** %12, align 8
  %618 = icmp ne i32* %617, null
  br i1 %618, label %619, label %630

619:                                              ; preds = %616
  %620 = load i32*, i32** %12, align 8
  %621 = call i32 @sqlite3_finalize(i32* %620)
  %622 = load i32, i32* @SQLITE_OK, align 4
  %623 = icmp ne i32 %621, %622
  br i1 %623, label %624, label %630

624:                                              ; preds = %619
  %625 = load i32, i32* %7, align 4
  %626 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %627 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %626, i32 0, i32 2
  %628 = load i32, i32* %627, align 4
  %629 = call i32 @SQLITE_FAIL_GETMSG(i32 %625, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %628)
  br label %630

630:                                              ; preds = %624, %619, %616
  br label %634

631:                                              ; preds = %36
  %632 = load i32, i32* %7, align 4
  %633 = call i32 @LOG_AND_FAIL(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %632)
  br label %634

634:                                              ; preds = %631, %630, %167, %81
  br label %17

635:                                              ; preds = %17
  %636 = load i32, i32* @MMBAK_RET_CANCELED, align 4
  store i32 %636, i32* %3, align 4
  br label %670

637:                                              ; preds = %393, %362, %243, %147
  %638 = load i8*, i8** %10, align 8
  %639 = icmp ne i8* %638, null
  br i1 %639, label %640, label %647

640:                                              ; preds = %637
  %641 = load i8*, i8** %10, align 8
  %642 = getelementptr inbounds [8192 x i8], [8192 x i8]* %15, i64 0, i64 0
  %643 = icmp ne i8* %641, %642
  br i1 %643, label %644, label %647

644:                                              ; preds = %640
  %645 = load i8*, i8** %10, align 8
  %646 = call i32 @free(i8* %645)
  br label %647

647:                                              ; preds = %644, %640, %637
  %648 = load i8*, i8** %14, align 8
  %649 = icmp ne i8* %648, null
  br i1 %649, label %650, label %653

650:                                              ; preds = %647
  %651 = load i8*, i8** %14, align 8
  %652 = call i32 @sqlite3_free(i8* %651)
  br label %653

653:                                              ; preds = %650, %647
  %654 = load i32*, i32** %12, align 8
  %655 = icmp ne i32* %654, null
  br i1 %655, label %656, label %659

656:                                              ; preds = %653
  %657 = load i32*, i32** %12, align 8
  %658 = call i32 @sqlite3_finalize(i32* %657)
  br label %659

659:                                              ; preds = %656, %653
  %660 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %661 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %660, i32 0, i32 1
  %662 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %661, i32 0, i32 1
  %663 = load i32, i32* %662, align 4
  %664 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %665 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %664, i32 0, i32 1
  %666 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %665, i32 0, i32 0
  %667 = load i32, i32* %666, align 4
  %668 = call i32 @LOGE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %663, i32 %667)
  %669 = load i32, i32* @MMBAK_RET_FAILED, align 4
  store i32 %669, i32* %3, align 4
  br label %670

670:                                              ; preds = %659, %635, %274, %33, %28
  %671 = load i32, i32* %3, align 4
  ret i32 %671
}

declare dso_local i32 @dump_read_stream(%struct.TYPE_7__*, ...) #1

declare dso_local i32 @CUSTOM_FAIL(i32, i8*) #1

declare dso_local i32 @READ_STREAM_FAIL(i32, i32, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @MEMORY_ALLOC_FAIL(i32, i32) #1

declare dso_local i32 @sqlite3_exec(i32, i8*, i32, i32, i8**) #1

declare dso_local i32 @SQLITE_FAIL_ERRMSG_WARN(i32, i8*, i8*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @sqlite3_prepare_v2(i32, i8*, i32, i32**, i32*) #1

declare dso_local i32 @SQLITE_FAIL_GETMSG_WARN(i32, i8*, i32) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_reset(i32*) #1

declare dso_local i8* @sqlite3_sql(i32*) #1

declare dso_local i32 @sqlite3_bind_null(i32*, i32) #1

declare dso_local i32 @dump_read_varint(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @sqlite3_bind_int64(i32*, i32, i32) #1

declare dso_local i32 @sqlite3_bind_double(i32*, i32, double) #1

declare dso_local i32 @sqlite3_bind_text(i32*, i32, i8*, i8*, i32 (i8*)*) #1

declare dso_local i32 @sqlite3_bind_blob(i32*, i32, i8*, i8*, i32 (i8*)*) #1

declare dso_local i32 @LOG_AND_FAIL(i8*, i32) #1

declare dso_local i32 @SQLITE_FAIL_GETMSG(i32, i8*, i32) #1

declare dso_local i32 @LOGE(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
