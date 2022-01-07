; ModuleID = '/home/carl/AnghaBench/tini/src/extr_tini.c_restore_signals.c'
source_filename = "/home/carl/AnghaBench/tini/src/extr_tini.c_restore_signals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@SIG_SETMASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Restoring child signal mask failed: '%s'\00", align 1
@errno = common dso_local global i32 0, align 4
@SIGTTIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Restoring SIGTTIN handler failed: '%s'\00", align 1
@SIGTTOU = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Restoring SIGTTOU handler failed: '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @restore_signals(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %4 = load i32, i32* @SIG_SETMASK, align 4
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @sigprocmask(i32 %4, i32 %7, i32* null)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @errno, align 4
  %12 = call i32 @strerror(i32 %11)
  %13 = call i32 @PRINT_FATAL(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %12)
  store i32 1, i32* %2, align 4
  br label %37

14:                                               ; preds = %1
  %15 = load i32, i32* @SIGTTIN, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @sigaction(i32 %15, i32 %18, i32* null)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load i32, i32* @errno, align 4
  %23 = call i32 @strerror(i32 %22)
  %24 = call i32 @PRINT_FATAL(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  store i32 1, i32* %2, align 4
  br label %37

25:                                               ; preds = %14
  %26 = load i32, i32* @SIGTTOU, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @sigaction(i32 %26, i32 %29, i32* null)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i32, i32* @errno, align 4
  %34 = call i32 @strerror(i32 %33)
  %35 = call i32 @PRINT_FATAL(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  store i32 1, i32* %2, align 4
  br label %37

36:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %32, %21, %10
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i64 @sigprocmask(i32, i32, i32*) #1

declare dso_local i32 @PRINT_FATAL(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @sigaction(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
