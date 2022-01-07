; ModuleID = '/home/carl/AnghaBench/redis/tests/modules/extr_fork.c_fork_create.c'
source_filename = "/home/carl/AnghaBench/redis/tests/modules/extr_fork.c_fork_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REDISMODULE_OK = common dso_local global i32 0, align 4
@exitted_with_code = common dso_local global i32 0, align 4
@done_handler = common dso_local global i32 0, align 4
@child_pid = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"Fork failed\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"notice\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"fork child started\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"fork child exiting\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fork_create(i32* %0, i32** %1, i32 %2) #0 {
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
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @RedisModule_WrongArity(i32* %12)
  %14 = load i32, i32* @REDISMODULE_OK, align 4
  store i32 %14, i32* %4, align 4
  br label %45

15:                                               ; preds = %3
  %16 = load i32**, i32*** %6, align 8
  %17 = getelementptr inbounds i32*, i32** %16, i64 1
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @RedisModule_StringToLongLong(i32* %18, i64* %8)
  store i32 -1, i32* @exitted_with_code, align 4
  %20 = load i32, i32* @done_handler, align 4
  %21 = call i64 @RedisModule_Fork(i32 %20, i8* inttoptr (i64 3735928559 to i8*))
  store i64 %21, i64* @child_pid, align 8
  %22 = load i64, i64* @child_pid, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %15
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @RedisModule_ReplyWithError(i32* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @REDISMODULE_OK, align 4
  store i32 %27, i32* %4, align 4
  br label %45

28:                                               ; preds = %15
  %29 = load i64, i64* @child_pid, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i32*, i32** %5, align 8
  %33 = load i64, i64* @child_pid, align 8
  %34 = call i32 @RedisModule_ReplyWithLongLong(i32* %32, i64 %33)
  %35 = load i32, i32* @REDISMODULE_OK, align 4
  store i32 %35, i32* %4, align 4
  br label %45

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @RedisModule_Log(i32* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %40 = call i32 @usleep(i32 200000)
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @RedisModule_Log(i32* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @RedisModule_ExitFromChild(i64 %43)
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %37, %31, %24, %11
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @RedisModule_WrongArity(i32*) #1

declare dso_local i32 @RedisModule_StringToLongLong(i32*, i64*) #1

declare dso_local i64 @RedisModule_Fork(i32, i8*) #1

declare dso_local i32 @RedisModule_ReplyWithError(i32*, i8*) #1

declare dso_local i32 @RedisModule_ReplyWithLongLong(i32*, i64) #1

declare dso_local i32 @RedisModule_Log(i32*, i8*, i8*) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @RedisModule_ExitFromChild(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
