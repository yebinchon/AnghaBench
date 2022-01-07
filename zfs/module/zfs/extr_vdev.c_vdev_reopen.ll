; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev.c_vdev_reopen.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev.c_vdev_reopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32*, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }

@SCL_STATE_ALL = common dso_local global i64 0, align 8
@RW_WRITER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vdev_reopen(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %4 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %4, i32 0, i32 3
  %6 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %6, %struct.TYPE_16__** %3, align 8
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %8 = load i64, i64* @SCL_STATE_ALL, align 8
  %9 = load i32, i32* @RW_WRITER, align 4
  %10 = call i64 @spa_config_held(%struct.TYPE_16__* %7, i64 %8, i32 %9)
  %11 = load i64, i64* @SCL_STATE_ALL, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @ASSERT(i32 %13)
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %24 = call i32 @vdev_close(%struct.TYPE_15__* %23)
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %26 = call i32 @vdev_open(%struct.TYPE_15__* %25)
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %57

31:                                               ; preds = %1
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %33 = call i32 @vdev_validate_aux(%struct.TYPE_15__* %32)
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %35 = call i64 @vdev_readable(%struct.TYPE_15__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %31
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %39 = call i64 @vdev_writeable(%struct.TYPE_15__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %37
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = icmp eq i32* %44, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %41
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %50 = call i32 @l2arc_vdev_present(%struct.TYPE_15__* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %55 = call i32 @l2arc_add_vdev(%struct.TYPE_16__* %53, %struct.TYPE_15__* %54)
  br label %56

56:                                               ; preds = %52, %48, %41, %37, %31
  br label %60

57:                                               ; preds = %1
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %59 = call i32 @vdev_validate(%struct.TYPE_15__* %58)
  br label %60

60:                                               ; preds = %57, %56
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %62 = call i32 @vdev_propagate_state(%struct.TYPE_15__* %61)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @spa_config_held(%struct.TYPE_16__*, i64, i32) #1

declare dso_local i32 @vdev_close(%struct.TYPE_15__*) #1

declare dso_local i32 @vdev_open(%struct.TYPE_15__*) #1

declare dso_local i32 @vdev_validate_aux(%struct.TYPE_15__*) #1

declare dso_local i64 @vdev_readable(%struct.TYPE_15__*) #1

declare dso_local i64 @vdev_writeable(%struct.TYPE_15__*) #1

declare dso_local i32 @l2arc_vdev_present(%struct.TYPE_15__*) #1

declare dso_local i32 @l2arc_add_vdev(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @vdev_validate(%struct.TYPE_15__*) #1

declare dso_local i32 @vdev_propagate_state(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
