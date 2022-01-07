; ModuleID = '/home/carl/AnghaBench/systemd/src/login/extr_logind-core.c_manager_process_button_device.c'
source_filename = "/home/carl/AnghaBench/systemd/src/login/extr_logind-core.c_manager_process_button_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@DEVICE_ACTION_REMOVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ID_SEAT\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"seat0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @manager_process_button_device(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = call i32 @assert(%struct.TYPE_5__* %10)
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @sd_device_get_sysname(i32* %12, i8** %6)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %65

18:                                               ; preds = %2
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* @DEVICE_ACTION_REMOVE, align 4
  %21 = call i64 @device_for_action(i32* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = call i32* @hashmap_get(i32 %26, i8* %27)
  store i32* %28, i32** %7, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %65

32:                                               ; preds = %23
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @button_free(i32* %33)
  br label %64

35:                                               ; preds = %18
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @manager_add_button(%struct.TYPE_5__* %36, i8* %37, i32** %7)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %3, align 4
  br label %65

43:                                               ; preds = %35
  %44 = load i32*, i32** %5, align 8
  %45 = call i64 @sd_device_get_property_value(i32* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %9)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i8*, i8** %9, align 8
  %49 = call i64 @isempty(i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %43
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %52

52:                                               ; preds = %51, %47
  %53 = load i32*, i32** %7, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 @button_set_seat(i32* %53, i8* %54)
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @button_open(i32* %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @button_free(i32* %61)
  br label %63

63:                                               ; preds = %60, %52
  br label %64

64:                                               ; preds = %63, %32
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %41, %31, %16
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @assert(%struct.TYPE_5__*) #1

declare dso_local i32 @sd_device_get_sysname(i32*, i8**) #1

declare dso_local i64 @device_for_action(i32*, i32) #1

declare dso_local i32* @hashmap_get(i32, i8*) #1

declare dso_local i32 @button_free(i32*) #1

declare dso_local i32 @manager_add_button(%struct.TYPE_5__*, i8*, i32**) #1

declare dso_local i64 @sd_device_get_property_value(i32*, i8*, i8**) #1

declare dso_local i64 @isempty(i8*) #1

declare dso_local i32 @button_set_seat(i32*, i8*) #1

declare dso_local i32 @button_open(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
