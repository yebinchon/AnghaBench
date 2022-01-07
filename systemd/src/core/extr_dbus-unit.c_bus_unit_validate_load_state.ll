; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_dbus-unit.c_bus_unit_validate_load_state.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_dbus-unit.c_bus_unit_validate_load_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@BUS_ERROR_NO_SUCH_UNIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Unit %s not found.\00", align 1
@BUS_ERROR_BAD_UNIT_SETTING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Unit %s has a bad unit file setting.\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Unit %s failed to load properly: %m.\00", align 1
@BUS_ERROR_UNIT_MASKED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Unit %s is masked.\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Unexpected load state of unit %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_unit_validate_load_state(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %7 = call i32 @assert(%struct.TYPE_4__* %6)
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %43 [
    i32 132, label %11
    i32 129, label %12
    i32 134, label %19
    i32 133, label %26
    i32 131, label %35
    i32 128, label %42
    i32 130, label %42
  ]

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %50

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* @BUS_ERROR_NO_SUCH_UNIT, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @sd_bus_error_setf(i32* %13, i32 %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 %18, i32* %3, align 4
  br label %50

19:                                               ; preds = %2
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* @BUS_ERROR_BAD_UNIT_SETTING, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @sd_bus_error_setf(i32* %20, i32 %21, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  store i32 %25, i32* %3, align 4
  br label %50

26:                                               ; preds = %2
  %27 = load i32*, i32** %5, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @sd_bus_error_set_errnof(i32* %27, i32 %30, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  store i32 %34, i32* %3, align 4
  br label %50

35:                                               ; preds = %2
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* @BUS_ERROR_UNIT_MASKED, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @sd_bus_error_setf(i32* %36, i32 %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  store i32 %41, i32* %3, align 4
  br label %50

42:                                               ; preds = %2, %2
  br label %43

43:                                               ; preds = %2, %42
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* @BUS_ERROR_NO_SUCH_UNIT, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @sd_bus_error_setf(i32* %44, i32 %45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %48)
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %43, %35, %26, %19, %12, %11
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @assert(%struct.TYPE_4__*) #1

declare dso_local i32 @sd_bus_error_setf(i32*, i32, i8*, i32) #1

declare dso_local i32 @sd_bus_error_set_errnof(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
