; ModuleID = '/home/carl/AnghaBench/redis/src/extr_module.c_moduleFreeContext.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_module.c_moduleFreeContext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__*, i64, i64 }
%struct.TYPE_7__ = type { i32 }

@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [166 x i8] c"API misuse detected in module %s: RedisModule_ReplyWithArray(REDISMODULE_POSTPONED_ARRAY_LEN) not matched by the same number of RedisModule_SetReplyArrayLen() calls.\00", align 1
@REDISMODULE_CTX_THREAD_SAFE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @moduleFreeContext(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %3 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %4 = call i32 @moduleHandlePropagationAfterCommandCallback(%struct.TYPE_8__* %3)
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = call i32 @autoMemoryCollect(%struct.TYPE_8__* %5)
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %8 = call i32 @poolAllocRelease(%struct.TYPE_8__* %7)
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @zfree(i64 %16)
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @LL_WARNING, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @serverLog(i32 %20, i8* getelementptr inbounds ([166 x i8], [166 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %13, %1
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @REDISMODULE_CTX_THREAD_SAFE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @freeClient(i32 %37)
  br label %39

39:                                               ; preds = %34, %27
  ret void
}

declare dso_local i32 @moduleHandlePropagationAfterCommandCallback(%struct.TYPE_8__*) #1

declare dso_local i32 @autoMemoryCollect(%struct.TYPE_8__*) #1

declare dso_local i32 @poolAllocRelease(%struct.TYPE_8__*) #1

declare dso_local i32 @zfree(i64) #1

declare dso_local i32 @serverLog(i32, i8*, i32) #1

declare dso_local i32 @freeClient(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
