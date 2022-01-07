; ModuleID = '/home/carl/AnghaBench/redis/src/modules/extr_helloworld.c_HelloListSumLen_RedisCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/modules/extr_helloworld.c_HelloListSumLen_RedisCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"LRANGE\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"sll\00", align 1
@REDISMODULE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HelloListSumLen_RedisCommand(i32* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 2
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @RedisModule_WrongArity(i32* %16)
  store i32 %17, i32* %4, align 4
  br label %48

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = load i32**, i32*** %6, align 8
  %21 = getelementptr inbounds i32*, i32** %20, i64 1
  %22 = load i32*, i32** %21, align 8
  %23 = call i32* @RedisModule_Call(i32* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %22, i64 0, i64 -1)
  store i32* %23, i32** %8, align 8
  store i64 0, i64* %9, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = call i64 @RedisModule_CallReplyLength(i32* %24)
  store i64 %25, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %26

26:                                               ; preds = %38, %18
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* %10, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  %31 = load i32*, i32** %8, align 8
  %32 = load i64, i64* %11, align 8
  %33 = call i32* @RedisModule_CallReplyArrayElement(i32* %31, i64 %32)
  store i32* %33, i32** %12, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = call i64 @RedisModule_CallReplyLength(i32* %34)
  %36 = load i64, i64* %9, align 8
  %37 = add i64 %36, %35
  store i64 %37, i64* %9, align 8
  br label %38

38:                                               ; preds = %30
  %39 = load i64, i64* %11, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %11, align 8
  br label %26

41:                                               ; preds = %26
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @RedisModule_FreeCallReply(i32* %42)
  %44 = load i32*, i32** %5, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @RedisModule_ReplyWithLongLong(i32* %44, i64 %45)
  %47 = load i32, i32* @REDISMODULE_OK, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %41, %15
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @RedisModule_WrongArity(i32*) #1

declare dso_local i32* @RedisModule_Call(i32*, i8*, i8*, i32*, i64, i64) #1

declare dso_local i64 @RedisModule_CallReplyLength(i32*) #1

declare dso_local i32* @RedisModule_CallReplyArrayElement(i32*, i64) #1

declare dso_local i32 @RedisModule_FreeCallReply(i32*) #1

declare dso_local i32 @RedisModule_ReplyWithLongLong(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
