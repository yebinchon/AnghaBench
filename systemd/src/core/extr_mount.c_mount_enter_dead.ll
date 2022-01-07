; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_mount.c_mount_enter_dead.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_mount.c_mount_enter_dead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i32 }

@MOUNT_SUCCESS = common dso_local global i64 0, align 8
@MOUNT_FAILED = common dso_local global i32 0, align 4
@MOUNT_DEAD = common dso_local global i32 0, align 4
@UNIT_DEPENDENCY_MOUNTINFO_IMPLICIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i64)* @mount_enter_dead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mount_enter_dead(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %6 = call i32 @assert(%struct.TYPE_6__* %5)
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MOUNT_SUCCESS, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  br label %16

16:                                               ; preds = %12, %2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = call i32 @UNIT(%struct.TYPE_6__* %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MOUNT_SUCCESS, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @mount_result_to_string(i64 %27)
  %29 = call i32 @unit_log_result(i32 %18, i32 %24, i32 %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MOUNT_SUCCESS, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %16
  %37 = load i32, i32* @MOUNT_FAILED, align 4
  br label %40

38:                                               ; preds = %16
  %39 = load i32, i32* @MOUNT_DEAD, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = call i32 @mount_set_state(%struct.TYPE_6__* %30, i32 %41)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @exec_runtime_unref(i32 %45, i32 1)
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = call i32 @UNIT(%struct.TYPE_6__* %49)
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = call i32 @unit_destroy_runtime_directory(i32 %50, i32* %52)
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %55 = call i32 @UNIT(%struct.TYPE_6__* %54)
  %56 = call i32 @unit_unref_uid_gid(i32 %55, i32 1)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = call i32 @dynamic_creds_destroy(i32* %58)
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %61 = call i32 @UNIT(%struct.TYPE_6__* %60)
  %62 = load i32, i32* @UNIT_DEPENDENCY_MOUNTINFO_IMPLICIT, align 4
  %63 = call i32 @unit_remove_dependencies(i32 %61, i32 %62)
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_6__*) #1

declare dso_local i32 @unit_log_result(i32, i32, i32) #1

declare dso_local i32 @UNIT(%struct.TYPE_6__*) #1

declare dso_local i32 @mount_result_to_string(i64) #1

declare dso_local i32 @mount_set_state(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @exec_runtime_unref(i32, i32) #1

declare dso_local i32 @unit_destroy_runtime_directory(i32, i32*) #1

declare dso_local i32 @unit_unref_uid_gid(i32, i32) #1

declare dso_local i32 @dynamic_creds_destroy(i32*) #1

declare dso_local i32 @unit_remove_dependencies(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
