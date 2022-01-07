; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_classes.c_HCR_GetClassNameA.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_classes.c_HCR_GetClassNameA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"LocalizedString\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TRUE = common dso_local global i64 0, align 8
@CLSID_ShellDesktop = common dso_local global i32 0, align 4
@shell32_hInstance = common dso_local global i32 0, align 4
@IDS_DESKTOP = common dso_local global i32 0, align 4
@CLSID_MyComputer = common dso_local global i32 0, align 4
@IDS_MYCOMPUTER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"-- (%s)\0A\00", align 1
@CLSID_AdminFolderShortcut = common dso_local global i32 0, align 4
@CLSID_ControlPanel = common dso_local global i32 0, align 4
@CLSID_MyDocuments = common dso_local global i32 0, align 4
@CLSID_RecycleBin = common dso_local global i32 0, align 4
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@IDS_ADMINISTRATIVETOOLS = common dso_local global i32 0, align 4
@IDS_CONTROLPANEL = common dso_local global i32 0, align 4
@IDS_PERSONAL = common dso_local global i32 0, align 4
@IDS_RECYCLEBIN_FOLDER_NAME = common dso_local global i32 0, align 4
@RRF_RT_REG_SZ = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HCR_GetClassNameA(i32 %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i64, i64* @FALSE, align 8
  store i64 %10, i64* %8, align 8
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %9, align 4
  %12 = load i64*, i64** %5, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @HCR_RegOpenClassIDKey(i32 %14, i32* %7)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = load i64*, i64** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @RegLoadMUIStringA(i32 %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64* %19, i32 %20, i32* null, i32 0, i32* null)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  %25 = load i64*, i64** %5, align 8
  %26 = ptrtoint i64* %25 to i32
  %27 = call i32 @RegQueryValueExA(i32 %24, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 0, i32* null, i32 %26, i32* %6)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %23, %17
  %30 = load i64, i64* @TRUE, align 8
  store i64 %30, i64* %8, align 8
  br label %31

31:                                               ; preds = %29, %23
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @RegCloseKey(i32 %32)
  br label %34

34:                                               ; preds = %31, %3
  %35 = load i64, i64* %8, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i64*, i64** %5, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %72, label %42

42:                                               ; preds = %37, %34
  %43 = load i32, i32* %4, align 4
  %44 = call i64 @IsEqualIID(i32 %43, i32* @CLSID_ShellDesktop)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  %47 = load i32, i32* @shell32_hInstance, align 4
  %48 = load i32, i32* @IDS_DESKTOP, align 4
  %49 = load i64*, i64** %5, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i64 @LoadStringA(i32 %47, i32 %48, i64* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i64, i64* @TRUE, align 8
  store i64 %54, i64* %8, align 8
  br label %55

55:                                               ; preds = %53, %46
  br label %71

56:                                               ; preds = %42
  %57 = load i32, i32* %4, align 4
  %58 = call i64 @IsEqualIID(i32 %57, i32* @CLSID_MyComputer)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %56
  %61 = load i32, i32* @shell32_hInstance, align 4
  %62 = load i32, i32* @IDS_MYCOMPUTER, align 4
  %63 = load i64*, i64** %5, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i64 @LoadStringA(i32 %61, i32 %62, i64* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i64, i64* @TRUE, align 8
  store i64 %68, i64* %8, align 8
  br label %69

69:                                               ; preds = %67, %60
  br label %70

70:                                               ; preds = %69, %56
  br label %71

71:                                               ; preds = %70, %55
  br label %72

72:                                               ; preds = %71, %37
  %73 = load i64*, i64** %5, align 8
  %74 = call i32 @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64* %73)
  %75 = load i64, i64* %8, align 8
  ret i64 %75
}

declare dso_local i64 @HCR_RegOpenClassIDKey(i32, i32*) #1

declare dso_local i32 @RegLoadMUIStringA(i32, i8*, i64*, i32, i32*, i32, i32*) #1

declare dso_local i32 @RegQueryValueExA(i32, i8*, i32, i32*, i32, i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i64 @IsEqualIID(i32, i32*) #1

declare dso_local i64 @LoadStringA(i32, i32, i64*, i32) #1

declare dso_local i32 @TRACE(i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
