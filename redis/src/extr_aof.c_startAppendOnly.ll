; ModuleID = '/home/carl/AnghaBench/redis/src/extr_aof.c_startAppendOnly.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_aof.c_startAppendOnly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i32, i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@O_WRONLY = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@AOF_OFF = common dso_local global i64 0, align 8
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [97 x i8] c"Redis needs to enable the AOF but can't open the append only file %s (in server root dir %s): %s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@errno = common dso_local global i32 0, align 4
@C_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [123 x i8] c"AOF was enabled but there is already another background operation. An AOF background was scheduled to start when possible.\00", align 1
@.str.3 = private unnamed_addr constant [121 x i8] c"AOF was enabled but there is already an AOF rewriting in background. Stopping background AOF and starting a rewrite now.\00", align 1
@.str.4 = private unnamed_addr constant [136 x i8] c"Redis needs to enable the AOF but can't trigger a background AOF rewrite operation. Check the above logs for more info about the error.\00", align 1
@AOF_WAIT_REWRITE = common dso_local global i64 0, align 8
@C_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @startAppendOnly() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = load i32, i32* @MAXPATHLEN, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %2, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %3, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 6), align 4
  %12 = load i32, i32* @O_WRONLY, align 4
  %13 = load i32, i32* @O_APPEND, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @O_CREAT, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @open(i32 %11, i32 %16, i32 420)
  store i32 %17, i32* %4, align 4
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %19 = load i64, i64* @AOF_OFF, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @serverAssert(i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %41

25:                                               ; preds = %0
  %26 = load i32, i32* @MAXPATHLEN, align 4
  %27 = call i8* @getcwd(i8* %10, i32 %26)
  store i8* %27, i8** %5, align 8
  %28 = load i32, i32* @LL_WARNING, align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 6), align 4
  %30 = load i8*, i8** %5, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i8*, i8** %5, align 8
  br label %35

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i8* [ %33, %32 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %34 ]
  %37 = load i32, i32* @errno, align 4
  %38 = call i32 @strerror(i32 %37)
  %39 = call i32 (i32, i8*, ...) @serverLog(i32 %28, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str, i64 0, i64 0), i32 %29, i8* %36, i32 %38)
  %40 = load i32, i32* @C_ERR, align 4
  store i32 %40, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %73

41:                                               ; preds = %0
  %42 = call i64 (...) @hasActiveChildProcess()
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 4
  %48 = load i32, i32* @LL_WARNING, align 4
  %49 = call i32 (i32, i8*, ...) @serverLog(i32 %48, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.2, i64 0, i64 0))
  br label %68

50:                                               ; preds = %44, %41
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %52 = icmp ne i32 %51, -1
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32, i32* @LL_WARNING, align 4
  %55 = call i32 (i32, i8*, ...) @serverLog(i32 %54, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.3, i64 0, i64 0))
  %56 = call i32 (...) @killAppendOnlyChild()
  br label %57

57:                                               ; preds = %53, %50
  %58 = call i32 (...) @rewriteAppendOnlyFileBackground()
  %59 = load i32, i32* @C_ERR, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @close(i32 %62)
  %64 = load i32, i32* @LL_WARNING, align 4
  %65 = call i32 (i32, i8*, ...) @serverLog(i32 %64, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.4, i64 0, i64 0))
  %66 = load i32, i32* @C_ERR, align 4
  store i32 %66, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %73

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67, %47
  %69 = load i64, i64* @AOF_WAIT_REWRITE, align 8
  store i64 %69, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 4), align 4
  store i32 %70, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 5), align 8
  %71 = load i32, i32* %4, align 4
  store i32 %71, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %72 = load i32, i32* @C_OK, align 4
  store i32 %72, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %73

73:                                               ; preds = %68, %61, %35
  %74 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %74)
  %75 = load i32, i32* %1, align 4
  ret i32 %75
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @open(i32, i32, i32) #2

declare dso_local i32 @serverAssert(i32) #2

declare dso_local i8* @getcwd(i8*, i32) #2

declare dso_local i32 @serverLog(i32, i8*, ...) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i64 @hasActiveChildProcess(...) #2

declare dso_local i32 @killAppendOnlyChild(...) #2

declare dso_local i32 @rewriteAppendOnlyFileBackground(...) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
