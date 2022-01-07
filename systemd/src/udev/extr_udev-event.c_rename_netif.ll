; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udev-event.c_rename_netif.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udev-event.c_rename_netif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32* }

@.str = private unnamed_addr constant [26 x i8] c"Failed to get sysname: %m\00", align 1
@DEVICE_ACTION_ADD = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to get ifindex: %m\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Failed to rename network interface %i from '%s' to '%s': %m\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"ID_RENAMING\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Failed to add 'ID_RENAMING' property: %m\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"Failed to update properties with new name '%s': %m\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"Network interface %i is renamed from '%s' to '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @rename_netif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rename_netif(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %4, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %105

16:                                               ; preds = %1
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @sd_device_get_sysname(i32* %17, i8** %5)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 (i32*, i32, i8*, ...) @log_device_error_errno(i32* %22, i32 %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %2, align 4
  br label %105

25:                                               ; preds = %16
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i64 @streq(i32 %28, i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %105

33:                                               ; preds = %25
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* @DEVICE_ACTION_ADD, align 4
  %36 = call i32 @device_for_action(i32* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %105

39:                                               ; preds = %33
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @sd_device_get_ifindex(i32* %40, i32* %6)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @ENOENT, align 4
  %44 = sub nsw i32 0, %43
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %105

47:                                               ; preds = %39
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 (i32*, i32, i8*, ...) @log_device_error_errno(i32* %51, i32 %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 %53, i32* %2, align 4
  br label %105

54:                                               ; preds = %47
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @rtnl_set_link_name(i32* %56, i32 %57, i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %54
  %65 = load i32*, i32** %4, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i8*, i8** %5, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 (i32*, i32, i8*, ...) @log_device_error_errno(i32* %65, i32 %66, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %67, i8* %68, i32 %71)
  store i32 %72, i32* %2, align 4
  br label %105

73:                                               ; preds = %54
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @device_add_property(i32* %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i32*, i32** %4, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call i32 (i32*, i32, i8*, ...) @log_device_warning_errno(i32* %79, i32 %80, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  store i32 %81, i32* %2, align 4
  br label %105

82:                                               ; preds = %73
  %83 = load i32*, i32** %4, align 8
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @device_rename(i32* %83, i32 %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %82
  %91 = load i32*, i32** %4, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 (i32*, i32, i8*, ...) @log_device_warning_errno(i32* %91, i32 %92, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i32 %95)
  store i32 %96, i32* %2, align 4
  br label %105

97:                                               ; preds = %82
  %98 = load i32*, i32** %4, align 8
  %99 = load i32, i32* %6, align 4
  %100 = load i8*, i8** %5, align 8
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @log_device_debug(i32* %98, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 %99, i8* %100, i32 %103)
  store i32 1, i32* %2, align 4
  br label %105

105:                                              ; preds = %97, %90, %78, %64, %50, %46, %38, %32, %21, %15
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @sd_device_get_sysname(i32*, i8**) #1

declare dso_local i32 @log_device_error_errno(i32*, i32, i8*, ...) #1

declare dso_local i64 @streq(i32, i8*) #1

declare dso_local i32 @device_for_action(i32*, i32) #1

declare dso_local i32 @sd_device_get_ifindex(i32*, i32*) #1

declare dso_local i32 @rtnl_set_link_name(i32*, i32, i32) #1

declare dso_local i32 @device_add_property(i32*, i8*, i8*) #1

declare dso_local i32 @log_device_warning_errno(i32*, i32, i8*, ...) #1

declare dso_local i32 @device_rename(i32*, i32) #1

declare dso_local i32 @log_device_debug(i32*, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
