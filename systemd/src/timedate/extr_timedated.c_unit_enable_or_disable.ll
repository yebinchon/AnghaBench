; ModuleID = '/home/carl/AnghaBench/systemd/src/timedate/extr_timedated.c_unit_enable_or_disable.c'
source_filename = "/home/carl/AnghaBench/systemd/src/timedate/extr_timedated.c_unit_enable_or_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"already %sd.\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%s unit.\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Enabling\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Disabling\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"org.freedesktop.systemd1\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"/org/freedesktop/systemd1\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"org.freedesktop.systemd1.Manager\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"EnableUnitFiles\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"asbb\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"DisableUnitFiles\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"asb\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"Reload\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*, i32)* @unit_enable_or_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unit_enable_or_disable(%struct.TYPE_12__* %0, %struct.TYPE_12__* %1, %struct.TYPE_12__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %12 = call i32 @assert(%struct.TYPE_12__* %11)
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %14 = call i32 @assert(%struct.TYPE_12__* %13)
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %16 = call i32 @assert(%struct.TYPE_12__* %15)
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @streq(i32 %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %4
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @enable_disable(i32 %25)
  %27 = call i32 @log_unit_debug(%struct.TYPE_12__* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  store i32 0, i32* %5, align 4
  br label %65

28:                                               ; preds = %4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0)
  %34 = call i32 @log_unit_info(%struct.TYPE_12__* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %28
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (%struct.TYPE_12__*, i8*, i8*, i8*, i8*, %struct.TYPE_12__*, i32*, i8*, ...) @sd_bus_call_method(%struct.TYPE_12__* %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_12__* %39, i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 1, i32 %42, i32 0, i32 1)
  store i32 %43, i32* %10, align 4
  br label %51

44:                                               ; preds = %28
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (%struct.TYPE_12__*, i8*, i8*, i8*, i8*, %struct.TYPE_12__*, i32*, i8*, ...) @sd_bus_call_method(%struct.TYPE_12__* %45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), %struct.TYPE_12__* %46, i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 1, i32 %49, i32 0)
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %44, %37
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %5, align 4
  br label %65

56:                                               ; preds = %51
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %59 = call i32 (%struct.TYPE_12__*, i8*, i8*, i8*, i8*, %struct.TYPE_12__*, i32*, i8*, ...) @sd_bus_call_method(%struct.TYPE_12__* %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), %struct.TYPE_12__* %58, i32* null, i8* null)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %5, align 4
  br label %65

64:                                               ; preds = %56
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %64, %62, %54, %23
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @assert(%struct.TYPE_12__*) #1

declare dso_local i32 @streq(i32, i8*) #1

declare dso_local i32 @log_unit_debug(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i32 @enable_disable(i32) #1

declare dso_local i32 @log_unit_info(%struct.TYPE_12__*, i8*, i8*) #1

declare dso_local i32 @sd_bus_call_method(%struct.TYPE_12__*, i8*, i8*, i8*, i8*, %struct.TYPE_12__*, i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
