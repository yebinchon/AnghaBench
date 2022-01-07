; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/appshim/extr_dispmode.c_run_test.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/appshim/extr_dispmode.c_run_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32 (i32*)*, i32, i32, i32, i32, i32, i64 (i32*)* }

@tests = common dso_local global %struct.TYPE_2__* null, align 8
@pGetHookAPIs = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"NotifyShims\00", align 1
@pNotifyShims = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [76 x i8] c"%s not loaded, or does not export GetHookAPIs or pNotifyShims (%s, %p, %p)\0A\00", align 1
@g_Version = common dso_local global i64 0, align 8
@_WIN32_WINNT_WS03 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"Module %s has no version, faking 2k3\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Unable to redirect functions!\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Unable to unload %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @run_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_test(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %8 = load i64, i64* %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @LoadShimDLL(i32 %11, i32** %6, i32** @pGetHookAPIs)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32* null, i32** @pGetHookAPIs, align 8
  br label %15

15:                                               ; preds = %14, %2
  %16 = load i32*, i32** %6, align 8
  %17 = call i64 @GetProcAddress(i32* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** @pNotifyShims, align 8
  %19 = load i32*, i32** @pGetHookAPIs, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i8*, i8** @pNotifyShims, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %39, label %24

24:                                               ; preds = %21, %15
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %26 = load i64, i64* %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @wine_dbgstr_w(i32 %29)
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %32 = load i64, i64* %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 8
  %36 = load i32*, i32** @pGetHookAPIs, align 8
  %37 = load i8*, i8** @pNotifyShims, align 8
  %38 = call i32 @skip(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %35, i32* %36, i8* %37)
  br label %130

39:                                               ; preds = %21
  %40 = load i32*, i32** %6, align 8
  %41 = call i64 @get_module_version(i32* %40)
  store i64 %41, i64* @g_Version, align 8
  %42 = load i64, i64* @g_Version, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %39
  %45 = load i64, i64* @_WIN32_WINNT_WS03, align 8
  store i64 %45, i64* @g_Version, align 8
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %47 = load i64, i64* %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @wine_dbgstr_w(i32 %50)
  %52 = call i32 @trace(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %44, %39
  %54 = load i64, i64* @g_Version, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %56 = load i64, i64* %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp sge i64 %54, %59
  br i1 %60, label %61, label %108

61:                                               ; preds = %53
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %63 = load i64, i64* %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 8
  %66 = load i64 (i32*)*, i64 (i32*)** %65, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = call i64 %66(i32* %67)
  store i64 %68, i64* %5, align 8
  %69 = load i64, i64* %5, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %105

71:                                               ; preds = %61
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %73 = load i64, i64* %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %78 = load i64, i64* %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %83 = load i64, i64* %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %88 = load i64, i64* %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %93 = load i64, i64* %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @test_one(i32 %76, i32 %81, i32 %86, i32 %91, i32 %96)
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %99 = load i64, i64* %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 2
  %102 = load i32 (i32*)*, i32 (i32*)** %101, align 8
  %103 = load i32*, i32** %6, align 8
  %104 = call i32 %102(i32* %103)
  br label %107

105:                                              ; preds = %61
  %106 = call i32 (i32, i8*, ...) @ok(i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %107

107:                                              ; preds = %105, %71
  br label %108

108:                                              ; preds = %107, %53
  %109 = load i32*, i32** %6, align 8
  %110 = call i32 @FreeLibrary(i32* %109)
  %111 = load i64, i64* %4, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %130

113:                                              ; preds = %108
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %115 = load i64, i64* %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i32* @GetModuleHandleW(i32 %118)
  store i32* %119, i32** %6, align 8
  %120 = load i32*, i32** %6, align 8
  %121 = icmp eq i32* %120, null
  %122 = zext i1 %121 to i32
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tests, align 8
  %124 = load i64, i64* %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @wine_dbgstr_w(i32 %127)
  %129 = call i32 (i32, i8*, ...) @ok(i32 %122, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %128)
  br label %130

130:                                              ; preds = %24, %113, %108
  ret void
}

declare dso_local i32 @LoadShimDLL(i32, i32**, i32**) #1

declare dso_local i64 @GetProcAddress(i32*, i8*) #1

declare dso_local i32 @skip(i8*, i32, i32, i32*, i8*) #1

declare dso_local i32 @wine_dbgstr_w(i32) #1

declare dso_local i64 @get_module_version(i32*) #1

declare dso_local i32 @trace(i8*, i32) #1

declare dso_local i32 @test_one(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @FreeLibrary(i32*) #1

declare dso_local i32* @GetModuleHandleW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
