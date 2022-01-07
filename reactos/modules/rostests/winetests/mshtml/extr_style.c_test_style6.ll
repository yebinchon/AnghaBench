; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_style.c_test_style6.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_style.c_test_style6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"get_outline failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"outline = %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"1px\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"put_outline failed: %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"get_boxSizing failed: %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"boxSizing = %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"border-box\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"put_boxSizing failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_style6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_style6(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  store i32* inttoptr (i64 3735928559 to i32*), i32** %3, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i64 @IHTMLStyle6_get_outline(i32* %5, i32** %3)
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @S_OK, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @ok(i32 %10, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = load i32*, i32** %3, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %15, %1
  %21 = phi i1 [ false, %1 ], [ %19, %15 ]
  %22 = zext i1 %21 to i32
  %23 = load i32*, i32** %3, align 8
  %24 = call i64 @wine_dbgstr_w(i32* %23)
  %25 = call i32 @ok(i32 %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64 %24)
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @SysFreeString(i32* %26)
  %28 = call i32* @a2bstr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32* %28, i32** %3, align 8
  %29 = load i32*, i32** %2, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = call i64 @IHTMLStyle6_put_outline(i32* %29, i32* %30)
  store i64 %31, i64* %4, align 8
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @S_OK, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 %36)
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @SysFreeString(i32* %38)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %3, align 8
  %40 = load i32*, i32** %2, align 8
  %41 = call i64 @IHTMLStyle6_get_outline(i32* %40, i32** %3)
  store i64 %41, i64* %4, align 8
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* @S_OK, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i64, i64* %4, align 8
  %47 = call i32 @ok(i32 %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %46)
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @wstr_contains(i32* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32*, i32** %3, align 8
  %51 = call i64 @wine_dbgstr_w(i32* %50)
  %52 = call i32 @ok(i32 %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64 %51)
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @SysFreeString(i32* %53)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %3, align 8
  %55 = load i32*, i32** %2, align 8
  %56 = call i64 @IHTMLStyle6_get_boxSizing(i32* %55, i32** %3)
  store i64 %56, i64* %4, align 8
  %57 = load i64, i64* %4, align 8
  %58 = load i64, i64* @S_OK, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = load i64, i64* %4, align 8
  %62 = call i32 @ok(i32 %60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i64 %61)
  %63 = load i32*, i32** %3, align 8
  %64 = icmp ne i32* %63, null
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = load i32*, i32** %3, align 8
  %68 = call i64 @wine_dbgstr_w(i32* %67)
  %69 = call i32 @ok(i32 %66, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i64 %68)
  %70 = load i32*, i32** %3, align 8
  %71 = call i32 @SysFreeString(i32* %70)
  %72 = call i32* @a2bstr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  store i32* %72, i32** %3, align 8
  %73 = load i32*, i32** %2, align 8
  %74 = load i32*, i32** %3, align 8
  %75 = call i64 @IHTMLStyle6_put_boxSizing(i32* %73, i32* %74)
  store i64 %75, i64* %4, align 8
  %76 = load i64, i64* %4, align 8
  %77 = load i64, i64* @S_OK, align 8
  %78 = icmp eq i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = load i64, i64* %4, align 8
  %81 = call i32 @ok(i32 %79, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i64 %80)
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 @SysFreeString(i32* %82)
  store i32* null, i32** %3, align 8
  %84 = load i32*, i32** %2, align 8
  %85 = call i64 @IHTMLStyle6_get_boxSizing(i32* %84, i32** %3)
  store i64 %85, i64* %4, align 8
  %86 = load i64, i64* %4, align 8
  %87 = load i64, i64* @S_OK, align 8
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = load i64, i64* %4, align 8
  %91 = call i32 @ok(i32 %89, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i64 %90)
  %92 = load i32*, i32** %3, align 8
  %93 = call i32 @strcmp_wa(i32* %92, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = load i32*, i32** %3, align 8
  %98 = call i64 @wine_dbgstr_w(i32* %97)
  %99 = call i32 @ok(i32 %96, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i64 %98)
  %100 = load i32*, i32** %3, align 8
  %101 = call i32 @SysFreeString(i32* %100)
  ret void
}

declare dso_local i64 @IHTMLStyle6_get_outline(i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @wine_dbgstr_w(i32*) #1

declare dso_local i32 @SysFreeString(i32*) #1

declare dso_local i32* @a2bstr(i8*) #1

declare dso_local i64 @IHTMLStyle6_put_outline(i32*, i32*) #1

declare dso_local i32 @wstr_contains(i32*, i8*) #1

declare dso_local i64 @IHTMLStyle6_get_boxSizing(i32*, i32**) #1

declare dso_local i64 @IHTMLStyle6_put_boxSizing(i32*, i32*) #1

declare dso_local i32 @strcmp_wa(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
