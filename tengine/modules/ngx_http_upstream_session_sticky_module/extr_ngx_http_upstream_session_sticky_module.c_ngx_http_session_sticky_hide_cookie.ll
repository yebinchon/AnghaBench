; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_session_sticky_module/extr_ngx_http_upstream_session_sticky_module.c_ngx_http_session_sticky_hide_cookie.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_session_sticky_module/extr_ngx_http_upstream_session_sticky_module.c_ngx_http_session_sticky_hide_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i64 }

@.str = private unnamed_addr constant [22 x i8] c"session_sticky_header\00", align 1
@ngx_conf_deprecated_session_sticky_header = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"upstream=\00", align 1
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"invalid upstream name\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_CONF_OK = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"invalid argument of \22%V\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_18__*, i32*, i8*)* @ngx_http_session_sticky_hide_cookie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_session_sticky_hide_cookie(%struct.TYPE_18__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_15__, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %13, %struct.TYPE_17__** %8, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %10, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @ngx_strncmp(i64 %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 21)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %28 = call i32 @ngx_conf_deprecated(%struct.TYPE_18__* %27, i32* @ngx_conf_deprecated_session_sticky_header, i32* null)
  br label %29

29:                                               ; preds = %26, %3
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i64 1
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @ngx_strncmp(i64 %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 9)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %71

36:                                               ; preds = %29
  store i64 9, i64* %9, align 8
  %37 = call i32 @ngx_memzero(%struct.TYPE_15__* %11, i32 24)
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i64 1
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %9, align 8
  %43 = sub i64 %41, %42
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i64 1
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %9, align 8
  %51 = add i64 %49, %50
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  store i32 1, i32* %55, align 4
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %57 = call i32* @ngx_http_upstream_add(%struct.TYPE_18__* %56, %struct.TYPE_15__* %11, i32 0)
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  store i32* %57, i32** %59, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %36
  %65 = load i32, i32* @NGX_LOG_EMERG, align 4
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %67 = call i32 (i32, %struct.TYPE_18__*, i32, i8*, ...) @ngx_conf_log_error(i32 %65, %struct.TYPE_18__* %66, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %68, i8** %4, align 8
  br label %78

69:                                               ; preds = %36
  %70 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %70, i8** %4, align 8
  br label %78

71:                                               ; preds = %29
  %72 = load i32, i32* @NGX_LOG_EMERG, align 4
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i64 1
  %76 = call i32 (i32, %struct.TYPE_18__*, i32, i8*, ...) @ngx_conf_log_error(i32 %72, %struct.TYPE_18__* %73, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_16__* %75)
  %77 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %77, i8** %4, align 8
  br label %78

78:                                               ; preds = %71, %69, %64
  %79 = load i8*, i8** %4, align 8
  ret i8* %79
}

declare dso_local i64 @ngx_strncmp(i64, i8*, i32) #1

declare dso_local i32 @ngx_conf_deprecated(%struct.TYPE_18__*, i32*, i32*) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_15__*, i32) #1

declare dso_local i32* @ngx_http_upstream_add(%struct.TYPE_18__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_18__*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
