; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mlang/extr_mlang.c_check_convertible.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mlang/extr_mlang.c_check_convertible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@check_convertible.strW = internal global [4 x i8] c"abc\00", align 1
@CP_UTF8 = common dso_local global i64 0, align 8
@WC_NO_BEST_FIT_CHARS = common dso_local global i32 0, align 4
@WC_COMPOSITECHECK = common dso_local global i32 0, align 4
@WC_DEFAULTCHAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"target codepage %i does not contain 'abc'\0A\00", align 1
@E_FAIL = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8
@S_FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, i64)* @check_convertible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @check_convertible(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca [10 x i8], align 1
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %18 = load i32, i32* @MAX_PATH, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %8, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  %22 = load i32, i32* @MAX_PATH, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %10, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @CP_UTF8, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %3
  %29 = load i64, i64* %6, align 8
  %30 = load i32, i32* @WC_NO_BEST_FIT_CHARS, align 4
  %31 = load i32, i32* @WC_COMPOSITECHECK, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @WC_DEFAULTCHAR, align 4
  %34 = or i32 %32, %33
  %35 = getelementptr inbounds [10 x i8], [10 x i8]* %15, i64 0, i64 0
  %36 = call i32 @WideCharToMultiByte(i64 %29, i32 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @check_convertible.strW, i64 0, i64 0), i32 3, i8* %35, i32 10, i32* null, i64* %14)
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %16, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %28
  %40 = load i64, i64* %14, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39, %28
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @trace(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %43)
  %45 = load i64, i64* @E_FAIL, align 8
  store i64 %45, i64* %4, align 8
  store i32 1, i32* %17, align 4
  br label %74

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %3
  %48 = call i64 @lstrlenW(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @check_convertible.strW, i64 0, i64 0))
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %12, align 8
  %50 = load i32, i32* @MAX_PATH, align 4
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %13, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call i64 @IMultiLanguage2_ConvertStringFromUnicode(i32* %52, i32* null, i64 %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @check_convertible.strW, i64 0, i64 0), i64* %12, i32* %21, i64* %13)
  store i64 %54, i64* %11, align 8
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* @S_OK, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %47
  %59 = load i64, i64* @S_FALSE, align 8
  store i64 %59, i64* %4, align 8
  store i32 1, i32* %17, align 4
  br label %74

60:                                               ; preds = %47
  store i64 -1, i64* %12, align 8
  %61 = load i32, i32* @MAX_PATH, align 4
  %62 = sext i32 %61 to i64
  store i64 %62, i64* %13, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* %7, align 8
  %66 = call i64 @IMultiLanguage2_ConvertString(i32* %63, i32* null, i64 %64, i64 %65, i32* %21, i64* %12, i32* %24, i64* %13)
  store i64 %66, i64* %11, align 8
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* @S_OK, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %60
  %71 = load i64, i64* @S_FALSE, align 8
  store i64 %71, i64* %4, align 8
  store i32 1, i32* %17, align 4
  br label %74

72:                                               ; preds = %60
  %73 = load i64, i64* @S_OK, align 8
  store i64 %73, i64* %4, align 8
  store i32 1, i32* %17, align 4
  br label %74

74:                                               ; preds = %72, %70, %58, %42
  %75 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i64, i64* %4, align 8
  ret i64 %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @WideCharToMultiByte(i64, i32, i8*, i32, i8*, i32, i32*, i64*) #2

declare dso_local i32 @trace(i8*, i64) #2

declare dso_local i64 @lstrlenW(i8*) #2

declare dso_local i64 @IMultiLanguage2_ConvertStringFromUnicode(i32*, i32*, i64, i8*, i64*, i32*, i64*) #2

declare dso_local i64 @IMultiLanguage2_ConvertString(i32*, i32*, i64, i64, i32*, i64*, i32*, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
