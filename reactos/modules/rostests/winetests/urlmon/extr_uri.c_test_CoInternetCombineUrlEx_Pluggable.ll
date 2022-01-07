; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_uri.c_test_CoInternetCombineUrlEx_Pluggable.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_uri.c_test_CoInternetCombineUrlEx_Pluggable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@combine_baseW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Error: CreateUri returned 0x%08x.\0A\00", align 1
@CombineUrl = common dso_local global i32 0, align 4
@combine_relativeW = common dso_local global i32 0, align 4
@URL_DONT_SIMPLIFY = common dso_local global i32 0, align 4
@URL_FILE_USE_PATHURL = common dso_local global i32 0, align 4
@URL_DONT_UNESCAPE_EXTRA_INFO = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"Error: CoInternetCombineUrlEx returned 0x%08x, expected 0x%08x.\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Error: Expected S_OK, but got 0x%08x instead.\0A\00", align 1
@combine_resultW = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"Error: Expected %s, but got %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CoInternetCombineUrlEx_Pluggable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CoInternetCombineUrlEx_Pluggable() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* null, i32** %2, align 8
  %5 = load i32, i32* @combine_baseW, align 4
  %6 = call i32 @pCreateUri(i32 %5, i32 0, i32 0, i32** %2)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = call i64 @SUCCEEDED(i32 %7)
  %9 = trunc i64 %8 to i32
  %10 = load i32, i32* %1, align 4
  %11 = call i32 (i32, i8*, i32, ...) @ok(i32 %9, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %1, align 4
  %13 = call i64 @SUCCEEDED(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %72

15:                                               ; preds = %0
  store i32* null, i32** %3, align 8
  %16 = load i32, i32* @CombineUrl, align 4
  %17 = call i32 @SET_EXPECT(i32 %16)
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* @combine_relativeW, align 4
  %20 = load i32, i32* @URL_DONT_SIMPLIFY, align 4
  %21 = load i32, i32* @URL_FILE_USE_PATHURL, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @URL_DONT_UNESCAPE_EXTRA_INFO, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @pCoInternetCombineUrlEx(i32* %18, i32 %19, i32 %24, i32** %3, i32 0)
  store i32 %25, i32* %1, align 4
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* @S_OK, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %1, align 4
  %31 = load i32, i32* @S_OK, align 4
  %32 = call i32 (i32, i8*, i32, ...) @ok(i32 %29, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load i32, i32* @CombineUrl, align 4
  %34 = call i32 @CHECK_CALLED(i32 %33)
  %35 = load i32, i32* %1, align 4
  %36 = call i64 @SUCCEEDED(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %65

38:                                               ; preds = %15
  store i32* null, i32** %4, align 8
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @IUri_GetAbsoluteUri(i32* %39, i32** %4)
  store i32 %40, i32* %1, align 4
  %41 = load i32, i32* %1, align 4
  %42 = load i32, i32* @S_OK, align 4
  %43 = icmp eq i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* %1, align 4
  %46 = call i32 (i32, i8*, i32, ...) @ok(i32 %44, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %1, align 4
  %48 = call i64 @SUCCEEDED(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %38
  %51 = load i32*, i32** @combine_resultW, align 8
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @lstrcmpW(i32* %51, i32* %52)
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = load i32*, i32** @combine_resultW, align 8
  %58 = call i32 @wine_dbgstr_w(i32* %57)
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @wine_dbgstr_w(i32* %59)
  %61 = call i32 (i32, i8*, i32, ...) @ok(i32 %56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %58, i32 %60)
  br label %62

62:                                               ; preds = %50, %38
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @SysFreeString(i32* %63)
  br label %65

65:                                               ; preds = %62, %15
  %66 = load i32*, i32** %3, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32*, i32** %3, align 8
  %70 = call i32 @IUri_Release(i32* %69)
  br label %71

71:                                               ; preds = %68, %65
  br label %72

72:                                               ; preds = %71, %0
  %73 = load i32*, i32** %2, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32*, i32** %2, align 8
  %77 = call i32 @IUri_Release(i32* %76)
  br label %78

78:                                               ; preds = %75, %72
  ret void
}

declare dso_local i32 @pCreateUri(i32, i32, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @SET_EXPECT(i32) #1

declare dso_local i32 @pCoInternetCombineUrlEx(i32*, i32, i32, i32**, i32) #1

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
