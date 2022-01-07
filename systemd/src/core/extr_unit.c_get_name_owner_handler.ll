; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_unit.c_get_name_owner_handler.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_unit.c_get_name_owner_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_16__*, i32*, i8*)* }

@.str = private unnamed_addr constant [38 x i8] c"Failed to get name owner from bus: %s\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"org.freedesktop.DBus.Error.NameHasNoOwner\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Unexpected error response from GetNameOwner: %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i8*, %struct.TYPE_17__*)* @get_name_owner_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_name_owner_handler(%struct.TYPE_16__* %0, i8* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %13, %struct.TYPE_16__** %10, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %15 = call i32 @assert(%struct.TYPE_16__* %14)
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %17 = call i32 @assert(%struct.TYPE_16__* %16)
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @sd_bus_slot_unref(i32 %20)
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %25 = call i64 @sd_bus_error_is_set(%struct.TYPE_17__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %3
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @log_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %30)
  store i32 0, i32* %4, align 4
  br label %72

32:                                               ; preds = %3
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %34 = call %struct.TYPE_17__* @sd_bus_message_get_error(%struct.TYPE_16__* %33)
  store %struct.TYPE_17__* %34, %struct.TYPE_17__** %8, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %36 = call i64 @sd_bus_error_has_name(%struct.TYPE_17__* %35, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %72

39:                                               ; preds = %32
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %41 = icmp ne %struct.TYPE_17__* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @log_error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  store i32 0, i32* %4, align 4
  br label %72

47:                                               ; preds = %39
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %49 = call i32 @sd_bus_message_read(%struct.TYPE_16__* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %9)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @bus_log_parse_error(i32 %53)
  store i32 0, i32* %4, align 4
  br label %72

55:                                               ; preds = %47
  %56 = load i8*, i8** %9, align 8
  %57 = call i8* @empty_to_null(i8* %56)
  store i8* %57, i8** %9, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %59 = call %struct.TYPE_15__* @UNIT_VTABLE(%struct.TYPE_16__* %58)
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load i32 (%struct.TYPE_16__*, i32*, i8*)*, i32 (%struct.TYPE_16__*, i32*, i8*)** %60, align 8
  %62 = icmp ne i32 (%struct.TYPE_16__*, i32*, i8*)* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %55
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %65 = call %struct.TYPE_15__* @UNIT_VTABLE(%struct.TYPE_16__* %64)
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load i32 (%struct.TYPE_16__*, i32*, i8*)*, i32 (%struct.TYPE_16__*, i32*, i8*)** %66, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = call i32 %67(%struct.TYPE_16__* %68, i32* null, i8* %69)
  br label %71

71:                                               ; preds = %63, %55
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %52, %42, %38, %27
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @assert(%struct.TYPE_16__*) #1

declare dso_local i32 @sd_bus_slot_unref(i32) #1

declare dso_local i64 @sd_bus_error_is_set(%struct.TYPE_17__*) #1

declare dso_local i32 @log_error(i8*, i32) #1

declare dso_local %struct.TYPE_17__* @sd_bus_message_get_error(%struct.TYPE_16__*) #1

declare dso_local i64 @sd_bus_error_has_name(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @sd_bus_message_read(%struct.TYPE_16__*, i8*, i8**) #1

declare dso_local i32 @bus_log_parse_error(i32) #1

declare dso_local i8* @empty_to_null(i8*) #1

declare dso_local %struct.TYPE_15__* @UNIT_VTABLE(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
