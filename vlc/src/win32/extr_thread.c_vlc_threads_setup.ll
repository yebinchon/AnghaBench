; ModuleID = '/home/carl/AnghaBench/vlc/src/win32/extr_thread.c_vlc_threads_setup.c'
source_filename = "/home/carl/AnghaBench/vlc/src/win32/extr_thread.c_vlc_threads_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@setup_lock = common dso_local global i32 0, align 4
@mdate_selected = common dso_local global i64 0, align 8
@mdate_default = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"high-priority\00", align 1
@HIGH_PRIORITY_CLASS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"raised process priority\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"could not raise process priority\00", align 1
@ABOVE_NORMAL_PRIORITY_CLASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlc_threads_setup(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = call i32 @EnterCriticalSection(i32* @setup_lock)
  %4 = load i64, i64* @mdate_selected, align 8
  %5 = load i64, i64* @mdate_default, align 8
  %6 = icmp ne i64 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 @LeaveCriticalSection(i32* @setup_lock)
  br label %49

9:                                                ; preds = %1
  %10 = load i32*, i32** %2, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32*, i32** %2, align 8
  %14 = call i32* @VLC_OBJECT(i32* %13)
  br label %16

15:                                               ; preds = %9
  br label %16

16:                                               ; preds = %15, %12
  %17 = phi i32* [ %14, %12 ], [ null, %15 ]
  %18 = call i32 @SelectClockSource(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = call i32 (...) @abort() #3
  unreachable

22:                                               ; preds = %16
  %23 = load i64, i64* @mdate_selected, align 8
  %24 = load i64, i64* @mdate_default, align 8
  %25 = icmp ne i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i32*, i32** %2, align 8
  %29 = call i64 @var_InheritBool(i32* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %22
  %32 = call i32 (...) @GetCurrentProcess()
  %33 = call i64 @SetPriorityClass(i32 %32, i32 32768)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = call i32 (...) @GetCurrentProcess()
  %37 = load i32, i32* @HIGH_PRIORITY_CLASS, align 4
  %38 = call i64 @SetPriorityClass(i32 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35, %31
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @msg_Dbg(i32* %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %46

43:                                               ; preds = %35
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @msg_Dbg(i32* %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %40
  br label %47

47:                                               ; preds = %46, %22
  %48 = call i32 @LeaveCriticalSection(i32* @setup_lock)
  br label %49

49:                                               ; preds = %47, %7
  ret void
}

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i32 @SelectClockSource(i32*) #1

declare dso_local i32* @VLC_OBJECT(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @var_InheritBool(i32*, i8*) #1

declare dso_local i64 @SetPriorityClass(i32, i32) #1

declare dso_local i32 @GetCurrentProcess(...) #1

declare dso_local i32 @msg_Dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
