; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_bus-wait-for-units.c_on_get_all_properties.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_bus-wait-for-units.c_on_get_all_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32 (%struct.TYPE_14__*, i32, i32, i32)*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }

@.str = private unnamed_addr constant [27 x i8] c"GetAll() failed for %s: %s\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed to process GetAll method reply: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, %struct.TYPE_12__*)* @on_get_all_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_get_all_properties(i32* %0, i8* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %8, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %14 = call i32 @assert(%struct.TYPE_13__* %13)
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %16 = call i64 @sd_bus_error_is_set(%struct.TYPE_12__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %51

18:                                               ; preds = %3
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  store %struct.TYPE_14__* %21, %struct.TYPE_14__** %10, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %25 = call i32 @sd_bus_error_get_errno(%struct.TYPE_12__* %24)
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i32, i8*, ...) @log_debug_errno(i32 %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %31)
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 1
  store %struct.TYPE_13__* %33, %struct.TYPE_13__** %35, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 2
  %38 = load i32 (%struct.TYPE_14__*, i32, i32, i32)*, i32 (%struct.TYPE_14__*, i32, i32, i32)** %37, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 %38(%struct.TYPE_14__* %39, i32 %42, i32 0, i32 %45)
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %48 = call i32 @wait_for_item_free(%struct.TYPE_13__* %47)
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %50 = call i32 @bus_wait_for_units_check_ready(%struct.TYPE_14__* %49)
  store i32 0, i32* %4, align 4
  br label %61

51:                                               ; preds = %3
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @wait_for_item_parse_properties(%struct.TYPE_13__* %52, i32* %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, i32* %9, align 4
  %59 = call i32 (i32, i8*, ...) @log_debug_errno(i32 %58, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %51
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %18
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @assert(%struct.TYPE_13__*) #1

declare dso_local i64 @sd_bus_error_is_set(%struct.TYPE_12__*) #1

declare dso_local i32 @log_debug_errno(i32, i8*, ...) #1

declare dso_local i32 @sd_bus_error_get_errno(%struct.TYPE_12__*) #1

declare dso_local i32 @wait_for_item_free(%struct.TYPE_13__*) #1

declare dso_local i32 @bus_wait_for_units_check_ready(%struct.TYPE_14__*) #1

declare dso_local i32 @wait_for_item_parse_properties(%struct.TYPE_13__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
