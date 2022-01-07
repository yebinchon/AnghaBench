; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_plugins_col.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_plugins_col.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"get_navigator failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"get_plugins failed: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"col != col2\0A\00", align 1
@DIID_DispCPlugins = common dso_local global i32 0, align 4
@IID_IHTMLPluginsCollection = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"[object]\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"get_length failed: %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"length = %d\0A\00", align 1
@VARIANT_FALSE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"refresh failed: %08x\0A\00", align 1
@VARIANT_TRUE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"ref=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_plugins_col to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_plugins_col(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = call i32* @get_doc_window(i32* %10)
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @IHTMLWindow2_get_navigator(i32* %12, i32** %6)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @S_OK, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %9, align 4
  %19 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @IHTMLWindow2_Release(i32* %20)
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @IOmNavigator_get_plugins(i32* %22, i32** %3)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @S_OK, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* %9, align 4
  %29 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @IOmNavigator_get_plugins(i32* %30, i32** %4)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @S_OK, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* %9, align 4
  %37 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32*, i32** %3, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @iface_cmp(i32* %38, i32* %39)
  %41 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @IHTMLPluginsCollection_Release(i32* %42)
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @test_disp2(i32* %44, i32* @DIID_DispCPlugins, i32* @IID_IHTMLPluginsCollection, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i32 -559038737, i32* %8, align 4
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @IHTMLPluginsCollection_get_length(i32* %46, i32* %8)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @S_OK, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %9, align 4
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = load i32, i32* %8, align 4
  %59 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %58)
  %60 = load i32*, i32** %3, align 8
  %61 = load i32, i32* @VARIANT_FALSE, align 4
  %62 = call i32 @IHTMLPluginsCollection_refresh(i32* %60, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @S_OK, align 4
  %65 = icmp eq i32 %63, %64
  %66 = zext i1 %65 to i32
  %67 = load i32, i32* %9, align 4
  %68 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %67)
  %69 = load i32*, i32** %3, align 8
  %70 = load i32, i32* @VARIANT_TRUE, align 4
  %71 = call i32 @IHTMLPluginsCollection_refresh(i32* %69, i32 %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @S_OK, align 4
  %74 = icmp eq i32 %72, %73
  %75 = zext i1 %74 to i32
  %76 = load i32, i32* %9, align 4
  %77 = call i32 (i32, i8*, ...) @ok(i32 %75, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %76)
  %78 = load i32*, i32** %3, align 8
  %79 = call i32 @IHTMLPluginsCollection_Release(i32* %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %7, align 4
  %85 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %84)
  %86 = load i32*, i32** %6, align 8
  %87 = call i32 @IOmNavigator_Release(i32* %86)
  ret void
}

declare dso_local i32* @get_doc_window(i32*) #1

declare dso_local i32 @IHTMLWindow2_get_navigator(i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @IHTMLWindow2_Release(i32*) #1

declare dso_local i32 @IOmNavigator_get_plugins(i32*, i32**) #1

declare dso_local i32 @iface_cmp(i32*, i32*) #1

declare dso_local i32 @IHTMLPluginsCollection_Release(i32*) #1

declare dso_local i32 @test_disp2(i32*, i32*, i32*, i8*) #1

declare dso_local i32 @IHTMLPluginsCollection_get_length(i32*, i32*) #1

declare dso_local i32 @IHTMLPluginsCollection_refresh(i32*, i32) #1

declare dso_local i32 @IOmNavigator_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
