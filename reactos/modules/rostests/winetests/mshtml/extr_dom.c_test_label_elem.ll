; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_label_elem.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_label_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"get_htmlFor failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"htmlFor = %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"put_htmlFor failed: %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_label_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_label_elem(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32* @get_label_iface(i32* %6)
  store i32* %7, i32** %3, align 8
  store i32* null, i32** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i64 @IHTMLLabelElement_get_htmlFor(i32* %8, i32** %4)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @S_OK, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @ok(i32 %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @strcmp_wa(i32* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = load i32*, i32** %4, align 8
  %22 = call i64 @wine_dbgstr_w(i32* %21)
  %23 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i64 %22)
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @SysFreeString(i32* %24)
  %26 = call i32* @a2bstr(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  store i32* %26, i32** %4, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = call i64 @IHTMLLabelElement_put_htmlFor(i32* %27, i32* %28)
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @S_OK, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @ok(i32 %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i64 %34)
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @SysFreeString(i32* %36)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %4, align 8
  %38 = load i32*, i32** %3, align 8
  %39 = call i64 @IHTMLLabelElement_get_htmlFor(i32* %38, i32** %4)
  store i64 %39, i64* %5, align 8
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* @S_OK, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @ok(i32 %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %44)
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @strcmp_wa(i32* %46, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = load i32*, i32** %4, align 8
  %52 = call i64 @wine_dbgstr_w(i32* %51)
  %53 = call i32 @ok(i32 %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i64 %52)
  %54 = call i32* @a2bstr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  store i32* %54, i32** %4, align 8
  %55 = load i32*, i32** %3, align 8
  %56 = load i32*, i32** %4, align 8
  %57 = call i64 @IHTMLLabelElement_put_htmlFor(i32* %55, i32* %56)
  store i64 %57, i64* %5, align 8
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* @S_OK, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = load i64, i64* %5, align 8
  %63 = call i32 @ok(i32 %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i64 %62)
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @SysFreeString(i32* %64)
  store i32* null, i32** %4, align 8
  %66 = load i32*, i32** %3, align 8
  %67 = call i64 @IHTMLLabelElement_get_htmlFor(i32* %66, i32** %4)
  store i64 %67, i64* %5, align 8
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* @S_OK, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = load i64, i64* %5, align 8
  %73 = call i32 @ok(i32 %71, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %72)
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @strcmp_wa(i32* %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = load i32*, i32** %4, align 8
  %80 = call i64 @wine_dbgstr_w(i32* %79)
  %81 = call i32 @ok(i32 %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i64 %80)
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @SysFreeString(i32* %82)
  %84 = load i32*, i32** %3, align 8
  %85 = call i32 @IHTMLLabelElement_Release(i32* %84)
  ret void
}

declare dso_local i32* @get_label_iface(i32*) #1

declare dso_local i64 @IHTMLLabelElement_get_htmlFor(i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @strcmp_wa(i32*, i8*) #1

declare dso_local i64 @wine_dbgstr_w(i32*) #1

declare dso_local i32 @SysFreeString(i32*) #1

declare dso_local i32* @a2bstr(i8*) #1

declare dso_local i64 @IHTMLLabelElement_put_htmlFor(i32*, i32*) #1

declare dso_local i32 @IHTMLLabelElement_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
