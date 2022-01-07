; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/ssstars/extr_settings.c_SaveSettings.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/ssstars/extr_settings.c_SaveSettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Software\\Microsoft\\ScreenSavers\\Ssstars\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@KEY_WRITE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"NumberOfStars\00", align 1
@Settings = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"Speed\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"TypeOfRotation\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"DoBlending\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"FinePerspective\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"EnableFiltering\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"SmoothShading\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SaveSettings() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %4 = call i32 @_T(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @_T(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %6 = load i32, i32* @KEY_WRITE, align 4
  %7 = call i64 @RegCreateKeyEx(i32 %3, i32 %4, i32 0, i32 %5, i32 0, i32 %6, i32* null, i32* %1, i32* null)
  store i64 %7, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = load i64, i64* @ERROR_SUCCESS, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  br label %43

12:                                               ; preds = %0
  %13 = load i32, i32* %1, align 4
  %14 = call i32 @_T(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Settings, i32 0, i32 6), align 4
  %16 = call i32 @SaveDWORD(i32 %13, i32 %14, i32 %15)
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @_T(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Settings, i32 0, i32 5), align 4
  %20 = call i32 @SaveDWORD(i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* %1, align 4
  %22 = call i32 @_T(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Settings, i32 0, i32 4), align 4
  %24 = call i32 @SaveDWORD(i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* %1, align 4
  %26 = call i32 @_T(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Settings, i32 0, i32 3), align 4
  %28 = call i32 @SaveDWORD(i32 %25, i32 %26, i32 %27)
  %29 = load i32, i32* %1, align 4
  %30 = call i32 @_T(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Settings, i32 0, i32 2), align 4
  %32 = call i32 @SaveDWORD(i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* %1, align 4
  %34 = call i32 @_T(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Settings, i32 0, i32 1), align 4
  %36 = call i32 @SaveDWORD(i32 %33, i32 %34, i32 %35)
  %37 = load i32, i32* %1, align 4
  %38 = call i32 @_T(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Settings, i32 0, i32 0), align 4
  %40 = call i32 @SaveDWORD(i32 %37, i32 %38, i32 %39)
  %41 = load i32, i32* %1, align 4
  %42 = call i32 @RegCloseKey(i32 %41)
  br label %43

43:                                               ; preds = %12, %11
  ret void
}

declare dso_local i64 @RegCreateKeyEx(i32, i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @SaveDWORD(i32, i32, i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
