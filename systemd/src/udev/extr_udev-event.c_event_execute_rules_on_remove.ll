; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udev-event.c_event_execute_rules_on_remove.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udev-event.c_event_execute_rules_on_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [50 x i8] c"Failed to read database under /run/udev/data/: %m\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"Failed to remove corresponding tag files under /run/udev/tag/, ignoring: %m\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"Failed to delete database under /run/udev/data/, ignoring: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i32*, i32*)* @event_execute_rules_on_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_execute_rules_on_remove(%struct.TYPE_4__* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %9, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = call i32 @device_read_db_internal(i32* %14, i32 1)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @log_device_debug_errno(i32* %19, i32 %20, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %18, %4
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @device_tag_index(i32* %23, i32* null, i32 0)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @log_device_debug_errno(i32* %28, i32 %29, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %27, %22
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @device_delete_db(i32* %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @log_device_debug_errno(i32* %37, i32 %38, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %36, %31
  %41 = load i32*, i32** %9, align 8
  %42 = call i64 @sd_device_get_devnum(i32* %41, i32* null)
  %43 = icmp sge i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @udev_watch_end(i32* %45)
  br label %47

47:                                               ; preds = %44, %40
  %48 = load i32*, i32** %8, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @udev_rules_apply_to_event(i32* %48, %struct.TYPE_4__* %49, i32 %50, i32* %51)
  %53 = load i32*, i32** %9, align 8
  %54 = call i64 @sd_device_get_devnum(i32* %53, i32* null)
  %55 = icmp sge i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @udev_node_remove(i32* %57)
  br label %59

59:                                               ; preds = %56, %47
  ret void
}

declare dso_local i32 @device_read_db_internal(i32*, i32) #1

declare dso_local i32 @log_device_debug_errno(i32*, i32, i8*) #1

declare dso_local i32 @device_tag_index(i32*, i32*, i32) #1

declare dso_local i32 @device_delete_db(i32*) #1

declare dso_local i64 @sd_device_get_devnum(i32*, i32*) #1

declare dso_local i32 @udev_watch_end(i32*) #1

declare dso_local i32 @udev_rules_apply_to_event(i32*, %struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @udev_node_remove(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
