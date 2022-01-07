; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udev-ctrl.c_udev_ctrl_enable_receiving.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udev-ctrl.c_udev_ctrl_enable_receiving.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udev_ctrl = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@errno = common dso_local global i64 0, align 8
@EADDRINUSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Failed to bind udev control socket: %m\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to listen udev control socket: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udev_ctrl_enable_receiving(%struct.udev_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.udev_ctrl*, align 8
  %4 = alloca i32, align 4
  store %struct.udev_ctrl* %0, %struct.udev_ctrl** %3, align 8
  %5 = load %struct.udev_ctrl*, %struct.udev_ctrl** %3, align 8
  %6 = call i32 @assert(%struct.udev_ctrl* %5)
  %7 = load %struct.udev_ctrl*, %struct.udev_ctrl** %3, align 8
  %8 = getelementptr inbounds %struct.udev_ctrl, %struct.udev_ctrl* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %64

12:                                               ; preds = %1
  %13 = load %struct.udev_ctrl*, %struct.udev_ctrl** %3, align 8
  %14 = getelementptr inbounds %struct.udev_ctrl, %struct.udev_ctrl* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.udev_ctrl*, %struct.udev_ctrl** %3, align 8
  %17 = getelementptr inbounds %struct.udev_ctrl, %struct.udev_ctrl* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.udev_ctrl*, %struct.udev_ctrl** %3, align 8
  %20 = getelementptr inbounds %struct.udev_ctrl, %struct.udev_ctrl* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @bind(i32 %15, i32* %18, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %12
  %26 = load i64, i64* @errno, align 8
  %27 = load i64, i64* @EADDRINUSE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %25
  %30 = load %struct.udev_ctrl*, %struct.udev_ctrl** %3, align 8
  %31 = getelementptr inbounds %struct.udev_ctrl, %struct.udev_ctrl* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = call i32 @sockaddr_un_unlink(i32* %32)
  %34 = load %struct.udev_ctrl*, %struct.udev_ctrl** %3, align 8
  %35 = getelementptr inbounds %struct.udev_ctrl, %struct.udev_ctrl* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.udev_ctrl*, %struct.udev_ctrl** %3, align 8
  %38 = getelementptr inbounds %struct.udev_ctrl, %struct.udev_ctrl* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %struct.udev_ctrl*, %struct.udev_ctrl** %3, align 8
  %41 = getelementptr inbounds %struct.udev_ctrl, %struct.udev_ctrl* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @bind(i32 %36, i32* %39, i32 %42)
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %29, %25, %12
  %45 = load i32, i32* %4, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i64, i64* @errno, align 8
  %49 = call i32 @log_error_errno(i64 %48, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 %49, i32* %2, align 4
  br label %64

50:                                               ; preds = %44
  %51 = load %struct.udev_ctrl*, %struct.udev_ctrl** %3, align 8
  %52 = getelementptr inbounds %struct.udev_ctrl, %struct.udev_ctrl* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @listen(i32 %53, i32 0)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i64, i64* @errno, align 8
  %58 = call i32 @log_error_errno(i64 %57, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32 %58, i32* %2, align 4
  br label %64

59:                                               ; preds = %50
  %60 = load %struct.udev_ctrl*, %struct.udev_ctrl** %3, align 8
  %61 = getelementptr inbounds %struct.udev_ctrl, %struct.udev_ctrl* %60, i32 0, i32 0
  store i32 1, i32* %61, align 4
  %62 = load %struct.udev_ctrl*, %struct.udev_ctrl** %3, align 8
  %63 = getelementptr inbounds %struct.udev_ctrl, %struct.udev_ctrl* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %59, %56, %47, %11
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @assert(%struct.udev_ctrl*) #1

declare dso_local i32 @bind(i32, i32*, i32) #1

declare dso_local i32 @sockaddr_un_unlink(i32*) #1

declare dso_local i32 @log_error_errno(i64, i8*) #1

declare dso_local i64 @listen(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
