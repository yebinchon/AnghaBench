; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_contenteditable.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_contenteditable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"get_contentEditable failed: 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"put_contentEditable(%s) failed: 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Got %s, expected %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_contenteditable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_contenteditable(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32* @get_elem3_iface(i32* %7)
  store i32* %8, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i8* @IHTMLElement3_get_contentEditable(i32* %9, i32* %6)
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i8*, i8** @S_OK, align 8
  %13 = icmp eq i8* %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 (i32, i8*, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = call i32 @a2bstr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %17, i32* %5, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i8* @IHTMLElement3_put_contentEditable(i32* %18, i32 %19)
  store i8* %20, i8** %4, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = load i8*, i8** @S_OK, align 8
  %23 = icmp eq i8* %21, %22
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @wine_dbgstr_w(i32 %25)
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 (i32, i8*, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %28, i8* %29)
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @SysFreeString(i32 %31)
  %33 = load i32*, i32** %3, align 8
  %34 = call i8* @IHTMLElement3_get_contentEditable(i32* %33, i32* %5)
  store i8* %34, i8** %4, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = load i8*, i8** @S_OK, align 8
  %37 = icmp eq i8* %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 (i32, i8*, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %39)
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @strcmp_wa(i32 %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @wine_dbgstr_w(i32 %46)
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 (i32, i8*, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i8* @IHTMLElement3_put_contentEditable(i32* %51, i32 %52)
  store i8* %53, i8** %4, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = load i8*, i8** @S_OK, align 8
  %56 = icmp eq i8* %54, %55
  %57 = zext i1 %56 to i32
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @wine_dbgstr_w(i32 %58)
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to i8*
  %62 = load i8*, i8** %4, align 8
  %63 = call i32 (i32, i8*, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %61, i8* %62)
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @SysFreeString(i32 %64)
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 @IHTMLElement3_Release(i32* %66)
  ret void
}

declare dso_local i32* @get_elem3_iface(i32*) #1

declare dso_local i8* @IHTMLElement3_get_contentEditable(i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i8*, ...) #1

declare dso_local i32 @a2bstr(i8*) #1

declare dso_local i8* @IHTMLElement3_put_contentEditable(i32*, i32) #1

declare dso_local i32 @wine_dbgstr_w(i32) #1

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i32 @strcmp_wa(i32, i8*) #1

declare dso_local i32 @IHTMLElement3_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
