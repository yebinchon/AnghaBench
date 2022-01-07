; ModuleID = '/home/carl/AnghaBench/redis/src/extr_rdb.c_rdbSaveBackground.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_rdb.c_rdbSaveBackground.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i8*, i8*, i32, i32 }

@C_ERR = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [17 x i8] c"redis-rdb-bgsave\00", align 1
@C_OK = common dso_local global i32 0, align 4
@CHILD_INFO_TYPE_RDB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"RDB\00", align 1
@LL_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Can't save in background: fork: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@LL_NOTICE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Background saving started by pid %d\00", align 1
@RDB_CHILD_TYPE_DISK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdbSaveBackground(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = call i64 (...) @hasActiveChildProcess()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @C_ERR, align 4
  store i32 %11, i32* %3, align 4
  br label %57

12:                                               ; preds = %2
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 5), align 8
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 6), align 4
  %14 = call i8* @time(i32* null)
  store i8* %14, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 4), align 8
  %15 = call i32 (...) @openChildInfoPipe()
  %16 = call i32 (...) @redisFork()
  store i32 %16, i32* %6, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %12
  %19 = call i32 @redisSetProcTitle(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %20 = load i8*, i8** %4, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @rdbSave(i8* %20, i32* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @C_OK, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i32, i32* @CHILD_INFO_TYPE_RDB, align 4
  %28 = call i32 @sendChildCOWInfo(i32 %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %18
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @C_OK, align 4
  %32 = icmp eq i32 %30, %31
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 0, i32 1
  %35 = call i32 @exitFromChild(i32 %34)
  br label %55

36:                                               ; preds = %12
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = call i32 (...) @closeChildInfoPipe()
  %41 = load i32, i32* @C_ERR, align 4
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %42 = load i32, i32* @LL_WARNING, align 4
  %43 = load i32, i32* @errno, align 4
  %44 = call i32 @strerror(i32 %43)
  %45 = call i32 @serverLog(i32 %42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @C_ERR, align 4
  store i32 %46, i32* %3, align 4
  br label %57

47:                                               ; preds = %36
  %48 = load i32, i32* @LL_NOTICE, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @serverLog(i32 %48, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  %51 = call i8* @time(i32* null)
  store i8* %51, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 4
  %53 = load i32, i32* @RDB_CHILD_TYPE_DISK, align 4
  store i32 %53, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %54 = load i32, i32* @C_OK, align 4
  store i32 %54, i32* %3, align 4
  br label %57

55:                                               ; preds = %29
  %56 = load i32, i32* @C_OK, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %47, %39, %10
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i64 @hasActiveChildProcess(...) #1

declare dso_local i8* @time(i32*) #1

declare dso_local i32 @openChildInfoPipe(...) #1

declare dso_local i32 @redisFork(...) #1

declare dso_local i32 @redisSetProcTitle(i8*) #1

declare dso_local i32 @rdbSave(i8*, i32*) #1

declare dso_local i32 @sendChildCOWInfo(i32, i8*) #1

declare dso_local i32 @exitFromChild(i32) #1

declare dso_local i32 @closeChildInfoPipe(...) #1

declare dso_local i32 @serverLog(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
