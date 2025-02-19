; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_mount.c_mount_start.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_mount.c_mount_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }

@MOUNT_UNMOUNTING = common dso_local global i32 0, align 4
@MOUNT_UNMOUNTING_SIGTERM = common dso_local global i32 0, align 4
@MOUNT_UNMOUNTING_SIGKILL = common dso_local global i32 0, align 4
@MOUNT_CLEANING = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@MOUNT_MOUNTING = common dso_local global i64 0, align 8
@MOUNT_DEAD = common dso_local global i32 0, align 4
@MOUNT_FAILED = common dso_local global i32 0, align 4
@MOUNT_FAILURE_START_LIMIT_HIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @mount_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mount_start(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call %struct.TYPE_8__* @MOUNT(i32* %6)
  store %struct.TYPE_8__* %7, %struct.TYPE_8__** %4, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %9 = call i32 @assert(%struct.TYPE_8__* %8)
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* @MOUNT_UNMOUNTING, align 4
  %14 = load i32, i32* @MOUNT_UNMOUNTING_SIGTERM, align 4
  %15 = load i32, i32* @MOUNT_UNMOUNTING_SIGKILL, align 4
  %16 = load i32, i32* @MOUNT_CLEANING, align 4
  %17 = call %struct.TYPE_8__* (i64, i32, i32, ...) @IN_SET(i64 %12, i32 %13, i32 %14, i32 %15, i32 %16)
  %18 = icmp ne %struct.TYPE_8__* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @EAGAIN, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %58

22:                                               ; preds = %1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MOUNT_MOUNTING, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %58

29:                                               ; preds = %22
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @MOUNT_DEAD, align 4
  %34 = load i32, i32* @MOUNT_FAILED, align 4
  %35 = call %struct.TYPE_8__* (i64, i32, i32, ...) @IN_SET(i64 %32, i32 %33, i32 %34)
  %36 = call i32 @assert(%struct.TYPE_8__* %35)
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @unit_test_start_limit(i32* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %29
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = load i32, i32* @MOUNT_FAILURE_START_LIMIT_HIT, align 4
  %44 = call i32 @mount_enter_dead(%struct.TYPE_8__* %42, i32 %43)
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %58

46:                                               ; preds = %29
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @unit_acquire_invocation_id(i32* %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %58

53:                                               ; preds = %46
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %55 = call i32 @mount_cycle_clear(%struct.TYPE_8__* %54)
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = call i32 @mount_enter_mounting(%struct.TYPE_8__* %56)
  store i32 1, i32* %2, align 4
  br label %58

58:                                               ; preds = %53, %51, %41, %28, %19
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.TYPE_8__* @MOUNT(i32*) #1

declare dso_local i32 @assert(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @IN_SET(i64, i32, i32, ...) #1

declare dso_local i32 @unit_test_start_limit(i32*) #1

declare dso_local i32 @mount_enter_dead(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @unit_acquire_invocation_id(i32*) #1

declare dso_local i32 @mount_cycle_clear(%struct.TYPE_8__*) #1

declare dso_local i32 @mount_enter_mounting(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
