; ModuleID = '/home/carl/AnghaBench/redis/tests/modules/extr_commandfilter.c_CommandFilter_LogCommand.c'
source_filename = "/home/carl/AnghaBench/redis/tests/modules/extr_commandfilter.c_CommandFilter_LogCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@log_key_name = common dso_local global i32 0, align 4
@REDISMODULE_WRITE = common dso_local global i32 0, align 4
@REDISMODULE_READ = common dso_local global i32 0, align 4
@REDISMODULE_LIST_HEAD = common dso_local global i32 0, align 4
@in_log_command = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Unknown command or invalid arguments\00", align 1
@REDISMODULE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CommandFilter_LogCommand(i32* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = call i32* @RedisModule_CreateString(i32* %15, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32* %16, i32** %7, align 8
  store i32 1, i32* %8, align 4
  br label %17

17:                                               ; preds = %40, %3
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %17
  %22 = load i32**, i32*** %5, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32*, i32** %22, i64 %24
  %26 = load i32*, i32** %25, align 8
  %27 = call i8* @RedisModule_StringPtrLen(i32* %26, i64* %9)
  store i8* %27, i8** %10, align 8
  %28 = load i32, i32* %8, align 4
  %29 = icmp sgt i32 %28, 1
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load i32*, i32** %4, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @RedisModule_StringAppendBuffer(i32* %31, i32* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 1)
  br label %34

34:                                               ; preds = %30, %21
  %35 = load i32*, i32** %4, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @RedisModule_StringAppendBuffer(i32* %35, i32* %36, i8* %37, i64 %38)
  br label %40

40:                                               ; preds = %34
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %17

43:                                               ; preds = %17
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* @log_key_name, align 4
  %46 = load i32, i32* @REDISMODULE_WRITE, align 4
  %47 = load i32, i32* @REDISMODULE_READ, align 4
  %48 = or i32 %46, %47
  %49 = call i32* @RedisModule_OpenKey(i32* %44, i32 %45, i32 %48)
  store i32* %49, i32** %11, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = load i32, i32* @REDISMODULE_LIST_HEAD, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @RedisModule_ListPush(i32* %50, i32 %51, i32* %52)
  %54 = load i32*, i32** %11, align 8
  %55 = call i32 @RedisModule_CloseKey(i32* %54)
  %56 = load i32*, i32** %4, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @RedisModule_FreeString(i32* %56, i32* %57)
  store i32 1, i32* @in_log_command, align 4
  %59 = load i32**, i32*** %5, align 8
  %60 = getelementptr inbounds i32*, i32** %59, i64 1
  %61 = load i32*, i32** %60, align 8
  %62 = call i8* @RedisModule_StringPtrLen(i32* %61, i64* %12)
  store i8* %62, i8** %13, align 8
  %63 = load i32*, i32** %4, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = load i32**, i32*** %5, align 8
  %66 = getelementptr inbounds i32*, i32** %65, i64 2
  %67 = load i32, i32* %6, align 4
  %68 = sub nsw i32 %67, 2
  %69 = call i32* @RedisModule_Call(i32* %63, i8* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32** %66, i32 %68)
  store i32* %69, i32** %14, align 8
  %70 = load i32*, i32** %14, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %43
  %73 = load i32*, i32** %4, align 8
  %74 = load i32*, i32** %14, align 8
  %75 = call i32 @RedisModule_ReplyWithCallReply(i32* %73, i32* %74)
  %76 = load i32*, i32** %14, align 8
  %77 = call i32 @RedisModule_FreeCallReply(i32* %76)
  br label %81

78:                                               ; preds = %43
  %79 = load i32*, i32** %4, align 8
  %80 = call i32 @RedisModule_ReplyWithSimpleString(i32* %79, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %81

81:                                               ; preds = %78, %72
  store i32 0, i32* @in_log_command, align 4
  %82 = load i32, i32* @REDISMODULE_OK, align 4
  ret i32 %82
}

declare dso_local i32* @RedisModule_CreateString(i32*, i8*, i32) #1

declare dso_local i8* @RedisModule_StringPtrLen(i32*, i64*) #1

declare dso_local i32 @RedisModule_StringAppendBuffer(i32*, i32*, i8*, i64) #1

declare dso_local i32* @RedisModule_OpenKey(i32*, i32, i32) #1

declare dso_local i32 @RedisModule_ListPush(i32*, i32, i32*) #1

declare dso_local i32 @RedisModule_CloseKey(i32*) #1

declare dso_local i32 @RedisModule_FreeString(i32*, i32*) #1

declare dso_local i32* @RedisModule_Call(i32*, i8*, i8*, i32**, i32) #1

declare dso_local i32 @RedisModule_ReplyWithCallReply(i32*, i32*) #1

declare dso_local i32 @RedisModule_FreeCallReply(i32*) #1

declare dso_local i32 @RedisModule_ReplyWithSimpleString(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
