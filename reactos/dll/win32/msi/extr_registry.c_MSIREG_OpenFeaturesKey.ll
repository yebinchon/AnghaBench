; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_registry.c_MSIREG_OpenFeaturesKey.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_registry.c_MSIREG_OpenFeaturesKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@KEY_WOW64_64KEY = common dso_local global i32 0, align 4
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@SQUASHED_GUID_SIZE = common dso_local global i32 0, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@ERROR_FUNCTION_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s squashed %s\0A\00", align 1
@MSIINSTALLCONTEXT_MACHINE = common dso_local global i64 0, align 8
@szInstaller_LocalClassesFeat = common dso_local global i32 0, align 4
@MSIINSTALLCONTEXT_USERUNMANAGED = common dso_local global i64 0, align 8
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@szUserFeatures = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to retrieve user SID\0A\00", align 1
@szInstaller_LocalManagedFeat_fmt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MSIREG_OpenFeaturesKey(i32* %0, i32* %1, i64 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %19 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* @KEY_WOW64_64KEY, align 4
  %21 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* @SQUASHED_GUID_SIZE, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %14, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %15, align 8
  %27 = load i32, i32* @MAX_PATH, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %16, align 8
  store i32* null, i32** %17, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @squash_guid(i32* %30, i32* %26)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %5
  %34 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %34, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %87

35:                                               ; preds = %5
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @debugstr_w(i32* %36)
  %38 = call i32 @debugstr_w(i32* %26)
  %39 = call i32 @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* @MSIINSTALLCONTEXT_MACHINE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load i32, i32* @szInstaller_LocalClassesFeat, align 4
  %45 = call i32 @strcpyW(i32* %29, i32 %44)
  %46 = call i32 @strcatW(i32* %29, i32* %26)
  br label %74

47:                                               ; preds = %35
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* @MSIINSTALLCONTEXT_USERUNMANAGED, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i32, i32* @HKEY_CURRENT_USER, align 4
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* @szUserFeatures, align 4
  %54 = call i32 @strcpyW(i32* %29, i32 %53)
  %55 = call i32 @strcatW(i32* %29, i32* %26)
  br label %73

56:                                               ; preds = %47
  %57 = load i32*, i32** %8, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %67, label %59

59:                                               ; preds = %56
  %60 = call i32* (...) @get_user_sid()
  store i32* %60, i32** %17, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = call i32 @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %64, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %87

65:                                               ; preds = %59
  %66 = load i32*, i32** %17, align 8
  store i32* %66, i32** %8, align 8
  br label %67

67:                                               ; preds = %65, %56
  %68 = load i32, i32* @szInstaller_LocalManagedFeat_fmt, align 4
  %69 = load i32*, i32** %8, align 8
  %70 = call i32 @sprintfW(i32* %29, i32 %68, i32* %69, i32* %26)
  %71 = load i32*, i32** %17, align 8
  %72 = call i32 @LocalFree(i32* %71)
  br label %73

73:                                               ; preds = %67, %51
  br label %74

74:                                               ; preds = %73, %43
  %75 = load i64, i64* %11, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %13, align 4
  %80 = load i32*, i32** %10, align 8
  %81 = call i32 @RegCreateKeyExW(i32 %78, i32* %29, i32 0, i32* null, i32 0, i32 %79, i32* null, i32* %80, i32* null)
  store i32 %81, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %87

82:                                               ; preds = %74
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %13, align 4
  %85 = load i32*, i32** %10, align 8
  %86 = call i32 @RegOpenKeyExW(i32 %83, i32* %29, i32 0, i32 %84, i32* %85)
  store i32 %86, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %87

87:                                               ; preds = %82, %77, %62, %33
  %88 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %88)
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @squash_guid(i32*, i32*) #2

declare dso_local i32 @TRACE(i8*, i32, i32) #2

declare dso_local i32 @debugstr_w(i32*) #2

declare dso_local i32 @strcpyW(i32*, i32) #2

declare dso_local i32 @strcatW(i32*, i32*) #2

declare dso_local i32* @get_user_sid(...) #2

declare dso_local i32 @ERR(i8*) #2

declare dso_local i32 @sprintfW(i32*, i32, i32*, i32*) #2

declare dso_local i32 @LocalFree(i32*) #2

declare dso_local i32 @RegCreateKeyExW(i32, i32*, i32, i32*, i32, i32, i32*, i32*, i32*) #2

declare dso_local i32 @RegOpenKeyExW(i32, i32*, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
