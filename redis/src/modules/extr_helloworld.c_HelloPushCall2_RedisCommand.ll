; ModuleID = '/home/carl/AnghaBench/redis/src/modules/extr_helloworld.c_HelloPushCall2_RedisCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/modules/extr_helloworld.c_HelloPushCall2_RedisCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"RPUSH\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ss\00", align 1
@REDISMODULE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HelloPushCall2_RedisCommand(i32* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 3
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @RedisModule_WrongArity(i32* %12)
  store i32 %13, i32* %4, align 4
  br label %29

14:                                               ; preds = %3
  %15 = load i32*, i32** %5, align 8
  %16 = load i32**, i32*** %6, align 8
  %17 = getelementptr inbounds i32*, i32** %16, i64 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32**, i32*** %6, align 8
  %20 = getelementptr inbounds i32*, i32** %19, i64 2
  %21 = load i32*, i32** %20, align 8
  %22 = call i32* @RedisModule_Call(i32* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %18, i32* %21)
  store i32* %22, i32** %8, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @RedisModule_ReplyWithCallReply(i32* %23, i32* %24)
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @RedisModule_FreeCallReply(i32* %26)
  %28 = load i32, i32* @REDISMODULE_OK, align 4
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %14, %11
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @RedisModule_WrongArity(i32*) #1

declare dso_local i32* @RedisModule_Call(i32*, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @RedisModule_ReplyWithCallReply(i32*, i32*) #1

declare dso_local i32 @RedisModule_FreeCallReply(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
