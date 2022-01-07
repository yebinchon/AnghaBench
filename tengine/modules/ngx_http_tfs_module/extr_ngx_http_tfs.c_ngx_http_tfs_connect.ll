; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs.c_ngx_http_tfs_connect.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs.c_ngx_http_tfs_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { {}*, %struct.TYPE_31__*, %struct.TYPE_30__, %struct.TYPE_25__, %struct.TYPE_34__*, %struct.TYPE_35__* }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_30__ = type { i64, %struct.TYPE_23__*, i32*, i32** }
%struct.TYPE_23__ = type { %struct.TYPE_27__*, i32, %struct.TYPE_29__*, %struct.TYPE_26__*, i32, %struct.TYPE_33__* }
%struct.TYPE_27__ = type { i32, i8* }
%struct.TYPE_29__ = type { i32, i8* }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_34__ = type { i32, %struct.TYPE_32__ }
%struct.TYPE_32__ = type { %struct.TYPE_24__*, %struct.TYPE_23__*, i32 }
%struct.TYPE_24__ = type { i8* }
%struct.TYPE_35__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"connecting server\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"create %V (%s) request failed\00", align 1
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"connecting %V, addr: %s\00", align 1
@NGX_BUSY = common dso_local global i64 0, align 8
@NGX_DECLINED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"connect to (%V: %s) failed\00", align 1
@ngx_http_tfs_event_handler = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"create connection pool failed\00", align 1
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_tfs_connect(%struct.TYPE_33__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_33__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_35__*, align 8
  %7 = alloca %struct.TYPE_32__*, align 8
  %8 = alloca %struct.TYPE_34__*, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %3, align 8
  %9 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %9, i32 0, i32 4
  %11 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  store %struct.TYPE_34__* %11, %struct.TYPE_34__** %8, align 8
  %12 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %12, i32 0, i32 1
  store %struct.TYPE_32__* %13, %struct.TYPE_32__** %7, align 8
  %14 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %14, i32 0, i32 5
  %16 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  store %struct.TYPE_35__* %16, %struct.TYPE_35__** %6, align 8
  %17 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  %21 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %21, i32 0, i32 0
  %23 = bitcast {}** %22 to i64 (%struct.TYPE_33__*)**
  %24 = load i64 (%struct.TYPE_33__*)*, i64 (%struct.TYPE_33__*)** %23, align 8
  %25 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %26 = call i64 %24(%struct.TYPE_33__* %25)
  store i64 %26, i64* %4, align 8
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @NGX_ERROR, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %1
  %31 = load i32, i32* @NGX_LOG_ERR, align 4
  %32 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %33, align 8
  %35 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (i32, %struct.TYPE_24__*, i32, i8*, ...) @ngx_log_error(i32 %31, %struct.TYPE_24__* %34, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %40)
  %42 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %43 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %44 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  %45 = call i32 @ngx_http_tfs_finalize_request(%struct.TYPE_35__* %42, %struct.TYPE_33__* %43, i32 %44)
  %46 = load i64, i64* %4, align 8
  store i64 %46, i64* %2, align 8
  br label %215

47:                                               ; preds = %1
  %48 = load i32, i32* @NGX_LOG_DEBUG, align 4
  %49 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %50, align 8
  %52 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i32, %struct.TYPE_24__*, i32, i8*, ...) @ngx_log_error(i32 %48, %struct.TYPE_24__* %51, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %54, i32 %57)
  %59 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %60 = call i64 @ngx_event_connect_peer(%struct.TYPE_32__* %59)
  store i64 %60, i64* %4, align 8
  %61 = load i64, i64* %4, align 8
  %62 = load i64, i64* @NGX_ERROR, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %72, label %64

64:                                               ; preds = %47
  %65 = load i64, i64* %4, align 8
  %66 = load i64, i64* @NGX_BUSY, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i64, i64* %4, align 8
  %70 = load i64, i64* @NGX_DECLINED, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %90

72:                                               ; preds = %68, %64, %47
  %73 = load i32, i32* @NGX_LOG_ERR, align 4
  %74 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %75, align 8
  %77 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (i32, %struct.TYPE_24__*, i32, i8*, ...) @ngx_log_error(i32 %73, %struct.TYPE_24__* %76, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %79, i32 %82)
  %84 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %85 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %85, i32 0, i32 4
  %87 = load %struct.TYPE_34__*, %struct.TYPE_34__** %86, align 8
  %88 = call i32 @ngx_http_tfs_handle_connection_failure(%struct.TYPE_33__* %84, %struct.TYPE_34__* %87)
  %89 = load i64, i64* %4, align 8
  store i64 %89, i64* %2, align 8
  br label %215

