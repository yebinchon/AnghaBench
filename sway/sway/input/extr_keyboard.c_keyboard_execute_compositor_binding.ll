; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_keyboard.c_keyboard_execute_compositor_binding.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_keyboard.c_keyboard_execute_compositor_binding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.sway_keyboard = type { i32 }
%struct.wlr_session = type { i32 }

@XKB_KEY_XF86Switch_VT_1 = common dso_local global i64 0, align 8
@XKB_KEY_XF86Switch_VT_12 = common dso_local global i64 0, align 8
@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sway_keyboard*, i64*, i32, i64)* @keyboard_execute_compositor_binding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keyboard_execute_compositor_binding(%struct.sway_keyboard* %0, i64* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sway_keyboard*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.wlr_session*, align 8
  %13 = alloca i32, align 4
  store %struct.sway_keyboard* %0, %struct.sway_keyboard** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %14

14:                                               ; preds = %51, %4
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %54

18:                                               ; preds = %14
  %19 = load i64*, i64** %7, align 8
  %20 = load i64, i64* %10, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %11, align 8
  %24 = load i64, i64* @XKB_KEY_XF86Switch_VT_1, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %18
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* @XKB_KEY_XF86Switch_VT_12, align 8
  %29 = icmp sle i64 %27, %28
  br i1 %29, label %30, label %50

30:                                               ; preds = %26
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  %32 = call i64 @wlr_backend_is_multi(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %30
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  %36 = call %struct.wlr_session* @wlr_backend_get_session(i32 %35)
  store %struct.wlr_session* %36, %struct.wlr_session** %12, align 8
  %37 = load %struct.wlr_session*, %struct.wlr_session** %12, align 8
  %38 = icmp ne %struct.wlr_session* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* @XKB_KEY_XF86Switch_VT_1, align 8
  %42 = sub nsw i64 %40, %41
  %43 = add nsw i64 %42, 1
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %13, align 4
  %45 = load %struct.wlr_session*, %struct.wlr_session** %12, align 8
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @wlr_session_change_vt(%struct.wlr_session* %45, i32 %46)
  br label %48

48:                                               ; preds = %39, %34
  br label %49

49:                                               ; preds = %48, %30
  store i32 1, i32* %5, align 4
  br label %55

50:                                               ; preds = %26, %18
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %10, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %10, align 8
  br label %14

54:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %49
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i64 @wlr_backend_is_multi(i32) #1

declare dso_local %struct.wlr_session* @wlr_backend_get_session(i32) #1

declare dso_local i32 @wlr_session_change_vt(%struct.wlr_session*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
