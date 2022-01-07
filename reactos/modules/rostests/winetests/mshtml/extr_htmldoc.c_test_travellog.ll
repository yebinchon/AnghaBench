; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_test_travellog.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_test_travellog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"get_parentWindow failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"window = NULL\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"get_top failed: %08x\0A\00", align 1
@IID_ITravelLogClient = common dso_local global i32 0, align 4
@E_NOINTERFACE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"ITravelLogClient not supported\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@no_travellog = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"Could not get ITraveLogClient iface: %08x\0A\00", align 1
@E_FAIL = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"FindWindowByIndex failed: %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"unk != NULL\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_travellog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_travellog(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  store i32* null, i32** %4, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i64 @IHTMLDocument2_get_parentWindow(i32* %8, i32** %4)
  store i64 %9, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* @S_OK, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i64, i64* %7, align 8
  %15 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load i32*, i32** %4, align 8
  %17 = icmp ne i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32*, i32** %4, align 8
  %21 = call i64 @IHTMLWindow2_get_top(i32* %20, i32** %5)
  store i64 %21, i64* %7, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @IHTMLWindow2_Release(i32* %22)
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @S_OK, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i64, i64* %7, align 8
  %29 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %28)
  %30 = load i32*, i32** %5, align 8
  %31 = bitcast i32** %3 to i8**
  %32 = call i64 @IHTMLWindow2_QueryInterface(i32* %30, i32* @IID_ITravelLogClient, i8** %31)
  store i64 %32, i64* %7, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @IHTMLWindow2_Release(i32* %33)
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @E_NOINTERFACE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %1
  %39 = call i32 @win_skip(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %40 = load i32, i32* @TRUE, align 4
  store i32 %40, i32* @no_travellog, align 4
  br label %63

41:                                               ; preds = %1
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* @S_OK, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i64, i64* %7, align 8
  %47 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i64 %46)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %6, align 8
  %48 = load i32*, i32** %3, align 8
  %49 = call i64 @ITravelLogClient_FindWindowByIndex(i32* %48, i32 0, i32** %6)
  store i64 %49, i64* %7, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* @E_FAIL, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = load i64, i64* %7, align 8
  %55 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i64 %54)
  %56 = load i32*, i32** %6, align 8
  %57 = icmp ne i32* %56, null
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @ITravelLogClient_Release(i32* %61)
  br label %63

63:                                               ; preds = %41, %38
  ret void
}

declare dso_local i64 @IHTMLDocument2_get_parentWindow(i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @IHTMLWindow2_get_top(i32*, i32**) #1

declare dso_local i32 @IHTMLWindow2_Release(i32*) #1

declare dso_local i64 @IHTMLWindow2_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i64 @ITravelLogClient_FindWindowByIndex(i32*, i32, i32**) #1

declare dso_local i32 @ITravelLogClient_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
