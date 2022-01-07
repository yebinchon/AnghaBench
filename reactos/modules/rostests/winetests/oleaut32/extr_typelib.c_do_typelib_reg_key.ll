; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_typelib.c_do_typelib_reg_key.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_typelib.c_do_typelib_reg_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@do_typelib_reg_key.typelibW = internal constant [9 x i8] c"Typelib\\\00", align 1
@do_typelib_reg_key.formatW = internal constant [15 x i8] c"\\%u.%u\\0\\win%u\00", align 1
@do_typelib_reg_key.format2W = internal constant [13 x i8] c"%s_%u_%u.dll\00", align 1
@TRUE = common dso_local global i64 0, align 8
@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"SHDeleteKey failed\0A\00", align 1
@KEY_WRITE = common dso_local global i32 0, align 4
@ERROR_CALL_NOT_IMPLEMENTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"W-calls are not implemented\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"RegCreateKeyExW failed: %u\0A\00", align 1
@REG_SZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"RegSetValueExW failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, i64, i64, i64, i64)* @do_typelib_reg_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @do_typelib_reg_key(i32* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca [128 x i8], align 16
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %18 = load i64, i64* @TRUE, align 8
  store i64 %18, i64* %16, align 8
  %19 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %20 = call i32 @memcpy(i8* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @do_typelib_reg_key.typelibW, i64 0, i64 0), i32 9)
  %21 = load i32*, i32** %8, align 8
  %22 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %23 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %24 = call i32 @lstrlenW(i8* %23)
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %22, i64 %25
  %27 = call i32 @StringFromGUID2(i32* %21, i8* %26, i32 40)
  %28 = load i64, i64* %13, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %6
  %31 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %32 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %33 = call i64 @myRegDeleteTreeW(i32 %31, i8* %32, i32 0)
  %34 = load i64, i64* @ERROR_SUCCESS, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @ok(i32 %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %38 = load i64, i64* @TRUE, align 8
  store i64 %38, i64* %7, align 8
  br label %94

39:                                               ; preds = %6
  %40 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %41 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %42 = call i32 @lstrlenW(i8* %41)
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %40, i64 %43
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* %11, align 8
  %48 = call i32 @wsprintfW(i8* %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @do_typelib_reg_key.formatW, i64 0, i64 0), i64 %45, i64 %46, i64 %47)
  %49 = call i32 @SetLastError(i32 -559038737)
  %50 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %51 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %52 = load i32, i32* @KEY_WRITE, align 4
  %53 = call i64 @RegCreateKeyExW(i32 %50, i8* %51, i32 0, i32* null, i32 0, i32 %52, i32* null, i32* %15, i32* null)
  store i64 %53, i64* %17, align 8
  %54 = call i64 (...) @GetLastError()
  %55 = load i64, i64* @ERROR_CALL_NOT_IMPLEMENTED, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %39
  %58 = call i32 @win_skip(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i64, i64* @FALSE, align 8
  store i64 %59, i64* %7, align 8
  br label %94

60:                                               ; preds = %39
  %61 = load i64, i64* %17, align 8
  %62 = load i64, i64* @ERROR_SUCCESS, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i64, i64* %17, align 8
  %66 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %65)
  %67 = load i64, i64* @FALSE, align 8
  store i64 %67, i64* %7, align 8
  br label %94

68:                                               ; preds = %60
  %69 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %70 = load i64, i64* %12, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* %10, align 8
  %73 = call i32 @wsprintfW(i8* %69, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @do_typelib_reg_key.format2W, i64 0, i64 0), i64 %70, i64 %71, i64 %72)
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* @REG_SZ, align 4
  %76 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %77 = bitcast i8* %76 to i32*
  %78 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %79 = call i32 @lstrlenW(i8* %78)
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = mul i64 %81, 1
  %83 = trunc i64 %82 to i32
  %84 = call i64 @RegSetValueExW(i32 %74, i32* null, i32 0, i32 %75, i32* %77, i32 %83)
  %85 = load i64, i64* @ERROR_SUCCESS, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %68
  %88 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %89 = load i64, i64* @FALSE, align 8
  store i64 %89, i64* %16, align 8
  br label %90

90:                                               ; preds = %87, %68
  %91 = load i32, i32* %15, align 4
  %92 = call i32 @RegCloseKey(i32 %91)
  %93 = load i64, i64* %16, align 8
  store i64 %93, i64* %7, align 8
  br label %94

94:                                               ; preds = %90, %64, %57, %30
  %95 = load i64, i64* %7, align 8
  ret i64 %95
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @StringFromGUID2(i32*, i8*, i32) #1

declare dso_local i32 @lstrlenW(i8*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i64 @myRegDeleteTreeW(i32, i8*, i32) #1

declare dso_local i32 @wsprintfW(i8*, i8*, i64, i64, i64) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @RegCreateKeyExW(i32, i8*, i32, i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @trace(i8*, ...) #1

declare dso_local i64 @RegSetValueExW(i32, i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
