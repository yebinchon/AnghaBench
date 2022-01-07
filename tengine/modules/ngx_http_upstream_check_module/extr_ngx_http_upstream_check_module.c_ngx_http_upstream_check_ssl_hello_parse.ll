; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_check_module/extr_ngx_http_upstream_check_module.c_ngx_http_upstream_check_ssl_hello_parse.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_check_module/extr_ngx_http_upstream_check_module.c_ngx_http_upstream_check_ssl_hello_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_12__ = type { i64, i64, %struct.TYPE_11__, i32, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@NGX_AGAIN = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@ngx_cycle = common dso_local global %struct.TYPE_15__* null, align 8
@.str = private unnamed_addr constant [109 x i8] c"http check ssl_parse, type: %ud, version: %ud.%ud, length: %ud, handshanke_type: %ud, hello_version: %ud.%ud\00", align 1
@NGX_SSL_HANDSHAKE = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_SSL_SERVER_HELLO = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @ngx_http_upstream_check_ssl_hello_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_upstream_check_ssl_hello_parse(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_14__* %9, %struct.TYPE_14__** %6, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = sub i64 %13, %17
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp ult i64 %19, 40
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @NGX_AGAIN, align 4
  store i32 %22, i32* %2, align 4
  br label %77

23:                                               ; preds = %1
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %28, %struct.TYPE_12__** %5, align 8
  %29 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** @ngx_cycle, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @ntohs(i32 %46)
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @ngx_log_debug7(i32 %29, i32 %32, i32 0, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str, i64 0, i64 0), i64 %35, i32 %39, i32 %43, i32 %47, i64 %50, i32 %54, i32 %58)
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @NGX_SSL_HANDSHAKE, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %23
  %66 = load i32, i32* @NGX_ERROR, align 4
  store i32 %66, i32* %2, align 4
  br label %77

67:                                               ; preds = %23
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @NGX_SSL_SERVER_HELLO, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* @NGX_ERROR, align 4
  store i32 %74, i32* %2, align 4
  br label %77

75:                                               ; preds = %67
  %76 = load i32, i32* @NGX_OK, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %75, %73, %65, %21
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @ngx_log_debug7(i32, i32, i32, i8*, i64, i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
