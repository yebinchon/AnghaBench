; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-benchmark.c_freeClient.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-benchmark.c_freeClient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i64, i32, i32, i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_8__*, %struct.TYPE_8__*, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@AE_WRITABLE = common dso_local global i32 0, align 4
@AE_READABLE = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @freeClient to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freeClient(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %7 = call i32* @CLIENT_GET_EVENTLOOP(%struct.TYPE_8__* %6)
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @AE_WRITABLE, align 4
  %15 = call i32 @aeDeleteFileEvent(i32* %8, i32 %13, i32 %14)
  %16 = load i32*, i32** %3, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @AE_READABLE, align 4
  %23 = call i32 @aeDeleteFileEvent(i32* %16, i32 %21, i32 %22)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sge i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 5), align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @atomicGet(i32 %29, i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 0), align 8
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @aeStop(i32* %36)
  br label %38

38:                                               ; preds = %35, %28
  br label %39

39:                                               ; preds = %38, %1
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = call i32 @redisFree(%struct.TYPE_9__* %42)
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @sdsfree(i32 %46)
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = call i32 @zfree(%struct.TYPE_8__* %50)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = call i32 @zfree(%struct.TYPE_8__* %54)
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %57 = call i32 @zfree(%struct.TYPE_8__* %56)
  %58 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 2), align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %39
  %61 = call i32 @pthread_mutex_lock(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 1))
  br label %62

62:                                               ; preds = %60, %39
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 4), align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 4), align 4
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 3), align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %67 = call i32* @listSearchKey(i32 %65, %struct.TYPE_8__* %66)
  store i32* %67, i32** %4, align 8
  %68 = load i32*, i32** %4, align 8
  %69 = icmp ne i32* %68, null
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 3), align 8
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 @listDelNode(i32 %72, i32* %73)
  %75 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 2), align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %62
  %78 = call i32 @pthread_mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 1))
  br label %79

79:                                               ; preds = %77, %62
  ret void
}

declare dso_local i32* @CLIENT_GET_EVENTLOOP(%struct.TYPE_8__*) #1

declare dso_local i32 @aeDeleteFileEvent(i32*, i32, i32) #1

declare dso_local i32 @atomicGet(i32, i32) #1

declare dso_local i32 @aeStop(i32*) #1

declare dso_local i32 @redisFree(%struct.TYPE_9__*) #1

declare dso_local i32 @sdsfree(i32) #1

declare dso_local i32 @zfree(%struct.TYPE_8__*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32* @listSearchKey(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @listDelNode(i32, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