90:                                               ; preds = %68
  %91 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %92, align 8
  store %struct.TYPE_23__* %93, %struct.TYPE_23__** %5, align 8
  %94 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 5
  store %struct.TYPE_33__* %94, %struct.TYPE_33__** %96, align 8
  %97 = load i8*, i8** @ngx_http_tfs_event_handler, align 8
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_29__*, %struct.TYPE_29__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %100, i32 0, i32 1
  store i8* %97, i8** %101, align 8
  %102 = load i8*, i8** @ngx_http_tfs_event_handler, align 8
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_27__*, %struct.TYPE_27__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %105, i32 0, i32 1
  store i8* %102, i8** %106, align 8
  %107 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_28__*, %struct.TYPE_28__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = and i32 %114, %111
  store i32 %115, i32* %113, align 8
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 0
  store i32 %118, i32* %121, align 8
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 3
  %124 = load %struct.TYPE_26__*, %struct.TYPE_26__** %123, align 8
  %125 = icmp eq %struct.TYPE_26__* %124, null
  br i1 %125, label %126, label %151

126:                                              ; preds = %90
  %127 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_28__*, %struct.TYPE_28__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call %struct.TYPE_26__* @ngx_create_pool(i32 128, i32 %131)
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 3
  store %struct.TYPE_26__* %132, %struct.TYPE_26__** %134, align 8
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 3
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %136, align 8
  %138 = icmp eq %struct.TYPE_26__* %137, null
  br i1 %138, label %139, label %150

139:                                              ; preds = %126
  %140 = load i32, i32* @NGX_LOG_ERR, align 4
  %141 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_24__*, %struct.TYPE_24__** %142, align 8
  %144 = call i32 (i32, %struct.TYPE_24__*, i32, i8*, ...) @ngx_log_error(i32 %140, %struct.TYPE_24__* %143, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %145 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %146 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %147 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  %148 = call i32 @ngx_http_tfs_finalize_request(%struct.TYPE_35__* %145, %struct.TYPE_33__* %146, i32 %147)
  %149 = load i64, i64* @NGX_ERROR, align 8
  store i64 %149, i64* %2, align 8
  br label %215

150:                                              ; preds = %126
  br label %151

151:                                              ; preds = %150, %90
  %152 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_28__*, %struct.TYPE_28__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 8
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 3
  %164 = load %struct.TYPE_26__*, %struct.TYPE_26__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %164, i32 0, i32 0
  store i32 %161, i32* %165, align 4
  %166 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %169, i32 0, i32 2
  %171 = load %struct.TYPE_29__*, %struct.TYPE_29__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %171, i32 0, i32 0
  store i32 %168, i32* %172, align 8
  %173 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_27__*, %struct.TYPE_27__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %178, i32 0, i32 0
  store i32 %175, i32* %179, align 8
  %180 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %181, i32 0, i32 2
  store i32* null, i32** %182, align 8
  %183 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %184, i32 0, i32 2
  %186 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %187, i32 0, i32 3
  store i32** %185, i32*** %188, align 8
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %190 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %191, i32 0, i32 1
  store %struct.TYPE_23__* %189, %struct.TYPE_23__** %192, align 8
  %193 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %194, i32 0, i32 0
  store i64 0, i64* %195, align 8
  %196 = load i64, i64* %4, align 8
  %197 = load i64, i64* @NGX_AGAIN, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %210

199:                                              ; preds = %151
  %200 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %200, i32 0, i32 0
  %202 = load %struct.TYPE_27__*, %struct.TYPE_27__** %201, align 8
  %203 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %203, i32 0, i32 1
  %205 = load %struct.TYPE_31__*, %struct.TYPE_31__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @ngx_add_timer(%struct.TYPE_27__* %202, i32 %207)
  %209 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %209, i64* %2, align 8
  br label %215

210:                                              ; preds = %151
  %211 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %212 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %213 = call i32 @ngx_http_tfs_send(%struct.TYPE_35__* %211, %struct.TYPE_33__* %212)
  %214 = load i64, i64* @NGX_OK, align 8
  store i64 %214, i64* %2, align 8
  br label %215

215:                                              ; preds = %210, %199, %139, %72, %30
  %216 = load i64, i64* %2, align 8
  ret i64 %216
}

declare dso_local i32 @ngx_log_error(i32, %struct.TYPE_24__*, i32, i8*, ...) #1

declare dso_local i32 @ngx_http_tfs_finalize_request(%struct.TYPE_35__*, %struct.TYPE_33__*, i32) #1

declare dso_local i64 @ngx_event_connect_peer(%struct.TYPE_32__*) #1

declare dso_local i32 @ngx_http_tfs_handle_connection_failure(%struct.TYPE_33__*, %struct.TYPE_34__*) #1

declare dso_local %struct.TYPE_26__* @ngx_create_pool(i32, i32) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @ngx_http_tfs_send(%struct.TYPE_35__*, %struct.TYPE_33__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
