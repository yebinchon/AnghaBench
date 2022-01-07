; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_peer_connection.c_ngx_http_tfs_peer_init.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_peer_connection.c_ngx_http_tfs_peer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_12__, %struct.TYPE_16__*, %struct.TYPE_19__*, i32, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__*, i64 }
%struct.TYPE_14__ = type { i32, i64 }
%struct.TYPE_19__ = type { %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i8*, i32, i32, %struct.TYPE_20__*, i32*, i32, i64, i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_20__* }
%struct.sockaddr_in = type { i32, i32 }

@NGX_HTTP_TFS_SERVER_COUNT = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_NAME_SERVER = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_DATA_SERVER = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_ROOT_SERVER = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_META_SERVER = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_RC_SERVER = common dso_local global i64 0, align 8
@rcs_name = common dso_local global i32 0, align 4
@NGX_ERROR_ERR = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s:%d\00", align 1
@ns_name = common dso_local global i32 0, align 4
@ds_name = common dso_local global i32 0, align 4
@rs_name = common dso_local global i32 0, align 4
@ms_name = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_tfs_peer_init(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 6
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  store %struct.TYPE_20__* %16, %struct.TYPE_20__** %6, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @NGX_HTTP_TFS_SERVER_COUNT, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 64, %21
  %23 = trunc i64 %22 to i32
  %24 = call %struct.TYPE_19__* @ngx_pcalloc(i32 %19, i32 %23)
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 4
  store %struct.TYPE_19__* %24, %struct.TYPE_19__** %26, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 4
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %28, align 8
  %30 = icmp eq %struct.TYPE_19__* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load i32, i32* @NGX_ERROR, align 4
  store i32 %32, i32* %2, align 4
  br label %320

33:                                               ; preds = %1
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 4
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %35, align 8
  %37 = load i64, i64* @NGX_HTTP_TFS_NAME_SERVER, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i64 %37
  store %struct.TYPE_19__* %38, %struct.TYPE_19__** %8, align 8
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 4
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %40, align 8
  %42 = load i64, i64* @NGX_HTTP_TFS_DATA_SERVER, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i64 %42
  store %struct.TYPE_19__* %43, %struct.TYPE_19__** %11, align 8
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 4
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %45, align 8
  %47 = load i64, i64* @NGX_HTTP_TFS_ROOT_SERVER, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i64 %47
  store %struct.TYPE_19__* %48, %struct.TYPE_19__** %9, align 8
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 4
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %50, align 8
  %52 = load i64, i64* @NGX_HTTP_TFS_META_SERVER, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i64 %52
  store %struct.TYPE_19__* %53, %struct.TYPE_19__** %10, align 8
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 3
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %143

62:                                               ; preds = %33
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 4
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %64, align 8
  %66 = load i64, i64* @NGX_HTTP_TFS_RC_SERVER, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i64 %66
  store %struct.TYPE_19__* %67, %struct.TYPE_19__** %7, align 8
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 6
  store i64 %76, i64* %79, align 8
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 3
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 7
  store i32 %88, i32* %91, align 8
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 5
  store i32 %94, i32* %97, align 8
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 4
  store i32* @rcs_name, i32** %100, align 8
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 3
  store %struct.TYPE_20__* %101, %struct.TYPE_20__** %104, align 8
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 2
  store i32 %107, i32* %110, align 4
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 1
  store i32 %113, i32* %116, align 8
  %117 = load i8*, i8** @NGX_ERROR_ERR, align 8
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  store i8* %117, i8** %120, align 8
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 6
  %124 = load i64, i64* %123, align 8
  %125 = inttoptr i64 %124 to %struct.sockaddr_in*
  %126 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i8* @inet_ntoa(i32 %127)
  store i8* %128, i8** %4, align 8
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 6
  %132 = load i64, i64* %131, align 8
  %133 = inttoptr i64 %132 to %struct.sockaddr_in*
  %134 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @ntohs(i32 %135)
  store i32 %136, i32* %5, align 4
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load i8*, i8** %4, align 8
  %141 = load i32, i32* %5, align 4
  %142 = call i32 @ngx_sprintf(i32 %139, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %140, i32 %141)
  br label %190

143:                                              ; preds = %33
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 3
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 6
  store i64 %152, i64* %155, align 8
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 3
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 7
  store i32 %164, i32* %167, align 8
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 6
  %171 = load i64, i64* %170, align 8
  %172 = inttoptr i64 %171 to %struct.sockaddr_in*
  %173 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = call i8* @inet_ntoa(i32 %174)
  store i8* %175, i8** %4, align 8
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 6
  %179 = load i64, i64* %178, align 8
  %180 = inttoptr i64 %179 to %struct.sockaddr_in*
  %181 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @ntohs(i32 %182)
  store i32 %183, i32* %5, align 4
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = load i8*, i8** %4, align 8
  %188 = load i32, i32* %5, align 4
  %189 = call i32 @ngx_sprintf(i32 %186, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %187, i32 %188)
  br label %190

190:                                              ; preds = %143, %62
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 5
  store i32 %193, i32* %196, align 8
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 4
  store i32* @ns_name, i32** %199, align 8
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 3
  store %struct.TYPE_20__* %200, %struct.TYPE_20__** %203, align 8
  %204 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 2
  store i32 %206, i32* %209, align 4
  %210 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i32 0, i32 1
  store i32 %212, i32* %215, align 8
  %216 = load i8*, i8** @NGX_ERROR_ERR, align 8
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %218, i32 0, i32 0
  store i8* %216, i8** %219, align 8
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %224 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %224, i32 0, i32 5
  store i32 %222, i32* %225, align 8
  %226 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %227 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %227, i32 0, i32 4
  store i32* @ds_name, i32** %228, align 8
  %229 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %230 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %231, i32 0, i32 3
  store %struct.TYPE_20__* %229, %struct.TYPE_20__** %232, align 8
  %233 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %237 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %237, i32 0, i32 2
  store i32 %235, i32* %238, align 4
  %239 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %243 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %243, i32 0, i32 1
  store i32 %241, i32* %244, align 8
  %245 = load i8*, i8** @NGX_ERROR_ERR, align 8
  %246 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %247 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %247, i32 0, i32 0
  store i8* %245, i8** %248, align 8
  %249 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %249, i32 0, i32 2
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = icmp eq i32 %252, 1
  br i1 %253, label %254, label %257

254:                                              ; preds = %190
  %255 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %255, i32 0, i32 0
  store i32 3, i32* %256, align 8
  br label %318

257:                                              ; preds = %190
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %262 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %262, i32 0, i32 5
  store i32 %260, i32* %263, align 8
  %264 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %265 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %265, i32 0, i32 4
  store i32* @rs_name, i32** %266, align 8
  %267 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %268 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %269 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %269, i32 0, i32 3
  store %struct.TYPE_20__* %267, %struct.TYPE_20__** %270, align 8
  %271 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %272 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %275 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %275, i32 0, i32 2
  store i32 %273, i32* %276, align 4
  %277 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %281 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %281, i32 0, i32 1
  store i32 %279, i32* %282, align 8
  %283 = load i8*, i8** @NGX_ERROR_ERR, align 8
  %284 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %285 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %285, i32 0, i32 0
  store i8* %283, i8** %286, align 8
  %287 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %288 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %291 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %291, i32 0, i32 5
  store i32 %289, i32* %292, align 8
  %293 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %294 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %294, i32 0, i32 4
  store i32* @ms_name, i32** %295, align 8
  %296 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %297 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %298 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %298, i32 0, i32 3
  store %struct.TYPE_20__* %296, %struct.TYPE_20__** %299, align 8
  %300 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %301 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %304 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %304, i32 0, i32 2
  store i32 %302, i32* %305, align 4
  %306 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %307 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %310 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %310, i32 0, i32 1
  store i32 %308, i32* %311, align 8
  %312 = load i8*, i8** @NGX_ERROR_ERR, align 8
  %313 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %314 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %314, i32 0, i32 0
  store i8* %312, i8** %315, align 8
  %316 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %317 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %316, i32 0, i32 0
  store i32 5, i32* %317, align 8
  br label %318

318:                                              ; preds = %257, %254
  %319 = load i32, i32* @NGX_OK, align 4
  store i32 %319, i32* %2, align 4
  br label %320

320:                                              ; preds = %318, %31
  %321 = load i32, i32* %2, align 4
  ret i32 %321
}

declare dso_local %struct.TYPE_19__* @ngx_pcalloc(i32, i32) #1

declare dso_local i8* @inet_ntoa(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @ngx_sprintf(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
