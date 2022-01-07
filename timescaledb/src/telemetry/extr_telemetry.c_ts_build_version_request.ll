; ModuleID = '/home/carl/AnghaBench/timescaledb/src/telemetry/extr_telemetry.c_ts_build_version_request.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/telemetry/extr_telemetry.c_ts_build_version_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@HTTP_POST = common dso_local global i32 0, align 4
@HTTP_VERSION_10 = common dso_local global i32 0, align 4
@HTTP_CONTENT_TYPE = common dso_local global i32 0, align 4
@TIMESCALE_TYPE = common dso_local global i8* null, align 8
@HTTP_CONTENT_LENGTH = common dso_local global i32 0, align 4
@HTTP_HOST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ts_build_version_request(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [5 x i8], align 1
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = call %struct.TYPE_3__* (...) @build_version_body()
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @snprintf(i8* %9, i32 5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @HTTP_POST, align 4
  %15 = call i32* @ts_http_request_create(i32 %14)
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @ts_http_request_set_uri(i32* %16, i8* %17)
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* @HTTP_VERSION_10, align 4
  %21 = call i32 @ts_http_request_set_version(i32* %19, i32 %20)
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* @HTTP_CONTENT_TYPE, align 4
  %24 = load i8*, i8** @TIMESCALE_TYPE, align 8
  %25 = call i32 @ts_http_request_set_header(i32* %22, i32 %23, i8* %24)
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* @HTTP_CONTENT_LENGTH, align 4
  %28 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0
  %29 = call i32 @ts_http_request_set_header(i32* %26, i32 %27, i8* %28)
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* @HTTP_HOST, align 4
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @ts_http_request_set_header(i32* %30, i32 %31, i8* %32)
  %34 = load i32*, i32** %6, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ts_http_request_set_body(i32* %34, i32 %37, i32 %40)
  %42 = load i32*, i32** %6, align 8
  ret i32* %42
}

declare dso_local %struct.TYPE_3__* @build_version_body(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32* @ts_http_request_create(i32) #1

declare dso_local i32 @ts_http_request_set_uri(i32*, i8*) #1

declare dso_local i32 @ts_http_request_set_version(i32*, i32) #1

declare dso_local i32 @ts_http_request_set_header(i32*, i32, i8*) #1

declare dso_local i32 @ts_http_request_set_body(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
