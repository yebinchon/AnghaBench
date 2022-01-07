; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_dbus-job.c_bus_job_method_cancel.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_dbus-job.c_bus_job_method_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@JOB_CANCELED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_job_method_cancel(%struct.TYPE_11__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** %8, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %13 = call i32 @assert(%struct.TYPE_11__* %12)
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %15 = call i32 @assert(%struct.TYPE_11__* %14)
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @mac_selinux_unit_access_check(%struct.TYPE_12__* %18, %struct.TYPE_11__* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %4, align 4
  br label %58

26:                                               ; preds = %3
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = call i32 @sd_bus_message_get_sender(%struct.TYPE_11__* %30)
  %32 = call i32 @sd_bus_track_contains(i32 %29, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %52, label %34

34:                                               ; preds = %26
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @bus_verify_manage_units_async(i32 %39, %struct.TYPE_11__* %40, i32* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %4, align 4
  br label %58

47:                                               ; preds = %34
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 1, i32* %4, align 4
  br label %58

51:                                               ; preds = %47
  br label %52

52:                                               ; preds = %51, %26
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %54 = load i32, i32* @JOB_CANCELED, align 4
  %55 = call i32 @job_finish_and_invalidate(%struct.TYPE_11__* %53, i32 %54, i32 1, i32 0)
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %57 = call i32 @sd_bus_reply_method_return(%struct.TYPE_11__* %56, i32* null)
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %52, %50, %45, %24
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @assert(%struct.TYPE_11__*) #1

declare dso_local i32 @mac_selinux_unit_access_check(%struct.TYPE_12__*, %struct.TYPE_11__*, i8*, i32*) #1

declare dso_local i32 @sd_bus_track_contains(i32, i32) #1

declare dso_local i32 @sd_bus_message_get_sender(%struct.TYPE_11__*) #1

declare dso_local i32 @bus_verify_manage_units_async(i32, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @job_finish_and_invalidate(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @sd_bus_reply_method_return(%struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
