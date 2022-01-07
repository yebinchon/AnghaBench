; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_upstream_hash_module.c_ngx_http_upstream_get_hash_peer.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_upstream_hash_module.c_ngx_http_upstream_get_hash_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32*, i32, i32, i32, i32*, i64, i32 }
%struct.TYPE_19__ = type { i32, i32 (%struct.TYPE_17__*, %struct.TYPE_20__*)*, i64, i32, %struct.TYPE_20__, %struct.TYPE_16__ }
%struct.TYPE_20__ = type { i64*, %struct.TYPE_21__*, %struct.TYPE_18__* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_18__*, i64 }
%struct.TYPE_18__ = type { i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, %struct.TYPE_18__* }
%struct.TYPE_16__ = type { i64, i32* }

@NGX_INT_T_LEN = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"get hash peer, try: %ui\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%ui\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"get hash peer, value:%uD, peer:%ui\00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i8*)* @ngx_http_upstream_get_hash_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_upstream_get_hash_peer(%struct.TYPE_17__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i8* %1, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %19, %struct.TYPE_19__** %6, align 8
  %20 = load i32, i32* @NGX_INT_T_LEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %8, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %9, align 8
  %24 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ngx_log_debug1(i32 %24, i32 %27, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %34, align 8
  %36 = call i32 @ngx_http_upstream_rr_peers_rlock(%struct.TYPE_21__* %35)
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %39, 20
  br i1 %40, label %55, label %41

41:                                               ; preds = %2
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %41
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %49, %41, %2
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %58, align 8
  %60 = call i32 @ngx_http_upstream_rr_peers_unlock(%struct.TYPE_21__* %59)
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 1
  %63 = load i32 (%struct.TYPE_17__*, %struct.TYPE_20__*)*, i32 (%struct.TYPE_17__*, %struct.TYPE_20__*)** %62, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 4
  %67 = call i32 %63(%struct.TYPE_17__* %64, %struct.TYPE_20__* %66)
  store i32 %67, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %327

68:                                               ; preds = %49
  %69 = call i64 (...) @ngx_time()
  store i64 %69, i64* %7, align 8
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 5
  store i64 0, i64* %71, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 4
  store i32* null, i32** %73, align 8
  br label %74

74:                                               ; preds = %267, %68
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @ngx_crc32_init(i32 %75)
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp sgt i64 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %74
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = call i32* @ngx_sprintf(i32* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %84)
  %86 = ptrtoint i32* %85 to i64
  %87 = ptrtoint i32* %23 to i64
  %88 = sub i64 %86, %87
  %89 = sdiv exact i64 %88, 4
  store i64 %89, i64* %10, align 8
  %90 = load i64, i64* %10, align 8
  %91 = call i32 @ngx_crc32_update(i32* %11, i32* %23, i64 %90)
  br label %92

92:                                               ; preds = %81, %74
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 5
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @ngx_crc32_update(i32* %11, i32* %96, i64 %100)
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @ngx_crc32_final(i32 %102)
  %104 = load i32, i32* %11, align 4
  %105 = ashr i32 %104, 16
  %106 = and i32 %105, 32767
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %11, align 4
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, %107
  store i32 %111, i32* %109, align 8
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %114, 1
  store i64 %115, i64* %113, align 8
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = srem i32 %118, %124
  store i32 %125, i32* %12, align 4
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %130, align 8
  store %struct.TYPE_18__* %131, %struct.TYPE_18__** %16, align 8
  store i32 0, i32* %15, align 4
  br label %132

132:                                              ; preds = %138, %92
  %133 = load i32, i32* %12, align 4
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp sge i32 %133, %136
  br i1 %137, label %138, label %149

138:                                              ; preds = %132
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %12, align 4
  %143 = sub nsw i32 %142, %141
  store i32 %143, i32* %12, align 4
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 12
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %145, align 8
  store %struct.TYPE_18__* %146, %struct.TYPE_18__** %16, align 8
  %147 = load i32, i32* %15, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %15, align 4
  br label %132

149:                                              ; preds = %132
  %150 = load i32, i32* %15, align 4
  %151 = sext i32 %150 to i64
  %152 = udiv i64 %151, 64
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %14, align 4
  %154 = load i32, i32* %15, align 4
  %155 = sext i32 %154 to i64
  %156 = urem i64 %155, 64
  %157 = shl i64 1, %156
  store i64 %157, i64* %13, align 8
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 4
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 0
  %161 = load i64*, i64** %160, align 8
  %162 = load i32, i32* %14, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i64, i64* %161, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* %13, align 8
  %167 = and i64 %165, %166
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %149
  br label %248

170:                                              ; preds = %149
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 4
  %173 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %173, align 8
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %176 = call i32 @ngx_http_upstream_rr_peer_lock(%struct.TYPE_21__* %174, %struct.TYPE_18__* %175)
  %177 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* %15, align 4
  %185 = call i32 @ngx_log_debug2(i32 %177, i32 %180, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %183, i32 %184)
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 11
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %197

190:                                              ; preds = %170
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i32 0, i32 4
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_21__*, %struct.TYPE_21__** %193, align 8
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %196 = call i32 @ngx_http_upstream_rr_peer_unlock(%struct.TYPE_21__* %194, %struct.TYPE_18__* %195)
  br label %248

197:                                              ; preds = %170
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %227

202:                                              ; preds = %197
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %207 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = icmp sge i64 %205, %208
  br i1 %209, label %210, label %227

210:                                              ; preds = %202
  %211 = load i64, i64* %7, align 8
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i32 0, i32 3
  %214 = load i64, i64* %213, align 8
  %215 = sub nsw i64 %211, %214
  %216 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %217 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %216, i32 0, i32 4
  %218 = load i64, i64* %217, align 8
  %219 = icmp sle i64 %215, %218
  br i1 %219, label %220, label %227

220:                                              ; preds = %210
  %221 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %221, i32 0, i32 4
  %223 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %222, i32 0, i32 1
  %224 = load %struct.TYPE_21__*, %struct.TYPE_21__** %223, align 8
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %226 = call i32 @ngx_http_upstream_rr_peer_unlock(%struct.TYPE_21__* %224, %struct.TYPE_18__* %225)
  br label %248

227:                                              ; preds = %210, %202, %197
  %228 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %229 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %228, i32 0, i32 5
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %247

232:                                              ; preds = %227
  %233 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %234 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %233, i32 0, i32 6
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %236, i32 0, i32 5
  %238 = load i64, i64* %237, align 8
  %239 = icmp sge i64 %235, %238
  br i1 %239, label %240, label %247

240:                                              ; preds = %232
  %241 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %241, i32 0, i32 4
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %242, i32 0, i32 1
  %244 = load %struct.TYPE_21__*, %struct.TYPE_21__** %243, align 8
  %245 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %246 = call i32 @ngx_http_upstream_rr_peer_unlock(%struct.TYPE_21__* %244, %struct.TYPE_18__* %245)
  br label %248

247:                                              ; preds = %232, %227
  br label %268

248:                                              ; preds = %240, %220, %190, %169
  %249 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %250, align 8
  %253 = icmp sgt i32 %252, 20
  br i1 %253, label %254, label %267

254:                                              ; preds = %248
  %255 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %255, i32 0, i32 4
  %257 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %256, i32 0, i32 1
  %258 = load %struct.TYPE_21__*, %struct.TYPE_21__** %257, align 8
  %259 = call i32 @ngx_http_upstream_rr_peers_unlock(%struct.TYPE_21__* %258)
  %260 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %260, i32 0, i32 1
  %262 = load i32 (%struct.TYPE_17__*, %struct.TYPE_20__*)*, i32 (%struct.TYPE_17__*, %struct.TYPE_20__*)** %261, align 8
  %263 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %264 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %264, i32 0, i32 4
  %266 = call i32 %262(%struct.TYPE_17__* %263, %struct.TYPE_20__* %265)
  store i32 %266, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %327

267:                                              ; preds = %248
  br label %74

268:                                              ; preds = %247
  %269 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %270 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %270, i32 0, i32 4
  %272 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %271, i32 0, i32 2
  store %struct.TYPE_18__* %269, %struct.TYPE_18__** %272, align 8
  %273 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %274 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %273, i32 0, i32 9
  %275 = load i32, i32* %274, align 8
  %276 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %276, i32 0, i32 2
  store i32 %275, i32* %277, align 4
  %278 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %279 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %278, i32 0, i32 8
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %281, i32 0, i32 1
  store i32 %280, i32* %282, align 8
  %283 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %284 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %283, i32 0, i32 7
  %285 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %285, i32 0, i32 0
  store i32* %284, i32** %286, align 8
  %287 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %288 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %287, i32 0, i32 6
  %289 = load i64, i64* %288, align 8
  %290 = add nsw i64 %289, 1
  store i64 %290, i64* %288, align 8
  %291 = load i64, i64* %7, align 8
  %292 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %293 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %292, i32 0, i32 3
  %294 = load i64, i64* %293, align 8
  %295 = sub nsw i64 %291, %294
  %296 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %297 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %296, i32 0, i32 4
  %298 = load i64, i64* %297, align 8
  %299 = icmp sgt i64 %295, %298
  br i1 %299, label %300, label %304

300:                                              ; preds = %268
  %301 = load i64, i64* %7, align 8
  %302 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %303 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %302, i32 0, i32 3
  store i64 %301, i64* %303, align 8
  br label %304

304:                                              ; preds = %300, %268
  %305 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %306 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %305, i32 0, i32 4
  %307 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %306, i32 0, i32 1
  %308 = load %struct.TYPE_21__*, %struct.TYPE_21__** %307, align 8
  %309 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %310 = call i32 @ngx_http_upstream_rr_peer_unlock(%struct.TYPE_21__* %308, %struct.TYPE_18__* %309)
  %311 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %312 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %311, i32 0, i32 4
  %313 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %312, i32 0, i32 1
  %314 = load %struct.TYPE_21__*, %struct.TYPE_21__** %313, align 8
  %315 = call i32 @ngx_http_upstream_rr_peers_unlock(%struct.TYPE_21__* %314)
  %316 = load i64, i64* %13, align 8
  %317 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %318 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %317, i32 0, i32 4
  %319 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %318, i32 0, i32 0
  %320 = load i64*, i64** %319, align 8
  %321 = load i32, i32* %14, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i64, i64* %320, i64 %322
  %324 = load i64, i64* %323, align 8
  %325 = or i64 %324, %316
  store i64 %325, i64* %323, align 8
  %326 = load i32, i32* @NGX_OK, align 4
  store i32 %326, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %327

327:                                              ; preds = %304, %254, %55
  %328 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %328)
  %329 = load i32, i32* %3, align 4
  ret i32 %329
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #2

declare dso_local i32 @ngx_http_upstream_rr_peers_rlock(%struct.TYPE_21__*) #2

declare dso_local i32 @ngx_http_upstream_rr_peers_unlock(%struct.TYPE_21__*) #2

declare dso_local i64 @ngx_time(...) #2

declare dso_local i32 @ngx_crc32_init(i32) #2

declare dso_local i32* @ngx_sprintf(i32*, i8*, i64) #2

declare dso_local i32 @ngx_crc32_update(i32*, i32*, i64) #2

declare dso_local i32 @ngx_crc32_final(i32) #2

declare dso_local i32 @ngx_http_upstream_rr_peer_lock(%struct.TYPE_21__*, %struct.TYPE_18__*) #2

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32, i32) #2

declare dso_local i32 @ngx_http_upstream_rr_peer_unlock(%struct.TYPE_21__*, %struct.TYPE_18__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
