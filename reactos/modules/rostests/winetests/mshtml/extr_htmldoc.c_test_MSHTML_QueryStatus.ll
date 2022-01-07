; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_test_MSHTML_QueryStatus.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_test_MSHTML_QueryStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@doc_unk = common dso_local global i32* null, align 8
@CGID_MSHTML = common dso_local global i32 0, align 4
@IDM_FONTNAME = common dso_local global i32 0, align 4
@IDM_FONTSIZE = common dso_local global i32 0, align 4
@IDM_SELECTALL = common dso_local global i32 0, align 4
@OLECMDF_ENABLED = common dso_local global i32 0, align 4
@IDM_BOLD = common dso_local global i32 0, align 4
@IDM_FORECOLOR = common dso_local global i32 0, align 4
@IDM_JUSTIFYCENTER = common dso_local global i32 0, align 4
@IDM_JUSTIFYLEFT = common dso_local global i32 0, align 4
@IDM_JUSTIFYRIGHT = common dso_local global i32 0, align 4
@IDM_ITALIC = common dso_local global i32 0, align 4
@IDM_UNDERLINE = common dso_local global i32 0, align 4
@IDM_HORIZONTALLINE = common dso_local global i32 0, align 4
@IDM_ORDERLIST = common dso_local global i32 0, align 4
@IDM_UNORDERLIST = common dso_local global i32 0, align 4
@IDM_INDENT = common dso_local global i32 0, align 4
@IDM_OUTDENT = common dso_local global i32 0, align 4
@IDM_DELETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @test_MSHTML_QueryStatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_MSHTML_QueryStatus(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32*, i32** %3, align 8
  br label %12

10:                                               ; preds = %2
  %11 = load i32*, i32** @doc_unk, align 8
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32* [ %9, %8 ], [ %11, %10 ]
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* @IDM_FONTNAME, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @test_QueryStatus(i32* %14, i32* @CGID_MSHTML, i32 %15, i32 %16)
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* @IDM_FONTSIZE, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @test_QueryStatus(i32* %18, i32* @CGID_MSHTML, i32 %19, i32 %20)
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @IDM_SELECTALL, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @OLECMDF_ENABLED, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @test_QueryStatus(i32* %22, i32* @CGID_MSHTML, i32 %23, i32 %26)
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* @IDM_BOLD, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @test_QueryStatus(i32* %28, i32* @CGID_MSHTML, i32 %29, i32 %30)
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* @IDM_FORECOLOR, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @test_QueryStatus(i32* %32, i32* @CGID_MSHTML, i32 %33, i32 %34)
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* @IDM_JUSTIFYCENTER, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @test_QueryStatus(i32* %36, i32* @CGID_MSHTML, i32 %37, i32 %38)
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* @IDM_JUSTIFYLEFT, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @test_QueryStatus(i32* %40, i32* @CGID_MSHTML, i32 %41, i32 %42)
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* @IDM_JUSTIFYRIGHT, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @test_QueryStatus(i32* %44, i32* @CGID_MSHTML, i32 %45, i32 %46)
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* @IDM_ITALIC, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @test_QueryStatus(i32* %48, i32* @CGID_MSHTML, i32 %49, i32 %50)
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* @IDM_UNDERLINE, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @test_QueryStatus(i32* %52, i32* @CGID_MSHTML, i32 %53, i32 %54)
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* @IDM_HORIZONTALLINE, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @test_QueryStatus(i32* %56, i32* @CGID_MSHTML, i32 %57, i32 %58)
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* @IDM_ORDERLIST, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @test_QueryStatus(i32* %60, i32* @CGID_MSHTML, i32 %61, i32 %62)
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* @IDM_UNORDERLIST, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @test_QueryStatus(i32* %64, i32* @CGID_MSHTML, i32 %65, i32 %66)
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* @IDM_INDENT, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @test_QueryStatus(i32* %68, i32* @CGID_MSHTML, i32 %69, i32 %70)
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* @IDM_OUTDENT, align 4
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @test_QueryStatus(i32* %72, i32* @CGID_MSHTML, i32 %73, i32 %74)
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* @IDM_DELETE, align 4
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @test_QueryStatus(i32* %76, i32* @CGID_MSHTML, i32 %77, i32 %78)
  ret void
}

declare dso_local i32 @test_QueryStatus(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
