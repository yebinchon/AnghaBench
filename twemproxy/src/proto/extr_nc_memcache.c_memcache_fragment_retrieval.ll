; ModuleID = '/home/carl/AnghaBench/twemproxy/src/proto/extr_nc_memcache.c_memcache_fragment_retrieval.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/proto/extr_nc_memcache.c_memcache_fragment_retrieval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg = type { i64, i64, %struct.msg*, i32, i32, %struct.msg**, i32, i32, i32, i32, i32 }
%struct.msg_tqh = type { i32 }
%struct.mbuf = type { i8*, i8* }
%struct.keypos = type { i64, i64 }

@NC_ENOMEM = common dso_local global i32 0, align 4
@NC_OK = common dso_local global i32 0, align 4
@MSG_REQ_MC_GET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"get \00", align 1
@MSG_REQ_MC_GETS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"gets \00", align 1
@CRLF = common dso_local global i64 0, align 8
@CRLF_LEN = common dso_local global i32 0, align 4
@m_tqe = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msg*, i32, %struct.msg_tqh*, i32)* @memcache_fragment_retrieval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memcache_fragment_retrieval(%struct.msg* %0, i32 %1, %struct.msg_tqh* %2, i32 %3) #0 {
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
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 8
  %21 = trunc i64 %20 to i32
  %22 = call %struct.msg** @nc_zalloc(i32 %21)
  store %struct.msg** %22, %struct.msg*** %11, align 8
  %23 = load %struct.msg**, %struct.msg*** %11, align 8
  %24 = icmp eq %struct.msg** %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* @NC_ENOMEM, align 4
  store i32 %26, i32* %5, align 4
  br label %267

27:                                               ; preds = %4
  %28 = load %struct.msg*, %struct.msg** %6, align 8
  %29 = getelementptr inbounds %struct.msg, %struct.msg* %28, i32 0, i32 5
  %30 = load %struct.msg**, %struct.msg*** %29, align 8
  %31 = icmp eq %struct.msg** %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @ASSERT(i32 %32)
  %34 = load %struct.msg*, %struct.msg** %6, align 8
  %35 = getelementptr inbounds %struct.msg, %struct.msg* %34, i32 0, i32 9
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @array_n(i32 %36)
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 8
  %40 = trunc i64 %39 to i32
  %41 = call %struct.msg** @nc_alloc(i32 %40)
  %42 = load %struct.msg*, %struct.msg** %6, align 8
  %43 = getelementptr inbounds %struct.msg, %struct.msg* %42, i32 0, i32 5
  store %struct.msg** %41, %struct.msg*** %43, align 8
  %44 = load %struct.msg*, %struct.msg** %6, align 8
  %45 = getelementptr inbounds %struct.msg, %struct.msg* %44, i32 0, i32 5
  %46 = load %struct.msg**, %struct.msg*** %45, align 8
  %47 = icmp eq %struct.msg** %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %27
  %49 = load %struct.msg**, %struct.msg*** %11, align 8
  %50 = call i32 @nc_free(%struct.msg** %49)
  %51 = load i32, i32* @NC_ENOMEM, align 4
  store i32 %51, i32* %5, align 4
  br label %267

52:                                               ; preds = %27
  %53 = load %struct.msg*, %struct.msg** %6, align 8
  %54 = getelementptr inbounds %struct.msg, %struct.msg* %53, i32 0, i32 10
  %55 = call %struct.mbuf* @STAILQ_FIRST(i32* %54)
  store %struct.mbuf* %55, %struct.mbuf** %10, align 8
  %56 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %57 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %60 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  br label %61

61:                                               ; preds = %68, %52
  %62 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %63 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 32
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %70 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %70, align 8
  br label %61

