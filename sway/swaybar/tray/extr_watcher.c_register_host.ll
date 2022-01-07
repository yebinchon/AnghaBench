; ModuleID = '/home/carl/AnghaBench/sway/swaybar/tray/extr_watcher.c_register_host.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/tray/extr_watcher.c_register_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaybar_watcher = type { i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"s\00", align 1
@SWAY_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed to parse register host message: %s\00", align 1
@cmp_id = common dso_local global i32 0, align 4
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Registering Status Notifier Host '%s'\00", align 1
@obj_path = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"StatusNotifierHostRegistered\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Status Notifier Host '%s' already registered\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*)* @register_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_host(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.swaybar_watcher*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @sd_bus_message_read(i32* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %8)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load i32, i32* @SWAY_ERROR, align 4
  %17 = load i32, i32* %9, align 4
  %18 = sub nsw i32 0, %17
  %19 = call i8* @strerror(i32 %18)
  %20 = call i32 @sway_log(i32 %16, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %4, align 4
  br label %58

22:                                               ; preds = %3
  %23 = load i8*, i8** %6, align 8
  %24 = bitcast i8* %23 to %struct.swaybar_watcher*
  store %struct.swaybar_watcher* %24, %struct.swaybar_watcher** %10, align 8
  %25 = load %struct.swaybar_watcher*, %struct.swaybar_watcher** %10, align 8
  %26 = getelementptr inbounds %struct.swaybar_watcher, %struct.swaybar_watcher* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @cmp_id, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @list_seq_find(i32 %27, i32 %28, i8* %29)
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %51

32:                                               ; preds = %22
  %33 = load i32, i32* @SWAY_DEBUG, align 4
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @sway_log(i32 %33, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %34)
  %36 = load %struct.swaybar_watcher*, %struct.swaybar_watcher** %10, align 8
  %37 = getelementptr inbounds %struct.swaybar_watcher, %struct.swaybar_watcher* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @strdup(i8* %39)
  %41 = call i32 @list_add(i32 %38, i32 %40)
  %42 = load %struct.swaybar_watcher*, %struct.swaybar_watcher** %10, align 8
  %43 = getelementptr inbounds %struct.swaybar_watcher, %struct.swaybar_watcher* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @obj_path, align 4
  %46 = load %struct.swaybar_watcher*, %struct.swaybar_watcher** %10, align 8
  %47 = getelementptr inbounds %struct.swaybar_watcher, %struct.swaybar_watcher* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @sd_bus_emit_signal(i32 %44, i32 %45, i32 %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %49)
  br label %55

51:                                               ; preds = %22
  %52 = load i32, i32* @SWAY_DEBUG, align 4
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @sway_log(i32 %52, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i8* %53)
  br label %55

55:                                               ; preds = %51, %32
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @sd_bus_reply_method_return(i32* %56, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %55, %15
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @sd_bus_message_read(i32*, i8*, i8**) #1

declare dso_local i32 @sway_log(i32, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @list_seq_find(i32, i32, i8*) #1

declare dso_local i32 @list_add(i32, i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @sd_bus_emit_signal(i32, i32, i32, i8*, i8*, i8*) #1

declare dso_local i32 @sd_bus_reply_method_return(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
