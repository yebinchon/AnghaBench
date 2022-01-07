; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-login/extr_test-login.c_test_monitor.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-login/extr_test-login.c_test_monitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"session\00", align 1
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"Wake!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_monitor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_monitor() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.pollfd, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32* null, i32** %1, align 8
  %7 = call i32 @sd_login_monitor_new(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32** %1)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sge i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert_se(i32 %10)
  store i32 0, i32* %2, align 4
  br label %12

12:                                               ; preds = %62, %0
  %13 = load i32, i32* %2, align 4
  %14 = icmp ult i32 %13, 5
  br i1 %14, label %15, label %65

15:                                               ; preds = %12
  %16 = bitcast %struct.pollfd* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 8, i1 false)
  %17 = load i32*, i32** %1, align 8
  %18 = call i32 @sd_login_monitor_get_fd(i32* %17)
  %19 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %4, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = icmp sge i32 %18, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert_se(i32 %21)
  %23 = load i32*, i32** %1, align 8
  %24 = call i32 @sd_login_monitor_get_events(i32* %23)
  %25 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %4, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = icmp sge i32 %24, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert_se(i32 %27)
  %29 = load i32*, i32** %1, align 8
  %30 = call i64 @sd_login_monitor_get_timeout(i32* %29, i64* %5)
  %31 = icmp sge i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert_se(i32 %32)
  %34 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %35 = call i64 @now(i32 %34)
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp eq i64 %36, -1
  br i1 %37, label %38, label %39

38:                                               ; preds = %15
  br label %52

39:                                               ; preds = %15
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = sub nsw i64 %44, %45
  %47 = sdiv i64 %46, 1000
  %48 = trunc i64 %47 to i32
  br label %50

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49, %43
  %51 = phi i32 [ %48, %43 ], [ 0, %49 ]
  br label %52

52:                                               ; preds = %50, %38
  %53 = phi i32 [ -1, %38 ], [ %51, %50 ]
  %54 = call i32 @poll(%struct.pollfd* %4, i32 1, i32 %53)
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %3, align 4
  %56 = icmp sge i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert_se(i32 %57)
  %59 = load i32*, i32** %1, align 8
  %60 = call i32 @sd_login_monitor_flush(i32* %59)
  %61 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %52
  %63 = load i32, i32* %2, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %2, align 4
  br label %12

65:                                               ; preds = %12
  %66 = load i32*, i32** %1, align 8
  %67 = call i32 @sd_login_monitor_unref(i32* %66)
  ret void
}

declare dso_local i32 @sd_login_monitor_new(i8*, i32**) #1

declare dso_local i32 @assert_se(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @sd_login_monitor_get_fd(i32*) #1

declare dso_local i32 @sd_login_monitor_get_events(i32*) #1

declare dso_local i64 @sd_login_monitor_get_timeout(i32*, i64*) #1

declare dso_local i64 @now(i32) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @sd_login_monitor_flush(i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @sd_login_monitor_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
