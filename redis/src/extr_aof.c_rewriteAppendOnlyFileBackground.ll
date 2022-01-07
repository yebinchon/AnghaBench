; ModuleID = '/home/carl/AnghaBench/redis/src/extr_aof.c_rewriteAppendOnlyFileBackground.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_aof.c_rewriteAppendOnlyFileBackground.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i64 }

@C_ERR = common dso_local global i32 0, align 4
@C_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"redis-aof-rewrite\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"temp-rewriteaof-bg-%d.aof\00", align 1
@CHILD_INFO_TYPE_AOF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"AOF rewrite\00", align 1
@LL_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"Can't rewrite append only file in background: fork: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@LL_NOTICE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [56 x i8] c"Background append only file rewriting started by pid %d\00", align 1
@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rewriteAppendOnlyFileBackground() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [256 x i8], align 16
  %4 = call i64 (...) @hasActiveChildProcess()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i32, i32* @C_ERR, align 4
  store i32 %7, i32* %1, align 4
  br label %58

8:                                                ; preds = %0
  %9 = call i64 (...) @aofCreatePipes()
  %10 = load i64, i64* @C_OK, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load i32, i32* @C_ERR, align 4
  store i32 %13, i32* %1, align 4
  br label %58

14:                                               ; preds = %8
  %15 = call i32 (...) @openChildInfoPipe()
  %16 = call i32 (...) @redisFork()
  store i32 %16, i32* %2, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %14
  %19 = call i32 @redisSetProcTitle(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %21 = call i64 (...) @getpid()
  %22 = trunc i64 %21 to i32
  %23 = call i32 @snprintf(i8* %20, i32 256, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %25 = call i64 @rewriteAppendOnlyFile(i8* %24)
  %26 = load i64, i64* @C_OK, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %18
  %29 = load i32, i32* @CHILD_INFO_TYPE_AOF, align 4
  %30 = call i32 @sendChildCOWInfo(i32 %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %31 = call i32 @exitFromChild(i32 0)
  br label %34

32:                                               ; preds = %18
  %33 = call i32 @exitFromChild(i32 1)
  br label %34

34:                                               ; preds = %32, %28
  br label %55

35:                                               ; preds = %14
  %36 = load i32, i32* %2, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = call i32 (...) @closeChildInfoPipe()
  %40 = load i32, i32* @LL_WARNING, align 4
  %41 = load i32, i32* @errno, align 4
  %42 = call i32 @strerror(i32 %41)
  %43 = call i32 @serverLog(i32 %40, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %42)
  %44 = call i32 (...) @aofClosePipes()
  %45 = load i32, i32* @C_ERR, align 4
  store i32 %45, i32* %1, align 4
  br label %58

46:                                               ; preds = %35
  %47 = load i32, i32* @LL_NOTICE, align 4
  %48 = load i32, i32* %2, align 4
  %49 = call i32 @serverLog(i32 %47, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i32 %48)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %50 = call i32 @time(i32* null)
  store i32 %50, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %51 = load i32, i32* %2, align 4
  store i32 %51, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 4
  %52 = call i32 (...) @replicationScriptCacheFlush()
  %53 = load i64, i64* @C_OK, align 8
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %1, align 4
  br label %58

55:                                               ; preds = %34
  %56 = load i64, i64* @C_OK, align 8
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %1, align 4
  br label %58

58:                                               ; preds = %55, %46, %38, %12, %6
  %59 = load i32, i32* %1, align 4
  ret i32 %59
}

declare dso_local i64 @hasActiveChildProcess(...) #1

declare dso_local i64 @aofCreatePipes(...) #1

declare dso_local i32 @openChildInfoPipe(...) #1

declare dso_local i32 @redisFork(...) #1

declare dso_local i32 @redisSetProcTitle(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i64 @rewriteAppendOnlyFile(i8*) #1

declare dso_local i32 @sendChildCOWInfo(i32, i8*) #1

declare dso_local i32 @exitFromChild(i32) #1

declare dso_local i32 @closeChildInfoPipe(...) #1

declare dso_local i32 @serverLog(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @aofClosePipes(...) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @replicationScriptCacheFlush(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
