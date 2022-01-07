; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfdirrd.c_StealDTABlock.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfdirrd.c_StealDTABlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@hwndMDIClient = common dso_local global i64 0, align 8
@GW_CHILD = common dso_local global i32 0, align 4
@GWL_ATTRIBS = common dso_local global i32 0, align 4
@GWL_HDTA = common dso_local global i32 0, align 4
@GWL_IERROR = common dso_local global i32 0, align 4
@IDS_NOFILES = common dso_local global i64 0, align 8
@GW_HWNDNEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @StealDTABlock(i64 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %16 = load i32, i32* @MAXPATHLEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = load i64, i64* @hwndMDIClient, align 8
  %21 = load i32, i32* @GW_CHILD, align 4
  %22 = call i64 @GetWindow(i64 %20, i32 %21)
  store i64 %22, i64* %9, align 8
  br label %23

23:                                               ; preds = %70, %3
  %24 = load i64, i64* %9, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %74

26:                                               ; preds = %23
  %27 = load i64, i64* %9, align 8
  %28 = call i64 @HasDirWindow(i64 %27)
  store i64 %28, i64* %8, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %69

30:                                               ; preds = %26
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %69

34:                                               ; preds = %30
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @COUNTOF(i32* %19)
  %37 = call i32 @GetMDIWindowText(i64 %35, i32* %19, i32 %36)
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i32, i32* @GWL_ATTRIBS, align 4
  %41 = call i64 @GetWindowLongPtr(i64 %39, i32 %40)
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %68

43:                                               ; preds = %34
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @lstrcmpi(i32 %44, i32* %19)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %68, label %47

47:                                               ; preds = %43
  %48 = load i64, i64* %8, align 8
  %49 = load i32, i32* @GWL_HDTA, align 4
  %50 = call i64 @GetWindowLongPtr(i64 %48, i32 %49)
  %51 = inttoptr i64 %50 to i32*
  store i32* %51, i32** %12, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %68

53:                                               ; preds = %47
  %54 = load i64, i64* %8, align 8
  %55 = load i32, i32* @GWL_IERROR, align 4
  %56 = call i64 @GetWindowLongPtr(i64 %54, i32 %55)
  store i64 %56, i64* %14, align 8
  %57 = load i64, i64* %14, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i64, i64* @IDS_NOFILES, align 8
  %61 = load i64, i64* %14, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59, %53
  %64 = load i32*, i32** %12, align 8
  %65 = call i32* @MemClone(i32* %64)
  store i32* %65, i32** %13, align 8
  %66 = load i32*, i32** %13, align 8
  store i32* %66, i32** %4, align 8
  store i32 1, i32* %15, align 4
  br label %75

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %67, %47, %43, %34
  br label %69

69:                                               ; preds = %68, %30, %26
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %9, align 8
  %72 = load i32, i32* @GW_HWNDNEXT, align 4
  %73 = call i64 @GetWindow(i64 %71, i32 %72)
  store i64 %73, i64* %9, align 8
  br label %23

74:                                               ; preds = %23
  store i32* null, i32** %4, align 8
  store i32 1, i32* %15, align 4
  br label %75

75:                                               ; preds = %74, %63
  %76 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %76)
  %77 = load i32*, i32** %4, align 8
  ret i32* %77
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @GetWindow(i64, i32) #2

declare dso_local i64 @HasDirWindow(i64) #2

declare dso_local i32 @GetMDIWindowText(i64, i32*, i32) #2

declare dso_local i32 @COUNTOF(i32*) #2

declare dso_local i64 @GetWindowLongPtr(i64, i32) #2

declare dso_local i32 @lstrcmpi(i32, i32*) #2

declare dso_local i32* @MemClone(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
