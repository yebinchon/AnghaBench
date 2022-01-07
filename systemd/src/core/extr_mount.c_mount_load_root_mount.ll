; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_mount.c_mount_load_root_mount.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_mount.c_mount_load_root_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@SPECIAL_ROOT_MOUNT = common dso_local global i32 0, align 4
@EXEC_OUTPUT_NULL = common dso_local global i32 0, align 4
@EXEC_INPUT_NULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Root Mount\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @mount_load_root_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mount_load_root_mount(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %3 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %4 = call i32 @assert(%struct.TYPE_9__* %3)
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %6 = load i32, i32* @SPECIAL_ROOT_MOUNT, align 4
  %7 = call i32 @unit_has_name(%struct.TYPE_9__* %5, i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %33

10:                                               ; preds = %1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* @EXEC_OUTPUT_NULL, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %17 = call %struct.TYPE_10__* @MOUNT(%struct.TYPE_9__* %16)
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  store i32 %15, i32* %19, align 4
  %20 = load i32, i32* @EXEC_INPUT_NULL, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %22 = call %struct.TYPE_10__* @MOUNT(%struct.TYPE_9__* %21)
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  store i32 %20, i32* %24, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %10
  %30 = call i64 @strdup(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  store i64 %30, i64* %32, align 8
  br label %33

33:                                               ; preds = %9, %29, %10
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_9__*) #1

declare dso_local i32 @unit_has_name(%struct.TYPE_9__*, i32) #1

declare dso_local %struct.TYPE_10__* @MOUNT(%struct.TYPE_9__*) #1

declare dso_local i64 @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
