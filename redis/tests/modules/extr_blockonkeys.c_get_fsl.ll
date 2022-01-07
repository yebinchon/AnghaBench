; ModuleID = '/home/carl/AnghaBench/redis/tests/modules/extr_blockonkeys.c_get_fsl.c'
source_filename = "/home/carl/AnghaBench/redis/tests/modules/extr_blockonkeys.c_get_fsl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REDISMODULE_KEYTYPE_EMPTY = common dso_local global i32 0, align 4
@fsltype = common dso_local global i64 0, align 8
@REDISMODULE_ERRORMSG_WRONGTYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_fsl(i32* %0, i32* %1, i32 %2, i32 %3, i32** %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32** %4, i32*** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = load i32, i32* %10, align 4
  %19 = call i32* @RedisModule_OpenKey(i32* %16, i32* %17, i32 %18)
  store i32* %19, i32** %14, align 8
  %20 = load i32*, i32** %14, align 8
  %21 = call i32 @RedisModule_KeyType(i32* %20)
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %15, align 4
  %23 = load i32, i32* @REDISMODULE_KEYTYPE_EMPTY, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %6
  %26 = load i32*, i32** %14, align 8
  %27 = call i64 @RedisModule_ModuleTypeGetType(i32* %26)
  %28 = load i64, i64* @fsltype, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %25
  %31 = load i32*, i32** %14, align 8
  %32 = call i32 @RedisModule_CloseKey(i32* %31)
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* @REDISMODULE_ERRORMSG_WRONGTYPE, align 4
  %38 = call i32 @RedisModule_ReplyWithError(i32* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %30
  store i32 0, i32* %7, align 4
  br label %66

40:                                               ; preds = %25, %6
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* @REDISMODULE_KEYTYPE_EMPTY, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %40
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load i32*, i32** %14, align 8
  %49 = call i32 @RedisModule_CloseKey(i32* %48)
  %50 = load i32**, i32*** %12, align 8
  store i32* null, i32** %50, align 8
  store i32 1, i32* %7, align 4
  br label %66

51:                                               ; preds = %44
  %52 = call i32* (...) @fsl_type_create()
  %53 = load i32**, i32*** %12, align 8
  store i32* %52, i32** %53, align 8
  %54 = load i32*, i32** %14, align 8
  %55 = load i64, i64* @fsltype, align 8
  %56 = load i32**, i32*** %12, align 8
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @RedisModule_ModuleTypeSetValue(i32* %54, i64 %55, i32* %57)
  br label %63

59:                                               ; preds = %40
  %60 = load i32*, i32** %14, align 8
  %61 = call i32* @RedisModule_ModuleTypeGetValue(i32* %60)
  %62 = load i32**, i32*** %12, align 8
  store i32* %61, i32** %62, align 8
  br label %63

63:                                               ; preds = %59, %51
  %64 = load i32*, i32** %14, align 8
  %65 = call i32 @RedisModule_CloseKey(i32* %64)
  store i32 1, i32* %7, align 4
  br label %66

66:                                               ; preds = %63, %47, %39
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local i32* @RedisModule_OpenKey(i32*, i32*, i32) #1

declare dso_local i32 @RedisModule_KeyType(i32*) #1

declare dso_local i64 @RedisModule_ModuleTypeGetType(i32*) #1

declare dso_local i32 @RedisModule_CloseKey(i32*) #1

declare dso_local i32 @RedisModule_ReplyWithError(i32*, i32) #1

declare dso_local i32* @fsl_type_create(...) #1

declare dso_local i32 @RedisModule_ModuleTypeSetValue(i32*, i64, i32*) #1

declare dso_local i32* @RedisModule_ModuleTypeGetValue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
