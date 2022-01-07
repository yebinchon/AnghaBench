; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_shellpath.c__SHGetProfilesValue.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_shellpath.c__SHGetProfilesValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%p,%s,%p,%s\0A\00", align 1
@REG_SZ = common dso_local global i64 0, align 8
@REG_EXPAND_SZ = common dso_local global i64 0, align 8
@S_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Setting missing value %s to %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"returning 0x%08x (output value is %s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*, i8*)* @_SHGetProfilesValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_SHGetProfilesValue(i32 %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 4
  store i64 %15, i64* %11, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @debugstr_w(i8* %17)
  %19 = load i8*, i8** %7, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @debugstr_w(i8* %20)
  %22 = call i32 (i8*, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %18, i8* %19, i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = ptrtoint i8* %25 to i32
  %27 = call i64 @RegQueryValueExW(i32 %23, i8* %24, i32* null, i64* %10, i32 %26, i64* %11)
  store i64 %27, i64* %12, align 8
  %28 = load i64, i64* %12, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %53, label %30

30:                                               ; preds = %4
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* @REG_SZ, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* @REG_EXPAND_SZ, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %34, %30
  %39 = load i64, i64* %11, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %38
  %42 = load i8*, i8** %7, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load i64, i64* %11, align 8
  %48 = udiv i64 %47, 4
  store i64 %48, i64* %11, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load i64, i64* %11, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8 0, i8* %51, align 1
  %52 = load i32, i32* @S_OK, align 4
  store i32 %52, i32* %9, align 4
  br label %83

53:                                               ; preds = %41, %38, %34, %4
  %54 = load i8*, i8** %7, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load i32, i32* @MAX_PATH, align 4
  %57 = call i32 @lstrcpynW(i8* %54, i8* %55, i32 %56)
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @debugstr_w(i8* %58)
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @debugstr_w(i8* %60)
  %62 = call i32 (i8*, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %61)
  %63 = load i32, i32* %5, align 4
  %64 = load i8*, i8** %6, align 8
  %65 = load i64, i64* @REG_EXPAND_SZ, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = ptrtoint i8* %66 to i32
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 @strlenW(i8* %68)
  %70 = add nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 4
  %73 = trunc i64 %72 to i32
  %74 = call i64 @RegSetValueExW(i32 %63, i8* %64, i32 0, i64 %65, i32 %67, i32 %73)
  store i64 %74, i64* %12, align 8
  %75 = load i64, i64* %12, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %53
  %78 = load i64, i64* %12, align 8
  %79 = call i32 @HRESULT_FROM_WIN32(i64 %78)
  store i32 %79, i32* %9, align 4
  br label %82

80:                                               ; preds = %53
  %81 = load i32, i32* @S_OK, align 4
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %80, %77
  br label %83

83:                                               ; preds = %82, %46
  %84 = load i32, i32* %9, align 4
  %85 = load i8*, i8** %7, align 8
  %86 = call i32 @debugstr_w(i8* %85)
  %87 = call i32 (i8*, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %84, i32 %86)
  %88 = load i32, i32* %9, align 4
  ret i32 %88
}

declare dso_local i32 @TRACE(i8*, i32, i32, ...) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i64 @RegQueryValueExW(i32, i8*, i32*, i64*, i32, i64*) #1

declare dso_local i32 @lstrcpynW(i8*, i8*, i32) #1

declare dso_local i64 @RegSetValueExW(i32, i8*, i32, i64, i32, i32) #1

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i32 @HRESULT_FROM_WIN32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
