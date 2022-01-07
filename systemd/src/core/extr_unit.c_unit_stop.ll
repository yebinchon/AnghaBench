; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_unit.c_unit_stop.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_unit.c_unit_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_13__*)* }

@EALREADY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Redirecting stop request from %s to %s.\00", align 1
@EBADR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unit_stop(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %7 = call i32 @assert(%struct.TYPE_13__* %6)
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %9 = call i32 @unit_active_state(%struct.TYPE_13__* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @UNIT_IS_INACTIVE_OR_FAILED(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EALREADY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %50

16:                                               ; preds = %1
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %18 = call %struct.TYPE_13__* @unit_following(%struct.TYPE_13__* %17)
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %5, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %20 = icmp ne %struct.TYPE_13__* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %16
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @log_unit_debug(%struct.TYPE_13__* %22, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28)
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %31 = call i32 @unit_stop(%struct.TYPE_13__* %30)
  store i32 %31, i32* %2, align 4
  br label %50

32:                                               ; preds = %16
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %34 = call %struct.TYPE_12__* @UNIT_VTABLE(%struct.TYPE_13__* %33)
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %35, align 8
  %37 = icmp ne i32 (%struct.TYPE_13__*)* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @EBADR, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %50

41:                                               ; preds = %32
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %43 = call i32 @unit_add_to_dbus_queue(%struct.TYPE_13__* %42)
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %45 = call %struct.TYPE_12__* @UNIT_VTABLE(%struct.TYPE_13__* %44)
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %46, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %49 = call i32 %47(%struct.TYPE_13__* %48)
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %41, %38, %21, %13
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @assert(%struct.TYPE_13__*) #1

declare dso_local i32 @unit_active_state(%struct.TYPE_13__*) #1

declare dso_local i64 @UNIT_IS_INACTIVE_OR_FAILED(i32) #1

declare dso_local %struct.TYPE_13__* @unit_following(%struct.TYPE_13__*) #1

declare dso_local i32 @log_unit_debug(%struct.TYPE_13__*, i8*, i32, i32) #1

declare dso_local %struct.TYPE_12__* @UNIT_VTABLE(%struct.TYPE_13__*) #1

declare dso_local i32 @unit_add_to_dbus_queue(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
