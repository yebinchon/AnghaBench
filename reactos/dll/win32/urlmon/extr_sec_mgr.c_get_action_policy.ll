; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_sec_mgr.c_get_action_policy.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_sec_mgr.c_get_action_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@URLPOLICY_DISALLOW = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unknown URLZONEREG: %d\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@get_action_policy.formatW = internal constant [3 x i8] c"%X\00", align 1
@ERROR_MORE_DATA = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i32 0, align 4
@ERROR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"RegQueryValue failed: %d\0A\00", align 1
@E_UNEXPECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32, i32)* @get_action_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_action_policy(i32 %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [16 x i8], align 16
  %17 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* %8, align 4
  switch i32 %18, label %23 [
    i32 131, label %19
    i32 132, label %19
  ]

19:                                               ; preds = %5, %5
  %20 = load i32, i32* @URLPOLICY_DISALLOW, align 4
  %21 = load i32*, i32** %9, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @S_OK, align 4
  store i32 %22, i32* %6, align 4
  br label %88

23:                                               ; preds = %5
  %24 = load i32, i32* %11, align 4
  switch i32 %24, label %29 [
    i32 130, label %25
    i32 129, label %25
    i32 128, label %27
  ]

25:                                               ; preds = %23, %23
  %26 = load i32, i32* @HKEY_CURRENT_USER, align 4
  store i32 %26, i32* %12, align 4
  br label %33

27:                                               ; preds = %23
  %28 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  store i32 %28, i32* %12, align 4
  br label %33

29:                                               ; preds = %23
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @WARN(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @E_FAIL, align 4
  store i32 %32, i32* %6, align 4
  br label %88

33:                                               ; preds = %27, %25
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @open_zone_key(i32 %34, i32 %35, i32* %13)
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = call i64 @SUCCEEDED(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %73

40:                                               ; preds = %33
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %17, align 4
  %42 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @wsprintfW(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @get_action_policy.formatW, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %13, align 4
  %46 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @RegQueryValueExW(i32 %45, i8* %46, i32* null, i32* null, i32* %47, i32* %17)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* @ERROR_MORE_DATA, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %40
  %53 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %53, i32* %15, align 4
  br label %70

54:                                               ; preds = %40
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @E_FAIL, align 4
  store i32 %59, i32* %15, align 4
  br label %69

60:                                               ; preds = %54
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* @ERROR_SUCCESS, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @E_UNEXPECTED, align 4
  store i32 %67, i32* %15, align 4
  br label %68

68:                                               ; preds = %64, %60
  br label %69

69:                                               ; preds = %68, %58
  br label %70

70:                                               ; preds = %69, %52
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @RegCloseKey(i32 %71)
  br label %73

73:                                               ; preds = %70, %33
  %74 = load i32, i32* %15, align 4
  %75 = call i64 @FAILED(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %73
  %78 = load i32, i32* %11, align 4
  %79 = icmp eq i32 %78, 130
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32*, i32** %9, align 8
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @get_action_policy(i32 %81, i32 %82, i32* %83, i32 %84, i32 128)
  store i32 %85, i32* %6, align 4
  br label %88

86:                                               ; preds = %77, %73
  %87 = load i32, i32* %15, align 4
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %86, %80, %29, %19
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @open_zone_key(i32, i32, i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @wsprintfW(i8*, i8*, i32) #1

declare dso_local i32 @RegQueryValueExW(i32, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i64 @FAILED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
