; ModuleID = '/home/carl/AnghaBench/redis/tests/modules/extr_blockonkeys.c_fsl_bpopgt.c'
source_filename = "/home/carl/AnghaBench/redis/tests/modules/extr_blockonkeys.c_fsl_bpopgt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64*, i32 }

@REDISMODULE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"ERR invalid integer\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"ERR invalid timeout\00", align 1
@REDISMODULE_READ = common dso_local global i32 0, align 4
@bpopgt_reply_callback = common dso_local global i32 0, align 4
@bpopgt_timeout_callback = common dso_local global i32 0, align 4
@bpopgt_free_privdata = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsl_bpopgt(i32* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 4
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @RedisModule_WrongArity(i32* %14)
  store i32 %15, i32* %4, align 4
  br label %93

16:                                               ; preds = %3
  %17 = load i32**, i32*** %6, align 8
  %18 = getelementptr inbounds i32*, i32** %17, i64 2
  %19 = load i32*, i32** %18, align 8
  %20 = call i64 @RedisModule_StringToLongLong(i32* %19, i64* %8)
  %21 = load i64, i64* @REDISMODULE_OK, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @RedisModule_ReplyWithError(i32* %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 %25, i32* %4, align 4
  br label %93

26:                                               ; preds = %16
  %27 = load i32**, i32*** %6, align 8
  %28 = getelementptr inbounds i32*, i32** %27, i64 3
  %29 = load i32*, i32** %28, align 8
  %30 = call i64 @RedisModule_StringToLongLong(i32* %29, i64* %9)
  %31 = load i64, i64* @REDISMODULE_OK, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = load i64, i64* %9, align 8
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33, %26
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @RedisModule_ReplyWithError(i32* %37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 %38, i32* %4, align 4
  br label %93

39:                                               ; preds = %33
  %40 = load i32*, i32** %5, align 8
  %41 = load i32**, i32*** %6, align 8
  %42 = getelementptr inbounds i32*, i32** %41, i64 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* @REDISMODULE_READ, align 4
  %45 = call i32 @get_fsl(i32* %40, i32* %43, i32 %44, i32 0, %struct.TYPE_3__** %10, i32 1)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %39
  %48 = load i64, i64* @REDISMODULE_OK, align 8
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %4, align 4
  br label %93

50:                                               ; preds = %39
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %52 = icmp ne %struct.TYPE_3__* %51, null
  br i1 %52, label %53, label %66

53:                                               ; preds = %50
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %56, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = icmp sle i64 %63, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %53, %50
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* @bpopgt_reply_callback, align 4
  %69 = load i32, i32* @bpopgt_timeout_callback, align 4
  %70 = load i32, i32* @bpopgt_free_privdata, align 4
  %71 = load i64, i64* %9, align 8
  %72 = load i32**, i32*** %6, align 8
  %73 = getelementptr inbounds i32*, i32** %72, i64 1
  %74 = load i64, i64* %8, align 8
  %75 = inttoptr i64 %74 to i8*
  %76 = call i32 @RedisModule_BlockClientOnKeys(i32* %67, i32 %68, i32 %69, i32 %70, i64 %71, i32** %73, i32 1, i8* %75)
  br label %90

77:                                               ; preds = %53
  %78 = load i32*, i32** %5, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %83, align 8
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %81, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @RedisModule_ReplyWithLongLong(i32* %78, i64 %88)
  br label %90

90:                                               ; preds = %77, %66
  %91 = load i64, i64* @REDISMODULE_OK, align 8
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %90, %47, %36, %23, %13
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @RedisModule_WrongArity(i32*) #1

declare dso_local i64 @RedisModule_StringToLongLong(i32*, i64*) #1

declare dso_local i32 @RedisModule_ReplyWithError(i32*, i8*) #1

declare dso_local i32 @get_fsl(i32*, i32*, i32, i32, %struct.TYPE_3__**, i32) #1

declare dso_local i32 @RedisModule_BlockClientOnKeys(i32*, i32, i32, i32, i64, i32**, i32, i8*) #1

declare dso_local i32 @RedisModule_ReplyWithLongLong(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
