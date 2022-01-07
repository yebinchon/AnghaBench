; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_upstream_round_robin.c_ngx_http_upstream_create_round_robin_peer.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_upstream_round_robin.c_ngx_http_upstream_create_round_robin_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_20__*, i64*, i64, i64, i32* }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_21__*, %struct.TYPE_18__*, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i64, %struct.TYPE_21__*, i64, i64, %struct.TYPE_19__, %struct.TYPE_18__, %struct.sockaddr* }
%struct.TYPE_19__ = type { i32*, i64 }
%struct.TYPE_18__ = type { i64, i32* }
%struct.sockaddr = type { i32 }
%struct.TYPE_23__ = type { i32, i32, i32, %struct.TYPE_17__*, %struct.TYPE_18__, %struct.TYPE_18__, %struct.sockaddr* }
%struct.TYPE_17__ = type { i32, i32 }

@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_SOCKADDR_STRLEN = common dso_local global i32 0, align 4
@ngx_http_upstream_get_round_robin_peer = common dso_local global i32 0, align 4
@ngx_http_upstream_free_round_robin_peer = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_CONF_UNSET_UINT = common dso_local global i32 0, align 4
@ngx_http_upstream_empty_save_session = common dso_local global i32 0, align 4
@ngx_http_upstream_empty_set_session = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_upstream_create_round_robin_peer(%struct.TYPE_14__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca i64, align 8
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
  br i1 %23, label %24, label %41

24:                                               ; preds = %2
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i8* @ngx_palloc(i32 %27, i32 40)
  %29 = bitcast i8* %28 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %29, %struct.TYPE_22__** %15, align 8
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %31 = icmp eq %struct.TYPE_22__* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i64, i64* @NGX_ERROR, align 8
  store i64 %33, i64* %3, align 8
  br label %327

34:                                               ; preds = %24
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 5
  store %struct.TYPE_22__* %35, %struct.TYPE_22__** %40, align 8
  br label %41

41:                                               ; preds = %34, %2
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i8* @ngx_pcalloc(i32 %44, i64 32)
  %46 = bitcast i8* %45 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %46, %struct.TYPE_20__** %14, align 8
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %48 = icmp eq %struct.TYPE_20__* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i64, i64* @NGX_ERROR, align 8
  store i64 %50, i64* %3, align 8
  br label %327

51:                                               ; preds = %41
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = mul i64 96, %58
  %60 = call i8* @ngx_pcalloc(i32 %54, i64 %59)
  %61 = bitcast i8* %60 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %61, %struct.TYPE_21__** %12, align 8
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %63 = icmp eq %struct.TYPE_21__* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %51
  %65 = load i64, i64* @NGX_ERROR, align 8
  store i64 %65, i64* %3, align 8
  br label %327

66:                                               ; preds = %51
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 1
  %71 = zext i1 %70 to i32
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 4
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 3
  store %struct.TYPE_18__* %80, %struct.TYPE_18__** %82, align 8
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 6
  %85 = load %struct.sockaddr*, %struct.sockaddr** %84, align 8
  %86 = icmp ne %struct.sockaddr* %85, null
  br i1 %86, label %87, label %140

87:                                               ; preds = %66
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 6
  %90 = load %struct.sockaddr*, %struct.sockaddr** %89, align 8
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i64 0
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 11
  store %struct.sockaddr* %90, %struct.sockaddr** %93, align 8
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i64 0
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 8
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i64 0
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 10
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 5
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %113

108:                                              ; preds = %87
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 5
  %111 = bitcast %struct.TYPE_18__* %102 to i8*
  %112 = bitcast %struct.TYPE_18__* %110 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %111, i8* align 8 %112, i64 16, i1 false)
  br label %118

113:                                              ; preds = %87
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 4
  %116 = bitcast %struct.TYPE_18__* %102 to i8*
  %117 = bitcast %struct.TYPE_18__* %115 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %116, i8* align 8 %117, i64 16, i1 false)
  br label %118

