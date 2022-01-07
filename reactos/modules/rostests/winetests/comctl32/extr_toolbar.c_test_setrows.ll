; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_toolbar.c_test_setrows.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_toolbar.c_test_setrows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }

@TBSTYLE_FLAT = common dso_local global i32 0, align 4
@TBSTYLE_CHECKGROUP = common dso_local global i32 0, align 4
@hMainWnd = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@WS_CLIPCHILDREN = common dso_local global i32 0, align 4
@WS_CHILD = common dso_local global i32 0, align 4
@CCS_NORESIZE = common dso_local global i32 0, align 4
@CCS_NOPARENTALIGN = common dso_local global i32 0, align 4
@CCS_NOMOVEY = common dso_local global i32 0, align 4
@CCS_TOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Toolbar creation\0A\00", align 1
@TB_AUTOSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"TB_AUTOSIZE failed\0A\00", align 1
@tbrows_results = common dso_local global %struct.TYPE_6__* null, align 8
@TB_SETROWS = common dso_local global i32 0, align 4
@TB_GETROWS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"[%d] Unexpected number of rows %d (expected %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_setrows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_setrows() #0 {
  %1 = alloca [9 x %struct.TYPE_6__], align 16
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %20, %0
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 9
  br i1 %8, label %9, label %23

9:                                                ; preds = %6
  %10 = getelementptr inbounds [9 x %struct.TYPE_6__], [9 x %struct.TYPE_6__]* %1, i64 0, i64 0
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i64 %12
  %14 = load i32, i32* %3, align 4
  %15 = add nsw i32 1000, %14
  %16 = load i32, i32* @TBSTYLE_FLAT, align 4
  %17 = load i32, i32* @TBSTYLE_CHECKGROUP, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @MakeButton(%struct.TYPE_6__* %13, i32 %15, i32 %18, i32 0)
  br label %20

20:                                               ; preds = %9
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %6

23:                                               ; preds = %6
  %24 = load i32, i32* @hMainWnd, align 4
  %25 = load i32, i32* @WS_VISIBLE, align 4
  %26 = load i32, i32* @WS_CLIPCHILDREN, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @WS_CHILD, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @CCS_NORESIZE, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @CCS_NOPARENTALIGN, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @CCS_NOMOVEY, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @CCS_TOP, align 4
  %37 = or i32 %35, %36
  %38 = getelementptr inbounds [9 x %struct.TYPE_6__], [9 x %struct.TYPE_6__]* %1, i64 0, i64 0
  %39 = getelementptr inbounds [9 x %struct.TYPE_6__], [9 x %struct.TYPE_6__]* %1, i64 0, i64 0
  %40 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %39)
  %41 = call i32* @pCreateToolbarEx(i32 %24, i32 %37, i32 0, i32 0, i32* null, i32 0, %struct.TYPE_6__* %38, i32 %40, i32 20, i32 20, i32 0, i32 0, i32 12)
  store i32* %41, i32** %2, align 8
  %42 = load i32*, i32** %2, align 8
  %43 = icmp ne i32* %42, null
  %44 = zext i1 %43 to i32
  %45 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %46 = load i32*, i32** %2, align 8
  %47 = load i32, i32* @TB_AUTOSIZE, align 4
  %48 = call i32 @SendMessageA(i32* %46, i32 %47, i32 0, i32 0)
  %49 = icmp eq i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %99, %23
  %53 = load i32, i32* %3, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** @tbrows_results, align 8
  %55 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %54)
  %56 = icmp slt i32 %53, %55
  br i1 %56, label %57, label %102

57:                                               ; preds = %52
  %58 = call i32 @memset(i32* %4, i32 204, i32 4)
  %59 = load i32*, i32** %2, align 8
  %60 = load i32, i32* @TB_SETROWS, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** @tbrows_results, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** @tbrows_results, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @MAKELONG(i32 %66, i32 %72)
  %74 = ptrtoint i32* %4 to i32
  %75 = call i32 @SendMessageA(i32* %59, i32 %60, i32 %73, i32 %74)
  %76 = load i32*, i32** %2, align 8
  %77 = load i32, i32* @TB_GETROWS, align 4
  %78 = call i32 @MAKELONG(i32 0, i32 0)
  %79 = call i32 @MAKELONG(i32 0, i32 0)
  %80 = call i32 @SendMessageA(i32* %76, i32 %77, i32 %78, i32 %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** @tbrows_results, align 8
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %81, %87
  %89 = zext i1 %88 to i32
  %90 = load i32, i32* %3, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** @tbrows_results, align 8
  %93 = load i32, i32* %3, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %90, i32 %91, i32 %97)
  br label %99

99:                                               ; preds = %57
  %100 = load i32, i32* %3, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %3, align 4
  br label %52

102:                                              ; preds = %52
  %103 = load i32*, i32** %2, align 8
  %104 = call i32 @DestroyWindow(i32* %103)
  ret void
}

declare dso_local i32 @MakeButton(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32* @pCreateToolbarEx(i32, i32, i32, i32, i32*, i32, %struct.TYPE_6__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @SendMessageA(i32*, i32, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @MAKELONG(i32, i32) #1

declare dso_local i32 @DestroyWindow(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
