; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c__elem_get_scroll_left.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c__elem_get_scroll_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E_INVALIDARG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"expect E_INVALIDARG got 0x%08x\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"get_scrollTop failed: %08x\0A\00", align 1
@IID_IHTMLTextContainer = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Could not get IHTMLTextContainer: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"IHTMLTextContainer::get_scrollLeft failed: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"unexpected left %d, expected %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @_elem_get_scroll_left to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_elem_get_scroll_left(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = call i32* @_get_elem2_iface(i32 %10, i32* %11)
  store i32* %12, i32** %5, align 8
  store i64 -1, i64* %7, align 8
  store i64 -1, i64* %8, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i64 @IHTMLElement2_get_scrollLeft(i32* %13, i64* null)
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* @E_INVALIDARG, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i64, i64* %9, align 8
  %20 = call i32 (i32, i8*, i64, ...) @ok(i32 %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i32*, i32** %5, align 8
  %22 = call i64 @IHTMLElement2_get_scrollLeft(i32* %21, i64* %7)
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @S_OK, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i64, i64* %9, align 8
  %28 = call i32 (i32, i8*, i64, ...) @ok(i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %27)
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @IHTMLElement2_Release(i32* %29)
  %31 = load i32*, i32** %4, align 8
  %32 = bitcast i32** %6 to i8**
  %33 = call i64 @IUnknown_QueryInterface(i32* %31, i32* @IID_IHTMLTextContainer, i8** %32)
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* @S_OK, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load i64, i64* %9, align 8
  %39 = call i32 (i32, i8*, i64, ...) @ok(i32 %37, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %38)
  %40 = load i32*, i32** %6, align 8
  %41 = call i64 @IHTMLTextContainer_get_scrollLeft(i32* %40, i64* %8)
  store i64 %41, i64* %9, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @IHTMLTextContainer_Release(i32* %42)
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* @S_OK, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i64, i64* %8, align 8
  %49 = call i32 (i32, i8*, i64, ...) @ok(i32 %47, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i64 %48)
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %7, align 8
  %56 = call i32 (i32, i8*, i64, ...) @ok(i32 %53, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i64 %54, i64 %55)
  ret void
}

declare dso_local i32* @_get_elem2_iface(i32, i32*) #1

declare dso_local i64 @IHTMLElement2_get_scrollLeft(i32*, i64*) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i32 @IHTMLElement2_Release(i32*) #1

declare dso_local i64 @IUnknown_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @IHTMLTextContainer_get_scrollLeft(i32*, i64*) #1

declare dso_local i32 @IHTMLTextContainer_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
