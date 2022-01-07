; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xwin.c_get_input_mask.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xwin.c_get_input_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64 }

@KeyPressMask = common dso_local global i64 0, align 8
@KeyReleaseMask = common dso_local global i64 0, align 8
@ButtonPressMask = common dso_local global i64 0, align 8
@ButtonReleaseMask = common dso_local global i64 0, align 8
@VisibilityChangeMask = common dso_local global i64 0, align 8
@FocusChangeMask = common dso_local global i64 0, align 8
@StructureNotifyMask = common dso_local global i64 0, align 8
@PointerMotionMask = common dso_local global i64 0, align 8
@ExposureMask = common dso_local global i64 0, align 8
@EnterWindowMask = common dso_local global i64 0, align 8
@LeaveWindowMask = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64*)* @get_input_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_input_mask(%struct.TYPE_3__* %0, i64* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i64* %1, i64** %4, align 8
  %5 = load i64, i64* @KeyPressMask, align 8
  %6 = load i64, i64* @KeyReleaseMask, align 8
  %7 = or i64 %5, %6
  %8 = load i64, i64* @ButtonPressMask, align 8
  %9 = or i64 %7, %8
  %10 = load i64, i64* @ButtonReleaseMask, align 8
  %11 = or i64 %9, %10
  %12 = load i64, i64* @VisibilityChangeMask, align 8
  %13 = or i64 %11, %12
  %14 = load i64, i64* @FocusChangeMask, align 8
  %15 = or i64 %13, %14
  %16 = load i64, i64* @StructureNotifyMask, align 8
  %17 = or i64 %15, %16
  %18 = load i64*, i64** %4, align 8
  store i64 %17, i64* %18, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load i64, i64* @PointerMotionMask, align 8
  %25 = load i64*, i64** %4, align 8
  %26 = load i64, i64* %25, align 8
  %27 = or i64 %26, %24
  store i64 %27, i64* %25, align 8
  br label %28

28:                                               ; preds = %23, %2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i64, i64* @ExposureMask, align 8
  %35 = load i64*, i64** %4, align 8
  %36 = load i64, i64* %35, align 8
  %37 = or i64 %36, %34
  store i64 %37, i64* %35, align 8
  br label %38

38:                                               ; preds = %33, %28
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43, %38
  %49 = load i64, i64* @EnterWindowMask, align 8
  %50 = load i64*, i64** %4, align 8
  %51 = load i64, i64* %50, align 8
  %52 = or i64 %51, %49
  store i64 %52, i64* %50, align 8
  br label %53

53:                                               ; preds = %48, %43
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i64, i64* @LeaveWindowMask, align 8
  %60 = load i64*, i64** %4, align 8
  %61 = load i64, i64* %60, align 8
  %62 = or i64 %61, %59
  store i64 %62, i64* %60, align 8
  br label %63

63:                                               ; preds = %58, %53
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
