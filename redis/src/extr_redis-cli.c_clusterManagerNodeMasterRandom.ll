; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerNodeMasterRandom.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerNodeMasterRandom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }

@cluster_manager = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@CLUSTER_MANAGER_FLAG_SLAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* ()* @clusterManagerNodeMasterRandom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @clusterManagerNodeMasterRandom() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  store i32 0, i32* %2, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cluster_manager, i32 0, i32 0), align 4
  %9 = call i32 @listRewind(i32 %8, i32* %4)
  br label %10

10:                                               ; preds = %24, %23, %0
  %11 = call %struct.TYPE_6__* @listNext(i32* %4)
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %5, align 8
  %12 = icmp ne %struct.TYPE_6__* %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %10
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %6, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CLUSTER_MANAGER_FLAG_SLAVE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  br label %10

24:                                               ; preds = %13
  %25 = load i32, i32* %2, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %2, align 4
  br label %10

27:                                               ; preds = %10
  %28 = call i32 @time(i32* null)
  %29 = call i32 @srand(i32 %28)
  %30 = call i32 (...) @rand()
  %31 = load i32, i32* %2, align 4
  %32 = srem i32 %30, %31
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cluster_manager, i32 0, i32 0), align 4
  %34 = call i32 @listRewind(i32 %33, i32* %4)
  br label %35

35:                                               ; preds = %55, %48, %27
  %36 = call %struct.TYPE_6__* @listNext(i32* %4)
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %5, align 8
  %37 = icmp ne %struct.TYPE_6__* %36, null
  br i1 %37, label %38, label %56

38:                                               ; preds = %35
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %7, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @CLUSTER_MANAGER_FLAG_SLAVE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %35

49:                                               ; preds = %38
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %3, align 4
  %52 = icmp ne i32 %50, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %54, %struct.TYPE_7__** %1, align 8
  br label %57

55:                                               ; preds = %49
  br label %35

56:                                               ; preds = %35
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %1, align 8
  br label %57

57:                                               ; preds = %56, %53
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  ret %struct.TYPE_7__* %58
}

declare dso_local i32 @listRewind(i32, i32*) #1

declare dso_local %struct.TYPE_6__* @listNext(i32*) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @rand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
