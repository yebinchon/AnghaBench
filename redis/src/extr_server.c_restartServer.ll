; ModuleID = '/home/carl/AnghaBench/redis/src/extr_server.c_restartServer.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_server.c_restartServer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32, i64, i64 }

@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@X_OK = common dso_local global i32 0, align 4
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Can't restart: this process has no permissions to execute %s\00", align 1
@C_ERR = common dso_local global i32 0, align 4
@RESTART_SERVER_CONFIG_REWRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Can't restart: configuration rewrite process failed\00", align 1
@RESTART_SERVER_GRACEFULLY = common dso_local global i32 0, align 4
@SHUTDOWN_NOFLAGS = common dso_local global i32 0, align 4
@C_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"Can't restart: error preparing for shutdown\00", align 1
@F_GETFD = common dso_local global i32 0, align 4
@environ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @restartServer(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %8 = load i32, i32* @X_OK, align 4
  %9 = call i32 @access(i32 %7, i32 %8)
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i32, i32* @LL_WARNING, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %14 = call i32 (i32, i8*, ...) @serverLog(i32 %12, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @C_ERR, align 4
  store i32 %15, i32* %3, align 4
  br label %86

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @RESTART_SERVER_CONFIG_REWRITE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %16
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %26 = call i32 @rewriteConfig(i64 %25)
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* @LL_WARNING, align 4
  %30 = call i32 (i32, i8*, ...) @serverLog(i32 %29, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @C_ERR, align 4
  store i32 %31, i32* %3, align 4
  br label %86

32:                                               ; preds = %24, %21, %16
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @RESTART_SERVER_GRACEFULLY, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load i32, i32* @SHUTDOWN_NOFLAGS, align 4
  %39 = call i64 @prepareForShutdown(i32 %38)
  %40 = load i64, i64* @C_OK, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* @LL_WARNING, align 4
  %44 = call i32 (i32, i8*, ...) @serverLog(i32 %43, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* @C_ERR, align 4
  store i32 %45, i32* %3, align 4
  br label %86

46:                                               ; preds = %37, %32
  store i32 3, i32* %6, align 4
  br label %47

47:                                               ; preds = %62, %46
  %48 = load i32, i32* %6, align 4
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %50 = trunc i64 %49 to i32
  %51 = add nsw i32 %50, 1024
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %47
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @F_GETFD, align 4
  %56 = call i32 @fcntl(i32 %54, i32 %55)
  %57 = icmp ne i32 %56, -1
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @close(i32 %59)
  br label %61

61:                                               ; preds = %58, %53
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %47

65:                                               ; preds = %47
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i32, i32* %5, align 4
  %70 = mul nsw i32 %69, 1000
  %71 = call i32 @usleep(i32 %70)
  br label %72

72:                                               ; preds = %68, %65
  %73 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @zfree(i32 %75)
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %78 = call i32 @zstrdup(i32 %77)
  %79 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %82 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %83 = load i32, i32* @environ, align 4
  %84 = call i32 @execve(i32 %81, i32* %82, i32 %83)
  %85 = call i32 @_exit(i32 1) #3
  unreachable

86:                                               ; preds = %42, %28, %11
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @access(i32, i32) #1

declare dso_local i32 @serverLog(i32, i8*, ...) #1

declare dso_local i32 @rewriteConfig(i64) #1

declare dso_local i64 @prepareForShutdown(i32) #1

declare dso_local i32 @fcntl(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @zfree(i32) #1

declare dso_local i32 @zstrdup(i32) #1

declare dso_local i32 @execve(i32, i32*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
