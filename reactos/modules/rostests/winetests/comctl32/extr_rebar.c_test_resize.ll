; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_rebar.c_test_resize.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_rebar.c_test_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i64, i32*, i32 }

@CCS_TOP = common dso_local global i32 0, align 4
@CCS_NODIVIDER = common dso_local global i32 0, align 4
@CCS_BOTTOM = common dso_local global i32 0, align 4
@CCS_VERT = common dso_local global i32 0, align 4
@CCS_RIGHT = common dso_local global i32 0, align 4
@CCS_NOPARENTALIGN = common dso_local global i32 0, align 4
@CCS_NORESIZE = common dso_local global i32 0, align 4
@CCS_NOMOVEY = common dso_local global i32 0, align 4
@WS_BORDER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"style %08x\00", align 1
@height_change_notify_rect = common dso_local global i32 0, align 4
@REBARCLASSNAMEA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@WS_CHILD = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@hMainWnd = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@WM_WINDOWPOSCHANGING = common dso_local global i32 0, align 4
@WM_WINDOWPOSCHANGED = common dso_local global i32 0, align 4
@WM_SIZE = common dso_local global i32 0, align 4
@SIZE_RESTORED = common dso_local global i32 0, align 4
@RB_DELETEBAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_resize() #0 {
  %1 = alloca [15 x i32], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_2__, align 8
  %6 = getelementptr inbounds [15 x i32], [15 x i32]* %1, i64 0, i64 0
  %7 = load i32, i32* @CCS_TOP, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds i32, i32* %6, i64 1
  %9 = load i32, i32* @CCS_TOP, align 4
  %10 = load i32, i32* @CCS_NODIVIDER, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %8, align 4
  %12 = getelementptr inbounds i32, i32* %8, i64 1
  %13 = load i32, i32* @CCS_BOTTOM, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds i32, i32* %12, i64 1
  %15 = load i32, i32* @CCS_BOTTOM, align 4
  %16 = load i32, i32* @CCS_NODIVIDER, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %14, align 4
  %18 = getelementptr inbounds i32, i32* %14, i64 1
  %19 = load i32, i32* @CCS_VERT, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds i32, i32* %18, i64 1
  %21 = load i32, i32* @CCS_RIGHT, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds i32, i32* %20, i64 1
  %23 = load i32, i32* @CCS_NOPARENTALIGN, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds i32, i32* %22, i64 1
  %25 = load i32, i32* @CCS_NOPARENTALIGN, align 4
  %26 = load i32, i32* @CCS_NODIVIDER, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %24, align 4
  %28 = getelementptr inbounds i32, i32* %24, i64 1
  %29 = load i32, i32* @CCS_NORESIZE, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds i32, i32* %28, i64 1
  %31 = load i32, i32* @CCS_NOMOVEY, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds i32, i32* %30, i64 1
  %33 = load i32, i32* @CCS_NOMOVEY, align 4
  %34 = load i32, i32* @CCS_VERT, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %32, align 4
  %36 = getelementptr inbounds i32, i32* %32, i64 1
  %37 = load i32, i32* @CCS_TOP, align 4
  %38 = load i32, i32* @WS_BORDER, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %36, align 4
  %40 = getelementptr inbounds i32, i32* %36, i64 1
  %41 = load i32, i32* @CCS_NOPARENTALIGN, align 4
  %42 = load i32, i32* @CCS_NODIVIDER, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @WS_BORDER, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %40, align 4
  %46 = getelementptr inbounds i32, i32* %40, i64 1
  %47 = load i32, i32* @CCS_NORESIZE, align 4
  %48 = load i32, i32* @WS_BORDER, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %46, align 4
  %50 = getelementptr inbounds i32, i32* %46, i64 1
  %51 = load i32, i32* @CCS_NOMOVEY, align 4
  %52 = load i32, i32* @WS_BORDER, align 4
  %53 = or i32 %51, %52
  store i32 %53, i32* %50, align 4
  %54 = getelementptr inbounds [15 x i32], [15 x i32]* %1, i64 0, i64 0
  %55 = call i32 @ARRAY_SIZE(i32* %54)
  store i32 %55, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %150, %0
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* %2, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %153

