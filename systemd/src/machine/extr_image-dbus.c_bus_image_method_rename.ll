; ModuleID = '/home/carl/AnghaBench/systemd/src/machine/extr_image-dbus.c_bus_image_method_rename.c'
source_filename = "/home/carl/AnghaBench/systemd/src/machine/extr_image-dbus.c_bus_image_method_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"s\00", align 1
@SD_BUS_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Image name '%s' is invalid.\00", align 1
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"org.freedesktop.machine1.manage-images\00", align 1
@UID_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_image_method_rename(%struct.TYPE_10__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %8, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %9, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = call i32 @assert(%struct.TYPE_10__* %17)
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %20 = call i32 @assert(%struct.TYPE_10__* %19)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %22 = call i32 @sd_bus_message_read(%struct.TYPE_10__* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %10)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %4, align 4
  br label %63

27:                                               ; preds = %3
  %28 = load i8*, i8** %10, align 8
  %29 = call i32 @image_name_is_valid(i8* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* @SD_BUS_ERROR_INVALID_ARGS, align 4
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 @sd_bus_error_setf(i32* %32, i32 %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  store i32 %35, i32* %4, align 4
  br label %63

36:                                               ; preds = %27
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %38 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %39 = load i32, i32* @UID_INVALID, align 4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @bus_verify_polkit_async(%struct.TYPE_10__* %37, i32 %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 0, i32 %39, i32* %41, i32* %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %4, align 4
  br label %63

48:                                               ; preds = %36
  %49 = load i32, i32* %11, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 1, i32* %4, align 4
  br label %63

52:                                               ; preds = %48
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = call i32 @image_rename(%struct.TYPE_10__* %53, i8* %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %4, align 4
  br label %63

60:                                               ; preds = %52
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %62 = call i32 @sd_bus_reply_method_return(%struct.TYPE_10__* %61, i32* null)
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %60, %58, %51, %46, %31, %25
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @assert(%struct.TYPE_10__*) #1

declare dso_local i32 @sd_bus_message_read(%struct.TYPE_10__*, i8*, i8**) #1

declare dso_local i32 @image_name_is_valid(i8*) #1

declare dso_local i32 @sd_bus_error_setf(i32*, i32, i8*, i8*) #1

declare dso_local i32 @bus_verify_polkit_async(%struct.TYPE_10__*, i32, i8*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @image_rename(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @sd_bus_reply_method_return(%struct.TYPE_10__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
