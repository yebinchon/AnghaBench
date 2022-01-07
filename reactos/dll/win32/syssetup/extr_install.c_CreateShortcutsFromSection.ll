; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/syssetup/extr_install.c_CreateShortcutsFromSection.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/syssetup/extr_install.c_CreateShortcutsFromSection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i32] [i32 46, i32 108, i32 110, i32 107, i32 0], align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @CreateShortcutsFromSection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CreateShortcutsFromSection(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  %21 = load i32, i32* @MAX_PATH, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %13, align 8
  %24 = load i32, i32* @MAX_PATH, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %14, align 8
  %27 = load i32, i32* @MAX_PATH, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %15, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @SetupFindFirstLine(i32 %30, i32 %31, i32* null, i32* %8)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %3
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %83

36:                                               ; preds = %3
  br label %37

37:                                               ; preds = %78, %36
  %38 = call i32 @SetupGetFieldCount(i32* %8)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 3
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %78

42:                                               ; preds = %37
  %43 = call i32 @ARRAYSIZE(i32* %20)
  %44 = call i32 @SetupGetStringFieldW(i32* %8, i32 1, i32* %20, i32 %43, i32* null)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  br label %78

47:                                               ; preds = %42
  %48 = call i32 @ARRAYSIZE(i32* %23)
  %49 = call i32 @SetupGetStringFieldW(i32* %8, i32 2, i32* %23, i32 %48, i32* null)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  br label %78

52:                                               ; preds = %47
  %53 = call i32 @ARRAYSIZE(i32* %26)
  %54 = call i32 @SetupGetStringFieldW(i32* %8, i32 3, i32* %26, i32 %53, i32* null)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  br label %78

57:                                               ; preds = %52
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %58, 4
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = call i32 @SetupGetIntField(i32* %8, i32 4, i32* %10)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %60, %57
  store i32 -1, i32* %10, align 4
  br label %64

64:                                               ; preds = %63, %60
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %65, 5
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  %68 = call i32 @ARRAYSIZE(i32* %29)
  %69 = call i32 @SetupGetStringFieldW(i32* %8, i32 5, i32* %29, i32 %68, i32* null)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %67, %64
  %72 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 0, i32* %72, align 16
  br label %73

73:                                               ; preds = %71, %67
  %74 = call i32 @wcscat(i32* %23, i8* bitcast ([5 x i32]* @.str to i8*))
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @CreateShortcut(i32 %75, i32* %23, i32* %20, i32* %26, i32 %76, i32* %29)
  br label %78

78:                                               ; preds = %73, %56, %51, %46, %41
  %79 = call i64 @SetupFindNextLine(i32* %8, i32* %8)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %37, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* @TRUE, align 4
  store i32 %82, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %83

83:                                               ; preds = %81, %34
  %84 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %84)
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SetupFindFirstLine(i32, i32, i32*, i32*) #2

declare dso_local i32 @SetupGetFieldCount(i32*) #2

declare dso_local i32 @SetupGetStringFieldW(i32*, i32, i32*, i32, i32*) #2

declare dso_local i32 @ARRAYSIZE(i32*) #2

declare dso_local i32 @SetupGetIntField(i32*, i32, i32*) #2

declare dso_local i32 @wcscat(i32*, i8*) #2

declare dso_local i32 @CreateShortcut(i32, i32*, i32*, i32*, i32, i32*) #2

declare dso_local i64 @SetupFindNextLine(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
