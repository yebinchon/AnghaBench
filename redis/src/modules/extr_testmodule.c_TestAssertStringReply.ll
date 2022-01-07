; ModuleID = '/home/carl/AnghaBench/redis/src/modules/extr_testmodule.c_TestAssertStringReply.c'
source_filename = "/home/carl/AnghaBench/redis/src/modules/extr_testmodule.c_TestAssertStringReply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REDISMODULE_REPLY_STRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"warning\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Unexpected reply type %d\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Unexpected string reply '%s' (instead of '%s')\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TestAssertStringReply(i32* %0, i32* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call i64 @RedisModule_CallReplyType(i32* %14)
  %16 = load i64, i64* @REDISMODULE_REPLY_STRING, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load i32*, i32** %6, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i64 @RedisModule_CallReplyType(i32* %20)
  %22 = inttoptr i64 %21 to i8*
  %23 = call i32 (i32*, i8*, i8*, i8*, ...) @RedisModule_Log(i32* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  store i32 0, i32* %5, align 4
  br label %45

24:                                               ; preds = %4
  %25 = load i32*, i32** %7, align 8
  %26 = call i32* @RedisModule_CreateStringFromCallReply(i32* %25)
  store i32* %26, i32** %10, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call i32* @RedisModule_CreateString(i32* %27, i8* %28, i64 %29)
  store i32* %30, i32** %11, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = call i64 @RedisModule_StringCompare(i32* %31, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %24
  %36 = load i32*, i32** %10, align 8
  %37 = call i8* @RedisModule_StringPtrLen(i32* %36, i32* null)
  store i8* %37, i8** %12, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = call i8* @RedisModule_StringPtrLen(i32* %38, i32* null)
  store i8* %39, i8** %13, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = load i8*, i8** %13, align 8
  %43 = call i32 (i32*, i8*, i8*, i8*, ...) @RedisModule_Log(i32* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* %41, i8* %42)
  store i32 0, i32* %5, align 4
  br label %45

44:                                               ; preds = %24
  store i32 1, i32* %5, align 4
  br label %45

45:                                               ; preds = %44, %35, %18
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i64 @RedisModule_CallReplyType(i32*) #1

declare dso_local i32 @RedisModule_Log(i32*, i8*, i8*, i8*, ...) #1

declare dso_local i32* @RedisModule_CreateStringFromCallReply(i32*) #1

declare dso_local i32* @RedisModule_CreateString(i32*, i8*, i64) #1

declare dso_local i64 @RedisModule_StringCompare(i32*, i32*) #1

declare dso_local i8* @RedisModule_StringPtrLen(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
