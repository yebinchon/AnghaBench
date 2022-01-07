; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/winhttp/extr_handle.c_grab_object.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/winhttp/extr_handle.c_grab_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@handle_cs = common dso_local global i32 0, align 4
@max_handles = common dso_local global i32 0, align 4
@handles = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"handle 0x%lx -> %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @grab_object(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  %5 = load i32, i32* %2, align 4
  store i32 %5, i32* %4, align 4
  %6 = call i32 @EnterCriticalSection(i32* @handle_cs)
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %29

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @max_handles, align 4
  %12 = icmp sle i32 %10, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %9
  %14 = load i64*, i64** @handles, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %14, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %13
  %22 = load i64*, i64** @handles, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %22, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = call i32* @addref_object(i64 %27)
  store i32* %28, i32** %3, align 8
  br label %29

29:                                               ; preds = %21, %13, %9, %1
  %30 = call i32 @LeaveCriticalSection(i32* @handle_cs)
  %31 = load i32, i32* %4, align 4
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %31, i32* %32)
  %34 = load i32*, i32** %3, align 8
  ret i32* %34
}

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32* @addref_object(i64) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i32 @TRACE(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
