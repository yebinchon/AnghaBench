; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_nsembed.c_close_gecko.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_nsembed.c_close_gecko.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"()\0A\00", align 1
@profile_directory = common dso_local global i32* null, align 8
@plugin_directory = common dso_local global i32* null, align 8
@pCompMgr = common dso_local global i64 0, align 8
@pServMgr = common dso_local global i64 0, align 8
@cat_mgr = common dso_local global i64 0, align 8
@cs_load_gecko = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_gecko() #0 {
  %1 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 (...) @release_nsio()
  %3 = call i32 @init_mutation(i32* null)
  %4 = load i32*, i32** @profile_directory, align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i32*, i32** @profile_directory, align 8
  %8 = call i32 @nsIFile_Release(i32* %7)
  store i32* null, i32** @profile_directory, align 8
  br label %9

9:                                                ; preds = %6, %0
  %10 = load i32*, i32** @plugin_directory, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32*, i32** @plugin_directory, align 8
  %14 = call i32 @nsIFile_Release(i32* %13)
  store i32* null, i32** @plugin_directory, align 8
  br label %15

15:                                               ; preds = %12, %9
  %16 = load i64, i64* @pCompMgr, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i64, i64* @pCompMgr, align 8
  %20 = call i32 @nsIComponentManager_Release(i64 %19)
  br label %21

21:                                               ; preds = %18, %15
  %22 = load i64, i64* @pServMgr, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i64, i64* @pServMgr, align 8
  %26 = call i32 @nsIServiceManager_Release(i64 %25)
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i64, i64* @cat_mgr, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i64, i64* @cat_mgr, align 8
  %32 = call i32 @nsICategoryManager_Release(i64 %31)
  br label %33

33:                                               ; preds = %30, %27
  %34 = call i32 @DeleteCriticalSection(i32* @cs_load_gecko)
  ret void
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @release_nsio(...) #1

declare dso_local i32 @init_mutation(i32*) #1

declare dso_local i32 @nsIFile_Release(i32*) #1

declare dso_local i32 @nsIComponentManager_Release(i64) #1

declare dso_local i32 @nsIServiceManager_Release(i64) #1

declare dso_local i32 @nsICategoryManager_Release(i64) #1

declare dso_local i32 @DeleteCriticalSection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
