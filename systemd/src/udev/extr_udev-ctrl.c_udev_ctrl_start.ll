; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udev-ctrl.c_udev_ctrl_start.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udev-ctrl.c_udev_ctrl_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udev_ctrl = type { i32, i32, i32, i8*, i32 }

@EPOLLIN = common dso_local global i32 0, align 4
@udev_ctrl_event_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"udev-ctrl\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udev_ctrl_start(%struct.udev_ctrl* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.udev_ctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.udev_ctrl* %0, %struct.udev_ctrl** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load %struct.udev_ctrl*, %struct.udev_ctrl** %5, align 8
  %10 = call i32 @assert(%struct.udev_ctrl* %9)
  %11 = load %struct.udev_ctrl*, %struct.udev_ctrl** %5, align 8
  %12 = getelementptr inbounds %struct.udev_ctrl, %struct.udev_ctrl* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %3
  %16 = load %struct.udev_ctrl*, %struct.udev_ctrl** %5, align 8
  %17 = call i32 @udev_ctrl_attach_event(%struct.udev_ctrl* %16, i32* null)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %4, align 4
  br label %58

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22, %3
  %24 = load %struct.udev_ctrl*, %struct.udev_ctrl** %5, align 8
  %25 = call i32 @udev_ctrl_enable_receiving(%struct.udev_ctrl* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %4, align 4
  br label %58

30:                                               ; preds = %23
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.udev_ctrl*, %struct.udev_ctrl** %5, align 8
  %33 = getelementptr inbounds %struct.udev_ctrl, %struct.udev_ctrl* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load %struct.udev_ctrl*, %struct.udev_ctrl** %5, align 8
  %36 = getelementptr inbounds %struct.udev_ctrl, %struct.udev_ctrl* %35, i32 0, i32 3
  store i8* %34, i8** %36, align 8
  %37 = load %struct.udev_ctrl*, %struct.udev_ctrl** %5, align 8
  %38 = getelementptr inbounds %struct.udev_ctrl, %struct.udev_ctrl* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.udev_ctrl*, %struct.udev_ctrl** %5, align 8
  %41 = getelementptr inbounds %struct.udev_ctrl, %struct.udev_ctrl* %40, i32 0, i32 0
  %42 = load %struct.udev_ctrl*, %struct.udev_ctrl** %5, align 8
  %43 = getelementptr inbounds %struct.udev_ctrl, %struct.udev_ctrl* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @EPOLLIN, align 4
  %46 = load i32, i32* @udev_ctrl_event_handler, align 4
  %47 = load %struct.udev_ctrl*, %struct.udev_ctrl** %5, align 8
  %48 = call i32 @sd_event_add_io(i32 %39, i32* %41, i32 %44, i32 %45, i32 %46, %struct.udev_ctrl* %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %30
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %4, align 4
  br label %58

53:                                               ; preds = %30
  %54 = load %struct.udev_ctrl*, %struct.udev_ctrl** %5, align 8
  %55 = getelementptr inbounds %struct.udev_ctrl, %struct.udev_ctrl* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @sd_event_source_set_description(i32 %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %53, %51, %28, %20
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @assert(%struct.udev_ctrl*) #1

declare dso_local i32 @udev_ctrl_attach_event(%struct.udev_ctrl*, i32*) #1

declare dso_local i32 @udev_ctrl_enable_receiving(%struct.udev_ctrl*) #1

declare dso_local i32 @sd_event_add_io(i32, i32*, i32, i32, i32, %struct.udev_ctrl*) #1

declare dso_local i32 @sd_event_source_set_description(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
