; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_get_doc_elem_by_id.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_get_doc_elem_by_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IHTMLDocument3 = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Could not get IHTMLDocument3 iface: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"getElementById(%s) failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*)* @get_doc_elem_by_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_doc_elem_by_id(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = bitcast i32** %5 to i8**
  %11 = call i64 @IHTMLDocument2_QueryInterface(i32* %9, i32* @IID_IHTMLDocument3, i8** %10)
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* @S_OK, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load i64, i64* %8, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 (i32, i8*, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @a2bstr(i8* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @IHTMLDocument3_getElementById(i32* %21, i32 %22, i32** %6)
  store i64 %23, i64* %8, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @SysFreeString(i32 %24)
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @S_OK, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i8*, i8** %4, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i32 (i32, i8*, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %30, i64 %31)
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @IHTMLDocument3_Release(i32* %33)
  %35 = load i32*, i32** %6, align 8
  ret i32* %35
}

declare dso_local i64 @IHTMLDocument2_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i8*, ...) #1

declare dso_local i32 @a2bstr(i8*) #1

declare dso_local i64 @IHTMLDocument3_getElementById(i32*, i32, i32**) #1

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i32 @IHTMLDocument3_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
