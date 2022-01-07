; ModuleID = '/home/carl/AnghaBench/timescaledb/test/src/telemetry/extr_test_telemetry.c_test_factory.c'
source_filename = "/home/carl/AnghaBench/timescaledb/test/src/telemetry/extr_test_telemetry.c_test_factory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"could not initialize a connection\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"connection error: %s\00", align 1
@HTTP_ERROR_NONE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"endpoint sent back unexpected HTTP status: %d\00", align 1
@jsonb_in = common dso_local global i32 0, align 4
@CONNECTION_MOCK = common dso_local global i64 0, align 8
@test_string = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i8*, i32)* @test_factory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_factory(i64 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* null, i32** %12, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i32* @ts_connection_create(i64 %16)
  store i32* %17, i32** %10, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = call i32 @CStringGetTextDatum(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %5, align 4
  br label %74

22:                                               ; preds = %4
  %23 = load i32*, i32** %10, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i64 @ts_connection_connect(i32* %23, i8* %24, i32* null, i32 %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load i32*, i32** %10, align 8
  %30 = call i8* @ts_connection_get_and_clear_error(i32* %29)
  store i8* %30, i8** %15, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = call i32 @ts_connection_destroy(i32* %31)
  %33 = load i32, i32* @ERROR, align 4
  %34 = load i8*, i8** %15, align 8
  %35 = call i32 @elog(i32 %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %28, %22
  %37 = load i32, i32* %7, align 4
  %38 = call i32* @build_request(i32 %37)
  store i32* %38, i32** %11, align 8
  %39 = call i32* (...) @ts_http_response_state_create()
  store i32* %39, i32** %12, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = call i64 @ts_http_send_and_recv(i32* %40, i32* %41, i32* %42)
  store i64 %43, i64* %13, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = call i32 @ts_http_request_destroy(i32* %44)
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @ts_connection_destroy(i32* %46)
  %48 = load i64, i64* %13, align 8
  %49 = load i64, i64* @HTTP_ERROR_NONE, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %36
  %52 = load i32, i32* @ERROR, align 4
  %53 = load i64, i64* %13, align 8
  %54 = call i8* @ts_http_strerror(i64 %53)
  %55 = call i32 @elog(i32 %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %54)
  br label %56

56:                                               ; preds = %51, %36
  %57 = load i32*, i32** %12, align 8
  %58 = call i32 @ts_http_response_state_valid_status(i32* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* @ERROR, align 4
  %62 = load i32*, i32** %12, align 8
  %63 = call i8* @ts_http_response_state_status_code(i32* %62)
  %64 = call i32 @elog(i32 %61, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %60, %56
  %66 = load i32, i32* @jsonb_in, align 4
  %67 = load i32*, i32** %12, align 8
  %68 = call i32 @ts_http_response_state_body_start(i32* %67)
  %69 = call i32 @CStringGetDatum(i32 %68)
  %70 = call i32 @DirectFunctionCall1(i32 %66, i32 %69)
  store i32 %70, i32* %14, align 4
  %71 = load i32*, i32** %12, align 8
  %72 = call i32 @ts_http_response_state_destroy(i32* %71)
  %73 = load i32, i32* %14, align 4
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %65, %20
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32* @ts_connection_create(i64) #1

declare dso_local i32 @CStringGetTextDatum(i8*) #1

declare dso_local i64 @ts_connection_connect(i32*, i8*, i32*, i32) #1

declare dso_local i8* @ts_connection_get_and_clear_error(i32*) #1

declare dso_local i32 @ts_connection_destroy(i32*) #1

declare dso_local i32 @elog(i32, i8*, i8*) #1

declare dso_local i32* @build_request(i32) #1

declare dso_local i32* @ts_http_response_state_create(...) #1

declare dso_local i64 @ts_http_send_and_recv(i32*, i32*, i32*) #1

declare dso_local i32 @ts_http_request_destroy(i32*) #1

declare dso_local i8* @ts_http_strerror(i64) #1

declare dso_local i32 @ts_http_response_state_valid_status(i32*) #1

declare dso_local i8* @ts_http_response_state_status_code(i32*) #1

declare dso_local i32 @DirectFunctionCall1(i32, i32) #1

declare dso_local i32 @CStringGetDatum(i32) #1

declare dso_local i32 @ts_http_response_state_body_start(i32*) #1

declare dso_local i32 @ts_http_response_state_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
