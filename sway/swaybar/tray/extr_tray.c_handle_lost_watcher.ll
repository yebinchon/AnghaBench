; ModuleID = '/home/carl/AnghaBench/sway/swaybar/tray/extr_tray.c_handle_lost_watcher.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/tray/extr_tray.c_handle_lost_watcher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaybar_tray = type { i32, i8*, i8* }

@.str = private unnamed_addr constant [4 x i8] c"sss\00", align 1
@SWAY_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to parse owner change message: %s\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"org.freedesktop.StatusNotifierWatcher\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"freedesktop\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"org.kde.StatusNotifierWatcher\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"kde\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*)* @handle_lost_watcher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_lost_watcher(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.swaybar_tray*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @sd_bus_message_read(i32* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %8, i8** %9, i8** %10)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load i32, i32* @SWAY_ERROR, align 4
  %19 = load i32, i32* %11, align 4
  %20 = sub nsw i32 0, %19
  %21 = call i32 @strerror(i32 %20)
  %22 = call i32 @sway_log(i32 %18, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %4, align 4
  br label %55

24:                                               ; preds = %3
  %25 = load i8*, i8** %10, align 8
  %26 = load i8, i8* %25, align 1
  %27 = icmp ne i8 %26, 0
  br i1 %27, label %54, label %28

28:                                               ; preds = %24
  %29 = load i8*, i8** %6, align 8
  %30 = bitcast i8* %29 to %struct.swaybar_tray*
  store %struct.swaybar_tray* %30, %struct.swaybar_tray** %12, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call i64 @strcmp(i8* %31, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct.swaybar_tray*, %struct.swaybar_tray** %12, align 8
  %36 = getelementptr inbounds %struct.swaybar_tray, %struct.swaybar_tray* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i8* @create_watcher(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  %39 = load %struct.swaybar_tray*, %struct.swaybar_tray** %12, align 8
  %40 = getelementptr inbounds %struct.swaybar_tray, %struct.swaybar_tray* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  br label %53

41:                                               ; preds = %28
  %42 = load i8*, i8** %8, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load %struct.swaybar_tray*, %struct.swaybar_tray** %12, align 8
  %47 = getelementptr inbounds %struct.swaybar_tray, %struct.swaybar_tray* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i8* @create_watcher(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %48)
  %50 = load %struct.swaybar_tray*, %struct.swaybar_tray** %12, align 8
  %51 = getelementptr inbounds %struct.swaybar_tray, %struct.swaybar_tray* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  br label %52

52:                                               ; preds = %45, %41
  br label %53

53:                                               ; preds = %52, %34
  br label %54

54:                                               ; preds = %53, %24
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %17
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @sd_bus_message_read(i32*, i8*, i8**, i8**, i8**) #1

declare dso_local i32 @sway_log(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @create_watcher(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
