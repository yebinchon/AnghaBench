; ModuleID = '/home/carl/AnghaBench/twemproxy/src/proto/extr_nc_redis.c_redis_fragment_argx.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/proto/extr_nc_redis.c_redis_fragment_argx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg = type { i32, i64, i64, %struct.msg*, i32, %struct.msg**, i32, i32, i32, i32, i32 }
%struct.msg_tqh = type { i32 }
%struct.mbuf = type { i8*, i8* }
%struct.keypos = type { i64, i64 }

@NC_ENOMEM = common dso_local global i32 0, align 4
@NC_OK = common dso_local global i32 0, align 4
@MSG_REQ_REDIS_MGET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"*%d\0D\0A$4\0D\0Amget\0D\0A\00", align 1
@MSG_REQ_REDIS_DEL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"*%d\0D\0A$3\0D\0Adel\0D\0A\00", align 1
@MSG_REQ_REDIS_MSET = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"*%d\0D\0A$4\0D\0Amset\0D\0A\00", align 1
@m_tqe = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msg*, i32, %struct.msg_tqh*, i32)* @redis_fragment_argx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redis_fragment_argx(%struct.msg* %0, i32 %1, %struct.msg_tqh* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.msg_tqh*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca %struct.msg**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.msg*, align 8
  %15 = alloca %struct.keypos*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.msg*, align 8
  store %struct.msg* %0, %struct.msg** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.msg_tqh* %2, %struct.msg_tqh** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.msg*, %struct.msg** %6, align 8
  %19 = getelementptr inbounds %struct.msg, %struct.msg* %18, i32 0, i32 9
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @array_n(i32 %20)
  %22 = load %struct.msg*, %struct.msg** %6, align 8
  %23 = getelementptr inbounds %struct.msg, %struct.msg* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %24, 1
  %26 = load i32, i32* %9, align 4
  %27 = sdiv i32 %25, %26
  %28 = icmp eq i32 %21, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @ASSERT(i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 8
  %34 = trunc i64 %33 to i32
  %35 = call %struct.msg** @nc_zalloc(i32 %34)
  store %struct.msg** %35, %struct.msg*** %11, align 8
  %36 = load %struct.msg**, %struct.msg*** %11, align 8
  %37 = icmp eq %struct.msg** %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %4
  %39 = load i32, i32* @NC_ENOMEM, align 4
  store i32 %39, i32* %5, align 4
  br label %329

40:                                               ; preds = %4
  %41 = load %struct.msg*, %struct.msg** %6, align 8
  %42 = getelementptr inbounds %struct.msg, %struct.msg* %41, i32 0, i32 5
  %43 = load %struct.msg**, %struct.msg*** %42, align 8
  %44 = icmp eq %struct.msg** %43, null
  %45 = zext i1 %44 to i32
  %46 = call i32 @ASSERT(i32 %45)
  %47 = load %struct.msg*, %struct.msg** %6, align 8
  %48 = getelementptr inbounds %struct.msg, %struct.msg* %47, i32 0, i32 9
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @array_n(i32 %49)
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 8
  %53 = trunc i64 %52 to i32
  %54 = call %struct.msg** @nc_alloc(i32 %53)
  %55 = load %struct.msg*, %struct.msg** %6, align 8
  %56 = getelementptr inbounds %struct.msg, %struct.msg* %55, i32 0, i32 5
  store %struct.msg** %54, %struct.msg*** %56, align 8
  %57 = load %struct.msg*, %struct.msg** %6, align 8
  %58 = getelementptr inbounds %struct.msg, %struct.msg* %57, i32 0, i32 5
  %59 = load %struct.msg**, %struct.msg*** %58, align 8
  %60 = icmp eq %struct.msg** %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %40
  %62 = load %struct.msg**, %struct.msg*** %11, align 8
  %63 = call i32 @nc_free(%struct.msg** %62)
  %64 = load i32, i32* @NC_ENOMEM, align 4
  store i32 %64, i32* %5, align 4
  br label %329

65:                                               ; preds = %40
  %66 = load %struct.msg*, %struct.msg** %6, align 8
  %67 = getelementptr inbounds %struct.msg, %struct.msg* %66, i32 0, i32 10
  %68 = call %struct.mbuf* @STAILQ_FIRST(i32* %67)
  store %struct.mbuf* %68, %struct.mbuf** %10, align 8
  %69 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %70 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %73 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  store i32 0, i32* %12, align 4
  br label %74

74:                                               ; preds = %95, %65
  %75 = load i32, i32* %12, align 4
  %76 = icmp slt i32 %75, 3
  br i1 %76, label %77, label %98

77:                                               ; preds = %74
  br label %78

78:                                               ; preds = %85, %77
  %79 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %80 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 10
  br i1 %84, label %85, label %90

85:                                               ; preds = %78
  %86 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %87 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %87, align 8
  br label %78

90:                                               ; preds = %78
  %91 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %92 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %92, align 8
  br label %95

95:                                               ; preds = %90
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %12, align 4
  br label %74

98:                                               ; preds = %74
  %99 = call i32 (...) @msg_gen_frag_id()
  %100 = load %struct.msg*, %struct.msg** %6, align 8
  %101 = getelementptr inbounds %struct.msg, %struct.msg* %100, i32 0, i32 4
  store i32 %99, i32* %101, align 8
  %102 = load %struct.msg*, %struct.msg** %6, align 8
  %103 = getelementptr inbounds %struct.msg, %struct.msg* %102, i32 0, i32 2
  store i64 0, i64* %103, align 8
  %104 = load %struct.msg*, %struct.msg** %6, align 8
  %105 = load %struct.msg*, %struct.msg** %6, align 8
  %106 = getelementptr inbounds %struct.msg, %struct.msg* %105, i32 0, i32 3
  store %struct.msg* %104, %struct.msg** %106, align 8
  store i32 0, i32* %12, align 4
  br label %107

107:                                              ; preds = %230, %98
  %108 = load i32, i32* %12, align 4
  %109 = load %struct.msg*, %struct.msg** %6, align 8
  %110 = getelementptr inbounds %struct.msg, %struct.msg* %109, i32 0, i32 9
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @array_n(i32 %111)
  %113 = icmp slt i32 %108, %112
  br i1 %113, label %114, label %233

114:                                              ; preds = %107
  %115 = load %struct.msg*, %struct.msg** %6, align 8
  %116 = getelementptr inbounds %struct.msg, %struct.msg* %115, i32 0, i32 9
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %12, align 4
  %119 = call %struct.keypos* @array_get(i32 %117, i32 %118)
  store %struct.keypos* %119, %struct.keypos** %15, align 8
  %120 = load %struct.msg*, %struct.msg** %6, align 8
  %121 = load %struct.keypos*, %struct.keypos** %15, align 8
  %122 = getelementptr inbounds %struct.keypos, %struct.keypos* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.keypos*, %struct.keypos** %15, align 8
  %125 = getelementptr inbounds %struct.keypos, %struct.keypos* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.keypos*, %struct.keypos** %15, align 8
  %128 = getelementptr inbounds %struct.keypos, %struct.keypos* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = sub nsw i64 %126, %129
  %131 = call i32 @msg_backend_idx(%struct.msg* %120, i64 %123, i64 %130)
  store i32 %131, i32* %16, align 4
  %132 = load %struct.msg**, %struct.msg*** %11, align 8
  %133 = load i32, i32* %16, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.msg*, %struct.msg** %132, i64 %134
  %136 = load %struct.msg*, %struct.msg** %135, align 8
  %137 = icmp eq %struct.msg* %136, null
  br i1 %137, label %138, label %164

138:                                              ; preds = %114
  %139 = load %struct.msg*, %struct.msg** %6, align 8
  %140 = getelementptr inbounds %struct.msg, %struct.msg* %139, i32 0, i32 8
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.msg*, %struct.msg** %6, align 8
  %143 = getelementptr inbounds %struct.msg, %struct.msg* %142, i32 0, i32 7
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.msg*, %struct.msg** %6, align 8
  %146 = getelementptr inbounds %struct.msg, %struct.msg* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 8
  %148 = call %struct.msg* @msg_get(i32 %141, i32 %144, i32 %147)
  %149 = load %struct.msg**, %struct.msg*** %11, align 8
  %150 = load i32, i32* %16, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.msg*, %struct.msg** %149, i64 %151
  store %struct.msg* %148, %struct.msg** %152, align 8
  %153 = load %struct.msg**, %struct.msg*** %11, align 8
  %154 = load i32, i32* %16, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.msg*, %struct.msg** %153, i64 %155
  %157 = load %struct.msg*, %struct.msg** %156, align 8
  %158 = icmp eq %struct.msg* %157, null
  br i1 %158, label %159, label %163

159:                                              ; preds = %138
  %160 = load %struct.msg**, %struct.msg*** %11, align 8
  %161 = call i32 @nc_free(%struct.msg** %160)
  %162 = load i32, i32* @NC_ENOMEM, align 4
  store i32 %162, i32* %5, align 4
  br label %329

163:                                              ; preds = %138
  br label %164

164:                                              ; preds = %163, %114
  %165 = load %struct.msg**, %struct.msg*** %11, align 8
  %166 = load i32, i32* %16, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.msg*, %struct.msg** %165, i64 %167
  %169 = load %struct.msg*, %struct.msg** %168, align 8
  store %struct.msg* %169, %struct.msg** %14, align 8
  %170 = load %struct.msg*, %struct.msg** %6, align 8
  %171 = getelementptr inbounds %struct.msg, %struct.msg* %170, i32 0, i32 5
  %172 = load %struct.msg**, %struct.msg*** %171, align 8
  %173 = load i32, i32* %12, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.msg*, %struct.msg** %172, i64 %174
  store %struct.msg* %169, %struct.msg** %175, align 8
  %176 = load %struct.msg*, %struct.msg** %14, align 8
  %177 = getelementptr inbounds %struct.msg, %struct.msg* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %177, align 8
  %180 = load %struct.msg*, %struct.msg** %14, align 8
  %181 = load %struct.keypos*, %struct.keypos** %15, align 8
  %182 = getelementptr inbounds %struct.keypos, %struct.keypos* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.keypos*, %struct.keypos** %15, align 8
  %185 = getelementptr inbounds %struct.keypos, %struct.keypos* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.keypos*, %struct.keypos** %15, align 8
  %188 = getelementptr inbounds %struct.keypos, %struct.keypos* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = sub nsw i64 %186, %189
  %191 = call i32 @redis_append_key(%struct.msg* %180, i64 %183, i64 %190)
  store i32 %191, i32* %13, align 4
  %192 = load i32, i32* %13, align 4
  %193 = load i32, i32* @NC_OK, align 4
  %194 = icmp ne i32 %192, %193
  br i1 %194, label %195, label %199

195:                                              ; preds = %164
  %196 = load %struct.msg**, %struct.msg*** %11, align 8
  %197 = call i32 @nc_free(%struct.msg** %196)
  %198 = load i32, i32* %13, align 4
  store i32 %198, i32* %5, align 4
  br label %329

199:                                              ; preds = %164
  %200 = load i32, i32* %9, align 4
  %201 = icmp eq i32 %200, 1
  br i1 %201, label %202, label %203

202:                                              ; preds = %199
  br label %230

203:                                              ; preds = %199
  %204 = load %struct.msg*, %struct.msg** %6, align 8
  %205 = call i32 @redis_copy_bulk(%struct.msg* null, %struct.msg* %204)
  store i32 %205, i32* %13, align 4
  %206 = load i32, i32* %13, align 4
  %207 = load i32, i32* @NC_OK, align 4
  %208 = icmp ne i32 %206, %207
  br i1 %208, label %209, label %213

209:                                              ; preds = %203
  %210 = load %struct.msg**, %struct.msg*** %11, align 8
  %211 = call i32 @nc_free(%struct.msg** %210)
  %212 = load i32, i32* %13, align 4
  store i32 %212, i32* %5, align 4
  br label %329

213:                                              ; preds = %203
  %214 = load %struct.msg*, %struct.msg** %14, align 8
  %215 = load %struct.msg*, %struct.msg** %6, align 8
  %216 = call i32 @redis_copy_bulk(%struct.msg* %214, %struct.msg* %215)
  store i32 %216, i32* %13, align 4
  %217 = load i32, i32* %13, align 4
  %218 = load i32, i32* @NC_OK, align 4
  %219 = icmp ne i32 %217, %218
  br i1 %219, label %220, label %224

220:                                              ; preds = %213
  %221 = load %struct.msg**, %struct.msg*** %11, align 8
  %222 = call i32 @nc_free(%struct.msg** %221)
  %223 = load i32, i32* %13, align 4
  store i32 %223, i32* %5, align 4
  br label %329

224:                                              ; preds = %213
  %225 = load %struct.msg*, %struct.msg** %14, align 8
  %226 = getelementptr inbounds %struct.msg, %struct.msg* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %226, align 8
  br label %229

229:                                              ; preds = %224
  br label %230

230:                                              ; preds = %229, %202
  %231 = load i32, i32* %12, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %12, align 4
  br label %107

233:                                              ; preds = %107
  store i32 0, i32* %12, align 4
  br label %234

234:                                              ; preds = %322, %233
  %235 = load i32, i32* %12, align 4
  %236 = load i32, i32* %7, align 4
  %237 = icmp slt i32 %235, %236
  br i1 %237, label %238, label %325

238:                                              ; preds = %234
  %239 = load %struct.msg**, %struct.msg*** %11, align 8
  %240 = load i32, i32* %12, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.msg*, %struct.msg** %239, i64 %241
  %243 = load %struct.msg*, %struct.msg** %242, align 8
  store %struct.msg* %243, %struct.msg** %17, align 8
  %244 = load %struct.msg*, %struct.msg** %17, align 8
  %245 = icmp eq %struct.msg* %244, null
  br i1 %245, label %246, label %247

246:                                              ; preds = %238
  br label %322

247:                                              ; preds = %238
  %248 = load %struct.msg*, %struct.msg** %6, align 8
  %249 = getelementptr inbounds %struct.msg, %struct.msg* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @MSG_REQ_REDIS_MGET, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %260

253:                                              ; preds = %247
  %254 = load %struct.msg*, %struct.msg** %17, align 8
  %255 = load %struct.msg*, %struct.msg** %17, align 8
  %256 = getelementptr inbounds %struct.msg, %struct.msg* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = add nsw i32 %257, 1
  %259 = call i32 @msg_prepend_format(%struct.msg* %254, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %258)
  store i32 %259, i32* %13, align 4
  br label %290

260:                                              ; preds = %247
  %261 = load %struct.msg*, %struct.msg** %6, align 8
  %262 = getelementptr inbounds %struct.msg, %struct.msg* %261, i32 0, i32 1
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* @MSG_REQ_REDIS_DEL, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %266, label %273

266:                                              ; preds = %260
  %267 = load %struct.msg*, %struct.msg** %17, align 8
  %268 = load %struct.msg*, %struct.msg** %17, align 8
  %269 = getelementptr inbounds %struct.msg, %struct.msg* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = add nsw i32 %270, 1
  %272 = call i32 @msg_prepend_format(%struct.msg* %267, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %271)
  store i32 %272, i32* %13, align 4
  br label %289

273:                                              ; preds = %260
  %274 = load %struct.msg*, %struct.msg** %6, align 8
  %275 = getelementptr inbounds %struct.msg, %struct.msg* %274, i32 0, i32 1
  %276 = load i64, i64* %275, align 8
  %277 = load i64, i64* @MSG_REQ_REDIS_MSET, align 8
  %278 = icmp eq i64 %276, %277
  br i1 %278, label %279, label %286

279:                                              ; preds = %273
  %280 = load %struct.msg*, %struct.msg** %17, align 8
  %281 = load %struct.msg*, %struct.msg** %17, align 8
  %282 = getelementptr inbounds %struct.msg, %struct.msg* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = add nsw i32 %283, 1
  %285 = call i32 @msg_prepend_format(%struct.msg* %280, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %284)
  store i32 %285, i32* %13, align 4
  br label %288

286:                                              ; preds = %273
  %287 = call i32 (...) @NOT_REACHED()
  br label %288

288:                                              ; preds = %286, %279
  br label %289

289:                                              ; preds = %288, %266
  br label %290

290:                                              ; preds = %289, %253
  %291 = load i32, i32* %13, align 4
  %292 = load i32, i32* @NC_OK, align 4
  %293 = icmp ne i32 %291, %292
  br i1 %293, label %294, label %298

294:                                              ; preds = %290
  %295 = load %struct.msg**, %struct.msg*** %11, align 8
  %296 = call i32 @nc_free(%struct.msg** %295)
  %297 = load i32, i32* %13, align 4
  store i32 %297, i32* %5, align 4
  br label %329

298:                                              ; preds = %290
  %299 = load %struct.msg*, %struct.msg** %6, align 8
  %300 = getelementptr inbounds %struct.msg, %struct.msg* %299, i32 0, i32 1
  %301 = load i64, i64* %300, align 8
  %302 = load %struct.msg*, %struct.msg** %17, align 8
  %303 = getelementptr inbounds %struct.msg, %struct.msg* %302, i32 0, i32 1
  store i64 %301, i64* %303, align 8
  %304 = load %struct.msg*, %struct.msg** %6, align 8
  %305 = getelementptr inbounds %struct.msg, %struct.msg* %304, i32 0, i32 4
  %306 = load i32, i32* %305, align 8
  %307 = load %struct.msg*, %struct.msg** %17, align 8
  %308 = getelementptr inbounds %struct.msg, %struct.msg* %307, i32 0, i32 4
  store i32 %306, i32* %308, align 8
  %309 = load %struct.msg*, %struct.msg** %6, align 8
  %310 = getelementptr inbounds %struct.msg, %struct.msg* %309, i32 0, i32 3
  %311 = load %struct.msg*, %struct.msg** %310, align 8
  %312 = load %struct.msg*, %struct.msg** %17, align 8
  %313 = getelementptr inbounds %struct.msg, %struct.msg* %312, i32 0, i32 3
  store %struct.msg* %311, %struct.msg** %313, align 8
  %314 = load %struct.msg_tqh*, %struct.msg_tqh** %8, align 8
  %315 = load %struct.msg*, %struct.msg** %17, align 8
  %316 = load i32, i32* @m_tqe, align 4
  %317 = call i32 @TAILQ_INSERT_TAIL(%struct.msg_tqh* %314, %struct.msg* %315, i32 %316)
  %318 = load %struct.msg*, %struct.msg** %6, align 8
  %319 = getelementptr inbounds %struct.msg, %struct.msg* %318, i32 0, i32 2
  %320 = load i64, i64* %319, align 8
  %321 = add nsw i64 %320, 1
  store i64 %321, i64* %319, align 8
  br label %322

322:                                              ; preds = %298, %246
  %323 = load i32, i32* %12, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %12, align 4
  br label %234

325:                                              ; preds = %234
  %326 = load %struct.msg**, %struct.msg*** %11, align 8
  %327 = call i32 @nc_free(%struct.msg** %326)
  %328 = load i32, i32* @NC_OK, align 4
  store i32 %328, i32* %5, align 4
  br label %329

329:                                              ; preds = %325, %294, %220, %209, %195, %159, %61, %38
  %330 = load i32, i32* %5, align 4
  ret i32 %330
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @array_n(i32) #1

declare dso_local %struct.msg** @nc_zalloc(i32) #1

declare dso_local %struct.msg** @nc_alloc(i32) #1

declare dso_local i32 @nc_free(%struct.msg**) #1

declare dso_local %struct.mbuf* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @msg_gen_frag_id(...) #1

declare dso_local %struct.keypos* @array_get(i32, i32) #1

declare dso_local i32 @msg_backend_idx(%struct.msg*, i64, i64) #1

declare dso_local %struct.msg* @msg_get(i32, i32, i32) #1

declare dso_local i32 @redis_append_key(%struct.msg*, i64, i64) #1

declare dso_local i32 @redis_copy_bulk(%struct.msg*, %struct.msg*) #1

declare dso_local i32 @msg_prepend_format(%struct.msg*, i8*, i32) #1

declare dso_local i32 @NOT_REACHED(...) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(%struct.msg_tqh*, %struct.msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
