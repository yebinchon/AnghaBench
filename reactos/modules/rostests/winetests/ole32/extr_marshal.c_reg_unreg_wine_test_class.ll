; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_marshal.c_reg_unreg_wine_test_class.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_marshal.c_reg_unreg_wine_test_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLSID_WineTest = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"StringFromCLSID\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"CLSID\\\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"\\InprocHandler32\00", align 1
@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@KEY_SET_VALUE = common dso_local global i32 0, align 4
@ERROR_ACCESS_DENIED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Not authorized to modify the Classes key\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"RegCreateKeyEx failed with error %d\0A\00", align 1
@REG_SZ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"\22ole32.dll\22\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"RegSetValueEx failed with error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @reg_unreg_wine_test_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reg_unreg_wine_test_class(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca [256 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %10 = call i32 @StringFromCLSID(i32* @CLSID_WineTest, i32* %6)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @ok_ole_success(i32 %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %14 = call i32 @strcpy(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* @CP_ACP, align 4
  %16 = load i32, i32* %6, align 4
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %19 = call i32 @strlen(i8* %18)
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %17, i64 %20
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %23 = call i32 @strlen(i8* %22)
  %24 = sext i32 %23 to i64
  %25 = sub i64 256, %24
  %26 = trunc i64 %25 to i32
  %27 = call i32 @WideCharToMultiByte(i32 %15, i32 0, i32 %16, i32 -1, i8* %21, i32 %26, i32* null, i32* null)
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @CoTaskMemFree(i32 %28)
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %31 = call i32 @strcat(i8* %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i64, i64* %3, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %77

34:                                               ; preds = %1
  %35 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %37 = load i32, i32* @KEY_SET_VALUE, align 4
  %38 = call i32 @RegCreateKeyExA(i32 %35, i8* %36, i32 0, i32* null, i32 0, i32 %37, i32* null, i32* %7, i32* %8)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @ERROR_ACCESS_DENIED, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = call i32 @skip(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %44 = load i32, i32* @E_FAIL, align 4
  store i32 %44, i32* %2, align 4
  br label %88

45:                                               ; preds = %34
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @ERROR_SUCCESS, align 4
  %48 = icmp eq i32 %46, %47
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @ok(i32 %49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @ERROR_SUCCESS, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = load i32, i32* @E_FAIL, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %55, %45
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @REG_SZ, align 4
  %60 = call i32 @strlen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %61 = add nsw i32 %60, 1
  %62 = call i32 @RegSetValueExA(i32 %58, i32* null, i32 0, i32 %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @ERROR_SUCCESS, align 4
  %65 = icmp eq i32 %63, %64
  %66 = zext i1 %65 to i32
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @ok(i32 %66, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @ERROR_SUCCESS, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %57
  %73 = load i32, i32* @E_FAIL, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %72, %57
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @RegCloseKey(i32 %75)
  br label %86

77:                                               ; preds = %1
  %78 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %79 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %80 = call i32 @RegDeleteKeyA(i32 %78, i8* %79)
  %81 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %82 = call i8* @strrchr(i8* %81, i8 signext 92)
  store i8 0, i8* %82, align 1
  %83 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %84 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %85 = call i32 @RegDeleteKeyA(i32 %83, i8* %84)
  br label %86

86:                                               ; preds = %77, %74
  %87 = load i32, i32* %4, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %86, %42
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @StringFromCLSID(i32*, i32*) #1

declare dso_local i32 @ok_ole_success(i32, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i32, i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @CoTaskMemFree(i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @RegCreateKeyExA(i32, i8*, i32, i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @RegSetValueExA(i32, i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @RegDeleteKeyA(i32, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
