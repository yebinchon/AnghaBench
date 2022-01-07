; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/shimgvw/extr_shimgvw.c_ImageView_SaveSettings.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/shimgvw/extr_shimgvw.c_ImageView_SaveSettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@SW_HIDE = common dso_local global i32 0, align 4
@shiSettings = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@WPF_RESTORETOMAXIMIZED = common dso_local global i32 0, align 4
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Software\\ReactOS\\shimgvw\00", align 1
@REG_OPTION_NON_VOLATILE = common dso_local global i32 0, align 4
@KEY_WRITE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"Settings\00", align 1
@REG_BINARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ImageView_SaveSettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ImageView_SaveSettings(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @SW_HIDE, align 4
  %8 = call i32 @ShowWindow(i32 %6, i32 %7)
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  store i32 24, i32* %9, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @GetWindowPlacement(i32 %10, %struct.TYPE_6__* %4)
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shiSettings, i32 0, i32 4), align 4
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shiSettings, i32 0, i32 3), align 4
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shiSettings, i32 0, i32 2), align 4
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shiSettings, i32 0, i32 1), align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i64 @IsZoomed(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @WPF_RESTORETOMAXIMIZED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br label %33

33:                                               ; preds = %27, %1
  %34 = phi i1 [ true, %1 ], [ %32, %27 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shiSettings, i32 0, i32 0), align 4
  %36 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %37 = call i32 @_T(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @REG_OPTION_NON_VOLATILE, align 4
  %39 = load i32, i32* @KEY_WRITE, align 4
  %40 = call i64 @RegCreateKeyEx(i32 %36, i32 %37, i32 0, i32* null, i32 %38, i32 %39, i32* null, i32* %5, i32* null)
  %41 = load i64, i64* @ERROR_SUCCESS, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %33
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @_T(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @REG_BINARY, align 4
  %47 = call i32 @RegSetValueEx(i32 %44, i32 %45, i32 0, i32 %46, i32 ptrtoint (%struct.TYPE_7__* @shiSettings to i32), i32 4)
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @RegCloseKey(i32 %48)
  br label %50

50:                                               ; preds = %43, %33
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @ShowWindow(i32, i32) #1

declare dso_local i32 @GetWindowPlacement(i32, %struct.TYPE_6__*) #1

declare dso_local i64 @IsZoomed(i32) #1

declare dso_local i64 @RegCreateKeyEx(i32, i32, i32, i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @RegSetValueEx(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
