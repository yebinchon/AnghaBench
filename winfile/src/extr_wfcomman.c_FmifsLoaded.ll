; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfcomman.c_FmifsLoaded.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfcomman.c_FmifsLoaded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hfmifsDll = common dso_local global i32* null, align 8
@szFmifsDll = common dso_local global i32 0, align 4
@hwndFrame = common dso_local global i32 0, align 4
@IDS_WINFILE = common dso_local global i32 0, align 4
@IDS_FMIFSLOADERR = common dso_local global i32 0, align 4
@MB_OK = common dso_local global i32 0, align 4
@MB_ICONEXCLAMATION = common dso_local global i32 0, align 4
@MB_SYSTEMMODAL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Format\00", align 1
@lpfnFormat = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"QuerySupportedMedia\00", align 1
@lpfnQuerySupportedMedia = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"SetLabel\00", align 1
@lpfnSetLabel = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"DiskCopy\00", align 1
@lpfnDiskCopy = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FmifsLoaded() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** @hfmifsDll, align 8
  %3 = icmp ult i32* %2, inttoptr (i64 32 to i32*)
  br i1 %3, label %4, label %59

4:                                                ; preds = %0
  %5 = load i32, i32* @szFmifsDll, align 4
  %6 = call i32* @LoadLibrary(i32 %5)
  store i32* %6, i32** @hfmifsDll, align 8
  %7 = load i32*, i32** @hfmifsDll, align 8
  %8 = icmp ult i32* %7, inttoptr (i64 32 to i32*)
  br i1 %8, label %9, label %20

9:                                                ; preds = %4
  %10 = load i32, i32* @hwndFrame, align 4
  %11 = load i32, i32* @IDS_WINFILE, align 4
  %12 = load i32, i32* @IDS_FMIFSLOADERR, align 4
  %13 = load i32, i32* @MB_OK, align 4
  %14 = load i32, i32* @MB_ICONEXCLAMATION, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @MB_SYSTEMMODAL, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @MyMessageBox(i32 %10, i32 %11, i32 %12, i32 %17)
  store i32* null, i32** @hfmifsDll, align 8
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %1, align 4
  br label %61

20:                                               ; preds = %4
  %21 = load i32*, i32** @hfmifsDll, align 8
  %22 = call i64 @GetProcAddress(i32* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** @lpfnFormat, align 8
  %24 = load i32*, i32** @hfmifsDll, align 8
  %25 = call i64 @GetProcAddress(i32* %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** @lpfnQuerySupportedMedia, align 8
  %27 = load i32*, i32** @hfmifsDll, align 8
  %28 = call i64 @GetProcAddress(i32* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %29 = inttoptr i64 %28 to i8*
  store i8* %29, i8** @lpfnSetLabel, align 8
  %30 = load i32*, i32** @hfmifsDll, align 8
  %31 = call i64 @GetProcAddress(i32* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** @lpfnDiskCopy, align 8
  %33 = load i8*, i8** @lpfnFormat, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %20
  %36 = load i8*, i8** @lpfnQuerySupportedMedia, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i8*, i8** @lpfnSetLabel, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i8*, i8** @lpfnDiskCopy, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %57, label %44

44:                                               ; preds = %41, %38, %35, %20
  %45 = load i32, i32* @hwndFrame, align 4
  %46 = load i32, i32* @IDS_WINFILE, align 4
  %47 = load i32, i32* @IDS_FMIFSLOADERR, align 4
  %48 = load i32, i32* @MB_OK, align 4
  %49 = load i32, i32* @MB_ICONEXCLAMATION, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @MB_SYSTEMMODAL, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @MyMessageBox(i32 %45, i32 %46, i32 %47, i32 %52)
  %54 = load i32*, i32** @hfmifsDll, align 8
  %55 = call i32 @FreeLibrary(i32* %54)
  store i32* null, i32** @hfmifsDll, align 8
  %56 = load i32, i32* @FALSE, align 4
  store i32 %56, i32* %1, align 4
  br label %61

57:                                               ; preds = %41
  br label %58

58:                                               ; preds = %57
  br label %59

59:                                               ; preds = %58, %0
  %60 = load i32, i32* @TRUE, align 4
  store i32 %60, i32* %1, align 4
  br label %61

61:                                               ; preds = %59, %44, %9
  %62 = load i32, i32* %1, align 4
  ret i32 %62
}

declare dso_local i32* @LoadLibrary(i32) #1

declare dso_local i32 @MyMessageBox(i32, i32, i32, i32) #1

declare dso_local i64 @GetProcAddress(i32*, i8*) #1

declare dso_local i32 @FreeLibrary(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
