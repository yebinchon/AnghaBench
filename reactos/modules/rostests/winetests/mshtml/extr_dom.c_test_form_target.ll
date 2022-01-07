; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_form_target.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_form_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_form_target.target = internal constant [7 x i8] c"_blank\00", align 1
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"put_target(%s) failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"get_target failed: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Expected %s, got %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_form_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_form_target(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32* @get_form_iface(i32* %6)
  store i32* %7, i32** %3, align 8
  %8 = call i32 @a2bstr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @test_form_target.target, i64 0, i64 0))
  store i32 %8, i32* %5, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @IHTMLFormElement_put_target(i32* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @S_OK, align 4
  %14 = icmp eq i32 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* %4, align 4
  %17 = call i32 (i32, i8*, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @test_form_target.target, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @SysFreeString(i32 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @IHTMLFormElement_get_target(i32* %20, i32* %5)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @S_OK, align 4
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 (i32, i8*, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @strcmp_wa(i32 %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @test_form_target.target, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @wine_dbgstr_w(i32 %35)
  %37 = call i32 (i32, i8*, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @test_form_target.target, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @SysFreeString(i32 %38)
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @IHTMLFormElement_Release(i32* %40)
  ret void
}

declare dso_local i32* @get_form_iface(i32*) #1

declare dso_local i32 @a2bstr(i8*) #1

declare dso_local i32 @IHTMLFormElement_put_target(i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, i8*, ...) #1

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i32 @IHTMLFormElement_get_target(i32*, i32*) #1

declare dso_local i32 @strcmp_wa(i32, i8*) #1

declare dso_local i32 @wine_dbgstr_w(i32) #1

declare dso_local i32 @IHTMLFormElement_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
