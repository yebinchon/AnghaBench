; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_check_ie.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_check_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@IID_IHTMLDocument7 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@is_ie9plus = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"is_ie9plus %x\0A\00", align 1
@IID_IHTMLDocument5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @check_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @check_ie() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = call i32* (...) @create_document()
  store i32* %6, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %0
  %10 = load i64, i64* @FALSE, align 8
  store i64 %10, i64* %1, align 8
  br label %39

11:                                               ; preds = %0
  %12 = load i32*, i32** %2, align 8
  %13 = bitcast i32** %4 to i8**
  %14 = call i32 @IHTMLDocument2_QueryInterface(i32* %12, i32* @IID_IHTMLDocument7, i8** %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @SUCCEEDED(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = load i32, i32* @TRUE, align 4
  store i32 %19, i32* @is_ie9plus, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @IHTMLDocument7_Release(i32* %20)
  br label %22

22:                                               ; preds = %18, %11
  %23 = load i32, i32* @is_ie9plus, align 4
  %24 = call i32 @trace(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32*, i32** %2, align 8
  %26 = bitcast i32** %3 to i8**
  %27 = call i32 @IHTMLDocument2_QueryInterface(i32* %25, i32* @IID_IHTMLDocument5, i8** %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @SUCCEEDED(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @IHTMLDocument5_Release(i32* %32)
  br label %34

34:                                               ; preds = %31, %22
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @release_document(i32* %35)
  %37 = load i32, i32* %5, align 4
  %38 = call i64 @SUCCEEDED(i32 %37)
  store i64 %38, i64* %1, align 8
  br label %39

39:                                               ; preds = %34, %9
  %40 = load i64, i64* %1, align 8
  ret i64 %40
}

declare dso_local i32* @create_document(...) #1

declare dso_local i32 @IHTMLDocument2_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @IHTMLDocument7_Release(i32*) #1

declare dso_local i32 @trace(i8*, i32) #1

declare dso_local i32 @IHTMLDocument5_Release(i32*) #1

declare dso_local i32 @release_document(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
