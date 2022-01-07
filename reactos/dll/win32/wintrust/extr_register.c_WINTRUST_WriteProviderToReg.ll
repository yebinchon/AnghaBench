; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wintrust/extr_register.c_WINTRUST_WriteProviderToReg.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wintrust/extr_register.c_WINTRUST_WriteProviderToReg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@WINTRUST_WriteProviderToReg.Function = internal constant [10 x i8] c"$Function\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@Trust = common dso_local global i8* null, align 8
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@KEY_WRITE = common dso_local global i32 0, align 4
@Dll = common dso_local global i8* null, align 8
@REG_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i64, i64)* @WINTRUST_WriteProviderToReg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @WINTRUST_WriteProviderToReg(i8* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = bitcast %struct.TYPE_3__* %6 to { i64, i64 }*
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 0
  store i64 %2, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 1
  store i64 %3, i64* %16, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %21 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %21, i64* %12, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 0
  store i8 0, i8* %22, align 16
  %23 = load i8*, i8** @Trust, align 8
  %24 = call i32 @lstrcatW(i8* %20, i8* %23)
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @lstrcatW(i8* %20, i8* %25)
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @lstrcatW(i8* %20, i8* %27)
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %4
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32, %4
  %37 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  store i64 %37, i64* %5, align 8
  store i32 1, i32* %13, align 4
  br label %83

38:                                               ; preds = %32
  %39 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %40 = load i32, i32* @KEY_WRITE, align 4
  %41 = call i64 @RegCreateKeyExW(i32 %39, i8* %20, i32 0, i32* null, i32 0, i32 %40, i32* null, i32* %11, i32* null)
  store i64 %41, i64* %12, align 8
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* @ERROR_SUCCESS, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %79

46:                                               ; preds = %38
  %47 = load i32, i32* %11, align 4
  %48 = load i8*, i8** @Dll, align 8
  %49 = load i32, i32* @REG_SZ, align 4
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i32*
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @lstrlenW(i64 %54)
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 1
  %59 = trunc i64 %58 to i32
  %60 = call i64 @RegSetValueExW(i32 %47, i8* %48, i32 0, i32 %49, i32* %52, i32 %59)
  store i64 %60, i64* %12, align 8
  %61 = load i64, i64* %12, align 8
  %62 = load i64, i64* @ERROR_SUCCESS, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %46
  br label %79

65:                                               ; preds = %46
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @REG_SZ, align 4
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to i32*
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @lstrlenW(i64 %72)
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = mul i64 %75, 1
  %77 = trunc i64 %76 to i32
  %78 = call i64 @RegSetValueExW(i32 %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @WINTRUST_WriteProviderToReg.Function, i64 0, i64 0), i32 0, i32 %67, i32* %70, i32 %77)
  store i64 %78, i64* %12, align 8
  br label %79

79:                                               ; preds = %65, %64, %45
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @RegCloseKey(i32 %80)
  %82 = load i64, i64* %12, align 8
  store i64 %82, i64* %5, align 8
  store i32 1, i32* %13, align 4
  br label %83

83:                                               ; preds = %79, %36
  %84 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %84)
  %85 = load i64, i64* %5, align 8
  ret i64 %85
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lstrcatW(i8*, i8*) #2

declare dso_local i64 @RegCreateKeyExW(i32, i8*, i32, i32*, i32, i32, i32*, i32*, i32*) #2

declare dso_local i64 @RegSetValueExW(i32, i8*, i32, i32, i32*, i32) #2

declare dso_local i32 @lstrlenW(i64) #2

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
