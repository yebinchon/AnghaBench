; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_internet.c_parse_security_domain.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_internet.c_parse_security_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"(%s %08x %p %d %p)\0A\00", align 1
@PARSE_SECURITY_DOMAIN = common dso_local global i32 0, align 4
@E_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32*)* @parse_security_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_security_domain(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
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
  %28 = load i32, i32* @PARSE_SECURITY_DOMAIN, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32*, i32** %11, align 8
  %33 = call i32 @IInternetProtocolInfo_ParseUrl(i32* %26, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31, i32* %32, i32 0)
  store i32 %33, i32* %13, align 4
  %34 = load i32*, i32** %12, align 8
  %35 = call i32 @IInternetProtocolInfo_Release(i32* %34)
  %36 = load i32, i32* %13, align 4
  %37 = call i64 @SUCCEEDED(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %25
  %40 = load i32, i32* %13, align 4
  store i32 %40, i32* %6, align 4
  br label %44

41:                                               ; preds = %25
  br label %42

42:                                               ; preds = %41, %5
  %43 = load i32, i32* @E_FAIL, align 4
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %42, %39
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i32 @TRACE(i8*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i32* @get_protocol_info(i32) #1

declare dso_local i32 @IInternetProtocolInfo_ParseUrl(i32*, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @IInternetProtocolInfo_Release(i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
