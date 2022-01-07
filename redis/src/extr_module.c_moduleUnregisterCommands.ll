; ModuleID = '/home/carl/AnghaBench/redis/src/extr_module.c_moduleUnregisterCommands.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_module.c_moduleUnregisterCommands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.RedisModule = type { i32 }
%struct.redisCommand = type { i64, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_4__*, %struct.RedisModule*, i32 }

@server = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@RedisModuleCommandDispatcher = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @moduleUnregisterCommands(%struct.RedisModule* %0) #0 {
  %2 = alloca %struct.RedisModule*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.redisCommand*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  store %struct.RedisModule* %0, %struct.RedisModule** %2, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 1), align 4
  %9 = call i32* @dictGetSafeIterator(i32 %8)
  store i32* %9, i32** %3, align 8
  br label %10

10:                                               ; preds = %54, %1
  %11 = load i32*, i32** %3, align 8
  %12 = call i32* @dictNext(i32* %11)
  store i32* %12, i32** %4, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %55

14:                                               ; preds = %10
  %15 = load i32*, i32** %4, align 8
  %16 = call %struct.redisCommand* @dictGetVal(i32* %15)
  store %struct.redisCommand* %16, %struct.redisCommand** %5, align 8
  %17 = load %struct.redisCommand*, %struct.redisCommand** %5, align 8
  %18 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @RedisModuleCommandDispatcher, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %54

22:                                               ; preds = %14
  %23 = load %struct.redisCommand*, %struct.redisCommand** %5, align 8
  %24 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = bitcast i8* %26 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %6, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %7, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load %struct.RedisModule*, %struct.RedisModule** %34, align 8
  %36 = load %struct.RedisModule*, %struct.RedisModule** %2, align 8
  %37 = icmp eq %struct.RedisModule* %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %22
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 1), align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @dictDelete(i32 %39, i32 %40)
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 0), align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @dictDelete(i32 %42, i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @sdsfree(i32 %45)
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = call i32 @zfree(%struct.TYPE_4__* %49)
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %52 = call i32 @zfree(%struct.TYPE_4__* %51)
  br label %53

53:                                               ; preds = %38, %22
  br label %54

54:                                               ; preds = %53, %14
  br label %10

55:                                               ; preds = %10
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @dictReleaseIterator(i32* %56)
  ret void
}

declare dso_local i32* @dictGetSafeIterator(i32) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local %struct.redisCommand* @dictGetVal(i32*) #1

declare dso_local i32 @dictDelete(i32, i32) #1

declare dso_local i32 @sdsfree(i32) #1

declare dso_local i32 @zfree(%struct.TYPE_4__*) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
