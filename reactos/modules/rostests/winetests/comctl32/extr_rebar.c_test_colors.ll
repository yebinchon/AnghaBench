; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_rebar.c_test_colors.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_rebar.c_test_colors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@RB_GETTEXTCOLOR = common dso_local global i32 0, align 4
@CLR_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@RB_GETBKCOLOR = common dso_local global i32 0, align 4
@RB_GETCOLORSCHEME = common dso_local global i32 0, align 4
@CLR_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"RB_GETCOLORSCHEME not supported\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@REBARBANDINFOA_V6_SIZE = common dso_local global i32 0, align 4
@RBBIM_COLORS = common dso_local global i32 0, align 4
@RB_GETBANDINFOA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"RB_GETBANDINFOA failed\0A\00", align 1
@COLOR_3DFACE = common dso_local global i32 0, align 4
@RB_SETTEXTCOLOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_colors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_colors() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__, align 4
  %6 = call i32 (...) @create_rebar_control()
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @RB_GETTEXTCOLOR, align 4
  %9 = call i8* @SendMessageA(i32 %7, i32 %8, i32 0, i32 0)
  %10 = ptrtoint i8* %9 to i32
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @CLR_NONE, align 4
  %13 = call i32 @compare(i32 %11, i32 %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @RB_GETBKCOLOR, align 4
  %16 = call i8* @SendMessageA(i32 %14, i32 %15, i32 0, i32 0)
  %17 = ptrtoint i8* %16 to i32
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @CLR_NONE, align 4
  %20 = call i32 @compare(i32 %18, i32 %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 12, i32* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  store i32 0, i32* %23, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @RB_GETCOLORSCHEME, align 4
  %26 = ptrtoint %struct.TYPE_4__* %1 to i32
  %27 = call i8* @SendMessageA(i32 %24, i32 %25, i32 0, i32 %26)
  store i8* %27, i8** %3, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @CLR_DEFAULT, align 4
  %34 = call i32 @compare(i32 %32, i32 %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @CLR_DEFAULT, align 4
  %38 = call i32 @compare(i32 %36, i32 %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %41

39:                                               ; preds = %0
  %40 = call i32 @skip(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %30
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @add_band_w(i32 %42, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 10, i32 10)
  %44 = load i32, i32* @REBARBANDINFOA_V6_SIZE, align 4
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @RBBIM_COLORS, align 4
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  store i32 %46, i32* %47, align 4
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i32 790526, i32* %48, align 4
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i32 790526, i32* %49, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @RB_GETBANDINFOA, align 4
  %52 = ptrtoint %struct.TYPE_3__* %5 to i32
  %53 = call i8* @SendMessageA(i32 %50, i32 %51, i32 0, i32 %52)
  store i8* %53, i8** %3, align 8
  %54 = load i8*, i8** %3, align 8
  %55 = call i32 @ok(i8* %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @RGB(i32 0, i32 0, i32 0)
  %59 = call i32 @compare(i32 %57, i32 %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @COLOR_3DFACE, align 4
  %63 = call i32 @GetSysColor(i32 %62)
  %64 = call i32 @compare(i32 %61, i32 %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @RB_SETTEXTCOLOR, align 4
  %67 = call i32 @RGB(i32 255, i32 0, i32 0)
  %68 = call i8* @SendMessageA(i32 %65, i32 %66, i32 0, i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i32 790526, i32* %69, align 4
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i32 790526, i32* %70, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @RB_GETBANDINFOA, align 4
  %73 = ptrtoint %struct.TYPE_3__* %5 to i32
  %74 = call i8* @SendMessageA(i32 %71, i32 %72, i32 0, i32 %73)
  store i8* %74, i8** %3, align 8
  %75 = load i8*, i8** %3, align 8
  %76 = call i32 @ok(i8* %75, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @RGB(i32 0, i32 0, i32 0)
  %80 = call i32 @compare(i32 %78, i32 %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @DestroyWindow(i32 %81)
  ret void
}

declare dso_local i32 @create_rebar_control(...) #1

declare dso_local i8* @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @compare(i32, i32, i8*) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @add_band_w(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ok(i8*, i8*) #1

declare dso_local i32 @RGB(i32, i32, i32) #1

declare dso_local i32 @GetSysColor(i32) #1

declare dso_local i32 @DestroyWindow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
