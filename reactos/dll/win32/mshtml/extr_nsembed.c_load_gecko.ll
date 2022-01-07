; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_nsembed.c_load_gecko.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_nsembed.c_load_gecko.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@load_gecko.loading_thread = internal global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"()\0A\00", align 1
@pCompMgr = common dso_local global i32* null, align 8
@cs_load_gecko = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"Could not load wine-gecko. HTML rendering will be disabled.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_gecko() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @MAX_PATH, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %2, align 8
  %9 = alloca i32, i64 %7, align 16
  store i64 %7, i64* %3, align 8
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %4, align 4
  %11 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %12 = load i64, i64* @load_gecko.loading_thread, align 8
  %13 = call i64 (...) @GetCurrentThreadId()
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %0
  %16 = load i32*, i32** @pCompMgr, align 8
  %17 = icmp ne i32* %16, null
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %45

19:                                               ; preds = %0
  %20 = call i32 @EnterCriticalSection(i32* @cs_load_gecko)
  %21 = load i64, i64* @load_gecko.loading_thread, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %19
  %24 = call i64 (...) @GetCurrentThreadId()
  store i64 %24, i64* @load_gecko.loading_thread, align 8
  %25 = call i64 @load_wine_gecko(i32* %9)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = call i64 (...) @install_wine_gecko()
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = call i64 @load_wine_gecko(i32* %9)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30, %23
  %34 = call i32 @init_xpcom(i32* %9)
  store i32 %34, i32* %4, align 4
  br label %37

35:                                               ; preds = %30, %27
  %36 = call i32 @MESSAGE(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %33
  br label %42

38:                                               ; preds = %19
  %39 = load i32*, i32** @pCompMgr, align 8
  %40 = icmp ne i32* %39, null
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %38, %37
  %43 = call i32 @LeaveCriticalSection(i32* @cs_load_gecko)
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %45

45:                                               ; preds = %42, %15
  %46 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %46)
  %47 = load i32, i32* %1, align 4
  ret i32 %47
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TRACE(i8*) #2

declare dso_local i64 @GetCurrentThreadId(...) #2

declare dso_local i32 @EnterCriticalSection(i32*) #2

declare dso_local i64 @load_wine_gecko(i32*) #2

declare dso_local i64 @install_wine_gecko(...) #2

declare dso_local i32 @init_xpcom(i32*) #2

declare dso_local i32 @MESSAGE(i8*) #2

declare dso_local i32 @LeaveCriticalSection(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
