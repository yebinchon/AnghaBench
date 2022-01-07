; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_internet.c_parse_domain.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_internet.c_parse_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"(%s %08x %p %d %p)\0A\00", align 1
@PARSE_DOMAIN = common dso_local global i32 0, align 4
@URL_PART_HOSTNAME = common dso_local global i32 0, align 4
@E_POINTER = common dso_local global i64 0, align 8
@S_FALSE = common dso_local global i64 0, align 8
@E_FAIL = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i32, i32, i32*)* @parse_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_domain(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @debugstr_w(i32 %14)
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32*, i32** %11, align 8
  %20 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16, i32 %17, i32 %18, i32* %19)
  %21 = load i32, i32* %7, align 4
  %22 = call i32* @get_protocol_info(i32 %21)
  store i32* %22, i32** %12, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %42

25:                                               ; preds = %5
  %26 = load i32*, i32** %12, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @PARSE_DOMAIN, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32*, i32** %11, align 8
  %33 = call i64 @IInternetProtocolInfo_ParseUrl(i32* %26, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31, i32* %32, i32 0)
  store i64 %33, i64* %13, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = call i32 @IInternetProtocolInfo_Release(i32* %34)
  %36 = load i64, i64* %13, align 8
  %37 = call i64 @SUCCEEDED(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %25
  %40 = load i64, i64* %13, align 8
  store i64 %40, i64* %6, align 8
  br label %67

41:                                               ; preds = %25
  br label %42

42:                                               ; preds = %41, %5
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @URL_PART_HOSTNAME, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i64 @UrlGetPartW(i32 %43, i32 %44, i32* %10, i32 %45, i32 %46)
  store i64 %47, i64* %13, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i32, i32* %10, align 4
  %52 = load i32*, i32** %11, align 8
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %50, %42
  %54 = load i64, i64* %13, align 8
  %55 = load i64, i64* @E_POINTER, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i64, i64* @S_FALSE, align 8
  store i64 %58, i64* %6, align 8
  br label %67

59:                                               ; preds = %53
  %60 = load i64, i64* %13, align 8
  %61 = call i64 @FAILED(i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i64, i64* @E_FAIL, align 8
  store i64 %64, i64* %6, align 8
  br label %67

65:                                               ; preds = %59
  %66 = load i64, i64* @S_OK, align 8
  store i64 %66, i64* %6, align 8
  br label %67

67:                                               ; preds = %65, %63, %57, %39
  %68 = load i64, i64* %6, align 8
  ret i64 %68
}

declare dso_local i32 @TRACE(i8*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i32* @get_protocol_info(i32) #1

declare dso_local i64 @IInternetProtocolInfo_ParseUrl(i32*, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @IInternetProtocolInfo_Release(i32*) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i64 @UrlGetPartW(i32, i32, i32*, i32, i32) #1

declare dso_local i64 @FAILED(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
