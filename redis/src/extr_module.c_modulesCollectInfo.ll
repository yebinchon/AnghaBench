; ModuleID = '/home/carl/AnghaBench/redis/src/extr_module.c_modulesCollectInfo.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_module.c_modulesCollectInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RedisModule = type { i32 (%struct.TYPE_4__*, i32)* }
%struct.TYPE_4__ = type { i32, i32, i32, i64, i32, i32, i32, %struct.RedisModule* }

@modules = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @modulesCollectInfo(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.RedisModule*, align 8
  %12 = alloca %struct.TYPE_4__, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @modules, align 4
  %14 = call i32* @dictGetIterator(i32 %13)
  store i32* %14, i32** %9, align 8
  br label %15

15:                                               ; preds = %52, %26, %4
  %16 = load i32*, i32** %9, align 8
  %17 = call i32* @dictNext(i32* %16)
  store i32* %17, i32** %10, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %57

19:                                               ; preds = %15
  %20 = load i32*, i32** %10, align 8
  %21 = call %struct.RedisModule* @dictGetVal(i32* %20)
  store %struct.RedisModule* %21, %struct.RedisModule** %11, align 8
  %22 = load %struct.RedisModule*, %struct.RedisModule** %11, align 8
  %23 = getelementptr inbounds %struct.RedisModule, %struct.RedisModule* %22, i32 0, i32 0
  %24 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %23, align 8
  %25 = icmp ne i32 (%struct.TYPE_4__*, i32)* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  br label %15

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %29 = load %struct.RedisModule*, %struct.RedisModule** %11, align 8
  %30 = ptrtoint %struct.RedisModule* %29 to i32
  store i32 %30, i32* %28, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 3
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %35, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 4
  store i32 0, i32* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 5
  store i32 0, i32* %39, align 4
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 6
  store i32 0, i32* %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 7
  store %struct.RedisModule* null, %struct.RedisModule** %41, align 8
  %42 = load %struct.RedisModule*, %struct.RedisModule** %11, align 8
  %43 = getelementptr inbounds %struct.RedisModule, %struct.RedisModule* %42, i32 0, i32 0
  %44 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 %44(%struct.TYPE_4__* %12, i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %27
  %51 = call i32 @RM_InfoEndDictField(%struct.TYPE_4__* %12)
  br label %52

52:                                               ; preds = %50, %27
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %5, align 4
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %8, align 4
  br label %15

57:                                               ; preds = %15
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @dictReleaseIterator(i32* %58)
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32* @dictGetIterator(i32) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local %struct.RedisModule* @dictGetVal(i32*) #1

declare dso_local i32 @RM_InfoEndDictField(%struct.TYPE_4__*) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
