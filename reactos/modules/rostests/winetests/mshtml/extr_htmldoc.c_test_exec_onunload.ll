; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_test_exec_onunload.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_test_exec_onunload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IOleCommandTarget = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"QueryInterface(IID_IOleCommandTarget) failed: %08x\0A\00", align 1
@OLECMDID_ONUNLOAD = common dso_local global i32 0, align 4
@OLECMDEXECOPT_DODEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Exec(..., OLECMDID_ONUNLOAD, ...) failed: %08x\0A\00", align 1
@VT_BOOL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"V_VT(var)=%d, expected VT_BOOL\0A\00", align 1
@VARIANT_TRUE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"V_BOOL(var)=%x, expected VARIANT_TRUE\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_exec_onunload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_exec_onunload(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = bitcast i32** %3 to i8**
  %8 = call i64 @IHTMLDocument2_QueryInterface(i32* %6, i32* @IID_IOleCommandTarget, i8** %7)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @S_OK, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @ok(i32 %12, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @FAILED(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %55

19:                                               ; preds = %1
  %20 = call i32 @memset(i32* %4, i32 10, i32 4)
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* @OLECMDID_ONUNLOAD, align 4
  %23 = load i32, i32* @OLECMDEXECOPT_DODEFAULT, align 4
  %24 = call i64 @IOleCommandTarget_Exec(i32* %21, i32* null, i32 %22, i32 %23, i32* null, i32* %4)
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @S_OK, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  %31 = call i64 @V_VT(i32* %4)
  %32 = load i64, i64* @VT_BOOL, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i64 @V_VT(i32* %4)
  %36 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %35)
  %37 = call i64 @V_BOOL(i32* %4)
  %38 = load i64, i64* @VARIANT_TRUE, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i64 @V_BOOL(i32* %4)
  %42 = call i32 @ok(i32 %40, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64 %41)
  %43 = load i32*, i32** %3, align 8
  %44 = load i32, i32* @OLECMDID_ONUNLOAD, align 4
  %45 = load i32, i32* @OLECMDEXECOPT_DODEFAULT, align 4
  %46 = call i64 @IOleCommandTarget_Exec(i32* %43, i32* null, i32 %44, i32 %45, i32* null, i32* null)
  store i64 %46, i64* %5, align 8
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @S_OK, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @ok(i32 %50, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %51)
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @IOleCommandTarget_Release(i32* %53)
  br label %55

55:                                               ; preds = %19, %18
  ret void
}

declare dso_local i64 @IHTMLDocument2_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @IOleCommandTarget_Exec(i32*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i64 @V_VT(i32*) #1

declare dso_local i64 @V_BOOL(i32*) #1

declare dso_local i32 @IOleCommandTarget_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
