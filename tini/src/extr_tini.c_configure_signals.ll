; ModuleID = '/home/carl/AnghaBench/tini/src/extr_tini.c_configure_signals.c'
source_filename = "/home/carl/AnghaBench/tini/src/extr_tini.c_configure_signals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.sigaction = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"sigfillset failed: '%s'\00", align 1
@errno = common dso_local global i32 0, align 4
@SIGFPE = common dso_local global i32 0, align 4
@SIGILL = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4
@SIGBUS = common dso_local global i32 0, align 4
@SIGABRT = common dso_local global i32 0, align 4
@SIGTRAP = common dso_local global i32 0, align 4
@SIGSYS = common dso_local global i32 0, align 4
@SIGTTIN = common dso_local global i32 0, align 4
@SIGTTOU = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"sigdelset failed: '%i'\00", align 1
@SIG_SETMASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"sigprocmask failed: '%s'\00", align 1
@SIG_IGN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Failed to ignore SIGTTIN\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Failed to ignore SIGTTOU\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @configure_signals(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [9 x i32], align 16
  %8 = alloca %struct.sigaction, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i64 @sigfillset(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @errno, align 4
  %14 = call i32 @strerror(i32 %13)
  %15 = call i32 (i8*, ...) @PRINT_FATAL(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %14)
  store i32 1, i32* %3, align 4
  br label %92

16:                                               ; preds = %2
  %17 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0
  %18 = load i32, i32* @SIGFPE, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds i32, i32* %17, i64 1
  %20 = load i32, i32* @SIGILL, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds i32, i32* %19, i64 1
  %22 = load i32, i32* @SIGSEGV, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds i32, i32* %21, i64 1
  %24 = load i32, i32* @SIGBUS, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds i32, i32* %23, i64 1
  %26 = load i32, i32* @SIGABRT, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds i32, i32* %25, i64 1
  %28 = load i32, i32* @SIGTRAP, align 4
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds i32, i32* %27, i64 1
  %30 = load i32, i32* @SIGSYS, align 4
  store i32 %30, i32* %29, align 4
  %31 = getelementptr inbounds i32, i32* %29, i64 1
  %32 = load i32, i32* @SIGTTIN, align 4
  store i32 %32, i32* %31, align 4
  %33 = getelementptr inbounds i32, i32* %31, i64 1
  %34 = load i32, i32* @SIGTTOU, align 4
  store i32 %34, i32* %33, align 4
  store i64 0, i64* %6, align 8
  br label %35

35:                                               ; preds = %53, %16
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0
  %38 = call i64 @ARRAY_LEN(i32* %37)
  %39 = icmp ult i64 %36, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %35
  %41 = load i32*, i32** %4, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @sigdelset(i32* %41, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load i64, i64* %6, align 8
  %49 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i8*, ...) @PRINT_FATAL(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  store i32 1, i32* %3, align 4
  br label %92

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %6, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %6, align 8
  br label %35

56:                                               ; preds = %35
  %57 = load i32, i32* @SIG_SETMASK, align 4
  %58 = load i32*, i32** %4, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @sigprocmask(i32 %57, i32* %58, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %56
  %65 = load i32, i32* @errno, align 4
  %66 = call i32 @strerror(i32 %65)
  %67 = call i32 (i8*, ...) @PRINT_FATAL(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  store i32 1, i32* %3, align 4
  br label %92

68:                                               ; preds = %56
  %69 = call i32 @memset(%struct.sigaction* %8, i32 0, i32 8)
  %70 = load i32, i32* @SIG_IGN, align 4
  %71 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %8, i32 0, i32 1
  store i32 %70, i32* %71, align 4
  %72 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %8, i32 0, i32 0
  %73 = call i32 @sigemptyset(i32* %72)
  %74 = load i32, i32* @SIGTTIN, align 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @sigaction(i32 %74, %struct.sigaction* %8, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %68
  %81 = call i32 (i8*, ...) @PRINT_FATAL(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %92

82:                                               ; preds = %68
  %83 = load i32, i32* @SIGTTOU, align 4
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @sigaction(i32 %83, %struct.sigaction* %8, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = call i32 (i8*, ...) @PRINT_FATAL(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %92

91:                                               ; preds = %82
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %89, %80, %64, %47, %12
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i64 @sigfillset(i32*) #1

declare dso_local i32 @PRINT_FATAL(i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @ARRAY_LEN(i32*) #1

declare dso_local i64 @sigdelset(i32*, i32) #1

declare dso_local i64 @sigprocmask(i32, i32*, i32) #1

declare dso_local i32 @memset(%struct.sigaction*, i32, i32) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i64 @sigaction(i32, %struct.sigaction*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
