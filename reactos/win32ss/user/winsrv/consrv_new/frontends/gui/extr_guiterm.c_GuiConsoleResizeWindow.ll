; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv_new/frontends/gui/extr_guiterm.c_GuiConsoleResizeWindow.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv_new/frontends/gui/extr_guiterm.c_GuiConsoleResizeWindow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i64 }

@SM_CXFRAME = common dso_local global i32 0, align 4
@SM_CXEDGE = common dso_local global i32 0, align 4
@SM_CYFRAME = common dso_local global i32 0, align 4
@SM_CYEDGE = common dso_local global i32 0, align 4
@SM_CYCAPTION = common dso_local global i32 0, align 4
@SIF_RANGE = common dso_local global i32 0, align 4
@SIF_PAGE = common dso_local global i32 0, align 4
@SIF_POS = common dso_local global i32 0, align 4
@SB_VERT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SM_CXVSCROLL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SB_HORZ = common dso_local global i32 0, align 4
@SM_CYHSCROLL = common dso_local global i32 0, align 4
@SWP_NOZORDER = common dso_local global i32 0, align 4
@SWP_NOMOVE = common dso_local global i32 0, align 4
@SWP_NOACTIVATE = common dso_local global i32 0, align 4
@SWP_NOCOPYBITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @GuiConsoleResizeWindow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GuiConsoleResizeWindow(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_15__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.TYPE_17__* @ConDrvGetActiveScreenBuffer(i32 %14)
  store %struct.TYPE_17__* %15, %struct.TYPE_17__** %5, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %18 = call i32 @GetScreenBufferSizeUnits(%struct.TYPE_17__* %16, %struct.TYPE_16__* %17, i32* %9, i32* %10)
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %9, align 4
  %24 = mul nsw i32 %22, %23
  %25 = load i32, i32* @SM_CXFRAME, align 4
  %26 = call i32 @GetSystemMetrics(i32 %25)
  %27 = load i32, i32* @SM_CXEDGE, align 4
  %28 = call i32 @GetSystemMetrics(i32 %27)
  %29 = add nsw i32 %26, %28
  %30 = mul nsw i32 2, %29
  %31 = add nsw i32 %24, %30
  store i32 %31, i32* %7, align 4
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %10, align 4
  %37 = mul nsw i32 %35, %36
  %38 = load i32, i32* @SM_CYFRAME, align 4
  %39 = call i32 @GetSystemMetrics(i32 %38)
  %40 = load i32, i32* @SM_CYEDGE, align 4
  %41 = call i32 @GetSystemMetrics(i32 %40)
  %42 = add nsw i32 %39, %41
  %43 = mul nsw i32 2, %42
  %44 = add nsw i32 %37, %43
  %45 = load i32, i32* @SM_CYCAPTION, align 4
  %46 = call i32 @GetSystemMetrics(i32 %45)
  %47 = add nsw i32 %44, %46
  store i32 %47, i32* %8, align 4
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  store i32 32, i32* %48, align 8
  %49 = load i32, i32* @SIF_RANGE, align 4
  %50 = load i32, i32* @SIF_PAGE, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @SIF_POS, align 4
  %53 = or i32 %51, %52
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 1
  store i32 %53, i32* %54, align 4
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 5
  store i64 0, i64* %55, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp sgt i32 %59, %63
  br i1 %64, label %65, label %98

65:                                               ; preds = %1
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %69, 1
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 2
  store i32 %70, i32* %71, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 3
  store i32 %75, i32* %76, align 4
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 4
  store i32 %80, i32* %81, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @SB_VERT, align 4
  %86 = load i32, i32* @TRUE, align 4
  %87 = call i32 @SetScrollInfo(i32 %84, i32 %85, %struct.TYPE_15__* %6, i32 %86)
  %88 = load i32, i32* @SM_CXVSCROLL, align 4
  %89 = call i32 @GetSystemMetrics(i32 %88)
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %7, align 4
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @SB_VERT, align 4
  %96 = load i32, i32* @TRUE, align 4
  %97 = call i32 @ShowScrollBar(i32 %94, i32 %95, i32 %96)
  br label %105

98:                                               ; preds = %1
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @SB_VERT, align 4
  %103 = load i32, i32* @FALSE, align 4
  %104 = call i32 @ShowScrollBar(i32 %101, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %98, %65
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp sgt i32 %109, %113
  br i1 %114, label %115, label %148

115:                                              ; preds = %105
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = sub nsw i32 %119, 1
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 2
  store i32 %120, i32* %121, align 8
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 3
  store i32 %125, i32* %126, align 4
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 4
  store i32 %130, i32* %131, align 8
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @SB_HORZ, align 4
  %136 = load i32, i32* @TRUE, align 4
  %137 = call i32 @SetScrollInfo(i32 %134, i32 %135, %struct.TYPE_15__* %6, i32 %136)
  %138 = load i32, i32* @SM_CYHSCROLL, align 4
  %139 = call i32 @GetSystemMetrics(i32 %138)
  %140 = load i32, i32* %8, align 4
  %141 = add nsw i32 %140, %139
  store i32 %141, i32* %8, align 4
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @SB_HORZ, align 4
  %146 = load i32, i32* @TRUE, align 4
  %147 = call i32 @ShowScrollBar(i32 %144, i32 %145, i32 %146)
  br label %155

148:                                              ; preds = %105
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @SB_HORZ, align 4
  %153 = load i32, i32* @FALSE, align 4
  %154 = call i32 @ShowScrollBar(i32 %151, i32 %152, i32 %153)
  br label %155

155:                                              ; preds = %148, %115
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* @SWP_NOZORDER, align 4
  %162 = load i32, i32* @SWP_NOMOVE, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* @SWP_NOACTIVATE, align 4
  %165 = or i32 %163, %164
  %166 = load i32, i32* @SWP_NOCOPYBITS, align 4
  %167 = or i32 %165, %166
  %168 = call i32 @SetWindowPos(i32 %158, i32* null, i32 0, i32 0, i32 %159, i32 %160, i32 %167)
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local %struct.TYPE_17__* @ConDrvGetActiveScreenBuffer(i32) #1

declare dso_local i32 @GetScreenBufferSizeUnits(%struct.TYPE_17__*, %struct.TYPE_16__*, i32*, i32*) #1

declare dso_local i32 @GetSystemMetrics(i32) #1

declare dso_local i32 @SetScrollInfo(i32, i32, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @ShowScrollBar(i32, i32, i32) #1

declare dso_local i32 @SetWindowPos(i32, i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
