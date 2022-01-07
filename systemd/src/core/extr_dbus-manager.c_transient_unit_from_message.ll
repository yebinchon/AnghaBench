; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_dbus-manager.c_transient_unit_from_message.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_dbus-manager.c_transient_unit_from_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64 }

@SD_BUS_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Invalid unit name or type.\00", align 1
@unit_vtable = common dso_local global %struct.TYPE_11__** null, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"Unit type %s does not support transient units.\00", align 1
@BUS_ERROR_UNIT_EXISTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Unit %s already exists.\00", align 1
@UNIT_RUNTIME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Failed to watch sender: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, %struct.TYPE_10__**, i32*)* @transient_unit_from_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @transient_unit_from_message(i8* %0, i8* %1, i8* %2, %struct.TYPE_10__** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_10__**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.TYPE_10__** %3, %struct.TYPE_10__*** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @assert(i8* %15)
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @assert(i8* %17)
  %19 = load i8*, i8** %9, align 8
  %20 = call i32 @assert(i8* %19)
  %21 = load i8*, i8** %9, align 8
  %22 = call i64 @unit_name_to_type(i8* %21)
  store i64 %22, i64* %12, align 8
  %23 = load i64, i64* %12, align 8
  %24 = icmp ult i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %5
  %26 = load i32*, i32** %11, align 8
  %27 = load i32, i32* @SD_BUS_ERROR_INVALID_ARGS, align 4
  %28 = call i32 (i32*, i32, i8*, ...) @sd_bus_error_setf(i32* %26, i32 %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 %28, i32* %6, align 4
  br label %100

29:                                               ; preds = %5
  %30 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @unit_vtable, align 8
  %31 = load i64, i64* %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %30, i64 %31
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %29
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* @SD_BUS_ERROR_INVALID_ARGS, align 4
  %40 = load i64, i64* %12, align 8
  %41 = call i8* @unit_type_to_string(i64 %40)
  %42 = call i32 (i32*, i32, i8*, ...) @sd_bus_error_setf(i32* %38, i32 %39, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  store i32 %42, i32* %6, align 4
  br label %100

43:                                               ; preds = %29
  %44 = load i8*, i8** %7, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = call i32 @manager_load_unit(i8* %44, i8* %45, i32* null, i32* %46, %struct.TYPE_10__** %13)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* %14, align 4
  store i32 %51, i32* %6, align 4
  br label %100

52:                                               ; preds = %43
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %54 = call i32 @unit_is_pristine(%struct.TYPE_10__* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %52
  %57 = load i32*, i32** %11, align 8
  %58 = load i32, i32* @BUS_ERROR_UNIT_EXISTS, align 4
  %59 = load i8*, i8** %9, align 8
  %60 = call i32 (i32*, i32, i8*, ...) @sd_bus_error_setf(i32* %57, i32 %58, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %59)
  store i32 %60, i32* %6, align 4
  br label %100

61:                                               ; preds = %52
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %63 = call i32 @unit_make_transient(%struct.TYPE_10__* %62)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* %14, align 4
  store i32 %67, i32* %6, align 4
  br label %100

68:                                               ; preds = %61
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = load i32, i32* @UNIT_RUNTIME, align 4
  %72 = load i32*, i32** %11, align 8
  %73 = call i32 @bus_unit_set_properties(%struct.TYPE_10__* %69, i8* %70, i32 %71, i32 0, i32* %72)
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %68
  %77 = load i32, i32* %14, align 4
  store i32 %77, i32* %6, align 4
  br label %100

78:                                               ; preds = %68
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %78
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = call i32 @bus_unit_track_add_sender(%struct.TYPE_10__* %84, i8* %85)
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %14, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = load i32, i32* %14, align 4
  %91 = call i32 @log_error_errno(i32 %90, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  store i32 %91, i32* %6, align 4
  br label %100

92:                                               ; preds = %83
  br label %93

93:                                               ; preds = %92, %78
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %95 = call i32 @unit_add_to_load_queue(%struct.TYPE_10__* %94)
  %96 = load i8*, i8** %7, align 8
  %97 = call i32 @manager_dispatch_load_queue(i8* %96)
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %99 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %10, align 8
  store %struct.TYPE_10__* %98, %struct.TYPE_10__** %99, align 8
  store i32 0, i32* %6, align 4
  br label %100

100:                                              ; preds = %93, %89, %76, %66, %56, %50, %37, %25
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @unit_name_to_type(i8*) #1

declare dso_local i32 @sd_bus_error_setf(i32*, i32, i8*, ...) #1

declare dso_local i8* @unit_type_to_string(i64) #1

declare dso_local i32 @manager_load_unit(i8*, i8*, i32*, i32*, %struct.TYPE_10__**) #1

declare dso_local i32 @unit_is_pristine(%struct.TYPE_10__*) #1

declare dso_local i32 @unit_make_transient(%struct.TYPE_10__*) #1

declare dso_local i32 @bus_unit_set_properties(%struct.TYPE_10__*, i8*, i32, i32, i32*) #1

declare dso_local i32 @bus_unit_track_add_sender(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i32 @unit_add_to_load_queue(%struct.TYPE_10__*) #1

declare dso_local i32 @manager_dispatch_load_queue(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
