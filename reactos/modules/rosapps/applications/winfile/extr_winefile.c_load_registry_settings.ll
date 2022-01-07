; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_load_registry_settings.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_load_registry_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i8* }

@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@registry_key = common dso_local global i32 0, align 4
@KEY_QUERY_VALUE = common dso_local global i32 0, align 4
@reg_start_x = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@CW_USEDEFAULT = common dso_local global i8* null, align 8
@reg_start_y = common dso_local global i32 0, align 4
@reg_width = common dso_local global i32 0, align 4
@reg_height = common dso_local global i32 0, align 4
@reg_logfont = common dso_local global i32 0, align 4
@DEFAULT_GUI_FONT = common dso_local global i32 0, align 4
@Globals = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @load_registry_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_registry_settings(%struct.TYPE_4__* noalias sret %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %7 = load i32, i32* @registry_key, align 4
  %8 = load i32, i32* @KEY_QUERY_VALUE, align 4
  %9 = call i32 @RegOpenKeyExW(i32 %6, i32 %7, i32 0, i32 %8, i32* %4)
  store i32 4, i32* %2, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @reg_start_x, align 4
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 3
  %13 = ptrtoint i8** %12 to i32
  %14 = call i64 @RegQueryValueExW(i32 %10, i32 %11, i32* null, i32* %3, i32 %13, i32* %2)
  %15 = load i64, i64* @ERROR_SUCCESS, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i8*, i8** @CW_USEDEFAULT, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 3
  store i8* %18, i8** %19, align 8
  br label %20

20:                                               ; preds = %17, %1
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @reg_start_y, align 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 2
  %24 = ptrtoint i8** %23 to i32
  %25 = call i64 @RegQueryValueExW(i32 %21, i32 %22, i32* null, i32* %3, i32 %24, i32* %2)
  %26 = load i64, i64* @ERROR_SUCCESS, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i8*, i8** @CW_USEDEFAULT, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 2
  store i8* %29, i8** %30, align 8
  br label %31

31:                                               ; preds = %28, %20
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @reg_width, align 4
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 1
  %35 = ptrtoint i8** %34 to i32
  %36 = call i64 @RegQueryValueExW(i32 %32, i32 %33, i32* null, i32* %3, i32 %35, i32* %2)
  %37 = load i64, i64* @ERROR_SUCCESS, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i8*, i8** @CW_USEDEFAULT, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 1
  store i8* %40, i8** %41, align 8
  br label %42

42:                                               ; preds = %39, %31
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @reg_height, align 4
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 0
  %46 = ptrtoint i8** %45 to i32
  %47 = call i64 @RegQueryValueExW(i32 %43, i32 %44, i32* null, i32* %3, i32 %46, i32* %2)
  %48 = load i64, i64* @ERROR_SUCCESS, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i8*, i8** @CW_USEDEFAULT, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 0
  store i8* %51, i8** %52, align 8
  br label %53

53:                                               ; preds = %50, %42
  store i32 4, i32* %2, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @reg_logfont, align 4
  %56 = ptrtoint i32* %5 to i32
  %57 = call i64 @RegQueryValueExW(i32 %54, i32 %55, i32* null, i32* %3, i32 %56, i32* %2)
  %58 = load i64, i64* @ERROR_SUCCESS, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load i32, i32* @DEFAULT_GUI_FONT, align 4
  %62 = call i32 @GetStockObject(i32 %61)
  %63 = call i32 @GetObjectW(i32 %62, i32 4, i32* %5)
  br label %64

64:                                               ; preds = %60, %53
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @RegCloseKey(i32 %65)
  %67 = call i32 @CreateFontIndirectW(i32* %5)
  store i32 %67, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @Globals, i32 0, i32 0), align 4
  ret void
}

declare dso_local i32 @RegOpenKeyExW(i32, i32, i32, i32, i32*) #1

declare dso_local i64 @RegQueryValueExW(i32, i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @GetObjectW(i32, i32, i32*) #1

declare dso_local i32 @GetStockObject(i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @CreateFontIndirectW(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