60:                                               ; preds = %56
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [15 x i32], [15 x i32]* %1, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @comment(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = call i32 @SetRect(i32* @height_change_notify_rect, i32 -1, i32 -1, i32 -1, i32 -1)
  %67 = load i32, i32* @REBARCLASSNAMEA, align 4
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [15 x i32], [15 x i32]* %1, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @WS_CHILD, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @WS_VISIBLE, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @hMainWnd, align 4
  %77 = call i32 @GetModuleHandleA(i32* null)
  %78 = call i32 @CreateWindowA(i32 %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 10, i32 5, i32 500, i32 15, i32 %76, i32* null, i32 %77, i32 0)
  store i32 %78, i32* %4, align 4
  %79 = call i32 (...) @check_client()
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @add_band_w(i32 %80, i32* null, i32 70, i32 100, i32 0)
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [15 x i32], [15 x i32]* %1, i64 0, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @CCS_NOPARENTALIGN, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %60
  %90 = call i32 (...) @check_client()
  br label %91

91:                                               ; preds = %89, %60
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @add_band_w(i32 %92, i32* null, i32 70, i32 100, i32 0)
  %94 = call i32 (...) @check_client()
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @TRUE, align 4
  %97 = call i32 @MoveWindow(i32 %95, i32 10, i32 10, i32 100, i32 100, i32 %96)
  %98 = call i32 (...) @check_client()
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @TRUE, align 4
  %101 = call i32 @MoveWindow(i32 %99, i32 0, i32 0, i32 0, i32 0, i32 %100)
  %102 = call i32 (...) @check_client()
  %103 = load i32, i32* %3, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [15 x i32], [15 x i32]* %1, i64 0, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @CCS_NORESIZE, align 4
  %108 = load i32, i32* @CCS_NOPARENTALIGN, align 4
  %109 = or i32 %107, %108
  %110 = and i32 %106, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %136

112:                                              ; preds = %91
  %113 = load i32, i32* %4, align 4
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 6
  store i32 %113, i32* %114, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 5
  store i32* null, i32** %115, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store i32 500, i32* %116, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  store i32 500, i32* %117, align 4
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 2
  store i32 10, i32* %118, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 3
  store i32 10, i32* %119, align 4
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 4
  store i64 0, i64* %120, align 8
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* @WM_WINDOWPOSCHANGING, align 4
  %123 = ptrtoint %struct.TYPE_2__* %5 to i32
  %124 = call i32 @SendMessageA(i32 %121, i32 %122, i32 0, i32 %123)
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* @WM_WINDOWPOSCHANGED, align 4
  %127 = ptrtoint %struct.TYPE_2__* %5 to i32
  %128 = call i32 @SendMessageA(i32 %125, i32 %126, i32 0, i32 %127)
  %129 = call i32 (...) @check_client()
  %130 = load i32, i32* %4, align 4
  %131 = load i32, i32* @WM_SIZE, align 4
  %132 = load i32, i32* @SIZE_RESTORED, align 4
  %133 = call i32 @MAKELONG(i32 500, i32 500)
  %134 = call i32 @SendMessageA(i32 %130, i32 %131, i32 %132, i32 %133)
  %135 = call i32 (...) @check_client()
  br label %136

136:                                              ; preds = %112, %91
  %137 = load i32, i32* %4, align 4
  %138 = load i32, i32* @RB_DELETEBAND, align 4
  %139 = call i32 @SendMessageA(i32 %137, i32 %138, i32 0, i32 0)
  %140 = call i32 (...) @check_client()
  %141 = load i32, i32* %4, align 4
  %142 = load i32, i32* @RB_DELETEBAND, align 4
  %143 = call i32 @SendMessageA(i32 %141, i32 %142, i32 0, i32 0)
  %144 = load i32, i32* %4, align 4
  %145 = load i32, i32* @TRUE, align 4
  %146 = call i32 @MoveWindow(i32 %144, i32 0, i32 0, i32 100, i32 100, i32 %145)
  %147 = call i32 (...) @check_client()
  %148 = load i32, i32* %4, align 4
  %149 = call i32 @DestroyWindow(i32 %148)
  br label %150

150:                                              ; preds = %136
  %151 = load i32, i32* %3, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %3, align 4
  br label %56

153:                                              ; preds = %56
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @comment(i8*, i32) #1

declare dso_local i32 @SetRect(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @CreateWindowA(i32, i8*, i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @GetModuleHandleA(i32*) #1

declare dso_local i32 @check_client(...) #1

declare dso_local i32 @add_band_w(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @MoveWindow(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @MAKELONG(i32, i32) #1

declare dso_local i32 @DestroyWindow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
