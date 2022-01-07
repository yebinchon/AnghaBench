; ModuleID = '/home/carl/AnghaBench/redis/src/modules/extr_testmodule.c_TestUnlink.c'
source_filename = "/home/carl/AnghaBench/redis/src/modules/extr_testmodule.c_TestUnlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"unlinked\00", align 1
@REDISMODULE_WRITE = common dso_local global i32 0, align 4
@REDISMODULE_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Could not create key\00", align 1
@REDISMODULE_ERR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"Foobar\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Could not set string value\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"EXISTS\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Key does not exist before unlink\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Could not unlink key\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"Could not verify key to be unlinked\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"OK\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TestUnlink(i32* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @RedisModule_AutoMemory(i32* %10)
  %12 = load i32**, i32*** %6, align 8
  %13 = ptrtoint i32** %12 to i32
  %14 = call i32 @REDISMODULE_NOT_USED(i32 %13)
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @REDISMODULE_NOT_USED(i32 %15)
  %17 = load i32*, i32** %5, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @RedisModule_CreateStringPrintf(i32* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @REDISMODULE_WRITE, align 4
  %21 = load i32, i32* @REDISMODULE_READ, align 4
  %22 = or i32 %20, %21
  %23 = call i32* @RedisModule_OpenKey(i32* %17, i32 %19, i32 %22)
  store i32* %23, i32** %8, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @failTest(i32* %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 %28, i32* %4, align 4
  br label %74

29:                                               ; preds = %3
  %30 = load i64, i64* @REDISMODULE_ERR, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @RedisModule_CreateStringPrintf(i32* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %34 = call i64 @RedisModule_StringSet(i32* %31, i32 %33)
  %35 = icmp eq i64 %30, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @failTest(i32* %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  store i32 %38, i32* %4, align 4
  br label %74

39:                                               ; preds = %29
  %40 = load i32*, i32** %5, align 8
  %41 = call i32* @RedisModule_Call(i32* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32* %41, i32** %9, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @RedisModule_CallReplyInteger(i32* %45)
  %47 = icmp ne i32 %46, 1
  br i1 %47, label %48, label %51

48:                                               ; preds = %44, %39
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @failTest(i32* %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  store i32 %50, i32* %4, align 4
  br label %74

51:                                               ; preds = %44
  %52 = load i64, i64* @REDISMODULE_ERR, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = call i64 @RedisModule_UnlinkKey(i32* %53)
  %55 = icmp eq i64 %52, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @failTest(i32* %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  store i32 %58, i32* %4, align 4
  br label %74

59:                                               ; preds = %51
  %60 = load i32*, i32** %5, align 8
  %61 = call i32* @RedisModule_Call(i32* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32* %61, i32** %9, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32*, i32** %9, align 8
  %66 = call i32 @RedisModule_CallReplyInteger(i32* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %64, %59
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @failTest(i32* %69, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  store i32 %70, i32* %4, align 4
  br label %74

71:                                               ; preds = %64
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @RedisModule_ReplyWithSimpleString(i32* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %71, %68, %56, %48, %36, %26
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @RedisModule_AutoMemory(i32*) #1

declare dso_local i32 @REDISMODULE_NOT_USED(i32) #1

declare dso_local i32* @RedisModule_OpenKey(i32*, i32, i32) #1

declare dso_local i32 @RedisModule_CreateStringPrintf(i32*, i8*) #1

declare dso_local i32 @failTest(i32*, i8*) #1

declare dso_local i64 @RedisModule_StringSet(i32*, i32) #1

declare dso_local i32* @RedisModule_Call(i32*, i8*, i8*, i8*) #1

declare dso_local i32 @RedisModule_CallReplyInteger(i32*) #1

declare dso_local i64 @RedisModule_UnlinkKey(i32*) #1

declare dso_local i32 @RedisModule_ReplyWithSimpleString(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
