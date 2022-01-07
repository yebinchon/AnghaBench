; ModuleID = '/home/carl/AnghaBench/redis/tests/modules/extr_blockonkeys.c_fsl_bpop2.c'
source_filename = "/home/carl/AnghaBench/redis/tests/modules/extr_blockonkeys.c_fsl_bpop2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@REDISMODULE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"ERR invalid timeout\00", align 1
@REDISMODULE_READ = common dso_local global i32 0, align 4
@bpop2_reply_callback = common dso_local global i32 0, align 4
@bpop2_timeout_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsl_bpop2(i32* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 3
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @RedisModule_WrongArity(i32* %13)
  store i32 %14, i32* %4, align 4
  br label %85

15:                                               ; preds = %3
  %16 = load i32**, i32*** %6, align 8
  %17 = getelementptr inbounds i32*, i32** %16, i64 2
  %18 = load i32*, i32** %17, align 8
  %19 = call i64 @RedisModule_StringToLongLong(i32* %18, i64* %8)
  %20 = load i64, i64* @REDISMODULE_OK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load i64, i64* %8, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %15
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @RedisModule_ReplyWithError(i32* %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 %27, i32* %4, align 4
  br label %85

28:                                               ; preds = %22
  %29 = load i32*, i32** %5, align 8
  %30 = load i32**, i32*** %6, align 8
  %31 = getelementptr inbounds i32*, i32** %30, i64 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* @REDISMODULE_READ, align 4
  %34 = call i32 @get_fsl(i32* %29, i32* %32, i32 %33, i32 0, %struct.TYPE_3__** %9, i32 1)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %28
  %37 = load i64, i64* @REDISMODULE_OK, align 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %4, align 4
  br label %85

39:                                               ; preds = %28
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %41 = icmp ne %struct.TYPE_3__* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %45, 2
  br i1 %46, label %47, label %55

47:                                               ; preds = %42, %39
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* @bpop2_reply_callback, align 4
  %50 = load i32, i32* @bpop2_timeout_callback, align 4
  %51 = load i64, i64* %8, align 8
  %52 = load i32**, i32*** %6, align 8
  %53 = getelementptr inbounds i32*, i32** %52, i64 1
  %54 = call i32 @RedisModule_BlockClientOnKeys(i32* %48, i32 %49, i32 %50, i32* null, i64 %51, i32** %53, i32 1, i32* null)
  br label %82

55:                                               ; preds = %42
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @RedisModule_ReplyWithArray(i32* %56, i32 2)
  %58 = load i32*, i32** %5, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %63, align 8
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %61, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @RedisModule_ReplyWithLongLong(i32* %58, i32 %68)
  %70 = load i32*, i32** %5, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %75, align 8
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %73, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @RedisModule_ReplyWithLongLong(i32* %70, i32 %80)
  br label %82

82:                                               ; preds = %55, %47
  %83 = load i64, i64* @REDISMODULE_OK, align 8
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %82, %36, %25, %12
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @RedisModule_WrongArity(i32*) #1

declare dso_local i64 @RedisModule_StringToLongLong(i32*, i64*) #1

declare dso_local i32 @RedisModule_ReplyWithError(i32*, i8*) #1

declare dso_local i32 @get_fsl(i32*, i32*, i32, i32, %struct.TYPE_3__**, i32) #1

declare dso_local i32 @RedisModule_BlockClientOnKeys(i32*, i32, i32, i32*, i64, i32**, i32, i32*) #1

declare dso_local i32 @RedisModule_ReplyWithArray(i32*, i32) #1

declare dso_local i32 @RedisModule_ReplyWithLongLong(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
