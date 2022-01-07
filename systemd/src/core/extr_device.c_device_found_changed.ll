; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_device.c_device_found_changed.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_device.c_device_found_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEVICE_NOT_FOUND = common dso_local global i64 0, align 8
@DEVICE_FOUND_UDEV = common dso_local global i32 0, align 4
@DEVICE_PLUGGED = common dso_local global i32 0, align 4
@DEVICE_TENTATIVE = common dso_local global i32 0, align 4
@DEVICE_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i64)* @device_found_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @device_found_changed(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @assert(i32* %7)
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @DEVICE_NOT_FOUND, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @DEVICE_NOT_FOUND, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @UNIT(i32* %17)
  %19 = call i32 @unit_acquire_invocation_id(i32 %18)
  br label %20

20:                                               ; preds = %16, %12, %3
  %21 = load i64, i64* %6, align 8
  %22 = load i32, i32* @DEVICE_FOUND_UDEV, align 4
  %23 = call i64 @FLAGS_SET(i64 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* @DEVICE_PLUGGED, align 4
  %28 = call i32 @device_set_state(i32* %26, i32 %27)
  br label %47

29:                                               ; preds = %20
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @DEVICE_NOT_FOUND, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = load i64, i64* %5, align 8
  %35 = load i32, i32* @DEVICE_FOUND_UDEV, align 4
  %36 = call i64 @FLAGS_SET(i64 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* @DEVICE_TENTATIVE, align 4
  %41 = call i32 @device_set_state(i32* %39, i32 %40)
  br label %46

42:                                               ; preds = %33, %29
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* @DEVICE_DEAD, align 4
  %45 = call i32 @device_set_state(i32* %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %38
  br label %47

47:                                               ; preds = %46, %25
  ret void
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @unit_acquire_invocation_id(i32) #1

declare dso_local i32 @UNIT(i32*) #1

declare dso_local i64 @FLAGS_SET(i64, i32) #1

declare dso_local i32 @device_set_state(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
