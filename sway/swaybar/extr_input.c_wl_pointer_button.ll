; ModuleID = '/home/carl/AnghaBench/sway/swaybar/extr_input.c_wl_pointer_button.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/extr_input.c_wl_pointer_button.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl_pointer = type { i32 }
%struct.swaybar_seat = type { i32, %struct.swaybar_pointer }
%struct.swaybar_pointer = type { i32, i32, %struct.swaybar_output* }
%struct.swaybar_output = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"button with no active output\00", align 1
@WL_POINTER_BUTTON_STATE_PRESSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_pointer*, i32, i32, i32, i32)* @wl_pointer_button to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl_pointer_button(i8* %0, %struct.wl_pointer* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.wl_pointer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.swaybar_seat*, align 8
  %14 = alloca %struct.swaybar_pointer*, align 8
  %15 = alloca %struct.swaybar_output*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.wl_pointer* %1, %struct.wl_pointer** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.swaybar_seat*
  store %struct.swaybar_seat* %17, %struct.swaybar_seat** %13, align 8
  %18 = load %struct.swaybar_seat*, %struct.swaybar_seat** %13, align 8
  %19 = getelementptr inbounds %struct.swaybar_seat, %struct.swaybar_seat* %18, i32 0, i32 1
  store %struct.swaybar_pointer* %19, %struct.swaybar_pointer** %14, align 8
  %20 = load %struct.swaybar_pointer*, %struct.swaybar_pointer** %14, align 8
  %21 = getelementptr inbounds %struct.swaybar_pointer, %struct.swaybar_pointer* %20, i32 0, i32 2
  %22 = load %struct.swaybar_output*, %struct.swaybar_output** %21, align 8
  store %struct.swaybar_output* %22, %struct.swaybar_output** %15, align 8
  %23 = load %struct.swaybar_output*, %struct.swaybar_output** %15, align 8
  %24 = call i32 @sway_assert(%struct.swaybar_output* %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %6
  br label %51

27:                                               ; preds = %6
  %28 = load %struct.swaybar_seat*, %struct.swaybar_seat** %13, align 8
  %29 = getelementptr inbounds %struct.swaybar_seat, %struct.swaybar_seat* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %12, align 4
  %33 = call i64 @check_bindings(i32 %30, i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %51

36:                                               ; preds = %27
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @WL_POINTER_BUTTON_STATE_PRESSED, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %51

41:                                               ; preds = %36
  %42 = load %struct.swaybar_output*, %struct.swaybar_output** %15, align 8
  %43 = load %struct.swaybar_pointer*, %struct.swaybar_pointer** %14, align 8
  %44 = getelementptr inbounds %struct.swaybar_pointer, %struct.swaybar_pointer* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.swaybar_pointer*, %struct.swaybar_pointer** %14, align 8
  %47 = getelementptr inbounds %struct.swaybar_pointer, %struct.swaybar_pointer* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @process_hotspots(%struct.swaybar_output* %42, i32 %45, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %41, %40, %35, %26
  ret void
}

declare dso_local i32 @sway_assert(%struct.swaybar_output*, i8*) #1

declare dso_local i64 @check_bindings(i32, i32, i32) #1

declare dso_local i32 @process_hotspots(%struct.swaybar_output*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
