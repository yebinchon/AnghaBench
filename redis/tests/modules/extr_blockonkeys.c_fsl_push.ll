; ModuleID = '/home/carl/AnghaBench/redis/tests/modules/extr_blockonkeys.c_fsl_push.c'
source_filename = "/home/carl/AnghaBench/redis/tests/modules/extr_blockonkeys.c_fsl_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64* }

@REDISMODULE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"ERR invalid integer\00", align 1
@REDISMODULE_WRITE = common dso_local global i32 0, align 4
@LIST_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"ERR list is full\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"ERR new element has to be greater than the head element\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"OK\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsl_push(i32* %0, i32** %1, i32 %2) #0 {
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
  br label %90

15:                                               ; preds = %3
  %16 = load i32**, i32*** %6, align 8
  %17 = getelementptr inbounds i32*, i32** %16, i64 2
  %18 = load i32*, i32** %17, align 8
  %19 = call i64 @RedisModule_StringToLongLong(i32* %18, i64* %8)
  %20 = load i64, i64* @REDISMODULE_OK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @RedisModule_ReplyWithError(i32* %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %4, align 4
  br label %90

25:                                               ; preds = %15
  %26 = load i32*, i32** %5, align 8
  %27 = load i32**, i32*** %6, align 8
  %28 = getelementptr inbounds i32*, i32** %27, i64 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* @REDISMODULE_WRITE, align 4
  %31 = call i32 @get_fsl(i32* %26, i32* %29, i32 %30, i32 1, %struct.TYPE_3__** %9, i32 1)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %25
  %34 = load i64, i64* @REDISMODULE_OK, align 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %4, align 4
  br label %90

36:                                               ; preds = %25
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @LIST_SIZE, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @RedisModule_ReplyWithError(i32* %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 %44, i32* %4, align 4
  br label %90

45:                                               ; preds = %36
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %45
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %53, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %8, align 8
  %62 = icmp sge i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %50
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @RedisModule_ReplyWithError(i32* %64, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  store i32 %65, i32* %4, align 4
  br label %90

66:                                               ; preds = %50, %45
  %67 = load i64, i64* %8, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i64*, i64** %69, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i64, i64* %70, i64 %75
  store i64 %67, i64* %76, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp sge i32 %79, 2
  br i1 %80, label %81, label %87

81:                                               ; preds = %66
  %82 = load i32*, i32** %5, align 8
  %83 = load i32**, i32*** %6, align 8
  %84 = getelementptr inbounds i32*, i32** %83, i64 1
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @RedisModule_SignalKeyAsReady(i32* %82, i32* %85)
  br label %87

87:                                               ; preds = %81, %66
  %88 = load i32*, i32** %5, align 8
  %89 = call i32 @RedisModule_ReplyWithSimpleString(i32* %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %87, %63, %42, %33, %22, %12
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @RedisModule_WrongArity(i32*) #1

declare dso_local i64 @RedisModule_StringToLongLong(i32*, i64*) #1

declare dso_local i32 @RedisModule_ReplyWithError(i32*, i8*) #1

declare dso_local i32 @get_fsl(i32*, i32*, i32, i32, %struct.TYPE_3__**, i32) #1

declare dso_local i32 @RedisModule_SignalKeyAsReady(i32*, i32*) #1

declare dso_local i32 @RedisModule_ReplyWithSimpleString(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
