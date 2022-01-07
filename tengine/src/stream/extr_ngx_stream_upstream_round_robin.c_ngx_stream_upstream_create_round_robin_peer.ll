; ModuleID = '/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_upstream_round_robin.c_ngx_stream_upstream_create_round_robin_peer.c'
source_filename = "/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_upstream_round_robin.c_ngx_stream_upstream_create_round_robin_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_16__*, %struct.TYPE_18__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_20__*, i64*, i64, i64, i32* }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_21__*, i32* }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, %struct.TYPE_21__*, i64, i64, %struct.TYPE_19__, %struct.sockaddr* }
%struct.TYPE_19__ = type { i64, i32* }
%struct.sockaddr = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32, i32, %struct.TYPE_17__*, %struct.TYPE_19__, %struct.sockaddr*, i32 }
%struct.TYPE_17__ = type { i32, i32 }

@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_SOCKADDR_STRLEN = common dso_local global i32 0, align 4
@ngx_stream_upstream_get_round_robin_peer = common dso_local global i32 0, align 4
@ngx_stream_upstream_free_round_robin_peer = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@ngx_stream_upstream_empty_save_session = common dso_local global i32 0, align 4
@ngx_stream_upstream_empty_set_session = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_stream_upstream_create_round_robin_peer(%struct.TYPE_14__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca %struct.TYPE_21__**, align 8
  %14 = alloca %struct.TYPE_20__*, align 8
  %15 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 5
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  store %struct.TYPE_22__* %21, %struct.TYPE_22__** %15, align 8
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %23 = icmp eq %struct.TYPE_22__* %22, null
  br i1 %23, label %24, label %43

24:                                               ; preds = %2
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @ngx_palloc(i32 %29, i32 40)
  %31 = bitcast i8* %30 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %31, %struct.TYPE_22__** %15, align 8
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %33 = icmp eq %struct.TYPE_22__* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* @NGX_ERROR, align 4
  store i32 %35, i32* %3, align 4
  br label %327

36:                                               ; preds = %24
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 5
  store %struct.TYPE_22__* %37, %struct.TYPE_22__** %42, align 8
  br label %43

43:                                               ; preds = %36, %2
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @ngx_pcalloc(i32 %48, i64 24)
  %50 = bitcast i8* %49 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %50, %struct.TYPE_20__** %14, align 8
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %52 = icmp eq %struct.TYPE_20__* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = load i32, i32* @NGX_ERROR, align 4
  store i32 %54, i32* %3, align 4
  br label %327

55:                                               ; preds = %43
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = mul i64 72, %64
  %66 = call i8* @ngx_pcalloc(i32 %60, i64 %65)
  %67 = bitcast i8* %66 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %67, %struct.TYPE_21__** %12, align 8
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %69 = icmp eq %struct.TYPE_21__* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %55
  %71 = load i32, i32* @NGX_ERROR, align 4
  store i32 %71, i32* %3, align 4
  br label %327

72:                                               ; preds = %55
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 1
  %77 = zext i1 %76 to i32
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 6
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 3
  store i32* %86, i32** %88, align 8
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 5
  %91 = load %struct.sockaddr*, %struct.sockaddr** %90, align 8
  %92 = icmp ne %struct.sockaddr* %91, null
  br i1 %92, label %93, label %134

93:                                               ; preds = %72
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 5
  %96 = load %struct.sockaddr*, %struct.sockaddr** %95, align 8
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i64 0
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 9
  store %struct.sockaddr* %96, %struct.sockaddr** %99, align 8
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 0
  store i32 %102, i32* %105, align 8
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i64 0
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 8
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 4
  %111 = bitcast %struct.TYPE_19__* %108 to i8*
  %112 = bitcast %struct.TYPE_19__* %110 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %111, i8* align 8 %112, i64 16, i1 false)
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i64 0
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 1
  store i32 1, i32* %115, align 4
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i64 0
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 2
  store i32 1, i32* %118, align 8
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i64 0
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 7
  store i64 0, i64* %121, align 8
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i64 0
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 6
  store i64 0, i64* %124, align 8
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i64 0
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 3
  store i32 1, i32* %127, align 4
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i64 0
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 4
  store i32 10, i32* %130, align 8
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 2
  store %struct.TYPE_21__* %131, %struct.TYPE_21__** %133, align 8
  br label %255

