; ModuleID = '/home/carl/AnghaBench/redis/tests/modules/extr_blockonkeys.c_RedisModule_OnLoad.c'
source_filename = "/home/carl/AnghaBench/redis/tests/modules/extr_blockonkeys.c_RedisModule_OnLoad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"blockonkeys\00", align 1
@REDISMODULE_APIVER_1 = common dso_local global i32 0, align 4
@REDISMODULE_ERR = common dso_local global i64 0, align 8
@fsl_free = common dso_local global i32 0, align 4
@fsl_aofrw = common dso_local global i32 0, align 4
@fsl_rdb_save = common dso_local global i32 0, align 4
@fsl_rdb_load = common dso_local global i32 0, align 4
@REDISMODULE_TYPE_METHOD_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"fsltype_t\00", align 1
@fsltype = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"fsl.push\00", align 1
@fsl_push = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"fsl.bpop2\00", align 1
@fsl_bpop2 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"fsl.bpopgt\00", align 1
@fsl_bpopgt = common dso_local global i32 0, align 4
@REDISMODULE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RedisModule_OnLoad(i32* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__, align 8
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
  %16 = call i64 @RedisModule_Init(i32* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1, i32 %15)
  %17 = load i64, i64* @REDISMODULE_ERR, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i64, i64* @REDISMODULE_ERR, align 8
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %4, align 4
  br label %71

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i32* null, i32** %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %25 = load i32, i32* @fsl_free, align 4
  store i32 %25, i32* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  store i32* null, i32** %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  %28 = load i32, i32* @fsl_aofrw, align 4
  store i32 %28, i32* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 4
  %30 = load i32, i32* @fsl_rdb_save, align 4
  store i32 %30, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 5
  %32 = load i32, i32* @fsl_rdb_load, align 4
  store i32 %32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 6
  %34 = load i32, i32* @REDISMODULE_TYPE_METHOD_VERSION, align 4
  store i32 %34, i32* %33, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = call i32* @RedisModule_CreateDataType(i32* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 0, %struct.TYPE_3__* %8)
  store i32* %36, i32** @fsltype, align 8
  %37 = load i32*, i32** @fsltype, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %22
  %40 = load i64, i64* @REDISMODULE_ERR, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %4, align 4
  br label %71

42:                                               ; preds = %22
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* @fsl_push, align 4
  %45 = call i64 @RedisModule_CreateCommand(i32* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %44, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 0, i32 0)
  %46 = load i64, i64* @REDISMODULE_ERR, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i64, i64* @REDISMODULE_ERR, align 8
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %4, align 4
  br label %71

51:                                               ; preds = %42
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* @fsl_bpop2, align 4
  %54 = call i64 @RedisModule_CreateCommand(i32* %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %53, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 0, i32 0)
  %55 = load i64, i64* @REDISMODULE_ERR, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i64, i64* @REDISMODULE_ERR, align 8
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %4, align 4
  br label %71

60:                                               ; preds = %51
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* @fsl_bpopgt, align 4
  %63 = call i64 @RedisModule_CreateCommand(i32* %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %62, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 0, i32 0)
  %64 = load i64, i64* @REDISMODULE_ERR, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i64, i64* @REDISMODULE_ERR, align 8
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %4, align 4
  br label %71

69:                                               ; preds = %60
  %70 = load i32, i32* @REDISMODULE_OK, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %69, %66, %57, %48, %39, %19
  %72 = load i32, i32* %4, align 4
  ret i32 %72
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