118:                                              ; preds = %113, %108
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i64 0
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 1
  store i32 1, i32* %121, align 4
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i64 0
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 2
  store i32 1, i32* %124, align 8
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i64 0
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 8
  store i64 0, i64* %127, align 8
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i64 0
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 7
  store i64 0, i64* %130, align 8
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i64 0
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 3
  store i32 1, i32* %133, align 4
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i64 0
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 4
  store i32 10, i32* %136, align 8
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 2
  store %struct.TYPE_21__* %137, %struct.TYPE_21__** %139, align 8
  br label %257

140:                                              ; preds = %66
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 2
  store %struct.TYPE_21__** %142, %struct.TYPE_21__*** %13, align 8
  store i64 0, i64* %9, align 8
  br label %143

143:                                              ; preds = %253, %140
  %144 = load i64, i64* %9, align 8
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = sext i32 %147 to i64
  %149 = icmp ult i64 %144, %148
  br i1 %149, label %150, label %256

150:                                              ; preds = %143
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %151, i32 0, i32 3
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %152, align 8
  %154 = load i64, i64* %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %8, align 4
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* %8, align 4
  %162 = call i8* @ngx_palloc(i32 %160, i32 %161)
  %163 = bitcast i8* %162 to %struct.sockaddr*
  store %struct.sockaddr* %163, %struct.sockaddr** %11, align 8
  %164 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %165 = icmp eq %struct.sockaddr* %164, null
  br i1 %165, label %166, label %168

166:                                              ; preds = %150
  %167 = load i64, i64* @NGX_ERROR, align 8
  store i64 %167, i64* %3, align 8
  br label %327

168:                                              ; preds = %150
  %169 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 3
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %171, align 8
  %173 = load i64, i64* %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %8, align 4
  %178 = call i32 @ngx_memcpy(%struct.sockaddr* %169, i32 %176, i32 %177)
  %179 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @ngx_inet_set_port(%struct.sockaddr* %179, i32 %182)
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @NGX_SOCKADDR_STRLEN, align 4
  %188 = call i32* @ngx_pnalloc(i32 %186, i32 %187)
  store i32* %188, i32** %6, align 8
  %189 = load i32*, i32** %6, align 8
  %190 = icmp eq i32* %189, null
  br i1 %190, label %191, label %193

191:                                              ; preds = %168
  %192 = load i64, i64* @NGX_ERROR, align 8
  store i64 %192, i64* %3, align 8
  br label %327

193:                                              ; preds = %168
  %194 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %195 = load i32, i32* %8, align 4
  %196 = load i32*, i32** %6, align 8
  %197 = load i32, i32* @NGX_SOCKADDR_STRLEN, align 4
  %198 = call i64 @ngx_sock_ntop(%struct.sockaddr* %194, i32 %195, i32* %196, i32 %197, i32 1)
  store i64 %198, i64* %7, align 8
  %199 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %201 = load i64, i64* %9, align 8
  %202 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %200, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 11
  store %struct.sockaddr* %199, %struct.sockaddr** %203, align 8
  %204 = load i32, i32* %8, align 4
  %205 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %206 = load i64, i64* %9, align 8
  %207 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %205, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %207, i32 0, i32 0
  store i32 %204, i32* %208, align 8
  %209 = load i64, i64* %7, align 8
  %210 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %211 = load i64, i64* %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %210, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %212, i32 0, i32 10
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 0
  store i64 %209, i64* %214, align 8
  %215 = load i32*, i32** %6, align 8
  %216 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %217 = load i64, i64* %9, align 8
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %216, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %218, i32 0, i32 10
  %220 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %219, i32 0, i32 1
  store i32* %215, i32** %220, align 8
  %221 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %222 = load i64, i64* %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %221, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %223, i32 0, i32 1
  store i32 1, i32* %224, align 4
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %226 = load i64, i64* %9, align 8
  %227 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %225, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %227, i32 0, i32 2
  store i32 1, i32* %228, align 8
  %229 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %230 = load i64, i64* %9, align 8
  %231 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %229, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %231, i32 0, i32 8
  store i64 0, i64* %232, align 8
  %233 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %234 = load i64, i64* %9, align 8
  %235 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %233, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %235, i32 0, i32 7
  store i64 0, i64* %236, align 8
  %237 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %238 = load i64, i64* %9, align 8
  %239 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %237, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %239, i32 0, i32 3
  store i32 1, i32* %240, align 4
  %241 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %242 = load i64, i64* %9, align 8
  %243 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %241, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %243, i32 0, i32 4
  store i32 10, i32* %244, align 8
  %245 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %246 = load i64, i64* %9, align 8
  %247 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %245, i64 %246
  %248 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %13, align 8
  store %struct.TYPE_21__* %247, %struct.TYPE_21__** %248, align 8
  %249 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %250 = load i64, i64* %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %249, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %251, i32 0, i32 6
  store %struct.TYPE_21__** %252, %struct.TYPE_21__*** %13, align 8
  br label %253

