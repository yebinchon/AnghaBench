; ModuleID = '/home/carl/AnghaBench/timescaledb/src/telemetry/extr_telemetry.c_ts_telemetry_main.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/telemetry/extr_telemetry.c_ts_telemetry_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HTTP_ERROR_NONE = common dso_local global i64 0, align 8
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"telemetry error: %s\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"telemetry got unexpected HTTP response status: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ts_telemetry_main(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %12, align 4
  %13 = call i32 (...) @ts_telemetry_on()
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %75

16:                                               ; preds = %3
  %17 = call i32 (...) @IsTransactionOrTransactionBlock()
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  store i32 1, i32* %12, align 4
  %20 = call i32 (...) @StartTransactionCommand()
  br label %21

21:                                               ; preds = %19, %16
  %22 = load i8*, i8** %5, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32* @ts_telemetry_connect(i8* %22, i8* %23)
  store i32* %24, i32** %9, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %69

28:                                               ; preds = %21
  %29 = load i8*, i8** %5, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i32* @ts_build_version_request(i8* %29, i8* %30)
  store i32* %31, i32** %10, align 8
  %32 = call i32* (...) @ts_http_response_state_create()
  store i32* %32, i32** %11, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = call i64 @ts_http_send_and_recv(i32* %33, i32* %34, i32* %35)
  store i64 %36, i64* %8, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 @ts_http_request_destroy(i32* %37)
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @ts_connection_destroy(i32* %39)
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @HTTP_ERROR_NONE, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %28
  %45 = load i32, i32* @WARNING, align 4
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @ts_http_strerror(i64 %46)
  %48 = call i32 @elog(i32 %45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %69

49:                                               ; preds = %28
  %50 = load i32*, i32** %11, align 8
  %51 = call i32 @ts_http_response_state_valid_status(i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* @WARNING, align 4
  %55 = load i32*, i32** %11, align 8
  %56 = call i32 @ts_http_response_state_status_code(i32* %55)
  %57 = call i32 @elog(i32 %54, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  br label %69

58:                                               ; preds = %49
  %59 = load i32*, i32** %11, align 8
  %60 = call i32 @ts_http_response_state_body_start(i32* %59)
  %61 = call i32 @process_response(i32 %60)
  %62 = load i32*, i32** %11, align 8
  %63 = call i32 @ts_http_response_state_destroy(i32* %62)
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = call i32 (...) @CommitTransactionCommand()
  br label %68

68:                                               ; preds = %66, %58
  store i32 1, i32* %4, align 4
  br label %75

69:                                               ; preds = %53, %44, %27
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = call i32 (...) @AbortCurrentTransaction()
  br label %74

74:                                               ; preds = %72, %69
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %74, %68, %15
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @ts_telemetry_on(...) #1

declare dso_local i32 @IsTransactionOrTransactionBlock(...) #1

declare dso_local i32 @StartTransactionCommand(...) #1

declare dso_local i32* @ts_telemetry_connect(i8*, i8*) #1

declare dso_local i32* @ts_build_version_request(i8*, i8*) #1

declare dso_local i32* @ts_http_response_state_create(...) #1

declare dso_local i64 @ts_http_send_and_recv(i32*, i32*, i32*) #1

declare dso_local i32 @ts_http_request_destroy(i32*) #1

declare dso_local i32 @ts_connection_destroy(i32*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @ts_http_strerror(i64) #1

declare dso_local i32 @ts_http_response_state_valid_status(i32*) #1

declare dso_local i32 @ts_http_response_state_status_code(i32*) #1

declare dso_local i32 @process_response(i32) #1

declare dso_local i32 @ts_http_response_state_body_start(i32*) #1

declare dso_local i32 @ts_http_response_state_destroy(i32*) #1

declare dso_local i32 @CommitTransactionCommand(...) #1

declare dso_local i32 @AbortCurrentTransaction(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
