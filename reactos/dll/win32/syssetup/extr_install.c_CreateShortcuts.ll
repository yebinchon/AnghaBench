; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/syssetup/extr_install.c_CreateShortcuts.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/syssetup/extr_install.c_CreateShortcuts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@CSIDL_FLAG_CREATE = common dso_local global i32 0, align 4
@SHGFP_TYPE_DEFAULT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @CreateShortcuts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CreateShortcuts(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %20 = load i32, i32* @MAX_PATH, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %10, align 8
  %23 = call i32 @CoInitialize(i32* null)
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @SetupFindFirstLine(i32 %24, i32 %25, i32* null, i32* %6)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %67

30:                                               ; preds = %2
  br label %31

31:                                               ; preds = %61, %30
  %32 = call i32 @SetupGetFieldCount(i32* %6)
  %33 = icmp slt i32 %32, 2
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %61

35:                                               ; preds = %31
  %36 = call i32 @ARRAYSIZE(i32* %22)
  %37 = call i32 @SetupGetStringFieldW(i32* %6, i32 0, i32* %22, i32 %36, i32* null)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  br label %61

40:                                               ; preds = %35
  %41 = call i32 @SetupGetIntField(i32* %6, i32 1, i32* %11)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  br label %61

44:                                               ; preds = %40
  %45 = call i32 @ARRAYSIZE(i32* %19)
  %46 = call i32 @SetupGetStringFieldW(i32* %6, i32 2, i32* %19, i32 %45, i32* null)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  br label %61

49:                                               ; preds = %44
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @CSIDL_FLAG_CREATE, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @SHGFP_TYPE_DEFAULT, align 4
  %54 = call i32 @SHGetFolderPathAndSubDirW(i32* null, i32 %52, i32 -1, i32 %53, i32* %19, i32* %16)
  %55 = call i64 @FAILED(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %61

58:                                               ; preds = %49
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @CreateShortcutsFromSection(i32 %59, i32* %22, i32* %16)
  br label %61

61:                                               ; preds = %58, %57, %48, %43, %39, %34
  %62 = call i64 @SetupFindNextLine(i32* %6, i32* %6)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %31, label %64

64:                                               ; preds = %61
  %65 = call i32 (...) @CoUninitialize()
  %66 = load i32, i32* @TRUE, align 4
  store i32 %66, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %67

67:                                               ; preds = %64, %28
  %68 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %68)
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @CoInitialize(i32*) #2

declare dso_local i32 @SetupFindFirstLine(i32, i32, i32*, i32*) #2

declare dso_local i32 @SetupGetFieldCount(i32*) #2

declare dso_local i32 @SetupGetStringFieldW(i32*, i32, i32*, i32, i32*) #2

declare dso_local i32 @ARRAYSIZE(i32*) #2

declare dso_local i32 @SetupGetIntField(i32*, i32, i32*) #2

declare dso_local i64 @FAILED(i32) #2

declare dso_local i32 @SHGetFolderPathAndSubDirW(i32*, i32, i32, i32, i32*, i32*) #2

declare dso_local i32 @CreateShortcutsFromSection(i32, i32*, i32*) #2

declare dso_local i64 @SetupFindNextLine(i32*, i32*) #2

declare dso_local i32 @CoUninitialize(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
