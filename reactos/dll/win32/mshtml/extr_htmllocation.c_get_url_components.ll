; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmllocation.c_get_url_components.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmllocation.c_get_url_components.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"InternetCrackUrlW failed: 0x%08x\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @get_url_components to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_url_components(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @get_url(i32* %8, i32** %6)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i64 @FAILED(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %3, align 4
  br label %27

15:                                               ; preds = %2
  %16 = load i32*, i32** %6, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @InternetCrackUrlW(i32* %16, i32 0, i32 0, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = call i32 (...) @GetLastError()
  %22 = call i32 @FIXME(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = call i32 @SetLastError(i32 0)
  %24 = load i32, i32* @E_FAIL, align 4
  store i32 %24, i32* %3, align 4
  br label %27

25:                                               ; preds = %15
  %26 = load i32, i32* @S_OK, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %25, %20, %13
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @get_url(i32*, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @InternetCrackUrlW(i32*, i32, i32, i32*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @SetLastError(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