253:                                              ; preds = %193
  %254 = load i64, i64* %9, align 8
  %255 = add i64 %254, 1
  store i64 %255, i64* %9, align 8
  br label %143

256:                                              ; preds = %143
  br label %257

257:                                              ; preds = %256, %118
  %258 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %259 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %260 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %259, i32 0, i32 0
  store %struct.TYPE_20__* %258, %struct.TYPE_20__** %260, align 8
  %261 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %262 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %261, i32 0, i32 4
  store i32* null, i32** %262, align 8
  %263 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %264 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %263, i32 0, i32 3
  store i64 0, i64* %264, align 8
  %265 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %266 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %265, i32 0, i32 0
  %267 = load %struct.TYPE_20__*, %struct.TYPE_20__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = sext i32 %269 to i64
  %271 = icmp ule i64 %270, 64
  br i1 %271, label %272, label %279

272:                                              ; preds = %257
  %273 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %274 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %273, i32 0, i32 2
  %275 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %276 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %275, i32 0, i32 1
  store i64* %274, i64** %276, align 8
  %277 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %278 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %277, i32 0, i32 2
  store i64 0, i64* %278, align 8
  br label %304

279:                                              ; preds = %257
  %280 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %281 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %280, i32 0, i32 0
  %282 = load %struct.TYPE_20__*, %struct.TYPE_20__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = sext i32 %284 to i64
  %286 = add i64 %285, 63
  %287 = udiv i64 %286, 64
  store i64 %287, i64* %10, align 8
  %288 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 8
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

301:                                              ; preds = %279
  %302 = load i64, i64* @NGX_ERROR, align 8
  store i64 %302, i64* %3, align 8
  br label %327

303:                                              ; preds = %279
  br label %304

304:                                              ; preds = %303, %272
  %305 = load i32, i32* @ngx_http_upstream_get_round_robin_peer, align 4
  %306 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %307 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %306, i32 0, i32 0
  %308 = load %struct.TYPE_16__*, %struct.TYPE_16__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %309, i32 0, i32 4
  store i32 %305, i32* %310, align 8
  %311 = load i32, i32* @ngx_http_upstream_free_round_robin_peer, align 4
  %312 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %313 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %312, i32 0, i32 0
  %314 = load %struct.TYPE_16__*, %struct.TYPE_16__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %315, i32 0, i32 3
  store i32 %311, i32* %316, align 4
  %317 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %318 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %317, i32 0, i32 0
  %319 = load %struct.TYPE_20__*, %struct.TYPE_20__** %318, align 8
  %320 = call i32 @ngx_http_upstream_tries(%struct.TYPE_20__* %319)
  %321 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %322 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %321, i32 0, i32 0
  %323 = load %struct.TYPE_16__*, %struct.TYPE_16__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %324, i32 0, i32 2
  store i32 %320, i32* %325, align 8
  %326 = load i64, i64* @NGX_OK, align 8
  store i64 %326, i64* %3, align 8
  br label %327

327:                                              ; preds = %304, %301, %191, %166, %64, %49, %32
  %328 = load i64, i64* %3, align 8
  ret i64 %328
}

declare dso_local i8* @ngx_palloc(i32, i32) #1

declare dso_local i8* @ngx_pcalloc(i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ngx_memcpy(%struct.sockaddr*, i32, i32) #1

declare dso_local i32 @ngx_inet_set_port(%struct.sockaddr*, i32) #1

declare dso_local i32* @ngx_pnalloc(i32, i32) #1

declare dso_local i64 @ngx_sock_ntop(%struct.sockaddr*, i32, i32*, i32, i32) #1

declare dso_local i32 @ngx_http_upstream_tries(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
