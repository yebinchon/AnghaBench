; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mscoree/extr_mscoree.c_init_functionpointers.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mscoree/extr_mscoree.c_init_functionpointers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"mscoree.dll\00", align 1
@hmscoree = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"mscoree.dll not available\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"GetCORVersion\00", align 1
@pGetCORVersion = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"GetCORSystemDirectory\00", align 1
@pGetCORSystemDirectory = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"GetRequestedRuntimeInfo\00", align 1
@pGetRequestedRuntimeInfo = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [16 x i8] c"LoadLibraryShim\00", align 1
@pLoadLibraryShim = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [19 x i8] c"CreateConfigStream\00", align 1
@pCreateConfigStream = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [25 x i8] c"functions not available\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @init_functionpointers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_functionpointers() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @LoadLibraryA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %2, i32* @hmscoree, align 4
  %3 = load i32, i32* @hmscoree, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  %6 = call i32 @win_skip(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %7 = load i32, i32* @FALSE, align 4
  store i32 %7, i32* %1, align 4
  br label %42

8:                                                ; preds = %0
  %9 = load i32, i32* @hmscoree, align 4
  %10 = call i64 @GetProcAddress(i32 %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** @pGetCORVersion, align 8
  %12 = load i32, i32* @hmscoree, align 4
  %13 = call i64 @GetProcAddress(i32 %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** @pGetCORSystemDirectory, align 8
  %15 = load i32, i32* @hmscoree, align 4
  %16 = call i64 @GetProcAddress(i32 %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** @pGetRequestedRuntimeInfo, align 8
  %18 = load i32, i32* @hmscoree, align 4
  %19 = call i64 @GetProcAddress(i32 %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** @pLoadLibraryShim, align 8
  %21 = load i32, i32* @hmscoree, align 4
  %22 = call i64 @GetProcAddress(i32 %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** @pCreateConfigStream, align 8
  %24 = load i8*, i8** @pGetCORVersion, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %8
  %27 = load i8*, i8** @pGetCORSystemDirectory, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i8*, i8** @pGetRequestedRuntimeInfo, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i8*, i8** @pLoadLibraryShim, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %32, %29, %26, %8
  %36 = call i32 @win_skip(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %37 = load i32, i32* @hmscoree, align 4
  %38 = call i32 @FreeLibrary(i32 %37)
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %1, align 4
  br label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @TRUE, align 4
  store i32 %41, i32* %1, align 4
  br label %42

42:                                               ; preds = %40, %35, %5
  %43 = load i32, i32* %1, align 4
  ret i32 %43
}

declare dso_local i32 @LoadLibraryA(i8*) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i64 @GetProcAddress(i32, i8*) #1

declare dso_local i32 @FreeLibrary(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
