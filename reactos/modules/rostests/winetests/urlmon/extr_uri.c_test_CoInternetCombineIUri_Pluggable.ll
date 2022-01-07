; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_uri.c_test_CoInternetCombineIUri_Pluggable.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_uri.c_test_CoInternetCombineIUri_Pluggable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@combine_baseW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Error: CreateUri returned 0x%08x.\0A\00", align 1
@combine_relativeW = common dso_local global i32 0, align 4
@Uri_CREATE_ALLOW_RELATIVE = common dso_local global i32 0, align 4
@CombineUrl = common dso_local global i32 0, align 4
@URL_DONT_SIMPLIFY = common dso_local global i32 0, align 4
@URL_FILE_USE_PATHURL = common dso_local global i32 0, align 4
@URL_DONT_UNESCAPE_EXTRA_INFO = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"Error: CoInternetCombineIUri returned 0x%08x, expected 0x%08x.\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Error: Expected S_OK, but got 0x%08x instead.\0A\00", align 1
@combine_resultW = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"Error: Expected %s, but got %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CoInternetCombineIUri_Pluggable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CoInternetCombineIUri_Pluggable() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* null, i32** %2, align 8
  %6 = load i32, i32* @combine_baseW, align 4
  %7 = call i32 @pCreateUri(i32 %6, i32 0, i32 0, i32** %2)
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = call i64 @SUCCEEDED(i32 %8)
  %10 = trunc i64 %9 to i32
  %11 = load i32, i32* %1, align 4
  %12 = call i32 (i32, i8*, i32, ...) @ok(i32 %10, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* %1, align 4
  %14 = call i64 @SUCCEEDED(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %92

16:                                               ; preds = %0
  store i32* null, i32** %3, align 8
  %17 = load i32, i32* @combine_relativeW, align 4
  %18 = load i32, i32* @Uri_CREATE_ALLOW_RELATIVE, align 4
  %19 = call i32 @pCreateUri(i32 %17, i32 %18, i32 0, i32** %3)
  store i32 %19, i32* %1, align 4
  %20 = load i32, i32* %1, align 4
  %21 = call i64 @SUCCEEDED(i32 %20)
  %22 = trunc i64 %21 to i32
  %23 = load i32, i32* %1, align 4
  %24 = call i32 (i32, i8*, i32, ...) @ok(i32 %22, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %1, align 4
  %26 = call i64 @SUCCEEDED(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %85

28:                                               ; preds = %16
  store i32* null, i32** %4, align 8
  %29 = load i32, i32* @CombineUrl, align 4
  %30 = call i32 @SET_EXPECT(i32 %29)
  %31 = load i32*, i32** %2, align 8
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* @URL_DONT_SIMPLIFY, align 4
  %34 = load i32, i32* @URL_FILE_USE_PATHURL, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @URL_DONT_UNESCAPE_EXTRA_INFO, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @pCoInternetCombineIUri(i32* %31, i32* %32, i32 %37, i32** %4, i32 0)
  store i32 %38, i32* %1, align 4
  %39 = load i32, i32* %1, align 4
  %40 = load i32, i32* @S_OK, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %1, align 4
  %44 = load i32, i32* @S_OK, align 4
  %45 = call i32 (i32, i8*, i32, ...) @ok(i32 %42, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load i32, i32* @CombineUrl, align 4
  %47 = call i32 @CHECK_CALLED(i32 %46)
  %48 = load i32, i32* %1, align 4
  %49 = call i64 @SUCCEEDED(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %78

51:                                               ; preds = %28
  store i32* null, i32** %5, align 8
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @IUri_GetAbsoluteUri(i32* %52, i32** %5)
  store i32 %53, i32* %1, align 4
  %54 = load i32, i32* %1, align 4
  %55 = load i32, i32* @S_OK, align 4
  %56 = icmp eq i32 %54, %55
  %57 = zext i1 %56 to i32
  %58 = load i32, i32* %1, align 4
  %59 = call i32 (i32, i8*, i32, ...) @ok(i32 %57, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %1, align 4
  %61 = call i64 @SUCCEEDED(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %51
  %64 = load i32*, i32** @combine_resultW, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @lstrcmpW(i32* %64, i32* %65)
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = load i32*, i32** @combine_resultW, align 8
  %71 = call i32 @wine_dbgstr_w(i32* %70)
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @wine_dbgstr_w(i32* %72)
  %74 = call i32 (i32, i8*, i32, ...) @ok(i32 %69, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %71, i32 %73)
  br label %75

75:                                               ; preds = %63, %51
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @SysFreeString(i32* %76)
  br label %78

78:                                               ; preds = %75, %28
  %79 = load i32*, i32** %4, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @IUri_Release(i32* %82)
  br label %84

84:                                               ; preds = %81, %78
  br label %85

85:                                               ; preds = %84, %16
  %86 = load i32*, i32** %3, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32*, i32** %3, align 8
  %90 = call i32 @IUri_Release(i32* %89)
  br label %91

91:                                               ; preds = %88, %85
  br label %92

92:                                               ; preds = %91, %0
  %93 = load i32*, i32** %2, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32*, i32** %2, align 8
  %97 = call i32 @IUri_Release(i32* %96)
  br label %98

98:                                               ; preds = %95, %92
  ret void
}

declare dso_local i32 @pCreateUri(i32, i32, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @SET_EXPECT(i32) #1

declare dso_local i32 @pCoInternetCombineIUri(i32*, i32*, i32, i32**, i32) #1

declare dso_local i32 @CHECK_CALLED(i32) #1

declare dso_local i32 @IUri_GetAbsoluteUri(i32*, i32**) #1

declare dso_local i32 @lstrcmpW(i32*, i32*) #1

declare dso_local i32 @wine_dbgstr_w(i32*) #1

declare dso_local i32 @SysFreeString(i32*) #1

declare dso_local i32 @IUri_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
