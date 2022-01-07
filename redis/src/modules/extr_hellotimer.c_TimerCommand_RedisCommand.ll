; ModuleID = '/home/carl/AnghaBench/redis/src/modules/extr_hellotimer.c_TimerCommand_RedisCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/modules/extr_hellotimer.c_TimerCommand_RedisCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"After %d\00", align 1
@timerHandler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"OK\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TimerCommand_RedisCommand(i32* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32**, i32*** %5, align 8
  %12 = ptrtoint i32** %11 to i32
  %13 = call i32 @REDISMODULE_NOT_USED(i32 %12)
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @REDISMODULE_NOT_USED(i32 %14)
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %33, %3
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 10
  br i1 %18, label %19, label %36

19:                                               ; preds = %16
  %20 = call i32 (...) @rand()
  %21 = srem i32 %20, 5000
  store i32 %21, i32* %8, align 4
  %22 = call i8* @RedisModule_Alloc(i32 256)
  store i8* %22, i8** %9, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @snprintf(i8* %23, i32 256, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @timerHandler, align 4
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @RedisModule_CreateTimer(i32* %26, i32 %27, i32 %28, i8* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @REDISMODULE_NOT_USED(i32 %31)
  br label %33

33:                                               ; preds = %19
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %16

36:                                               ; preds = %16
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @RedisModule_ReplyWithSimpleString(i32* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  ret i32 %38
}

declare dso_local i32 @REDISMODULE_NOT_USED(i32) #1

declare dso_local i32 @rand(...) #1

declare dso_local i8* @RedisModule_Alloc(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @RedisModule_CreateTimer(i32*, i32, i32, i8*) #1

declare dso_local i32 @RedisModule_ReplyWithSimpleString(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
