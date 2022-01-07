; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_manager.c_manager_journal_is_running.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_manager.c_manager_journal_is_running.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@SPECIAL_JOURNALD_SOCKET = common dso_local global i32 0, align 4
@SOCKET_RUNNING = common dso_local global i64 0, align 8
@SPECIAL_JOURNALD_SERVICE = common dso_local global i32 0, align 4
@SERVICE_RELOAD = common dso_local global i32 0, align 4
@SERVICE_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @manager_journal_is_running to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @manager_journal_is_running(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @assert(i32* %5)
  %7 = load i32*, i32** %3, align 8
  %8 = call i64 @MANAGER_IS_TEST_RUN(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %49

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @MANAGER_IS_SYSTEM(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %49

16:                                               ; preds = %11
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* @SPECIAL_JOURNALD_SOCKET, align 4
  %19 = call i32* @manager_get_unit(i32* %17, i32 %18)
  store i32* %19, i32** %4, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %49

23:                                               ; preds = %16
  %24 = load i32*, i32** %4, align 8
  %25 = call %struct.TYPE_3__* @SOCKET(i32* %24)
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SOCKET_RUNNING, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %49

31:                                               ; preds = %23
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* @SPECIAL_JOURNALD_SERVICE, align 4
  %34 = call i32* @manager_get_unit(i32* %32, i32 %33)
  store i32* %34, i32** %4, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %49

38:                                               ; preds = %31
  %39 = load i32*, i32** %4, align 8
  %40 = call %struct.TYPE_4__* @SERVICE(i32* %39)
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SERVICE_RELOAD, align 4
  %44 = load i32, i32* @SERVICE_RUNNING, align 4
  %45 = call i32 @IN_SET(i32 %42, i32 %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %49

48:                                               ; preds = %38
  store i32 1, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %47, %37, %30, %22, %15, %10
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i64 @MANAGER_IS_TEST_RUN(i32*) #1

declare dso_local i32 @MANAGER_IS_SYSTEM(i32*) #1

declare dso_local i32* @manager_get_unit(i32*, i32) #1

declare dso_local %struct.TYPE_3__* @SOCKET(i32*) #1

declare dso_local i32 @IN_SET(i32, i32, i32) #1

declare dso_local %struct.TYPE_4__* @SERVICE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
