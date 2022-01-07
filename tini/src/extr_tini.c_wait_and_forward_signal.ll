; ModuleID = '/home/carl/AnghaBench/tini/src/extr_tini.c_wait_and_forward_signal.c'
source_filename = "/home/carl/AnghaBench/tini/src/extr_tini.c_wait_and_forward_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ts = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Unexpected error in sigtimedwait: '%s'\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Received SIGCHLD\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Passing signal: '%s'\00", align 1
@kill_process_group = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Child was dead when forwarding signal\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"Unexpected error when forwarding signal: '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wait_and_forward_signal(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @sigtimedwait(i32* %7, %struct.TYPE_3__* %6, i32* @ts)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load i32, i32* @errno, align 4
  switch i32 %11, label %14 [
    i32 130, label %12
    i32 129, label %13
  ]

12:                                               ; preds = %10
  br label %18

13:                                               ; preds = %10
  br label %18

14:                                               ; preds = %10
  %15 = load i32, i32* @errno, align 4
  %16 = call i32 @strerror(i32 %15)
  %17 = call i32 @PRINT_FATAL(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i32 1, i32* %3, align 4
  br label %56

18:                                               ; preds = %13, %12
  br label %55

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %24 [
    i32 128, label %22
  ]

22:                                               ; preds = %19
  %23 = call i32 (i8*, ...) @PRINT_DEBUG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %54

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @strsignal(i32 %26)
  %28 = call i32 (i8*, ...) @PRINT_DEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @kill_process_group, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* %5, align 4
  %33 = sub nsw i32 0, %32
  br label %36

34:                                               ; preds = %24
  %35 = load i32, i32* %5, align 4
  br label %36

36:                                               ; preds = %34, %31
  %37 = phi i32 [ %33, %31 ], [ %35, %34 ]
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @kill(i32 %37, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %36
  %43 = load i32, i32* @errno, align 4
  %44 = load i32, i32* @ESRCH, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = call i32 @PRINT_WARNING(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %52

48:                                               ; preds = %42
  %49 = load i32, i32* @errno, align 4
  %50 = call i32 @strerror(i32 %49)
  %51 = call i32 @PRINT_FATAL(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  store i32 1, i32* %3, align 4
  br label %56

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52, %36
  br label %54

54:                                               ; preds = %53, %22
  br label %55

55:                                               ; preds = %54, %18
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %48, %14
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @sigtimedwait(i32*, %struct.TYPE_3__*, i32*) #1

declare dso_local i32 @PRINT_FATAL(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @PRINT_DEBUG(i8*, ...) #1

declare dso_local i32 @strsignal(i32) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @PRINT_WARNING(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
