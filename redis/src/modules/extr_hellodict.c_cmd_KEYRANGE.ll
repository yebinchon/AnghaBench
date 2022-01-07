; ModuleID = '/home/carl/AnghaBench/redis/src/modules/extr_hellodict.c_cmd_KEYRANGE.c'
source_filename = "/home/carl/AnghaBench/redis/src/modules/extr_hellodict.c_cmd_KEYRANGE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REDISMODULE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"ERR invalid count\00", align 1
@Keyspace = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@REDISMODULE_POSTPONED_ARRAY_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@REDISMODULE_ERR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_KEYRANGE(i32* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 4
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @RedisModule_WrongArity(i32* %16)
  store i32 %17, i32* %4, align 4
  br label %70

18:                                               ; preds = %3
  %19 = load i32**, i32*** %6, align 8
  %20 = getelementptr inbounds i32*, i32** %19, i64 3
  %21 = load i32*, i32** %20, align 8
  %22 = call i64 @RedisModule_StringToLongLong(i32* %21, i64* %8)
  %23 = load i64, i64* @REDISMODULE_OK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @RedisModule_ReplyWithError(i32* %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 %27, i32* %4, align 4
  br label %70

28:                                               ; preds = %18
  %29 = load i32, i32* @Keyspace, align 4
  %30 = load i32**, i32*** %6, align 8
  %31 = getelementptr inbounds i32*, i32** %30, i64 1
  %32 = load i32*, i32** %31, align 8
  %33 = call i32* @RedisModule_DictIteratorStart(i32 %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %32)
  store i32* %33, i32** %9, align 8
  store i64 0, i64* %12, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* @REDISMODULE_POSTPONED_ARRAY_LEN, align 4
  %36 = call i32 @RedisModule_ReplyWithArray(i32* %34, i32 %35)
  br label %37

37:                                               ; preds = %55, %28
  %38 = load i32*, i32** %9, align 8
  %39 = call i8* @RedisModule_DictNextC(i32* %38, i64* %11, i32* null)
  store i8* %39, i8** %10, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %62

41:                                               ; preds = %37
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* %8, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %62

46:                                               ; preds = %41
  %47 = load i32*, i32** %9, align 8
  %48 = load i32**, i32*** %6, align 8
  %49 = getelementptr inbounds i32*, i32** %48, i64 2
  %50 = load i32*, i32** %49, align 8
  %51 = call i64 @RedisModule_DictCompare(i32* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %50)
  %52 = load i64, i64* @REDISMODULE_ERR, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %62

55:                                               ; preds = %46
  %56 = load i32*, i32** %5, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = load i64, i64* %11, align 8
  %59 = call i32 @RedisModule_ReplyWithStringBuffer(i32* %56, i8* %57, i64 %58)
  %60 = load i64, i64* %12, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %12, align 8
  br label %37

62:                                               ; preds = %54, %45, %37
  %63 = load i32*, i32** %5, align 8
  %64 = load i64, i64* %12, align 8
  %65 = call i32 @RedisModule_ReplySetArrayLength(i32* %63, i64 %64)
  %66 = load i32*, i32** %9, align 8
  %67 = call i32 @RedisModule_DictIteratorStop(i32* %66)
  %68 = load i64, i64* @REDISMODULE_OK, align 8
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %62, %25, %15
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @RedisModule_WrongArity(i32*) #1

declare dso_local i64 @RedisModule_StringToLongLong(i32*, i64*) #1

declare dso_local i32 @RedisModule_ReplyWithError(i32*, i8*) #1

declare dso_local i32* @RedisModule_DictIteratorStart(i32, i8*, i32*) #1

declare dso_local i32 @RedisModule_ReplyWithArray(i32*, i32) #1

declare dso_local i8* @RedisModule_DictNextC(i32*, i64*, i32*) #1

declare dso_local i64 @RedisModule_DictCompare(i32*, i8*, i32*) #1

declare dso_local i32 @RedisModule_ReplyWithStringBuffer(i32*, i8*, i64) #1

declare dso_local i32 @RedisModule_ReplySetArrayLength(i32*, i64) #1

declare dso_local i32 @RedisModule_DictIteratorStop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
