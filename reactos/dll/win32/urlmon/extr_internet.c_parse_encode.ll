; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_internet.c_parse_encode.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_internet.c_parse_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"(%s %08x %p %d %p)\0A\00", align 1
@PARSE_ENCODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32, i32, i32*)* @parse_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_encode(i64 %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @debugstr_w(i64 %15)
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32*, i32** %11, align 8
  %21 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17, i32 %18, i32 %19, i32* %20)
  %22 = load i64, i64* %7, align 8
  %23 = call i32* @get_protocol_info(i64 %22)
  store i32* %23, i32** %12, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %43

26:                                               ; preds = %5
  %27 = load i32*, i32** %12, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i32, i32* @PARSE_ENCODE, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32*, i32** %11, align 8
  %34 = call i32 @IInternetProtocolInfo_ParseUrl(i32* %27, i64 %28, i32 %29, i32 %30, i32 %31, i32 %32, i32* %33, i32 0)
  store i32 %34, i32* %14, align 4
  %35 = load i32*, i32** %12, align 8
  %36 = call i32 @IInternetProtocolInfo_Release(i32* %35)
  %37 = load i32, i32* %14, align 4
  %38 = call i64 @SUCCEEDED(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %26
  %41 = load i32, i32* %14, align 4
  store i32 %41, i32* %6, align 4
  br label %57

42:                                               ; preds = %26
  br label %43

43:                                               ; preds = %42, %5
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %13, align 4
  %45 = load i64, i64* %7, align 8
  %46 = trunc i64 %45 to i32
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @UrlUnescapeW(i32 %46, i32 %47, i32* %13, i32 %48)
  store i32 %49, i32* %14, align 4
  %50 = load i32*, i32** %11, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load i32, i32* %13, align 4
  %54 = load i32*, i32** %11, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %52, %43
  %56 = load i32, i32* %14, align 4
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %55, %40
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @TRACE(i8*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @debugstr_w(i64) #1

declare dso_local i32* @get_protocol_info(i64) #1

declare dso_local i32 @IInternetProtocolInfo_ParseUrl(i32*, i64, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @IInternetProtocolInfo_Release(i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @UrlUnescapeW(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
