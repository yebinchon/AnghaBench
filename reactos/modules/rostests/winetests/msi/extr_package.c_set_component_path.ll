; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_package.c_set_component_path.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_package.c_set_component_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@is_wow64 = common dso_local global i64 0, align 8
@KEY_WOW64_64KEY = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@MSIINSTALLCONTEXT_MACHINE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"3D0DAE300FACA1300AD792060BCDAA92\00", align 1
@.str.1 = private unnamed_addr constant [84 x i8] c"SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Installer\\UserData\\S-1-5-18\\Components\\%s\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"SOFTWARE\\Classes\\Installer\\Products\\3D0DAE300FACA1300AD792060BCDAA92\00", align 1
@MSIINSTALLCONTEXT_USERUNMANAGED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"7D2F387510109040002000060BECB6AB\00", align 1
@.str.4 = private unnamed_addr constant [78 x i8] c"SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Installer\\UserData\\%s\\Components\\%s\00", align 1
@.str.5 = private unnamed_addr constant [107 x i8] c"SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Installer\\%s\\Installer\\Products\\7D2F387510109040002000060BECB6AB\00", align 1
@MSIINSTALLCONTEXT_USERMANAGED = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [115 x i8] c"SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Installer\\Managed\\%s\\Installer\\Products\\7D2F387510109040002000060BECB6AB\00", align 1
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@CURR_DIR = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@REG_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i8*, i8*, i32)* @set_component_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_component_path(i8* %0, i64 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %21 = load i32, i32* @MAX_PATH, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %11, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %12, align 8
  %25 = load i32, i32* @MAX_PATH, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %13, align 8
  %28 = load i32, i32* @MAX_PATH, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %14, align 8
  %31 = load i32, i32* @MAX_PATH, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %15, align 8
  %34 = load i32, i32* @MAX_PATH, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca i8, i64 %35, align 16
  store i64 %35, i64* %16, align 8
  %37 = load i32, i32* @MAX_PATH, align 4
  %38 = zext i32 %37 to i64
  %39 = alloca i8, i64 %38, align 16
  store i64 %38, i64* %17, align 8
  store i8* null, i8** %18, align 8
  %40 = load i32, i32* @KEY_ALL_ACCESS, align 4
  store i32 %40, i32* %20, align 4
  %41 = load i64, i64* @is_wow64, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %5
  %44 = load i32, i32* @KEY_WOW64_64KEY, align 4
  %45 = load i32, i32* %20, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %20, align 4
  br label %47

47:                                               ; preds = %43, %5
  %48 = load i32, i32* @CP_ACP, align 4
  %49 = load i8*, i8** %8, align 8
  %50 = load i32, i32* @MAX_PATH, align 4
  %51 = call i32 @MultiByteToWideChar(i32 %48, i32 0, i8* %49, i32 -1, i32* %24, i32 %50)
  %52 = call i32 @squash_guid(i32* %24, i32* %27)
  %53 = load i32, i32* @CP_ACP, align 4
  %54 = load i32, i32* @MAX_PATH, align 4
  %55 = call i32 @WideCharToMultiByte(i32 %53, i32 0, i32* %27, i32 -1, i8* %30, i32 %54, i32* null, i32* null)
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* @MSIINSTALLCONTEXT_MACHINE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %47
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  %60 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %33, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  %61 = call i32 @lstrcpyA(i8* %36, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0))
  br label %82

62:                                               ; preds = %47
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* @MSIINSTALLCONTEXT_USERUNMANAGED, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8** %18, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %33, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.4, i64 0, i64 0), i8* %67, i8* %30)
  %69 = load i8*, i8** %9, align 8
  %70 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %36, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.5, i64 0, i64 0), i8* %69)
  br label %81

71:                                               ; preds = %62
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* @MSIINSTALLCONTEXT_USERMANAGED, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8** %18, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %33, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.4, i64 0, i64 0), i8* %76, i8* %30)
  %78 = load i8*, i8** %9, align 8
  %79 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %36, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.6, i64 0, i64 0), i8* %78)
  br label %80

80:                                               ; preds = %75, %71
  br label %81

81:                                               ; preds = %80, %66
  br label %82

82:                                               ; preds = %81, %59
  %83 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %84 = load i32, i32* %20, align 4
  %85 = call i32 @RegCreateKeyExA(i32 %83, i8* %33, i32 0, i32* null, i32 0, i32 %84, i32* null, i32* %19, i32* null)
  %86 = load i8*, i8** @CURR_DIR, align 8
  %87 = call i32 @lstrcpyA(i8* %39, i8* %86)
  %88 = call i32 @lstrcatA(i8* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %82
  %92 = load i8*, i8** %6, align 8
  %93 = call i32 @lstrcatA(i8* %39, i8* %92)
  br label %94

94:                                               ; preds = %91, %82
  %95 = load i32, i32* %19, align 4
  %96 = load i8*, i8** %18, align 8
  %97 = load i32, i32* @REG_SZ, align 4
  %98 = ptrtoint i8* %39 to i32
  %99 = call i32 @lstrlenA(i8* %39)
  %100 = call i32 @RegSetValueExA(i32 %95, i8* %96, i32 0, i32 %97, i32 %98, i32 %99)
  %101 = load i32, i32* %19, align 4
  %102 = call i32 @RegCloseKey(i32 %101)
  %103 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %104 = load i32, i32* %20, align 4
  %105 = call i32 @RegCreateKeyExA(i32 %103, i8* %36, i32 0, i32* null, i32 0, i32 %104, i32* null, i32* %19, i32* null)
  %106 = load i32, i32* %19, align 4
  %107 = call i32 @RegCloseKey(i32 %106)
  %108 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %108)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #2

declare dso_local i32 @squash_guid(i32*, i32*) #2

declare dso_local i32 @WideCharToMultiByte(i32, i32, i32*, i32, i8*, i32, i32*, i32*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #2

declare dso_local i32 @lstrcpyA(i8*, i8*) #2

declare dso_local i32 @RegCreateKeyExA(i32, i8*, i32, i32*, i32, i32, i32*, i32*, i32*) #2

declare dso_local i32 @lstrcatA(i8*, i8*) #2

declare dso_local i32 @RegSetValueExA(i32, i8*, i32, i32, i32, i32) #2

declare dso_local i32 @lstrlenA(i8*) #2

declare dso_local i32 @RegCloseKey(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
