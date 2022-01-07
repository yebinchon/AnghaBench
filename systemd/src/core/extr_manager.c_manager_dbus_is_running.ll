; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_manager.c_manager_dbus_is_running.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_manager.c_manager_dbus_is_running.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@SPECIAL_DBUS_SOCKET = common dso_local global i32 0, align 4
@SOCKET_RUNNING = common dso_local global i64 0, align 8
@SPECIAL_DBUS_SERVICE = common dso_local global i32 0, align 4
@SERVICE_RUNNING = common dso_local global i32 0, align 4
@SERVICE_RELOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @manager_dbus_is_running to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @manager_dbus_is_running(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @assert(i32* %7)
  %9 = load i32*, i32** %4, align 8
  %10 = call i64 @MANAGER_IS_TEST_RUN(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %66

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* @SPECIAL_DBUS_SOCKET, align 4
  %16 = call i32* @manager_get_unit(i32* %14, i32 %15)
  store i32* %16, i32** %6, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %66

20:                                               ; preds = %13
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i32*, i32** %6, align 8
  %25 = call %struct.TYPE_3__* @SOCKET(i32* %24)
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  br label %33

28:                                               ; preds = %20
  %29 = load i32*, i32** %6, align 8
  %30 = call %struct.TYPE_3__* @SOCKET(i32* %29)
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  br label %33

33:                                               ; preds = %28, %23
  %34 = phi i64 [ %27, %23 ], [ %32, %28 ]
  %35 = load i64, i64* @SOCKET_RUNNING, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %66

38:                                               ; preds = %33
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* @SPECIAL_DBUS_SERVICE, align 4
  %41 = call i32* @manager_get_unit(i32* %39, i32 %40)
  store i32* %41, i32** %6, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %66

45:                                               ; preds = %38
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i32*, i32** %6, align 8
  %50 = call %struct.TYPE_4__* @SERVICE(i32* %49)
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  br label %58

53:                                               ; preds = %45
  %54 = load i32*, i32** %6, align 8
  %55 = call %struct.TYPE_4__* @SERVICE(i32* %54)
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  br label %58

58:                                               ; preds = %53, %48
  %59 = phi i32 [ %52, %48 ], [ %57, %53 ]
  %60 = load i32, i32* @SERVICE_RUNNING, align 4
  %61 = load i32, i32* @SERVICE_RELOAD, align 4
  %62 = call i32 @IN_SET(i32 %59, i32 %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %66

65:                                               ; preds = %58
  store i32 1, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %64, %44, %37, %19, %12
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i64 @MANAGER_IS_TEST_RUN(i32*) #1

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
