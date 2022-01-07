; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udev-event.c_update_devnode.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udev-event.c_update_devnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32* }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to get devnum: %m\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to get devnode UID: %m\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to get devnode GID: %m\00", align 1
@MODE_INVALID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to get devnode mode: %m\00", align 1
@DEVICE_ACTION_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @update_devnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_devnode(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 5
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @sd_device_get_devnum(i32* %10, i32* null)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @ENOENT, align 4
  %14 = sub nsw i32 0, %13
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %143

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @log_device_error_errno(i32* %21, i32 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 %23, i32* %2, align 4
  br label %143

24:                                               ; preds = %17
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @udev_node_update_old_links(i32* %30, i32 %33)
  br label %35

35:                                               ; preds = %29, %24
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @uid_is_valid(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %58, label %41

41:                                               ; preds = %35
  %42 = load i32*, i32** %4, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 3
  %45 = call i32 @device_get_devnode_uid(i32* %42, i32* %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %41
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @ENOENT, align 4
  %51 = sub nsw i32 0, %50
  %52 = icmp ne i32 %49, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @log_device_error_errno(i32* %54, i32 %55, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 %56, i32* %2, align 4
  br label %143

57:                                               ; preds = %48, %41
  br label %58

58:                                               ; preds = %57, %35
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @gid_is_valid(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %81, label %64

64:                                               ; preds = %58
  %65 = load i32*, i32** %4, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = call i32 @device_get_devnode_gid(i32* %65, i32* %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %64
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @ENOENT, align 4
  %74 = sub nsw i32 0, %73
  %75 = icmp ne i32 %72, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i32*, i32** %4, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @log_device_error_errno(i32* %77, i32 %78, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 %79, i32* %2, align 4
  br label %143

80:                                               ; preds = %71, %64
  br label %81

81:                                               ; preds = %80, %58
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @MODE_INVALID, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %104

87:                                               ; preds = %81
  %88 = load i32*, i32** %4, align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = call i32 @device_get_devnode_mode(i32* %88, i32* %90)
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %5, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %87
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @ENOENT, align 4
  %97 = sub nsw i32 0, %96
  %98 = icmp ne i32 %95, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = load i32*, i32** %4, align 8
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @log_device_error_errno(i32* %100, i32 %101, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  store i32 %102, i32* %2, align 4
  br label %143

103:                                              ; preds = %94, %87
  br label %104

104:                                              ; preds = %103, %81
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @MODE_INVALID, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %124

110:                                              ; preds = %104
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i64 @gid_is_valid(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %110
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  store i32 432, i32* %123, align 8
  br label %124

124:                                              ; preds = %121, %116, %110, %104
  %125 = load i32*, i32** %4, align 8
  %126 = load i32, i32* @DEVICE_ACTION_ADD, align 4
  %127 = call i32 @device_for_action(i32* %125, i32 %126)
  store i32 %127, i32* %6, align 4
  %128 = load i32*, i32** %4, align 8
  %129 = load i32, i32* %6, align 4
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @udev_node_add(i32* %128, i32 %129, i32 %132, i32 %135, i32 %138, i32 %141)
  store i32 %142, i32* %2, align 4
  br label %143

143:                                              ; preds = %124, %99, %76, %53, %20, %16
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local i32 @sd_device_get_devnum(i32*, i32*) #1

declare dso_local i32 @log_device_error_errno(i32*, i32, i8*) #1

declare dso_local i32 @udev_node_update_old_links(i32*, i32) #1

declare dso_local i32 @uid_is_valid(i32) #1

declare dso_local i32 @device_get_devnode_uid(i32*, i32*) #1

declare dso_local i64 @gid_is_valid(i32) #1

declare dso_local i32 @device_get_devnode_gid(i32*, i32*) #1

declare dso_local i32 @device_get_devnode_mode(i32*, i32*) #1

declare dso_local i32 @device_for_action(i32*, i32) #1

declare dso_local i32 @udev_node_add(i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