73:                                               ; preds = %61
  %74 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %75 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %75, align 8
  %78 = call i32 (...) @msg_gen_frag_id()
  %79 = load %struct.msg*, %struct.msg** %6, align 8
  %80 = getelementptr inbounds %struct.msg, %struct.msg* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 8
  %81 = load %struct.msg*, %struct.msg** %6, align 8
  %82 = getelementptr inbounds %struct.msg, %struct.msg* %81, i32 0, i32 1
  store i64 0, i64* %82, align 8
  %83 = load %struct.msg*, %struct.msg** %6, align 8
  %84 = load %struct.msg*, %struct.msg** %6, align 8
  %85 = getelementptr inbounds %struct.msg, %struct.msg* %84, i32 0, i32 2
  store %struct.msg* %83, %struct.msg** %85, align 8
  store i32 0, i32* %12, align 4
  br label %86

86:                                               ; preds = %179, %73
  %87 = load i32, i32* %12, align 4
  %88 = load %struct.msg*, %struct.msg** %6, align 8
  %89 = getelementptr inbounds %struct.msg, %struct.msg* %88, i32 0, i32 9
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @array_n(i32 %90)
  %92 = icmp slt i32 %87, %91
  br i1 %92, label %93, label %182

93:                                               ; preds = %86
  %94 = load %struct.msg*, %struct.msg** %6, align 8
  %95 = getelementptr inbounds %struct.msg, %struct.msg* %94, i32 0, i32 9
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %12, align 4
  %98 = call %struct.keypos* @array_get(i32 %96, i32 %97)
  store %struct.keypos* %98, %struct.keypos** %15, align 8
  %99 = load %struct.msg*, %struct.msg** %6, align 8
  %100 = load %struct.keypos*, %struct.keypos** %15, align 8
  %101 = getelementptr inbounds %struct.keypos, %struct.keypos* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.keypos*, %struct.keypos** %15, align 8
  %104 = getelementptr inbounds %struct.keypos, %struct.keypos* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.keypos*, %struct.keypos** %15, align 8
  %107 = getelementptr inbounds %struct.keypos, %struct.keypos* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = sub nsw i64 %105, %108
  %110 = call i32 @msg_backend_idx(%struct.msg* %99, i64 %102, i64 %109)
  store i32 %110, i32* %16, align 4
  %111 = load %struct.msg**, %struct.msg*** %11, align 8
  %112 = load i32, i32* %16, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.msg*, %struct.msg** %111, i64 %113
  %115 = load %struct.msg*, %struct.msg** %114, align 8
  %116 = icmp eq %struct.msg* %115, null
  br i1 %116, label %117, label %143

117:                                              ; preds = %93
  %118 = load %struct.msg*, %struct.msg** %6, align 8
  %119 = getelementptr inbounds %struct.msg, %struct.msg* %118, i32 0, i32 8
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.msg*, %struct.msg** %6, align 8
  %122 = getelementptr inbounds %struct.msg, %struct.msg* %121, i32 0, i32 7
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.msg*, %struct.msg** %6, align 8
  %125 = getelementptr inbounds %struct.msg, %struct.msg* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 8
  %127 = call %struct.msg* @msg_get(i32 %120, i32 %123, i32 %126)
  %128 = load %struct.msg**, %struct.msg*** %11, align 8
  %129 = load i32, i32* %16, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.msg*, %struct.msg** %128, i64 %130
  store %struct.msg* %127, %struct.msg** %131, align 8
  %132 = load %struct.msg**, %struct.msg*** %11, align 8
  %133 = load i32, i32* %16, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.msg*, %struct.msg** %132, i64 %134
  %136 = load %struct.msg*, %struct.msg** %135, align 8
  %137 = icmp eq %struct.msg* %136, null
  br i1 %137, label %138, label %142

138:                                              ; preds = %117
  %139 = load %struct.msg**, %struct.msg*** %11, align 8
  %140 = call i32 @nc_free(%struct.msg** %139)
  %141 = load i32, i32* @NC_ENOMEM, align 4
  store i32 %141, i32* %5, align 4
  br label %267

142:                                              ; preds = %117
  br label %143

