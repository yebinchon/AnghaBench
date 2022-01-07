; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_framebase.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_framebase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IHTMLFrameBase = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"Could not get IHTMLFrameBase interface: 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"IHTMLFrameBase_get_scrolling failed: 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"get_scrolling should have given 'auto', gave: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"IHTMLFrameBase_put_scrolling failed: 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"get_scrolling should have given 'no', gave: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"junk\00", align 1
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [84 x i8] c"IHTMLFrameBase_put_scrolling should have failed with E_INVALIDARG, instead: 0x%08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"get_frameBorder failed: %08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"frameBorder = %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"put_frameBorder failed: %08x\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"frameBorder = %s, expected \221\22\0A\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"1px\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"2px\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_framebase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_framebase(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = bitcast i32** %3 to i8**
  %8 = call i64 @IUnknown_QueryInterface(i32* %6, i32* @IID_IHTMLFrameBase, i8** %7)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @S_OK, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @ok(i32 %12, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load i32*, i32** %3, align 8
  %16 = call i64 @IHTMLFrameBase_get_scrolling(i32* %15, i64* %4)
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @S_OK, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %21)
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @strcmp_wa(i64 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = load i64, i64* %4, align 8
  %29 = call i64 @wine_dbgstr_w(i64 %28)
  %30 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i64 %29)
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @SysFreeString(i64 %31)
  %33 = call i64 @a2bstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i64 %33, i64* %4, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = load i64, i64* %4, align 8
  %36 = call i64 @IHTMLFrameBase_put_scrolling(i32* %34, i64 %35)
  store i64 %36, i64* %5, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @S_OK, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @ok(i32 %40, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i64 %41)
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @SysFreeString(i64 %43)
  %45 = load i32*, i32** %3, align 8
  %46 = call i64 @IHTMLFrameBase_get_scrolling(i32* %45, i64* %4)
  store i64 %46, i64* %5, align 8
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @S_OK, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @ok(i32 %50, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %51)
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @strcmp_wa(i64 %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = load i64, i64* %4, align 8
  %59 = call i64 @wine_dbgstr_w(i64 %58)
  %60 = call i32 @ok(i32 %57, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i64 %59)
  %61 = load i64, i64* %4, align 8
  %62 = call i32 @SysFreeString(i64 %61)
  %63 = call i64 @a2bstr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  store i64 %63, i64* %4, align 8
  %64 = load i32*, i32** %3, align 8
  %65 = load i64, i64* %4, align 8
  %66 = call i64 @IHTMLFrameBase_put_scrolling(i32* %64, i64 %65)
  store i64 %66, i64* %5, align 8
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* @E_INVALIDARG, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = load i64, i64* %5, align 8
  %72 = call i32 @ok(i32 %70, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.8, i64 0, i64 0), i64 %71)
  %73 = load i64, i64* %4, align 8
  %74 = call i32 @SysFreeString(i64 %73)
  %75 = load i32*, i32** %3, align 8
  %76 = call i64 @IHTMLFrameBase_get_scrolling(i32* %75, i64* %4)
  store i64 %76, i64* %5, align 8
  %77 = load i64, i64* %5, align 8
  %78 = load i64, i64* @S_OK, align 8
  %79 = icmp eq i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = load i64, i64* %5, align 8
  %82 = call i32 @ok(i32 %80, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %81)
  %83 = load i64, i64* %4, align 8
  %84 = call i32 @strcmp_wa(i64 %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = load i64, i64* %4, align 8
  %89 = call i64 @wine_dbgstr_w(i64 %88)
  %90 = call i32 @ok(i32 %87, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i64 %89)
  %91 = load i64, i64* %4, align 8
  %92 = call i32 @SysFreeString(i64 %91)
  %93 = load i32*, i32** %3, align 8
  %94 = call i64 @IHTMLFrameBase_get_frameBorder(i32* %93, i64* %4)
  store i64 %94, i64* %5, align 8
  %95 = load i64, i64* %5, align 8
  %96 = load i64, i64* @S_OK, align 8
  %97 = icmp eq i64 %95, %96
  %98 = zext i1 %97 to i32
  %99 = load i64, i64* %5, align 8
  %100 = call i32 @ok(i32 %98, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i64 %99)
  %101 = load i64, i64* %4, align 8
  %102 = icmp ne i64 %101, 0
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  %105 = load i64, i64* %4, align 8
  %106 = call i64 @wine_dbgstr_w(i64 %105)
  %107 = call i32 @ok(i32 %104, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i64 %106)
  %108 = call i64 @a2bstr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  store i64 %108, i64* %4, align 8
  %109 = load i32*, i32** %3, align 8
  %110 = load i64, i64* %4, align 8
  %111 = call i64 @IHTMLFrameBase_put_frameBorder(i32* %109, i64 %110)
  store i64 %111, i64* %5, align 8
  %112 = load i64, i64* %5, align 8
  %113 = load i64, i64* @S_OK, align 8
  %114 = icmp eq i64 %112, %113
  %115 = zext i1 %114 to i32
  %116 = load i64, i64* %5, align 8
  %117 = call i32 @ok(i32 %115, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i64 %116)
  %118 = load i64, i64* %4, align 8
  %119 = call i32 @SysFreeString(i64 %118)
  %120 = load i32*, i32** %3, align 8
  %121 = call i64 @IHTMLFrameBase_get_frameBorder(i32* %120, i64* %4)
  store i64 %121, i64* %5, align 8
  %122 = load i64, i64* %5, align 8
  %123 = load i64, i64* @S_OK, align 8
  %124 = icmp eq i64 %122, %123
  %125 = zext i1 %124 to i32
  %126 = load i64, i64* %5, align 8
  %127 = call i32 @ok(i32 %125, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i64 %126)
  %128 = load i64, i64* %4, align 8
  %129 = call i32 @strcmp_wa(i64 %128, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %130 = icmp ne i32 %129, 0
  %131 = xor i1 %130, true
  %132 = zext i1 %131 to i32
  %133 = load i64, i64* %4, align 8
  %134 = call i64 @wine_dbgstr_w(i64 %133)
  %135 = call i32 @ok(i32 %132, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0), i64 %134)
  %136 = load i32*, i32** %3, align 8
  %137 = call i32 @test_framebase_marginheight(i32* %136, i8* null)
  %138 = load i32*, i32** %3, align 8
  %139 = call i32 @set_framebase_marginheight(i32* %138, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  %140 = load i32*, i32** %3, align 8
  %141 = call i32 @test_framebase_marginheight(i32* %140, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %142 = load i32*, i32** %3, align 8
  %143 = call i32 @test_framebase_marginwidth(i32* %142, i8* null)
  %144 = load i32*, i32** %3, align 8
  %145 = call i32 @set_framebase_marginwidth(i32* %144, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  %146 = load i32*, i32** %3, align 8
  %147 = call i32 @test_framebase_marginwidth(i32* %146, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %148 = load i32*, i32** %3, align 8
  %149 = call i32 @IHTMLFrameBase_Release(i32* %148)
  ret void
}

declare dso_local i64 @IUnknown_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IHTMLFrameBase_get_scrolling(i32*, i64*) #1

declare dso_local i32 @strcmp_wa(i64, i8*) #1

declare dso_local i64 @wine_dbgstr_w(i64) #1

declare dso_local i32 @SysFreeString(i64) #1

declare dso_local i64 @a2bstr(i8*) #1

declare dso_local i64 @IHTMLFrameBase_put_scrolling(i32*, i64) #1

declare dso_local i64 @IHTMLFrameBase_get_frameBorder(i32*, i64*) #1

declare dso_local i64 @IHTMLFrameBase_put_frameBorder(i32*, i64) #1

declare dso_local i32 @test_framebase_marginheight(i32*, i8*) #1

declare dso_local i32 @set_framebase_marginheight(i32*, i8*) #1

declare dso_local i32 @test_framebase_marginwidth(i32*, i8*) #1

declare dso_local i32 @set_framebase_marginwidth(i32*, i8*) #1

declare dso_local i32 @IHTMLFrameBase_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
