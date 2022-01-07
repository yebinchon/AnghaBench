; ModuleID = '/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelCollectTerminatedScripts.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelCollectTerminatedScripts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64*, i64, i64, i32 }

@WNOHANG = common dso_local global i32 0, align 4
@LL_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"-script-child\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%ld %d %d\00", align 1
@LL_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [75 x i8] c"wait3() returned a pid (%ld) we can't find in our scripts execution queue!\00", align 1
@SENTINEL_SCRIPT_MAX_RETRY = common dso_local global i64 0, align 8
@SENTINEL_SCRIPT_RUNNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"-script-error\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%s %d %d\00", align 1
@sentinel = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sentinelCollectTerminatedScripts() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  br label %7

7:                                                ; preds = %90, %30, %0
  %8 = load i32, i32* @WNOHANG, align 4
  %9 = call i64 @wait3(i32* %1, i32 %8, i32* null)
  store i64 %9, i64* %2, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %91

11:                                               ; preds = %7
  %12 = load i32, i32* %1, align 4
  %13 = call i32 @WEXITSTATUS(i32 %12)
  store i32 %13, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %14 = load i32, i32* %1, align 4
  %15 = call i64 @WIFSIGNALED(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @WTERMSIG(i32 %18)
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %17, %11
  %21 = load i32, i32* @LL_DEBUG, align 4
  %22 = load i64, i64* %2, align 8
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @sentinelEvent(i32 %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %22, i32 %23, i32 %24)
  %26 = load i64, i64* %2, align 8
  %27 = call %struct.TYPE_8__* @sentinelGetScriptListNodeByPid(i64 %26)
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %5, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = icmp eq %struct.TYPE_8__* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  %31 = load i32, i32* @LL_WARNING, align 4
  %32 = load i64, i64* %2, align 8
  %33 = call i32 @serverLog(i32 %31, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0), i64 %32)
  br label %7

34:                                               ; preds = %20
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %6, align 8
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* %3, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %66

43:                                               ; preds = %40, %34
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SENTINEL_SCRIPT_MAX_RETRY, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %66

49:                                               ; preds = %43
  %50 = load i32, i32* @SENTINEL_SCRIPT_RUNNING, align 4
  %51 = xor i32 %50, -1
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 3
  store i64 0, i64* %57, align 8
  %58 = call i64 (...) @mstime()
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @sentinelScriptRetryDelay(i64 %61)
  %63 = add nsw i64 %58, %62
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  store i64 %63, i64* %65, align 8
  br label %90

66:                                               ; preds = %43, %40
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %3, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %69, %66
  %73 = load i32, i32* @LL_WARNING, align 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @sentinelEvent(i32 %73, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %72, %69
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sentinel, i32 0, i32 1), align 4
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %85 = call i32 @listDelNode(i32 %83, %struct.TYPE_8__* %84)
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %87 = call i32 @sentinelReleaseScriptJob(%struct.TYPE_7__* %86)
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sentinel, i32 0, i32 0), align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sentinel, i32 0, i32 0), align 4
  br label %90

90:                                               ; preds = %82, %49
  br label %7

91:                                               ; preds = %7
  ret void
}

declare dso_local i64 @wait3(i32*, i32, i32*) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i32 @WTERMSIG(i32) #1

declare dso_local i32 @sentinelEvent(i32, i8*, i32*, i8*, i64, i32, i32) #1

declare dso_local %struct.TYPE_8__* @sentinelGetScriptListNodeByPid(i64) #1

declare dso_local i32 @serverLog(i32, i8*, i64) #1

declare dso_local i64 @mstime(...) #1

declare dso_local i64 @sentinelScriptRetryDelay(i64) #1

declare dso_local i32 @listDelNode(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @sentinelReleaseScriptJob(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