143:                                              ; preds = %142, %93
  %144 = load %struct.msg**, %struct.msg*** %11, align 8
  %145 = load i32, i32* %16, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.msg*, %struct.msg** %144, i64 %146
  %148 = load %struct.msg*, %struct.msg** %147, align 8
  store %struct.msg* %148, %struct.msg** %14, align 8
  %149 = load %struct.msg*, %struct.msg** %6, align 8
  %150 = getelementptr inbounds %struct.msg, %struct.msg* %149, i32 0, i32 5
  %151 = load %struct.msg**, %struct.msg*** %150, align 8
  %152 = load i32, i32* %12, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.msg*, %struct.msg** %151, i64 %153
  store %struct.msg* %148, %struct.msg** %154, align 8
  %155 = load %struct.msg*, %struct.msg** %14, align 8
  %156 = getelementptr inbounds %struct.msg, %struct.msg* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 4
  %159 = load %struct.msg*, %struct.msg** %14, align 8
  %160 = load %struct.keypos*, %struct.keypos** %15, align 8
  %161 = getelementptr inbounds %struct.keypos, %struct.keypos* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.keypos*, %struct.keypos** %15, align 8
  %164 = getelementptr inbounds %struct.keypos, %struct.keypos* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.keypos*, %struct.keypos** %15, align 8
  %167 = getelementptr inbounds %struct.keypos, %struct.keypos* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = sub nsw i64 %165, %168
  %170 = call i32 @memcache_append_key(%struct.msg* %159, i64 %162, i64 %169)
  store i32 %170, i32* %13, align 4
  %171 = load i32, i32* %13, align 4
  %172 = load i32, i32* @NC_OK, align 4
  %173 = icmp ne i32 %171, %172
  br i1 %173, label %174, label %178

174:                                              ; preds = %143
  %175 = load %struct.msg**, %struct.msg*** %11, align 8
  %176 = call i32 @nc_free(%struct.msg** %175)
  %177 = load i32, i32* %13, align 4
  store i32 %177, i32* %5, align 4
  br label %267

178:                                              ; preds = %143
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %12, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %12, align 4
  br label %86

182:                                              ; preds = %86
  store i32 0, i32* %12, align 4
  br label %183

183:                                              ; preds = %260, %182
  %184 = load i32, i32* %12, align 4
  %185 = load i32, i32* %7, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %263

187:                                              ; preds = %183
  %188 = load %struct.msg**, %struct.msg*** %11, align 8
  %189 = load i32, i32* %12, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.msg*, %struct.msg** %188, i64 %190
  %192 = load %struct.msg*, %struct.msg** %191, align 8
  store %struct.msg* %192, %struct.msg** %17, align 8
  %193 = load %struct.msg*, %struct.msg** %17, align 8
  %194 = icmp eq %struct.msg* %193, null
  br i1 %194, label %195, label %196

195:                                              ; preds = %187
  br label %260

196:                                              ; preds = %187
  %197 = load %struct.msg*, %struct.msg** %6, align 8
  %198 = getelementptr inbounds %struct.msg, %struct.msg* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @MSG_REQ_MC_GET, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %205

202:                                              ; preds = %196
  %203 = load %struct.msg*, %struct.msg** %17, align 8
  %204 = call i32 @msg_prepend(%struct.msg* %203, i32* bitcast ([5 x i8]* @.str to i32*), i32 4)
  store i32 %204, i32* %13, align 4
  br label %215

205:                                              ; preds = %196
  %206 = load %struct.msg*, %struct.msg** %6, align 8
  %207 = getelementptr inbounds %struct.msg, %struct.msg* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @MSG_REQ_MC_GETS, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %214

211:                                              ; preds = %205
  %212 = load %struct.msg*, %struct.msg** %17, align 8
  %213 = call i32 @msg_prepend(%struct.msg* %212, i32* bitcast ([6 x i8]* @.str.1 to i32*), i32 5)
  store i32 %213, i32* %13, align 4
  br label %214

214:                                              ; preds = %211, %205
  br label %215

215:                                              ; preds = %214, %202
  %216 = load i32, i32* %13, align 4
  %217 = load i32, i32* @NC_OK, align 4
  %218 = icmp ne i32 %216, %217
  br i1 %218, label %219, label %223

219:                                              ; preds = %215
  %220 = load %struct.msg**, %struct.msg*** %11, align 8
  %221 = call i32 @nc_free(%struct.msg** %220)
  %222 = load i32, i32* %13, align 4
  store i32 %222, i32* %5, align 4
  br label %267

