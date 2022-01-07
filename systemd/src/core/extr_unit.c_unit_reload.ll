; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_unit.c_unit_reload.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_unit.c_unit_reload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_16__*)* }

@UNIT_LOADED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBADR = common dso_local global i32 0, align 4
@UNIT_RELOADING = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@UNIT_ACTIVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"Unit cannot be reloaded because it is inactive.\00", align 1
@ENOEXEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Redirecting reload request from %s to %s.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unit_reload(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %6 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %7 = call i32 @assert(%struct.TYPE_16__* %6)
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @UNIT_LOADED, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %79

16:                                               ; preds = %1
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %18 = call i32 @unit_can_reload(%struct.TYPE_16__* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @EBADR, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %79

23:                                               ; preds = %16
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %25 = call i64 @unit_active_state(%struct.TYPE_16__* %24)
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @UNIT_RELOADING, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @EAGAIN, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %79

32:                                               ; preds = %23
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @UNIT_ACTIVE, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %38 = call i32 @log_unit_warning(%struct.TYPE_16__* %37, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @ENOEXEC, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %79

41:                                               ; preds = %32
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %43 = call %struct.TYPE_16__* @unit_following(%struct.TYPE_16__* %42)
  store %struct.TYPE_16__* %43, %struct.TYPE_16__** %5, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %45 = icmp ne %struct.TYPE_16__* %44, null
  br i1 %45, label %46, label %57

46:                                               ; preds = %41
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @log_unit_debug(%struct.TYPE_16__* %47, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %53)
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %56 = call i32 @unit_reload(%struct.TYPE_16__* %55)
  store i32 %56, i32* %2, align 4
  br label %79

57:                                               ; preds = %41
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %59 = call i32 @unit_add_to_dbus_queue(%struct.TYPE_16__* %58)
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %61 = call %struct.TYPE_15__* @UNIT_VTABLE(%struct.TYPE_16__* %60)
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %62, align 8
  %64 = icmp ne i32 (%struct.TYPE_16__*)* %63, null
  br i1 %64, label %72, label %65

65:                                               ; preds = %57
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %68 = call i64 @unit_active_state(%struct.TYPE_16__* %67)
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %70 = call i64 @unit_active_state(%struct.TYPE_16__* %69)
  %71 = call i32 @unit_notify(%struct.TYPE_16__* %66, i64 %68, i64 %70, i32 0)
  store i32 0, i32* %2, align 4
  br label %79

72:                                               ; preds = %57
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %74 = call %struct.TYPE_15__* @UNIT_VTABLE(%struct.TYPE_16__* %73)
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %75, align 8
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %78 = call i32 %76(%struct.TYPE_16__* %77)
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %72, %65, %46, %36, %29, %20, %13
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @assert(%struct.TYPE_16__*) #1

declare dso_local i32 @unit_can_reload(%struct.TYPE_16__*) #1

declare dso_local i64 @unit_active_state(%struct.TYPE_16__*) #1

declare dso_local i32 @log_unit_warning(%struct.TYPE_16__*, i8*) #1

declare dso_local %struct.TYPE_16__* @unit_following(%struct.TYPE_16__*) #1

declare dso_local i32 @log_unit_debug(%struct.TYPE_16__*, i8*, i32, i32) #1

declare dso_local i32 @unit_add_to_dbus_queue(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_15__* @UNIT_VTABLE(%struct.TYPE_16__*) #1

declare dso_local i32 @unit_notify(%struct.TYPE_16__*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