134:                                              ; preds = %72
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 2
  store %struct.TYPE_21__** %136, %struct.TYPE_21__*** %13, align 8
  store i64 0, i64* %9, align 8
  br label %137

137:                                              ; preds = %251, %134
  %138 = load i64, i64* %9, align 8
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = sext i32 %141 to i64
  %143 = icmp ult i64 %138, %142
  br i1 %143, label %144, label %254

144:                                              ; preds = %137
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 3
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %146, align 8
  %148 = load i64, i64* %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %8, align 4
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %8, align 4
  %158 = call i8* @ngx_palloc(i32 %156, i32 %157)
  %159 = bitcast i8* %158 to %struct.sockaddr*
  store %struct.sockaddr* %159, %struct.sockaddr** %11, align 8
  %160 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %161 = icmp eq %struct.sockaddr* %160, null
  br i1 %161, label %162, label %164

162:                                              ; preds = %144
  %163 = load i32, i32* @NGX_ERROR, align 4
  store i32 %163, i32* %3, align 4
  br label %327

164:                                              ; preds = %144
  %165 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %166 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %166, i32 0, i32 3
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %167, align 8
  %169 = load i64, i64* %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %8, align 4
  %174 = call i32 @ngx_memcpy(%struct.sockaddr* %165, i32 %172, i32 %173)
  %175 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @ngx_inet_set_port(%struct.sockaddr* %175, i32 %178)
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @NGX_SOCKADDR_STRLEN, align 4
  %186 = call i32* @ngx_pnalloc(i32 %184, i32 %185)
  store i32* %186, i32** %6, align 8
  %187 = load i32*, i32** %6, align 8
  %188 = icmp eq i32* %187, null
  br i1 %188, label %189, label %191

189:                                              ; preds = %164
  %190 = load i32, i32* @NGX_ERROR, align 4
  store i32 %190, i32* %3, align 4
  br label %327

191:                                              ; preds = %164
  %192 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %193 = load i32, i32* %8, align 4
  %194 = load i32*, i32** %6, align 8
  %195 = load i32, i32* @NGX_SOCKADDR_STRLEN, align 4
  %196 = call i64 @ngx_sock_ntop(%struct.sockaddr* %192, i32 %193, i32* %194, i32 %195, i32 1)
  store i64 %196, i64* %7, align 8
  %197 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %199 = load i64, i64* %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %198, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %200, i32 0, i32 9
  store %struct.sockaddr* %197, %struct.sockaddr** %201, align 8
  %202 = load i32, i32* %8, align 4
  %203 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %204 = load i64, i64* %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %203, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %205, i32 0, i32 0
  store i32 %202, i32* %206, align 8
  %207 = load i64, i64* %7, align 8
  %208 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %209 = load i64, i64* %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %208, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %210, i32 0, i32 8
  %212 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %211, i32 0, i32 0
  store i64 %207, i64* %212, align 8
  %213 = load i32*, i32** %6, align 8
  %214 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %215 = load i64, i64* %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %214, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %216, i32 0, i32 8
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 1
  store i32* %213, i32** %218, align 8
  %219 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %220 = load i64, i64* %9, align 8
  %221 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %219, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %221, i32 0, i32 1
  store i32 1, i32* %222, align 4
  %223 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %224 = load i64, i64* %9, align 8
  %225 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %223, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %225, i32 0, i32 2
  store i32 1, i32* %226, align 8
  %227 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %228 = load i64, i64* %9, align 8
  %229 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %227, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %229, i32 0, i32 7
  store i64 0, i64* %230, align 8
  %231 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %232 = load i64, i64* %9, align 8
  %233 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %231, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %233, i32 0, i32 6
  store i64 0, i64* %234, align 8
  %235 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %236 = load i64, i64* %9, align 8
  %237 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %235, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %237, i32 0, i32 3
  store i32 1, i32* %238, align 4
  %239 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %240 = load i64, i64* %9, align 8
  %241 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %239, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %241, i32 0, i32 4
  store i32 10, i32* %242, align 8
  %243 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %244 = load i64, i64* %9, align 8
  %245 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %243, i64 %244
  %246 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %13, align 8
  store %struct.TYPE_21__* %245, %struct.TYPE_21__** %246, align 8
  %247 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %248 = load i64, i64* %9, align 8
  %249 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %247, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %249, i32 0, i32 5
  store %struct.TYPE_21__** %250, %struct.TYPE_21__*** %13, align 8
  br label %251

