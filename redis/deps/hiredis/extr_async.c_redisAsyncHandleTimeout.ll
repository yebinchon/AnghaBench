; ModuleID = '/home/carl/AnghaBench/redis/deps/hiredis/extr_async.c_redisAsyncHandleTimeout.c'
source_filename = "/home/carl/AnghaBench/redis/deps/hiredis/extr_async.c_redisAsyncHandleTimeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__, i32 (%struct.TYPE_10__*, i32)*, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_9__ = type { i32, i32 }

@REDIS_CONNECTED = common dso_local global i32 0, align 4
@REDIS_ERR_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Timeout\00", align 1
@REDIS_ERR = common dso_local global i32 0, align 4
@REDIS_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @redisAsyncHandleTimeout(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 2
  store %struct.TYPE_9__* %6, %struct.TYPE_9__** %3, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @REDIS_CONNECTED, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %61

20:                                               ; preds = %13, %1
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = load i32, i32* @REDIS_ERR_TIMEOUT, align 4
  %28 = call i32 @__redisSetError(%struct.TYPE_9__* %26, i32 %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %25, %20
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @REDIS_CONNECTED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %29
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %38, align 8
  %40 = icmp ne i32 (%struct.TYPE_10__*, i32)* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %43, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %46 = load i32, i32* @REDIS_ERR, align 4
  %47 = call i32 %44(%struct.TYPE_10__* %45, i32 %46)
  br label %48

48:                                               ; preds = %41, %36, %29
  br label %49

49:                                               ; preds = %55, %48
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = call i64 @__redisShiftCallback(%struct.TYPE_11__* %51, i32* %4)
  %53 = load i64, i64* @REDIS_OK, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %57 = call i32 @__redisRunCallback(%struct.TYPE_10__* %56, i32* %4, i32* null)
  br label %49

58:                                               ; preds = %49
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %60 = call i32 @__redisAsyncDisconnect(%struct.TYPE_10__* %59)
  br label %61

61:                                               ; preds = %58, %19
  ret void
}

declare dso_local i32 @__redisSetError(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i64 @__redisShiftCallback(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @__redisRunCallback(%struct.TYPE_10__*, i32*, i32*) #1

declare dso_local i32 @__redisAsyncDisconnect(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
