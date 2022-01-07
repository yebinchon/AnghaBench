; ModuleID = '/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_upstream_hash_module.c_ngx_stream_upstream_get_hash_peer.c'
source_filename = "/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_upstream_hash_module.c_ngx_stream_upstream_get_hash_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32*, i32, i32, i32, i32*, i32 }
%struct.TYPE_18__ = type { i32, i32 (%struct.TYPE_19__*, %struct.TYPE_20__*)*, i64, i32, %struct.TYPE_20__, %struct.TYPE_16__ }
%struct.TYPE_20__ = type { i64*, %struct.TYPE_21__*, %struct.TYPE_17__* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_17__*, i64 }
%struct.TYPE_17__ = type { i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i64, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { i64, i32* }

@NGX_INT_T_LEN = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"get hash peer, try: %ui\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%ui\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"get hash peer, value:%uD, peer:%ui\00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i8*)* @ngx_stream_upstream_get_hash_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_stream_upstream_get_hash_peer(%struct.TYPE_19__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store i8* %1, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %19, %struct.TYPE_18__** %6, align 8
  %20 = load i32, i32* @NGX_INT_T_LEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %8, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %9, align 8
  %24 = load i32, i32* @NGX_LOG_DEBUG_STREAM, align 4
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ngx_log_debug1(i32 %24, i32 %27, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %34, align 8
  %36 = call i32 @ngx_stream_upstream_rr_peers_rlock(%struct.TYPE_21__* %35)
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %39, 20
  br i1 %40, label %55, label %41

41:                                               ; preds = %2
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %41
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %49, %41, %2
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %58, align 8
  %60 = call i32 @ngx_stream_upstream_rr_peers_unlock(%struct.TYPE_21__* %59)
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 1
  %63 = load i32 (%struct.TYPE_19__*, %struct.TYPE_20__*)*, i32 (%struct.TYPE_19__*, %struct.TYPE_20__*)** %62, align 8
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 4
  %67 = call i32 %63(%struct.TYPE_19__* %64, %struct.TYPE_20__* %66)
  store i32 %67, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %325

68:                                               ; preds = %49
  %69 = call i64 (...) @ngx_time()
  store i64 %69, i64* %7, align 8
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 4
  store i32* null, i32** %71, align 8
  br label %72

72:                                               ; preds = %265, %68
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @ngx_crc32_init(i32 %73)
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp sgt i64 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %72
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = call i32* @ngx_sprintf(i32* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %82)
  %84 = ptrtoint i32* %83 to i64
  %85 = ptrtoint i32* %23 to i64
  %86 = sub i64 %84, %85
  %87 = sdiv exact i64 %86, 4
  store i64 %87, i64* %10, align 8
  %88 = load i64, i64* %10, align 8
  %89 = call i32 @ngx_crc32_update(i32* %11, i32* %23, i64 %88)
  br label %90

90:                                               ; preds = %79, %72
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 5
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @ngx_crc32_update(i32* %11, i32* %94, i64 %98)
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @ngx_crc32_final(i32 %100)
  %102 = load i32, i32* %11, align 4
  %103 = ashr i32 %102, 16
  %104 = and i32 %103, 32767
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, %105
  store i32 %109, i32* %107, align 8
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %112, 1
  store i64 %113, i64* %111, align 8
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = srem i32 %116, %122
  store i32 %123, i32* %12, align 4
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %128, align 8
  store %struct.TYPE_17__* %129, %struct.TYPE_17__** %16, align 8
  store i32 0, i32* %15, align 4
  br label %130

130:                                              ; preds = %136, %90
  %131 = load i32, i32* %12, align 4
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp sge i32 %131, %134
  br i1 %135, label %136, label %147

136:                                              ; preds = %130
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sub nsw i32 %140, %139
  store i32 %141, i32* %12, align 4
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 11
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %143, align 8
  store %struct.TYPE_17__* %144, %struct.TYPE_17__** %16, align 8
  %145 = load i32, i32* %15, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %15, align 4
  br label %130

147:                                              ; preds = %130
  %148 = load i32, i32* %15, align 4
  %149 = sext i32 %148 to i64
  %150 = udiv i64 %149, 64
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %14, align 4
  %152 = load i32, i32* %15, align 4
  %153 = sext i32 %152 to i64
  %154 = urem i64 %153, 64
  %155 = shl i64 1, %154
  store i64 %155, i64* %13, align 8
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 4
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 0
  %159 = load i64*, i64** %158, align 8
  %160 = load i32, i32* %14, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %159, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* %13, align 8
  %165 = and i64 %163, %164
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %147
  br label %246

168:                                              ; preds = %147
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 4
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %171, align 8
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %174 = call i32 @ngx_stream_upstream_rr_peer_lock(%struct.TYPE_21__* %172, %struct.TYPE_17__* %173)
  %175 = load i32, i32* @NGX_LOG_DEBUG_STREAM, align 4
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* %15, align 4
  %183 = call i32 @ngx_log_debug2(i32 %175, i32 %178, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %181, i32 %182)
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 10
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %168
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 4
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %191, align 8
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %194 = call i32 @ngx_stream_upstream_rr_peer_unlock(%struct.TYPE_21__* %192, %struct.TYPE_17__* %193)
  br label %246

195:                                              ; preds = %168
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %225

200:                                              ; preds = %195
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = icmp sge i64 %203, %206
  br i1 %207, label %208, label %225

208:                                              ; preds = %200
  %209 = load i64, i64* %7, align 8
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 3
  %212 = load i64, i64* %211, align 8
  %213 = sub nsw i64 %209, %212
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i32 0, i32 4
  %216 = load i64, i64* %215, align 8
  %217 = icmp sle i64 %213, %216
  br i1 %217, label %218, label %225

218:                                              ; preds = %208
  %219 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %219, i32 0, i32 4
  %221 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %220, i32 0, i32 1
  %222 = load %struct.TYPE_21__*, %struct.TYPE_21__** %221, align 8
  %223 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %224 = call i32 @ngx_stream_upstream_rr_peer_unlock(%struct.TYPE_21__* %222, %struct.TYPE_17__* %223)
  br label %246

225:                                              ; preds = %208, %200, %195
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 5
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %245

230:                                              ; preds = %225
  %231 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %232 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %231, i32 0, i32 6
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i32 0, i32 5
  %236 = load i64, i64* %235, align 8
  %237 = icmp sge i64 %233, %236
  br i1 %237, label %238, label %245

238:                                              ; preds = %230
  %239 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %239, i32 0, i32 4
  %241 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %240, i32 0, i32 1
  %242 = load %struct.TYPE_21__*, %struct.TYPE_21__** %241, align 8
  %243 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %244 = call i32 @ngx_stream_upstream_rr_peer_unlock(%struct.TYPE_21__* %242, %struct.TYPE_17__* %243)
  br label %246

245:                                              ; preds = %230, %225
  br label %266

246:                                              ; preds = %238, %218, %188, %167
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %248, align 8
  %251 = icmp sgt i32 %250, 20
  br i1 %251, label %252, label %265

252:                                              ; preds = %246
  %253 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %253, i32 0, i32 4
  %255 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %254, i32 0, i32 1
  %256 = load %struct.TYPE_21__*, %struct.TYPE_21__** %255, align 8
  %257 = call i32 @ngx_stream_upstream_rr_peers_unlock(%struct.TYPE_21__* %256)
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %258, i32 0, i32 1
  %260 = load i32 (%struct.TYPE_19__*, %struct.TYPE_20__*)*, i32 (%struct.TYPE_19__*, %struct.TYPE_20__*)** %259, align 8
  %261 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %262 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %262, i32 0, i32 4
  %264 = call i32 %260(%struct.TYPE_19__* %261, %struct.TYPE_20__* %263)
  store i32 %264, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %325

265:                                              ; preds = %246
  br label %72

266:                                              ; preds = %245
  %267 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %268 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %268, i32 0, i32 4
  %270 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %269, i32 0, i32 2
  store %struct.TYPE_17__* %267, %struct.TYPE_17__** %270, align 8
  %271 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %272 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %271, i32 0, i32 9
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %274, i32 0, i32 2
  store i32 %273, i32* %275, align 4
  %276 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %277 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %276, i32 0, i32 8
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %279, i32 0, i32 1
  store i32 %278, i32* %280, align 8
  %281 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %282 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %281, i32 0, i32 7
  %283 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %283, i32 0, i32 0
  store i32* %282, i32** %284, align 8
  %285 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %286 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %285, i32 0, i32 6
  %287 = load i64, i64* %286, align 8
  %288 = add nsw i64 %287, 1
  store i64 %288, i64* %286, align 8
  %289 = load i64, i64* %7, align 8
  %290 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %291 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %290, i32 0, i32 3
  %292 = load i64, i64* %291, align 8
  %293 = sub nsw i64 %289, %292
  %294 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %295 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %294, i32 0, i32 4
  %296 = load i64, i64* %295, align 8
  %297 = icmp sgt i64 %293, %296
  br i1 %297, label %298, label %302

298:                                              ; preds = %266
  %299 = load i64, i64* %7, align 8
  %300 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %301 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %300, i32 0, i32 3
  store i64 %299, i64* %301, align 8
  br label %302

302:                                              ; preds = %298, %266
  %303 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %304 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %303, i32 0, i32 4
  %305 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %304, i32 0, i32 1
  %306 = load %struct.TYPE_21__*, %struct.TYPE_21__** %305, align 8
  %307 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %308 = call i32 @ngx_stream_upstream_rr_peer_unlock(%struct.TYPE_21__* %306, %struct.TYPE_17__* %307)
  %309 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %310 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %309, i32 0, i32 4
  %311 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %310, i32 0, i32 1
  %312 = load %struct.TYPE_21__*, %struct.TYPE_21__** %311, align 8
  %313 = call i32 @ngx_stream_upstream_rr_peers_unlock(%struct.TYPE_21__* %312)
  %314 = load i64, i64* %13, align 8
  %315 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %316 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %315, i32 0, i32 4
  %317 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %316, i32 0, i32 0
  %318 = load i64*, i64** %317, align 8
  %319 = load i32, i32* %14, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i64, i64* %318, i64 %320
  %322 = load i64, i64* %321, align 8
  %323 = or i64 %322, %314
  store i64 %323, i64* %321, align 8
  %324 = load i32, i32* @NGX_OK, align 4
  store i32 %324, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %325

325:                                              ; preds = %302, %252, %55
  %326 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %326)
  %327 = load i32, i32* %3, align 4
  ret i32 %327
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #2

declare dso_local i32 @ngx_stream_upstream_rr_peers_rlock(%struct.TYPE_21__*) #2

declare dso_local i32 @ngx_stream_upstream_rr_peers_unlock(%struct.TYPE_21__*) #2

declare dso_local i64 @ngx_time(...) #2

declare dso_local i32 @ngx_crc32_init(i32) #2

declare dso_local i32* @ngx_sprintf(i32*, i8*, i64) #2

declare dso_local i32 @ngx_crc32_update(i32*, i32*, i64) #2

declare dso_local i32 @ngx_crc32_final(i32) #2

declare dso_local i32 @ngx_stream_upstream_rr_peer_lock(%struct.TYPE_21__*, %struct.TYPE_17__*) #2

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32, i32) #2

declare dso_local i32 @ngx_stream_upstream_rr_peer_unlock(%struct.TYPE_21__*, %struct.TYPE_17__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
