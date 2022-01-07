; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_save_registry_settings.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_save_registry_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i64, i64 }

@Globals = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@registry_key = common dso_local global i32 0, align 4
@KEY_SET_VALUE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@REG_OPTION_NON_VOLATILE = common dso_local global i32 0, align 4
@reg_start_x = common dso_local global i32 0, align 4
@REG_DWORD = common dso_local global i32 0, align 4
@reg_start_y = common dso_local global i32 0, align 4
@reg_width = common dso_local global i32 0, align 4
@reg_height = common dso_local global i32 0, align 4
@reg_logfont = common dso_local global i32 0, align 4
@REG_BINARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @save_registry_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @save_registry_settings() #0 {
  %1 = alloca %struct.TYPE_6__, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  store i32 40, i32* %6, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 1), align 4
  %8 = call i32 @GetWindowInfo(i32 %7, %struct.TYPE_6__* %1)
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %11, %14
  store i64 %15, i64* %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %18, %21
  store i64 %22, i64* %4, align 8
  %23 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %24 = load i32, i32* @registry_key, align 4
  %25 = load i32, i32* @KEY_SET_VALUE, align 4
  %26 = call i64 @RegOpenKeyExW(i32 %23, i32 %24, i32 0, i32 %25, i32* %2)
  %27 = load i64, i64* @ERROR_SUCCESS, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %0
  %30 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %31 = load i32, i32* @registry_key, align 4
  %32 = load i32, i32* @REG_OPTION_NON_VOLATILE, align 4
  %33 = load i32, i32* @KEY_SET_VALUE, align 4
  %34 = call i64 @RegCreateKeyExW(i32 %30, i32 %31, i32 0, i32* null, i32 %32, i32 %33, i32* null, i32* %2, i32* null)
  %35 = load i64, i64* @ERROR_SUCCESS, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %73

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38, %0
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* @reg_start_x, align 4
  %42 = load i32, i32* @REG_DWORD, align 4
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = ptrtoint i64* %44 to i32
  %46 = call i32 @RegSetValueExW(i32 %40, i32 %41, i32 0, i32 %42, i32 %45, i32 4)
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* @reg_start_y, align 4
  %49 = load i32, i32* @REG_DWORD, align 4
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = ptrtoint i64* %51 to i32
  %53 = call i32 @RegSetValueExW(i32 %47, i32 %48, i32 0, i32 %49, i32 %52, i32 4)
  %54 = load i32, i32* %2, align 4
  %55 = load i32, i32* @reg_width, align 4
  %56 = load i32, i32* @REG_DWORD, align 4
  %57 = ptrtoint i64* %3 to i32
  %58 = call i32 @RegSetValueExW(i32 %54, i32 %55, i32 0, i32 %56, i32 %57, i32 4)
  %59 = load i32, i32* %2, align 4
  %60 = load i32, i32* @reg_height, align 4
  %61 = load i32, i32* @REG_DWORD, align 4
  %62 = ptrtoint i64* %4 to i32
  %63 = call i32 @RegSetValueExW(i32 %59, i32 %60, i32 0, i32 %61, i32 %62, i32 4)
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 0), align 4
  %65 = call i32 @GetObjectW(i32 %64, i32 4, i32* %5)
  %66 = load i32, i32* %2, align 4
  %67 = load i32, i32* @reg_logfont, align 4
  %68 = load i32, i32* @REG_BINARY, align 4
  %69 = ptrtoint i32* %5 to i32
  %70 = call i32 @RegSetValueExW(i32 %66, i32 %67, i32 0, i32 %68, i32 %69, i32 4)
  %71 = load i32, i32* %2, align 4
  %72 = call i32 @RegCloseKey(i32 %71)
  br label %73

73:                                               ; preds = %39, %37
  ret void
}

declare dso_local i32 @GetWindowInfo(i32, %struct.TYPE_6__*) #1

declare dso_local i64 @RegOpenKeyExW(i32, i32, i32, i32, i32*) #1

declare dso_local i64 @RegCreateKeyExW(i32, i32, i32, i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @RegSetValueExW(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GetObjectW(i32, i32, i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
