; ModuleID = '/home/carl/AnghaBench/redis/tests/modules/extr_propagate.c_propagateTestCommand.c'
source_filename = "/home/carl/AnghaBench/redis/tests/modules/extr_propagate.c_propagateTestCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@timerHandler = common dso_local global i32 0, align 4
@threadMain = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"-ERR Can't start thread\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@REDISMODULE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @propagateTestCommand(i32* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32**, i32*** %6, align 8
  %11 = ptrtoint i32** %10 to i32
  %12 = call i32 @REDISMODULE_NOT_USED(i32 %11)
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @REDISMODULE_NOT_USED(i32 %13)
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* @timerHandler, align 4
  %17 = call i32 @RedisModule_CreateTimer(i32* %15, i32 100, i32 %16, i32* null)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @REDISMODULE_NOT_USED(i32 %18)
  %20 = load i32, i32* @threadMain, align 4
  %21 = call i64 @pthread_create(i32* %9, i32* null, i32 %20, i32* null)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @RedisModule_ReplyWithError(i32* %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 %25, i32* %4, align 4
  br label %32

26:                                               ; preds = %3
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @REDISMODULE_NOT_USED(i32 %27)
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @RedisModule_ReplyWithSimpleString(i32* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @REDISMODULE_OK, align 4
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %26, %23
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @REDISMODULE_NOT_USED(i32) #1

declare dso_local i32 @RedisModule_CreateTimer(i32*, i32, i32, i32*) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @RedisModule_ReplyWithError(i32*, i8*) #1

declare dso_local i32 @RedisModule_ReplyWithSimpleString(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