251:                                              ; preds = %191
  %252 = load i64, i64* %9, align 8
  %253 = add i64 %252, 1
  store i64 %253, i64* %9, align 8
  br label %137

254:                                              ; preds = %137
  br label %255

255:                                              ; preds = %254, %93
  %256 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %257 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %258 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %257, i32 0, i32 0
  store %struct.TYPE_20__* %256, %struct.TYPE_20__** %258, align 8
  %259 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %260 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %259, i32 0, i32 4
  store i32* null, i32** %260, align 8
  %261 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %262 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %261, i32 0, i32 3
  store i64 0, i64* %262, align 8
  %263 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %264 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %263, i32 0, i32 0
  %265 = load %struct.TYPE_20__*, %struct.TYPE_20__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = sext i32 %267 to i64
  %269 = icmp ule i64 %268, 64
  br i1 %269, label %270, label %277

270:                                              ; preds = %255
  %271 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %272 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %271, i32 0, i32 2
  %273 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %274 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %273, i32 0, i32 1
  store i64* %272, i64** %274, align 8
  %275 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %276 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %275, i32 0, i32 2
  store i64 0, i64* %276, align 8
  br label %304

277:                                              ; preds = %255
  %278 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %279 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %278, i32 0, i32 0
  %280 = load %struct.TYPE_20__*, %struct.TYPE_20__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = sext i32 %282 to i64
  %284 = add i64 %283, 63
  %285 = udiv i64 %284, 64
  store i64 %285, i64* %10, align 8
  %286 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %286, i32 0, i32 1
  %288 = load %struct.TYPE_18__*, %struct.TYPE_18__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = load i64, i64* %10, align 8
  %292 = mul i64 %291, 8
  %293 = call i8* @ngx_pcalloc(i32 %290, i64 %292)
  %294 = bitcast i8* %293 to i64*
  %295 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %296 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %295, i32 0, i32 1
  store i64* %294, i64** %296, align 8
  %297 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %298 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %297, i32 0, i32 1
  %299 = load i64*, i64** %298, align 8
  %300 = icmp eq i64* %299, null
  br i1 %300, label %301, label %303

301:                                              ; preds = %277
  %302 = load i32, i32* @NGX_ERROR, align 4
  store i32 %302, i32* %3, align 4
  br label %327

303:                                              ; preds = %277
  br label %304

304:                                              ; preds = %303, %270
  %305 = load i32, i32* @ngx_stream_upstream_get_round_robin_peer, align 4
  %306 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %307 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %306, i32 0, i32 0
  %308 = load %struct.TYPE_16__*, %struct.TYPE_16__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %309, i32 0, i32 4
  store i32 %305, i32* %310, align 8
  %311 = load i32, i32* @ngx_stream_upstream_free_round_robin_peer, align 4
  %312 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %313 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %312, i32 0, i32 0
  %314 = load %struct.TYPE_16__*, %struct.TYPE_16__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %315, i32 0, i32 3
  store i32 %311, i32* %316, align 4
  %317 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %318 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %317, i32 0, i32 0
  %319 = load %struct.TYPE_20__*, %struct.TYPE_20__** %318, align 8
  %320 = call i32 @ngx_stream_upstream_tries(%struct.TYPE_20__* %319)
  %321 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %322 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %321, i32 0, i32 0
  %323 = load %struct.TYPE_16__*, %struct.TYPE_16__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %324, i32 0, i32 2
  store i32 %320, i32* %325, align 8
  %326 = load i32, i32* @NGX_OK, align 4
  store i32 %326, i32* %3, align 4
  br label %327

327:                                              ; preds = %304, %301, %189, %162, %70, %53, %34
  %328 = load i32, i32* %3, align 4
  ret i32 %328
}

declare dso_local i8* @ngx_palloc(i32, i32) #1

declare dso_local i8* @ngx_pcalloc(i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ngx_memcpy(%struct.sockaddr*, i32, i32) #1

declare dso_local i32 @ngx_inet_set_port(%struct.sockaddr*, i32) #1

declare dso_local i32* @ngx_pnalloc(i32, i32) #1

declare dso_local i64 @ngx_sock_ntop(%struct.sockaddr*, i32, i32*, i32, i32) #1

declare dso_local i32 @ngx_stream_upstream_tries(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