223:                                              ; preds = %215
  %224 = load %struct.msg*, %struct.msg** %17, align 8
  %225 = load i64, i64* @CRLF, align 8
  %226 = inttoptr i64 %225 to i32*
  %227 = load i32, i32* @CRLF_LEN, align 4
  %228 = call i32 @msg_append(%struct.msg* %224, i32* %226, i32 %227)
  store i32 %228, i32* %13, align 4
  %229 = load i32, i32* %13, align 4
  %230 = load i32, i32* @NC_OK, align 4
  %231 = icmp ne i32 %229, %230
  br i1 %231, label %232, label %236

232:                                              ; preds = %223
  %233 = load %struct.msg**, %struct.msg*** %11, align 8
  %234 = call i32 @nc_free(%struct.msg** %233)
  %235 = load i32, i32* %13, align 4
  store i32 %235, i32* %5, align 4
  br label %267

236:                                              ; preds = %223
  %237 = load %struct.msg*, %struct.msg** %6, align 8
  %238 = getelementptr inbounds %struct.msg, %struct.msg* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.msg*, %struct.msg** %17, align 8
  %241 = getelementptr inbounds %struct.msg, %struct.msg* %240, i32 0, i32 0
  store i64 %239, i64* %241, align 8
  %242 = load %struct.msg*, %struct.msg** %6, align 8
  %243 = getelementptr inbounds %struct.msg, %struct.msg* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.msg*, %struct.msg** %17, align 8
  %246 = getelementptr inbounds %struct.msg, %struct.msg* %245, i32 0, i32 3
  store i32 %244, i32* %246, align 8
  %247 = load %struct.msg*, %struct.msg** %6, align 8
  %248 = getelementptr inbounds %struct.msg, %struct.msg* %247, i32 0, i32 2
  %249 = load %struct.msg*, %struct.msg** %248, align 8
  %250 = load %struct.msg*, %struct.msg** %17, align 8
  %251 = getelementptr inbounds %struct.msg, %struct.msg* %250, i32 0, i32 2
  store %struct.msg* %249, %struct.msg** %251, align 8
  %252 = load %struct.msg_tqh*, %struct.msg_tqh** %8, align 8
  %253 = load %struct.msg*, %struct.msg** %17, align 8
  %254 = load i32, i32* @m_tqe, align 4
  %255 = call i32 @TAILQ_INSERT_TAIL(%struct.msg_tqh* %252, %struct.msg* %253, i32 %254)
  %256 = load %struct.msg*, %struct.msg** %6, align 8
  %257 = getelementptr inbounds %struct.msg, %struct.msg* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = add nsw i64 %258, 1
  store i64 %259, i64* %257, align 8
  br label %260

260:                                              ; preds = %236, %195
  %261 = load i32, i32* %12, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %12, align 4
  br label %183

263:                                              ; preds = %183
  %264 = load %struct.msg**, %struct.msg*** %11, align 8
  %265 = call i32 @nc_free(%struct.msg** %264)
  %266 = load i32, i32* @NC_OK, align 4
  store i32 %266, i32* %5, align 4
  br label %267

267:                                              ; preds = %263, %232, %219, %174, %138, %48, %25
  %268 = load i32, i32* %5, align 4
  ret i32 %268
}

declare dso_local %struct.msg** @nc_zalloc(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.msg** @nc_alloc(i32) #1

declare dso_local i32 @array_n(i32) #1

declare dso_local i32 @nc_free(%struct.msg**) #1

declare dso_local %struct.mbuf* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @msg_gen_frag_id(...) #1

declare dso_local %struct.keypos* @array_get(i32, i32) #1

declare dso_local i32 @msg_backend_idx(%struct.msg*, i64, i64) #1

declare dso_local %struct.msg* @msg_get(i32, i32, i32) #1

declare dso_local i32 @memcache_append_key(%struct.msg*, i64, i64) #1

declare dso_local i32 @msg_prepend(%struct.msg*, i32*, i32) #1

declare dso_local i32 @msg_append(%struct.msg*, i32*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(%struct.msg_tqh*, %struct.msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
