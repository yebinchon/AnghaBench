; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_location.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"get_location failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"location != location2\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"get_parentWindow failed: %08x\0A\00", align 1
@location_iids = common dso_local global i32 0, align 4
@DIID_DispHTMLLocation = common dso_local global i32 0, align 4
@IID_IHTMLLocation = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"about:blank\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"get_pathname failed: %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"blank\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"unexpected pathname %s\0A\00", align 1
@E_POINTER = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [23 x i8] c"get_href passed: %08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"get_href failed: %08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"unexpected href %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"location chould be destroyed here\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_location(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i64 @IHTMLDocument2_get_location(i32* %9, i32** %3)
  store i64 %10, i64* %8, align 8
  %11 = load i64, i64* %8, align 8
  %12 = load i64, i64* @S_OK, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i64, i64* %8, align 8
  %16 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load i32*, i32** %2, align 8
  %18 = call i64 @IHTMLDocument2_get_location(i32* %17, i32** %4)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @S_OK, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i64, i64* %8, align 8
  %24 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %23)
  %25 = load i32*, i32** %3, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = icmp eq i32* %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @IHTMLLocation_Release(i32* %30)
  %32 = load i32*, i32** %2, align 8
  %33 = call i64 @IHTMLDocument2_get_parentWindow(i32* %32, i32** %5)
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @S_OK, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load i64, i64* %8, align 8
  %39 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %38)
  %40 = load i32*, i32** %5, align 8
  %41 = call i64 @IHTMLWindow2_get_location(i32* %40, i32** %4)
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @S_OK, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i64, i64* %8, align 8
  %47 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %46)
  %48 = load i32*, i32** %3, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = icmp eq i32* %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @IHTMLLocation_Release(i32* %53)
  %55 = load i32*, i32** %3, align 8
  %56 = load i32, i32* @location_iids, align 4
  %57 = call i32 @test_ifaces(i32* %55, i32 %56)
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @test_disp2(i32* %58, i32* @DIID_DispHTMLLocation, i32* @IID_IHTMLLocation, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %60 = load i32*, i32** %3, align 8
  %61 = call i64 @IHTMLLocation_get_pathname(i32* %60, i32* %6)
  store i64 %61, i64* %8, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* @S_OK, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = load i64, i64* %8, align 8
  %67 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %66)
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @strcmp_wa(i32 %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @wine_dbgstr_w(i32 %73)
  %75 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @SysFreeString(i32 %76)
  %78 = load i32*, i32** %3, align 8
  %79 = call i64 @IHTMLLocation_get_href(i32* %78, i32* null)
  store i64 %79, i64* %8, align 8
  %80 = load i64, i64* %8, align 8
  %81 = load i64, i64* @E_POINTER, align 8
  %82 = icmp eq i64 %80, %81
  %83 = zext i1 %82 to i32
  %84 = load i64, i64* %8, align 8
  %85 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 %84)
  %86 = load i32*, i32** %3, align 8
  %87 = call i64 @IHTMLLocation_get_href(i32* %86, i32* %6)
  store i64 %87, i64* %8, align 8
  %88 = load i64, i64* %8, align 8
  %89 = load i64, i64* @S_OK, align 8
  %90 = icmp eq i64 %88, %89
  %91 = zext i1 %90 to i32
  %92 = load i64, i64* %8, align 8
  %93 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i64 %92)
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @strcmp_wa(i32 %94, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @wine_dbgstr_w(i32 %99)
  %101 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @SysFreeString(i32 %102)
  %104 = load i32*, i32** %3, align 8
  %105 = call i32 @IHTMLLocation_Release(i32* %104)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  %110 = call i32 (i32, i8*, ...) @ok(i32 %109, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  ret void
}

declare dso_local i64 @IHTMLDocument2_get_location(i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @IHTMLLocation_Release(i32*) #1

declare dso_local i64 @IHTMLDocument2_get_parentWindow(i32*, i32**) #1

declare dso_local i64 @IHTMLWindow2_get_location(i32*, i32**) #1

declare dso_local i32 @test_ifaces(i32*, i32) #1

declare dso_local i32 @test_disp2(i32*, i32*, i32*, i8*) #1

declare dso_local i64 @IHTMLLocation_get_pathname(i32*, i32*) #1

declare dso_local i32 @strcmp_wa(i32, i8*) #1

declare dso_local i32 @wine_dbgstr_w(i32) #1

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i64 @IHTMLLocation_get_href(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
