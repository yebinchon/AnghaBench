; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_system.c_UXTHEME_ApplyTheme.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_system.c_UXTHEME_ApplyTheme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [20 x i8] c"UXTHEME_ApplyTheme\0A\00", align 1
@g_ActiveThemeFile = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Writing theme config to registry\0A\00", align 1
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@szThemeManager = common dso_local global i32 0, align 4
@szThemeActive = common dso_local global i32 0, align 4
@REG_SZ = common dso_local global i32 0, align 4
@szColorName = common dso_local global i32 0, align 4
@szSizeName = common dso_local global i32 0, align 4
@szDllName = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to open theme registry key\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @UXTHEME_ApplyTheme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UXTHEME_ApplyTheme(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i8], align 1
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %7 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i64, i64* @g_ActiveThemeFile, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = call i32 (...) @UXTHEME_BackupSystemMetrics()
  br label %15

15:                                               ; preds = %13, %10, %1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = call i32 @UXTHEME_SetActiveTheme(%struct.TYPE_4__* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @FAILED(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %117

23:                                               ; preds = %15
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = icmp ne %struct.TYPE_4__* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = call i32 (...) @UXTHEME_RestoreSystemMetrics()
  br label %28

28:                                               ; preds = %26, %23
  %29 = call i32 @TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %31 = load i32, i32* @szThemeManager, align 4
  %32 = call i32 @RegCreateKeyW(i32 %30, i32 %31, i32* %4)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %112, label %34

34:                                               ; preds = %28
  %35 = load i64, i64* @g_ActiveThemeFile, align 8
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 49, i32 48
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  store i8 %39, i8* %40, align 1
  %41 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 1
  store i8 0, i8* %41, align 1
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @szThemeActive, align 4
  %44 = load i32, i32* @REG_SZ, align 4
  %45 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %46 = bitcast i8* %45 to i32*
  %47 = call i32 @RegSetValueExW(i32 %42, i32 %43, i32 0, i32 %44, i32* %46, i32 2)
  %48 = load i64, i64* @g_ActiveThemeFile, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %99

50:                                               ; preds = %34
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @szColorName, align 4
  %53 = load i32, i32* @REG_SZ, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i32*
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @lstrlenW(i64 %60)
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = mul i64 %63, 1
  %65 = trunc i64 %64 to i32
  %66 = call i32 @RegSetValueExW(i32 %51, i32 %52, i32 0, i32 %53, i32* %57, i32 %65)
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @szSizeName, align 4
  %69 = load i32, i32* @REG_SZ, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i32*
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @lstrlenW(i64 %76)
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = mul i64 %79, 1
  %81 = trunc i64 %80 to i32
  %82 = call i32 @RegSetValueExW(i32 %67, i32 %68, i32 0, i32 %69, i32* %73, i32 %81)
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @szDllName, align 4
  %85 = load i32, i32* @REG_SZ, align 4
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to i32*
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @lstrlenW(i64 %92)
  %94 = add nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = mul i64 %95, 1
  %97 = trunc i64 %96 to i32
  %98 = call i32 @RegSetValueExW(i32 %83, i32 %84, i32 0, i32 %85, i32* %89, i32 %97)
  br label %109

99:                                               ; preds = %34
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @szColorName, align 4
  %102 = call i32 @RegDeleteValueW(i32 %100, i32 %101)
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* @szSizeName, align 4
  %105 = call i32 @RegDeleteValueW(i32 %103, i32 %104)
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @szDllName, align 4
  %108 = call i32 @RegDeleteValueW(i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %99, %50
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @RegCloseKey(i32 %110)
  br label %114

112:                                              ; preds = %28
  %113 = call i32 @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %109
  %115 = call i32 (...) @UXTHEME_SaveSystemMetrics()
  %116 = load i32, i32* %6, align 4
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %114, %21
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @UXTHEME_BackupSystemMetrics(...) #1

declare dso_local i32 @UXTHEME_SetActiveTheme(%struct.TYPE_4__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @UXTHEME_RestoreSystemMetrics(...) #1

declare dso_local i32 @RegCreateKeyW(i32, i32, i32*) #1

declare dso_local i32 @RegSetValueExW(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @lstrlenW(i64) #1

declare dso_local i32 @RegDeleteValueW(i32, i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @UXTHEME_SaveSystemMetrics(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
