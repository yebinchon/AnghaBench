; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_signal.c_signal_handler.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_signal.c_signal_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.signal = type { i32, i32 }

@signals = common dso_local global %struct.signal* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [19 x i8] c", up logging level\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c", down logging level\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c", reopening log file\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c", exiting\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c", core dumping\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"signal %d (%s) received%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @signal_handler(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.signal*, align 8
  %4 = alloca void ()*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load %struct.signal*, %struct.signal** @signals, align 8
  store %struct.signal* %7, %struct.signal** %3, align 8
  br label %8

8:                                                ; preds = %21, %1
  %9 = load %struct.signal*, %struct.signal** %3, align 8
  %10 = getelementptr inbounds %struct.signal, %struct.signal* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %8
  %14 = load %struct.signal*, %struct.signal** %3, align 8
  %15 = getelementptr inbounds %struct.signal, %struct.signal* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %2, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %24

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.signal*, %struct.signal** %3, align 8
  %23 = getelementptr inbounds %struct.signal, %struct.signal* %22, i32 1
  store %struct.signal* %23, %struct.signal** %3, align 8
  br label %8

24:                                               ; preds = %19, %8
  %25 = load %struct.signal*, %struct.signal** %3, align 8
  %26 = getelementptr inbounds %struct.signal, %struct.signal* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @ASSERT(i32 %29)
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  store void ()* null, void ()** %4, align 8
  store i32 0, i32* %6, align 4
  %31 = load i32, i32* %2, align 4
  switch i32 %31, label %41 [
    i32 129, label %32
    i32 128, label %33
    i32 131, label %34
    i32 130, label %35
    i32 134, label %36
    i32 133, label %37
    i32 132, label %38
  ]

32:                                               ; preds = %24
  br label %43

33:                                               ; preds = %24
  br label %43

34:                                               ; preds = %24
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  store void ()* bitcast (void (...)* @log_level_up to void ()*), void ()** %4, align 8
  br label %43

35:                                               ; preds = %24
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  store void ()* bitcast (void (...)* @log_level_down to void ()*), void ()** %4, align 8
  br label %43

36:                                               ; preds = %24
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  store void ()* bitcast (void (...)* @log_reopen to void ()*), void ()** %4, align 8
  br label %43

37:                                               ; preds = %24
  store i32 1, i32* %6, align 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  br label %43

38:                                               ; preds = %24
  %39 = call i32 (...) @log_stacktrace()
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8** %5, align 8
  %40 = call i32 @raise(i32 132)
  br label %43

41:                                               ; preds = %24
  %42 = call i32 (...) @NOT_REACHED()
  br label %43

43:                                               ; preds = %41, %38, %37, %36, %35, %34, %33, %32
  %44 = load i32, i32* %2, align 4
  %45 = load %struct.signal*, %struct.signal** %3, align 8
  %46 = getelementptr inbounds %struct.signal, %struct.signal* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @log_safe(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %44, i32 %47, i8* %48)
  %50 = load void ()*, void ()** %4, align 8
  %51 = icmp ne void ()* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load void ()*, void ()** %4, align 8
  call void %53()
  br label %54

54:                                               ; preds = %52, %43
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = call i32 @exit(i32 1) #3
  unreachable

59:                                               ; preds = %54
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local void @log_level_up(...) #1

declare dso_local void @log_level_down(...) #1

declare dso_local void @log_reopen(...) #1

declare dso_local i32 @log_stacktrace(...) #1

declare dso_local i32 @raise(i32) #1

declare dso_local i32 @NOT_REACHED(...) #1

declare dso_local i32 @log_safe(i8*, i32, i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
