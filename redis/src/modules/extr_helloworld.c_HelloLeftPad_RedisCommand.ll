; ModuleID = '/home/carl/AnghaBench/redis/src/modules/extr_helloworld.c_HelloLeftPad_RedisCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/modules/extr_helloworld.c_HelloLeftPad_RedisCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REDISMODULE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"ERR invalid padding length\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"ERR padding must be a single char\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HelloLeftPad_RedisCommand(i32* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @RedisModule_AutoMemory(i32* %15)
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 4
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @RedisModule_WrongArity(i32* %20)
  store i32 %21, i32* %4, align 4
  br label %96

22:                                               ; preds = %3
  %23 = load i32**, i32*** %6, align 8
  %24 = getelementptr inbounds i32*, i32** %23, i64 2
  %25 = load i32*, i32** %24, align 8
  %26 = call i64 @RedisModule_StringToLongLong(i32* %25, i64* %8)
  %27 = load i64, i64* @REDISMODULE_OK, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i64, i64* %8, align 8
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29, %22
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @RedisModule_ReplyWithError(i32* %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 %34, i32* %4, align 4
  br label %96

35:                                               ; preds = %29
  %36 = load i32**, i32*** %6, align 8
  %37 = getelementptr inbounds i32*, i32** %36, i64 1
  %38 = load i32*, i32** %37, align 8
  %39 = call i8* @RedisModule_StringPtrLen(i32* %38, i64* %9)
  store i8* %39, i8** %11, align 8
  %40 = load i32**, i32*** %6, align 8
  %41 = getelementptr inbounds i32*, i32** %40, i64 3
  %42 = load i32*, i32** %41, align 8
  %43 = call i8* @RedisModule_StringPtrLen(i32* %42, i64* %10)
  store i8* %43, i8** %12, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %8, align 8
  %46 = icmp uge i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %35
  %48 = load i32*, i32** %5, align 8
  %49 = load i32**, i32*** %6, align 8
  %50 = getelementptr inbounds i32*, i32** %49, i64 1
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @RedisModule_ReplyWithString(i32* %48, i32* %51)
  store i32 %52, i32* %4, align 4
  br label %96

53:                                               ; preds = %35
  %54 = load i64, i64* %10, align 8
  %55 = icmp ne i64 %54, 1
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @RedisModule_ReplyWithError(i32* %57, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 %58, i32* %4, align 4
  br label %96

59:                                               ; preds = %53
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* %8, align 8
  %62 = sub i64 %61, %60
  store i64 %62, i64* %8, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* %9, align 8
  %66 = add i64 %64, %65
  %67 = call i8* @RedisModule_PoolAlloc(i32* %63, i64 %66)
  store i8* %67, i8** %13, align 8
  store i64 0, i64* %14, align 8
  br label %68

68:                                               ; preds = %78, %59
  %69 = load i64, i64* %14, align 8
  %70 = load i64, i64* %8, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %68
  %73 = load i8*, i8** %12, align 8
  %74 = load i8, i8* %73, align 1
  %75 = load i8*, i8** %13, align 8
  %76 = load i64, i64* %14, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8 %74, i8* %77, align 1
  br label %78

78:                                               ; preds = %72
  %79 = load i64, i64* %14, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %14, align 8
  br label %68

81:                                               ; preds = %68
  %82 = load i8*, i8** %13, align 8
  %83 = load i64, i64* %8, align 8
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  %85 = load i8*, i8** %11, align 8
  %86 = load i64, i64* %9, align 8
  %87 = call i32 @memcpy(i8* %84, i8* %85, i64 %86)
  %88 = load i32*, i32** %5, align 8
  %89 = load i8*, i8** %13, align 8
  %90 = load i64, i64* %8, align 8
  %91 = load i64, i64* %9, align 8
  %92 = add i64 %90, %91
  %93 = call i32 @RedisModule_ReplyWithStringBuffer(i32* %88, i8* %89, i64 %92)
  %94 = load i64, i64* @REDISMODULE_OK, align 8
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %81, %56, %47, %32, %19
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @RedisModule_AutoMemory(i32*) #1

declare dso_local i32 @RedisModule_WrongArity(i32*) #1

declare dso_local i64 @RedisModule_StringToLongLong(i32*, i64*) #1

declare dso_local i32 @RedisModule_ReplyWithError(i32*, i8*) #1

declare dso_local i8* @RedisModule_StringPtrLen(i32*, i64*) #1

declare dso_local i32 @RedisModule_ReplyWithString(i32*, i32*) #1

declare dso_local i8* @RedisModule_PoolAlloc(i32*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @RedisModule_ReplyWithStringBuffer(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
