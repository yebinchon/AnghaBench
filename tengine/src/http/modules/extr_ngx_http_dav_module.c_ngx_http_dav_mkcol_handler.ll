; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_dav_module.c_ngx_http_dav_mkcol_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_dav_module.c_ngx_http_dav_mkcol_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__*, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i8*, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"MKCOL with body is unsupported\00", align 1
@NGX_HTTP_UNSUPPORTED_MEDIA_TYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"MKCOL can create a collection only\00", align 1
@NGX_HTTP_CONFLICT = common dso_local global i32 0, align 4
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"http mkcol path: \22%s\22\00", align 1
@NGX_FILE_ERROR = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_CREATED = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i32 0, align 4
@ngx_create_dir_n = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_17__*)* @ngx_http_dav_mkcol_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_dav_mkcol_handler(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_15__, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load i32, i32* @NGX_LOG_ERR, align 4
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ngx_log_error(i32 %15, i32 %20, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @NGX_HTTP_UNSUPPORTED_MEDIA_TYPE, align 4
  store i32 %22, i32* %3, align 4
  br label %103

23:                                               ; preds = %2
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %27, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 47
  br i1 %37, label %38, label %47

38:                                               ; preds = %23
  %39 = load i32, i32* @NGX_LOG_ERR, align 4
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ngx_log_error(i32 %39, i32 %44, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @NGX_HTTP_CONFLICT, align 4
  store i32 %46, i32* %3, align 4
  br label %103

47:                                               ; preds = %23
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %49 = call i8* @ngx_http_map_uri_to_path(%struct.TYPE_16__* %48, %struct.TYPE_15__* %8, i64* %7, i32 0)
  store i8* %49, i8** %6, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  store i32 %53, i32* %3, align 4
  br label %103

54:                                               ; preds = %47
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 -1
  store i8 0, i8* %56, align 1
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %59, align 8
  %62 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ngx_log_debug1(i32 %62, i32 %67, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ngx_dir_access(i32 %75)
  %77 = call i64 @ngx_create_dir(i32 %72, i32 %76)
  %78 = load i64, i64* @NGX_FILE_ERROR, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %54
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @ngx_http_dav_location(%struct.TYPE_16__* %81, i32 %83)
  %85 = load i64, i64* @NGX_OK, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  store i32 %88, i32* %3, align 4
  br label %103

89:                                               ; preds = %80
  %90 = load i32, i32* @NGX_HTTP_CREATED, align 4
  store i32 %90, i32* %3, align 4
  br label %103

91:                                               ; preds = %54
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @ngx_errno, align 4
  %98 = load i32, i32* @NGX_HTTP_CONFLICT, align 4
  %99 = load i32, i32* @ngx_create_dir_n, align 4
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @ngx_http_dav_error(i32 %96, i32 %97, i32 %98, i32 %99, i32 %101)
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %91, %89, %87, %52, %38, %14
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i8* @ngx_http_map_uri_to_path(%struct.TYPE_16__*, %struct.TYPE_15__*, i64*, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local i64 @ngx_create_dir(i32, i32) #1

declare dso_local i32 @ngx_dir_access(i32) #1

declare dso_local i64 @ngx_http_dav_location(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ngx_http_dav_error(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
