; ModuleID = '/home/carl/AnghaBench/redis/src/modules/extr_hellotype.c_RedisModule_OnLoad.c'
source_filename = "/home/carl/AnghaBench/redis/src/modules/extr_hellotype.c_RedisModule_OnLoad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"hellotype\00", align 1
@REDISMODULE_APIVER_1 = common dso_local global i32 0, align 4
@REDISMODULE_ERR = common dso_local global i64 0, align 8
@HelloTypeDigest = common dso_local global i32 0, align 4
@HelloTypeFree = common dso_local global i32 0, align 4
@HelloTypeMemUsage = common dso_local global i32 0, align 4
@HelloTypeAofRewrite = common dso_local global i32 0, align 4
@HelloTypeRdbSave = common dso_local global i32 0, align 4
@HelloTypeRdbLoad = common dso_local global i32 0, align 4
@REDISMODULE_TYPE_METHOD_VERSION = common dso_local global i32 0, align 4
@HelloType = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"hellotype.insert\00", align 1
@HelloTypeInsert_RedisCommand = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"write deny-oom\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"hellotype.range\00", align 1
@HelloTypeRange_RedisCommand = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"readonly\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"hellotype.len\00", align 1
@HelloTypeLen_RedisCommand = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"hellotype.brange\00", align 1
@HelloTypeBRange_RedisCommand = common dso_local global i32 0, align 4
@REDISMODULE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RedisModule_OnLoad(i32* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__, align 4
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32**, i32*** %6, align 8
  %10 = ptrtoint i32** %9 to i32
  %11 = call i32 @REDISMODULE_NOT_USED(i32 %10)
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @REDISMODULE_NOT_USED(i32 %12)
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* @REDISMODULE_APIVER_1, align 4
  %16 = call i64 @RedisModule_Init(i32* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 1, i32 %15)
  %17 = load i64, i64* @REDISMODULE_ERR, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i64, i64* @REDISMODULE_ERR, align 8
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %4, align 4
  br label %82

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %24 = load i32, i32* @HelloTypeDigest, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %26 = load i32, i32* @HelloTypeFree, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %28 = load i32, i32* @HelloTypeMemUsage, align 4
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  %30 = load i32, i32* @HelloTypeAofRewrite, align 4
  store i32 %30, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 4
  %32 = load i32, i32* @HelloTypeRdbSave, align 4
  store i32 %32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 5
  %34 = load i32, i32* @HelloTypeRdbLoad, align 4
  store i32 %34, i32* %33, align 4
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 6
  %36 = load i32, i32* @REDISMODULE_TYPE_METHOD_VERSION, align 4
  store i32 %36, i32* %35, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = call i32* @RedisModule_CreateDataType(i32* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0, %struct.TYPE_3__* %8)
  store i32* %38, i32** @HelloType, align 8
  %39 = load i32*, i32** @HelloType, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %22
  %42 = load i64, i64* @REDISMODULE_ERR, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %4, align 4
  br label %82

44:                                               ; preds = %22
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* @HelloTypeInsert_RedisCommand, align 4
  %47 = call i64 @RedisModule_CreateCommand(i32* %45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 1, i32 1, i32 1)
  %48 = load i64, i64* @REDISMODULE_ERR, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i64, i64* @REDISMODULE_ERR, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %4, align 4
  br label %82

53:                                               ; preds = %44
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* @HelloTypeRange_RedisCommand, align 4
  %56 = call i64 @RedisModule_CreateCommand(i32* %54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 1, i32 1, i32 1)
  %57 = load i64, i64* @REDISMODULE_ERR, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i64, i64* @REDISMODULE_ERR, align 8
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %4, align 4
  br label %82

62:                                               ; preds = %53
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* @HelloTypeLen_RedisCommand, align 4
  %65 = call i64 @RedisModule_CreateCommand(i32* %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 1, i32 1, i32 1)
  %66 = load i64, i64* @REDISMODULE_ERR, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i64, i64* @REDISMODULE_ERR, align 8
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %4, align 4
  br label %82

71:                                               ; preds = %62
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* @HelloTypeBRange_RedisCommand, align 4
  %74 = call i64 @RedisModule_CreateCommand(i32* %72, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 1, i32 1, i32 1)
  %75 = load i64, i64* @REDISMODULE_ERR, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i64, i64* @REDISMODULE_ERR, align 8
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %4, align 4
  br label %82

80:                                               ; preds = %71
  %81 = load i32, i32* @REDISMODULE_OK, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %80, %77, %68, %59, %50, %41, %19
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @REDISMODULE_NOT_USED(i32) #1

declare dso_local i64 @RedisModule_Init(i32*, i8*, i32, i32) #1

declare dso_local i32* @RedisModule_CreateDataType(i32*, i8*, i32, %struct.TYPE_3__*) #1

declare dso_local i64 @RedisModule_CreateCommand(i32*, i8*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
