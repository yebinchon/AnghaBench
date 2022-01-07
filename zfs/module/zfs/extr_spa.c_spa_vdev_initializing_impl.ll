; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_vdev_initializing_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_vdev_initializing_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_5__**, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@SCL_CONFIG = common dso_local global i32 0, align 4
@SCL_STATE = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@VDEV_INITIALIZE_ACTIVE = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @spa_vdev_initializing_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_vdev_initializing_impl(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %4, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = load i32, i32* @SCL_CONFIG, align 4
  %12 = load i32, i32* @SCL_STATE, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @RW_READER, align 4
  %15 = call i32 @spa_config_held(%struct.TYPE_6__* %10, i32 %13, i32 %14)
  %16 = call i32 @ASSERT(i32 %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = call i32 @MUTEX_HELD(i32* %18)
  %20 = call i32 @ASSERT(i32 %19)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = call i32 @mutex_exit(i32* %22)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  %26 = call i32 @mutex_enter(i32* %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = call i32 @mutex_enter(i32* %28)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @VDEV_INITIALIZE_ACTIVE, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %5, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 3
  %38 = call i32 @mutex_exit(i32* %37)
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %1
  %42 = load i32, i32* @B_TRUE, align 4
  store i32 %42, i32* %2, align 4
  br label %68

43:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %63, %43
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %44
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %53, i64 %55
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = call i32 @spa_vdev_initializing_impl(%struct.TYPE_5__* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %50
  %61 = load i32, i32* @B_TRUE, align 4
  store i32 %61, i32* %2, align 4
  br label %68

62:                                               ; preds = %50
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %44

66:                                               ; preds = %44
  %67 = load i32, i32* @B_FALSE, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %66, %60, %41
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @spa_config_held(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @mutex_enter(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
