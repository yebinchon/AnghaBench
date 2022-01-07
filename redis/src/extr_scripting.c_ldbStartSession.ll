; ModuleID = '/home/carl/AnghaBench/redis/src/extr_scripting.c_ldbStartSession.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_scripting.c_ldbStartSession.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i32 }
%struct.sigaction = type { i32, i64, i32 }

@CLIENT_LUA_DEBUG_SYNC = common dso_local global i32 0, align 4
@ldb = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str = private unnamed_addr constant [49 x i8] c"Fork() failed: can't run EVAL in debugging mode.\00", align 1
@SIG_IGN = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@LL_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Redis forked for debugging eval\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Redis synchronous debugging eval session started\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldbStartSession(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sigaction, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @CLIENT_LUA_DEBUG_SYNC, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ldb, i32 0, i32 0), align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ldb, i32 0, i32 0), align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %49

17:                                               ; preds = %1
  %18 = call i32 (...) @redisFork()
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = call i32 @addReplyError(%struct.TYPE_8__* %22, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %105

24:                                               ; preds = %17
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i32 0, i32 2
  %29 = call i32 @sigemptyset(i32* %28)
  %30 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* @SIG_IGN, align 4
  %32 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i32 0, i32 0
  store i32 %31, i32* %32, align 8
  %33 = load i32, i32* @SIGTERM, align 4
  %34 = call i32 @sigaction(i32 %33, %struct.sigaction* %5, i32* null)
  %35 = load i32, i32* @SIGINT, align 4
  %36 = call i32 @sigaction(i32 %35, %struct.sigaction* %5, i32* null)
  %37 = load i32, i32* @LL_WARNING, align 4
  %38 = call i32 @serverLog(i32 %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %47

39:                                               ; preds = %24
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ldb, i32 0, i32 5), align 4
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = call i32 @listAddNodeTail(i32 %40, i8* %43)
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %46 = call i32 @freeClientAsync(%struct.TYPE_8__* %45)
  store i32 0, i32* %2, align 4
  br label %105

47:                                               ; preds = %27
  br label %48

48:                                               ; preds = %47
  br label %52

49:                                               ; preds = %1
  %50 = load i32, i32* @LL_WARNING, align 4
  %51 = call i32 @serverLog(i32 %50, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %48
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ldb, i32 0, i32 4), align 4
  %54 = call i32 @connBlock(i32 %53)
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ldb, i32 0, i32 4), align 4
  %56 = call i32 @connSendTimeout(i32 %55, i32 5000)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ldb, i32 0, i32 1), align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %59, i64 1
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @sdsdup(i32 %63)
  store i8* %64, i8** %6, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = call i64 @sdslen(i8* %65)
  store i64 %66, i64* %7, align 8
  br label %67

67:                                               ; preds = %90, %52
  %68 = load i64, i64* %7, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %88

70:                                               ; preds = %67
  %71 = load i8*, i8** %6, align 8
  %72 = load i64, i64* %7, align 8
  %73 = sub i64 %72, 1
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 10
  br i1 %77, label %86, label %78

78:                                               ; preds = %70
  %79 = load i8*, i8** %6, align 8
  %80 = load i64, i64* %7, align 8
  %81 = sub i64 %80, 1
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 13
  br label %86

86:                                               ; preds = %78, %70
  %87 = phi i1 [ true, %70 ], [ %85, %78 ]
  br label %88

88:                                               ; preds = %86, %67
  %89 = phi i1 [ false, %67 ], [ %87, %86 ]
  br i1 %89, label %90, label %95

90:                                               ; preds = %88
  %91 = load i8*, i8** %6, align 8
  %92 = load i64, i64* %7, align 8
  %93 = add i64 %92, -1
  store i64 %93, i64* %7, align 8
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  store i8 0, i8* %94, align 1
  br label %67

95:                                               ; preds = %88
  %96 = load i8*, i8** %6, align 8
  %97 = load i64, i64* %7, align 8
  %98 = call i32 @sdssetlen(i8* %96, i64 %97)
  %99 = load i8*, i8** %6, align 8
  %100 = load i8*, i8** %6, align 8
  %101 = call i64 @sdslen(i8* %100)
  %102 = call i32 @sdssplitlen(i8* %99, i64 %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ldb, i32 0, i32 2))
  store i32 %102, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ldb, i32 0, i32 3), align 4
  %103 = load i8*, i8** %6, align 8
  %104 = call i32 @sdsfree(i8* %103)
  store i32 1, i32* %2, align 4
  br label %105

105:                                              ; preds = %95, %39, %21
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @redisFork(...) #1

declare dso_local i32 @addReplyError(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @serverLog(i32, i8*) #1

declare dso_local i32 @listAddNodeTail(i32, i8*) #1

declare dso_local i32 @freeClientAsync(%struct.TYPE_8__*) #1

declare dso_local i32 @connBlock(i32) #1

declare dso_local i32 @connSendTimeout(i32, i32) #1

declare dso_local i8* @sdsdup(i32) #1

declare dso_local i64 @sdslen(i8*) #1

declare dso_local i32 @sdssetlen(i8*, i64) #1

declare dso_local i32 @sdssplitlen(i8*, i64, i8*, i32, i32*) #1

declare dso_local i32 @sdsfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
