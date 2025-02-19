; ModuleID = '/home/carl/AnghaBench/systemd/src/import/extr_curl-util.c_curl_glue_on_io.c'
source_filename = "/home/carl/AnghaBench/systemd/src/import/extr_curl-util.c_curl_glue_on_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i32 0, align 4
@CURL_POLL_INOUT = common dso_local global i32 0, align 4
@CURL_POLL_IN = common dso_local global i32 0, align 4
@CURL_POLL_OUT = common dso_local global i32 0, align 4
@CURLM_OK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to propagate IO event.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32, i8*)* @curl_glue_on_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @curl_glue_on_io(%struct.TYPE_6__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %10, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = call i32 @assert(%struct.TYPE_6__* %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %18 = call i32 @assert(%struct.TYPE_6__* %17)
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @EPOLLIN, align 4
  %21 = load i32, i32* @EPOLLOUT, align 4
  %22 = or i32 %20, %21
  %23 = call i64 @FLAGS_SET(i32 %19, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* @CURL_POLL_INOUT, align 4
  store i32 %26, i32* %11, align 4
  br label %44

27:                                               ; preds = %4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @EPOLLIN, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @CURL_POLL_IN, align 4
  store i32 %33, i32* %11, align 4
  br label %43

34:                                               ; preds = %27
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @EPOLLOUT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @CURL_POLL_OUT, align 4
  store i32 %40, i32* %11, align 4
  br label %42

41:                                               ; preds = %34
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %41, %39
  br label %43

43:                                               ; preds = %42, %32
  br label %44

44:                                               ; preds = %43, %25
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i64 @curl_multi_socket_action(i32 %47, i32 %48, i32 %49, i32* %12)
  %51 = load i64, i64* @CURLM_OK, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %44
  %54 = load i32, i32* @EINVAL, align 4
  %55 = call i32 @SYNTHETIC_ERRNO(i32 %54)
  %56 = call i32 @log_debug_errno(i32 %55, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 %56, i32* %5, align 4
  br label %60

57:                                               ; preds = %44
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %59 = call i32 @curl_glue_check_finished(%struct.TYPE_6__* %58)
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %57, %53
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @assert(%struct.TYPE_6__*) #1

declare dso_local i64 @FLAGS_SET(i32, i32) #1

declare dso_local i64 @curl_multi_socket_action(i32, i32, i32, i32*) #1

declare dso_local i32 @log_debug_errno(i32, i8*) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

declare dso_local i32 @curl_glue_check_finished(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
