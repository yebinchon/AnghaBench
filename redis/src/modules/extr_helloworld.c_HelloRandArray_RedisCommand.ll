; ModuleID = '/home/carl/AnghaBench/redis/src/modules/extr_helloworld.c_HelloRandArray_RedisCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/modules/extr_helloworld.c_HelloRandArray_RedisCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REDISMODULE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"ERR invalid count\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HelloRandArray_RedisCommand(i32* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 2
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @RedisModule_WrongArity(i32* %12)
  store i32 %13, i32* %4, align 4
  br label %42

14:                                               ; preds = %3
  %15 = load i32**, i32*** %6, align 8
  %16 = getelementptr inbounds i32*, i32** %15, i64 1
  %17 = load i32*, i32** %16, align 8
  %18 = call i64 @RedisModule_StringToLongLong(i32* %17, i64* %8)
  %19 = load i64, i64* @REDISMODULE_OK, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = load i64, i64* %8, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21, %14
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @RedisModule_ReplyWithError(i32* %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 %26, i32* %4, align 4
  br label %42

27:                                               ; preds = %21
  %28 = load i32*, i32** %5, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @RedisModule_ReplyWithArray(i32* %28, i64 %29)
  br label %31

31:                                               ; preds = %35, %27
  %32 = load i64, i64* %8, align 8
  %33 = add nsw i64 %32, -1
  store i64 %33, i64* %8, align 8
  %34 = icmp ne i64 %32, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 (...) @rand()
  %38 = call i32 @RedisModule_ReplyWithLongLong(i32* %36, i32 %37)
  br label %31

39:                                               ; preds = %31
  %40 = load i64, i64* @REDISMODULE_OK, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %39, %24, %11
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @RedisModule_WrongArity(i32*) #1

declare dso_local i64 @RedisModule_StringToLongLong(i32*, i64*) #1

declare dso_local i32 @RedisModule_ReplyWithError(i32*, i8*) #1

declare dso_local i32 @RedisModule_ReplyWithArray(i32*, i64) #1

declare dso_local i32 @RedisModule_ReplyWithLongLong(i32*, i32) #1

declare dso_local i32 @rand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
