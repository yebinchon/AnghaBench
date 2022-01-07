; ModuleID = '/home/carl/AnghaBench/sway/swaybar/extr_input.c_get_touch_slot.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/extr_input.c_get_touch_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.touch_slot = type { i64, i32 }
%struct.swaybar_touch = type { %struct.touch_slot* }

@SWAY_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Ran out of touch slots\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.touch_slot* (%struct.swaybar_touch*, i64)* @get_touch_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.touch_slot* @get_touch_slot(%struct.swaybar_touch* %0, i64 %1) #0 {
  %3 = alloca %struct.touch_slot*, align 8
  %4 = alloca %struct.swaybar_touch*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.swaybar_touch* %0, %struct.swaybar_touch** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 -1, i32* %6, align 4
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %43, %2
  %9 = load i64, i64* %7, align 8
  %10 = icmp ult i64 %9, 0
  br i1 %10, label %11, label %46

11:                                               ; preds = %8
  %12 = load %struct.swaybar_touch*, %struct.swaybar_touch** %4, align 8
  %13 = getelementptr inbounds %struct.swaybar_touch, %struct.swaybar_touch* %12, i32 0, i32 0
  %14 = load %struct.touch_slot*, %struct.touch_slot** %13, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds %struct.touch_slot, %struct.touch_slot* %14, i64 %15
  %17 = getelementptr inbounds %struct.touch_slot, %struct.touch_slot* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %11
  %22 = load %struct.swaybar_touch*, %struct.swaybar_touch** %4, align 8
  %23 = getelementptr inbounds %struct.swaybar_touch, %struct.swaybar_touch* %22, i32 0, i32 0
  %24 = load %struct.touch_slot*, %struct.touch_slot** %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds %struct.touch_slot, %struct.touch_slot* %24, i64 %25
  store %struct.touch_slot* %26, %struct.touch_slot** %3, align 8
  br label %59

27:                                               ; preds = %11
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  %31 = load %struct.swaybar_touch*, %struct.swaybar_touch** %4, align 8
  %32 = getelementptr inbounds %struct.swaybar_touch, %struct.swaybar_touch* %31, i32 0, i32 0
  %33 = load %struct.touch_slot*, %struct.touch_slot** %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds %struct.touch_slot, %struct.touch_slot* %33, i64 %34
  %36 = getelementptr inbounds %struct.touch_slot, %struct.touch_slot* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %30
  %40 = load i64, i64* %7, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %39, %30, %27
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %7, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %7, align 8
  br label %8

46:                                               ; preds = %8
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* @SWAY_ERROR, align 4
  %51 = call i32 @sway_log(i32 %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store %struct.touch_slot* null, %struct.touch_slot** %3, align 8
  br label %59

52:                                               ; preds = %46
  %53 = load %struct.swaybar_touch*, %struct.swaybar_touch** %4, align 8
  %54 = getelementptr inbounds %struct.swaybar_touch, %struct.swaybar_touch* %53, i32 0, i32 0
  %55 = load %struct.touch_slot*, %struct.touch_slot** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.touch_slot, %struct.touch_slot* %55, i64 %57
  store %struct.touch_slot* %58, %struct.touch_slot** %3, align 8
  br label %59

59:                                               ; preds = %52, %49, %21
  %60 = load %struct.touch_slot*, %struct.touch_slot** %3, align 8
  ret %struct.touch_slot* %60
}

declare dso_local i32 @sway_log(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
