; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/apphelp/extr_layerapi.c_setLayerValue.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/apphelp/extr_layerapi.c_setLayerValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"Software\\Microsoft\\Windows NT\\CurrentVersion\\AppCompatFlags\\Layers\00", align 1
@KEY_SET_VALUE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@REG_SZ = common dso_local global i32 0, align 4
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @setLayerValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setLayerValue(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32* null, i32** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  br label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @HKEY_CURRENT_USER, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  %17 = call i32 (...) @QueryFlag()
  %18 = load i32, i32* @KEY_SET_VALUE, align 4
  %19 = or i32 %17, %18
  %20 = call i64 @RegCreateKeyExA(i32 %16, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 0, i32* null, i32 0, i32 %19, i32* null, i32** %7, i32* null)
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @ERROR_SUCCESS, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %53

24:                                               ; preds = %15
  %25 = load i8*, i8** %6, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load i32*, i32** %7, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* @REG_SZ, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = bitcast i8* %31 to i32*
  %33 = load i8*, i8** %6, align 8
  %34 = call i64 @strlen(i8* %33)
  %35 = add nsw i64 %34, 1
  %36 = call i64 @RegSetValueExA(i32* %28, i8* %29, i32 0, i32 %30, i32* %32, i64 %35)
  store i64 %36, i64* %8, align 8
  br label %50

37:                                               ; preds = %24
  %38 = load i32*, i32** %7, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = call i64 @RegDeleteValueA(i32* %38, i8* %39)
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i64, i64* @ERROR_SUCCESS, align 8
  br label %48

46:                                               ; preds = %37
  %47 = load i64, i64* %8, align 8
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i64 [ %45, %44 ], [ %47, %46 ]
  store i64 %49, i64* %8, align 8
  br label %50

50:                                               ; preds = %48, %27
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @RegCloseKey(i32* %51)
  br label %53

53:                                               ; preds = %50, %15
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* @ERROR_SUCCESS, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  ret i32 %57
}

declare dso_local i64 @RegCreateKeyExA(i32, i8*, i32, i32*, i32, i32, i32*, i32**, i32*) #1

declare dso_local i32 @QueryFlag(...) #1

declare dso_local i64 @RegSetValueExA(i32*, i8*, i32, i32, i32*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @RegDeleteValueA(i32*, i8*) #1

declare dso_local i32 @RegCloseKey(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
