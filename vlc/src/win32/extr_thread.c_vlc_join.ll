; ModuleID = '/home/carl/AnghaBench/vlc/src/win32/extr_thread.c_vlc_join.c'
source_filename = "/home/carl/AnghaBench/vlc/src/win32/extr_thread.c_vlc_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8* }

@INFINITE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@WAIT_ABANDONED_0 = common dso_local global i64 0, align 8
@WAIT_IO_COMPLETION = common dso_local global i64 0, align 8
@WAIT_FAILED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlc_join(%struct.TYPE_4__* %0, i8** %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8** %1, i8*** %4, align 8
  br label %6

6:                                                ; preds = %27, %2
  %7 = call i32 (...) @vlc_testcancel()
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @INFINITE, align 4
  %12 = load i32, i32* @TRUE, align 4
  %13 = call i64 @WaitForSingleObjectEx(i32 %10, i32 %11, i32 %12)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @WAIT_ABANDONED_0, align 8
  %16 = icmp ne i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  br label %19

19:                                               ; preds = %6
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @WAIT_IO_COMPLETION, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @WAIT_FAILED, align 8
  %26 = icmp eq i64 %24, %25
  br label %27

27:                                               ; preds = %23, %19
  %28 = phi i1 [ true, %19 ], [ %26, %23 ]
  br i1 %28, label %6, label %29

29:                                               ; preds = %27
  %30 = load i8**, i8*** %4, align 8
  %31 = icmp ne i8** %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load i8**, i8*** %4, align 8
  store i8* %35, i8** %36, align 8
  br label %37

37:                                               ; preds = %32, %29
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @CloseHandle(i32 %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %43 = call i32 @vlc_thread_destroy(%struct.TYPE_4__* %42)
  ret void
}

declare dso_local i32 @vlc_testcancel(...) #1

declare dso_local i64 @WaitForSingleObjectEx(i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @CloseHandle(i32) #1

declare dso_local i32 @vlc_thread_destroy(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
