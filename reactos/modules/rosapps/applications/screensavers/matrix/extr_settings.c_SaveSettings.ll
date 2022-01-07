; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/matrix/extr_settings.c_SaveSettings.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/matrix/extr_settings.c_SaveSettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Software\\Catch22\\Matrix Screen Saver\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@KEY_WRITE = common dso_local global i32 0, align 4
@g_nMessageSpeed = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"MessageSpeed\00", align 1
@REG_DWORD = common dso_local global i32 0, align 4
@g_nMatrixSpeed = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"MatrixSpeed\00", align 1
@g_nDensity = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"Density\00", align 1
@g_nFontSize = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"FontSize\00", align 1
@g_fRandomizeMessages = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"Randomize\00", align 1
@g_fFontBold = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"FontBold\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"FontName\00", align 1
@REG_SZ = common dso_local global i32 0, align 4
@g_szFontName = common dso_local global i64 0, align 8
@g_nNumMessages = common dso_local global i32 0, align 4
@g_szMessages = common dso_local global i64* null, align 8
@.str.9 = private unnamed_addr constant [9 x i8] c"Messages\00", align 1
@REG_MULTI_SZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SaveSettings() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = call i32* @malloc(i32 16384)
  store i32* %8, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  store i32* %9, i32** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load i32*, i32** %2, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  br label %126

13:                                               ; preds = %0
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @ZeroMemory(i32* %14, i32 16384)
  %16 = load i32*, i32** %2, align 8
  store i32* %16, i32** %3, align 8
  %17 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %18 = call i32 @_T(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @_T(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @KEY_WRITE, align 4
  %21 = call i32 @RegCreateKeyEx(i32 %17, i32 %18, i32 0, i32 %19, i32 0, i32 %20, i32* null, i32* %1, i32* null)
  %22 = load i64, i64* @g_nMessageSpeed, align 8
  store i64 %22, i64* %7, align 8
  %23 = load i32, i32* %1, align 4
  %24 = call i32 @_T(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i32, i32* @REG_DWORD, align 4
  %26 = bitcast i64* %7 to i32*
  %27 = call i32 @RegSetValueEx(i32 %23, i32 %24, i32 0, i32 %25, i32* %26, i32 8)
  %28 = load i64, i64* @g_nMatrixSpeed, align 8
  store i64 %28, i64* %7, align 8
  %29 = load i32, i32* %1, align 4
  %30 = call i32 @_T(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %31 = load i32, i32* @REG_DWORD, align 4
  %32 = bitcast i64* %7 to i32*
  %33 = call i32 @RegSetValueEx(i32 %29, i32 %30, i32 0, i32 %31, i32* %32, i32 8)
  %34 = load i64, i64* @g_nDensity, align 8
  store i64 %34, i64* %7, align 8
  %35 = load i32, i32* %1, align 4
  %36 = call i32 @_T(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %37 = load i32, i32* @REG_DWORD, align 4
  %38 = bitcast i64* %7 to i32*
  %39 = call i32 @RegSetValueEx(i32 %35, i32 %36, i32 0, i32 %37, i32* %38, i32 8)
  %40 = load i64, i64* @g_nFontSize, align 8
  store i64 %40, i64* %7, align 8
  %41 = load i32, i32* %1, align 4
  %42 = call i32 @_T(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %43 = load i32, i32* @REG_DWORD, align 4
  %44 = bitcast i64* %7 to i32*
  %45 = call i32 @RegSetValueEx(i32 %41, i32 %42, i32 0, i32 %43, i32* %44, i32 8)
  %46 = load i64, i64* @g_fRandomizeMessages, align 8
  store i64 %46, i64* %7, align 8
  %47 = load i32, i32* %1, align 4
  %48 = call i32 @_T(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %49 = load i32, i32* @REG_DWORD, align 4
  %50 = bitcast i64* %7 to i32*
  %51 = call i32 @RegSetValueEx(i32 %47, i32 %48, i32 0, i32 %49, i32* %50, i32 8)
  %52 = load i64, i64* @g_fFontBold, align 8
  store i64 %52, i64* %7, align 8
  %53 = load i32, i32* %1, align 4
  %54 = call i32 @_T(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %55 = load i32, i32* @REG_DWORD, align 4
  %56 = bitcast i64* %7 to i32*
  %57 = call i32 @RegSetValueEx(i32 %53, i32 %54, i32 0, i32 %55, i32* %56, i32 8)
  %58 = load i32, i32* %1, align 4
  %59 = call i32 @_T(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %60 = load i32, i32* @REG_SZ, align 4
  %61 = load i64, i64* @g_szFontName, align 8
  %62 = inttoptr i64 %61 to i32*
  %63 = load i64, i64* @g_szFontName, align 8
  %64 = call i32 @lstrlen(i64 %63)
  %65 = sext i32 %64 to i64
  %66 = mul i64 %65, 4
  %67 = trunc i64 %66 to i32
  %68 = call i32 @RegSetValueEx(i32 %58, i32 %59, i32 0, i32 %60, i32* %62, i32 %67)
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %107, %13
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @g_nNumMessages, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %110

73:                                               ; preds = %69
  %74 = load i64*, i64** @g_szMessages, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @lstrlen(i64 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %106

82:                                               ; preds = %73
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %83, %84
  %86 = icmp slt i32 %85, 4096
  br i1 %86, label %87, label %106

87:                                               ; preds = %82
  %88 = load i32*, i32** %3, align 8
  %89 = load i64*, i64** @g_szMessages, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sub nsw i32 4096, %94
  %96 = call i32 @lstrcpyn(i32* %88, i64 %93, i32 %95)
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 1
  %99 = load i32, i32* %4, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  %103 = load i32*, i32** %3, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  store i32* %105, i32** %3, align 8
  br label %106

106:                                              ; preds = %87, %82, %73
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %5, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %5, align 4
  br label %69

110:                                              ; preds = %69
  %111 = load i32, i32* %4, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %4, align 4
  %113 = load i32, i32* %1, align 4
  %114 = call i32 @_T(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %115 = load i32, i32* @REG_MULTI_SZ, align 4
  %116 = load i32*, i32** %2, align 8
  %117 = load i32, i32* %4, align 4
  %118 = sext i32 %117 to i64
  %119 = mul i64 %118, 4
  %120 = trunc i64 %119 to i32
  %121 = call i32 @RegSetValueEx(i32 %113, i32 %114, i32 0, i32 %115, i32* %116, i32 %120)
  %122 = load i32, i32* %1, align 4
  %123 = call i32 @RegCloseKey(i32 %122)
  %124 = load i32*, i32** %2, align 8
  %125 = call i32 @free(i32* %124)
  br label %126

126:                                              ; preds = %110, %12
  ret void
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @ZeroMemory(i32*, i32) #1

declare dso_local i32 @RegCreateKeyEx(i32, i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @RegSetValueEx(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @lstrlen(i64) #1

declare dso_local i32 @lstrcpyn(i32*, i64, i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
