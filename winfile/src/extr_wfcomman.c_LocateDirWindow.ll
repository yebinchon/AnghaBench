; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfcomman.c_LocateDirWindow.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfcomman.c_LocateDirWindow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@CHAR_COLON = common dso_local global i64 0, align 8
@hwndMDIClient = common dso_local global i32* null, align 8
@GW_CHILD = common dso_local global i32 0, align 4
@GW_HWNDNEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @LocateDirWindow(i64* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* @MAXPATHLEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load i32, i32* @MAXPATHLEN, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  %22 = load i64*, i64** %5, align 8
  store i64* %22, i64** %10, align 8
  %23 = load i64*, i64** %10, align 8
  %24 = call i32 @lstrlen(i64* %23)
  %25 = icmp slt i32 %24, 3
  br i1 %25, label %32, label %26

26:                                               ; preds = %3
  %27 = load i64*, i64** %10, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CHAR_COLON, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26, %3
  store i32* null, i32** %4, align 8
  store i32 1, i32* %14, align 4
  br label %74

33:                                               ; preds = %26
  %34 = load i64*, i64** %10, align 8
  %35 = call i32 @lstrcpy(i32* %21, i64* %34)
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = call i32 @StripFilespec(i32* %21)
  br label %40

40:                                               ; preds = %38, %33
  %41 = load i32*, i32** @hwndMDIClient, align 8
  %42 = load i32, i32* @GW_CHILD, align 4
  %43 = call i32* @GetWindow(i32* %41, i32 %42)
  store i32* %43, i32** %8, align 8
  br label %44

44:                                               ; preds = %68, %40
  %45 = load i32*, i32** %8, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %72

47:                                               ; preds = %44
  %48 = load i32*, i32** %8, align 8
  %49 = call i32* @HasDirWindow(i32* %48)
  store i32* %49, i32** %9, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %67

51:                                               ; preds = %47
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @COUNTOF(i32* %18)
  %54 = call i32 @GetMDIWindowText(i32* %52, i32* %18, i32 %53)
  %55 = call i32 @StripFilespec(i32* %18)
  %56 = call i32 @lstrcmpi(i32* %18, i32* %21)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i32*, i32** %8, align 8
  %63 = call i32 @HasTreeWindow(i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %61, %58
  br label %72

66:                                               ; preds = %61, %51
  br label %67

67:                                               ; preds = %66, %47
  br label %68

68:                                               ; preds = %67
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* @GW_HWNDNEXT, align 4
  %71 = call i32* @GetWindow(i32* %69, i32 %70)
  store i32* %71, i32** %8, align 8
  br label %44

72:                                               ; preds = %65, %44
  %73 = load i32*, i32** %8, align 8
  store i32* %73, i32** %4, align 8
  store i32 1, i32* %14, align 4
  br label %74

74:                                               ; preds = %72, %32
  %75 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32*, i32** %4, align 8
  ret i32* %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lstrlen(i64*) #2

declare dso_local i32 @lstrcpy(i32*, i64*) #2

declare dso_local i32 @StripFilespec(i32*) #2

declare dso_local i32* @GetWindow(i32*, i32) #2

declare dso_local i32* @HasDirWindow(i32*) #2

declare dso_local i32 @GetMDIWindowText(i32*, i32*, i32) #2

declare dso_local i32 @COUNTOF(i32*) #2

declare dso_local i32 @lstrcmpi(i32*, i32*) #2

declare dso_local i32 @HasTreeWindow(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
