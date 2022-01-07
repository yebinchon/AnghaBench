; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advpack/extr_advpack.c_init_function_pointers.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advpack/extr_advpack.c_init_function_pointers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"advpack.dll\00", align 1
@hAdvPack = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"CloseINFEngine\00", align 1
@pCloseINFEngine = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"DelNode\00", align 1
@pDelNode = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"GetVersionFromFile\00", align 1
@pGetVersionFromFile = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"OpenINFEngine\00", align 1
@pOpenINFEngine = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"SetPerUserSecValues\00", align 1
@pSetPerUserSecValues = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [19 x i8] c"TranslateInfString\00", align 1
@pTranslateInfString = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [21 x i8] c"TranslateInfStringEx\00", align 1
@pTranslateInfStringEx = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [36 x i8] c"Needed functions are not available\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @init_function_pointers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_function_pointers() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @LoadLibraryA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %2, i32* @hAdvPack, align 4
  %3 = load i32, i32* @hAdvPack, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @FALSE, align 4
  store i32 %6, i32* %1, align 4
  br label %53

7:                                                ; preds = %0
  %8 = load i32, i32* @hAdvPack, align 4
  %9 = call i64 @GetProcAddress(i32 %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %10 = inttoptr i64 %9 to i8*
  store i8* %10, i8** @pCloseINFEngine, align 8
  %11 = load i32, i32* @hAdvPack, align 4
  %12 = call i64 @GetProcAddress(i32 %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** @pDelNode, align 8
  %14 = load i32, i32* @hAdvPack, align 4
  %15 = call i64 @GetProcAddress(i32 %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** @pGetVersionFromFile, align 8
  %17 = load i32, i32* @hAdvPack, align 4
  %18 = call i64 @GetProcAddress(i32 %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** @pOpenINFEngine, align 8
  %20 = load i32, i32* @hAdvPack, align 4
  %21 = call i64 @GetProcAddress(i32 %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** @pSetPerUserSecValues, align 8
  %23 = load i32, i32* @hAdvPack, align 4
  %24 = call i64 @GetProcAddress(i32 %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** @pTranslateInfString, align 8
  %26 = load i32, i32* @hAdvPack, align 4
  %27 = call i64 @GetProcAddress(i32 %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** @pTranslateInfStringEx, align 8
  %29 = load i8*, i8** @pCloseINFEngine, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %46

31:                                               ; preds = %7
  %32 = load i8*, i8** @pDelNode, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = load i8*, i8** @pGetVersionFromFile, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load i8*, i8** @pOpenINFEngine, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load i8*, i8** @pSetPerUserSecValues, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i8*, i8** @pTranslateInfString, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43, %40, %37, %34, %31, %7
  %47 = call i32 @win_skip(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  %48 = load i32, i32* @hAdvPack, align 4
  %49 = call i32 @FreeLibrary(i32 %48)
  %50 = load i32, i32* @FALSE, align 4
  store i32 %50, i32* %1, align 4
  br label %53

51:                                               ; preds = %43
  %52 = load i32, i32* @TRUE, align 4
  store i32 %52, i32* %1, align 4
  br label %53

53:                                               ; preds = %51, %46, %5
  %54 = load i32, i32* %1, align 4
  ret i32 %54
}

declare dso_local i32 @LoadLibraryA(i8*) #1

declare dso_local i64 @GetProcAddress(i32, i8*) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @FreeLibrary(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
