; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_win.c_wine_AdjustWindowRectEx.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_win.c_wine_AdjustWindowRectEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@WS_EX_STATICEDGE = common dso_local global i32 0, align 4
@WS_EX_DLGMODALFRAME = common dso_local global i32 0, align 4
@WS_THICKFRAME = common dso_local global i32 0, align 4
@WS_DLGFRAME = common dso_local global i32 0, align 4
@SM_CXFRAME = common dso_local global i32 0, align 4
@SM_CXDLGFRAME = common dso_local global i32 0, align 4
@WS_BORDER = common dso_local global i32 0, align 4
@WS_CAPTION = common dso_local global i32 0, align 4
@WS_EX_TOOLWINDOW = common dso_local global i32 0, align 4
@SM_CYSMCAPTION = common dso_local global i32 0, align 4
@SM_CYCAPTION = common dso_local global i32 0, align 4
@SM_CYMENU = common dso_local global i32 0, align 4
@WS_EX_CLIENTEDGE = common dso_local global i32 0, align 4
@SM_CXEDGE = common dso_local global i32 0, align 4
@SM_CYEDGE = common dso_local global i32 0, align 4
@WS_VSCROLL = common dso_local global i32 0, align 4
@WS_EX_LEFTSCROLLBAR = common dso_local global i32 0, align 4
@SM_CXVSCROLL = common dso_local global i32 0, align 4
@WS_HSCROLL = common dso_local global i32 0, align 4
@SM_CYHSCROLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i64, i32)* @wine_AdjustWindowRectEx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wine_AdjustWindowRectEx(%struct.TYPE_4__* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @WS_EX_STATICEDGE, align 4
  %12 = load i32, i32* @WS_EX_DLGMODALFRAME, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %10, %13
  %15 = load i32, i32* @WS_EX_STATICEDGE, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 1, i32* %9, align 4
  br label %32

18:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @WS_EX_DLGMODALFRAME, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @WS_THICKFRAME, align 4
  %26 = load i32, i32* @WS_DLGFRAME, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23, %18
  store i32 2, i32* %9, align 4
  br label %31

31:                                               ; preds = %30, %23
  br label %32

32:                                               ; preds = %31, %17
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @WS_THICKFRAME, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load i32, i32* @SM_CXFRAME, align 4
  %39 = call i32 @GetSystemMetrics(i32 %38)
  %40 = load i32, i32* @SM_CXDLGFRAME, align 4
  %41 = call i32 @GetSystemMetrics(i32 %40)
  %42 = sub nsw i32 %39, %41
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %37, %32
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @WS_BORDER, align 4
  %48 = load i32, i32* @WS_DLGFRAME, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %46, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @WS_EX_DLGMODALFRAME, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52, %45
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %57, %52
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @InflateRect(%struct.TYPE_4__* %61, i32 %62, i32 %63)
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @WS_CAPTION, align 4
  %67 = and i32 %65, %66
  %68 = load i32, i32* @WS_CAPTION, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %90

70:                                               ; preds = %60
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @WS_EX_TOOLWINDOW, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load i32, i32* @SM_CYSMCAPTION, align 4
  %77 = call i32 @GetSystemMetrics(i32 %76)
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %89

82:                                               ; preds = %70
  %83 = load i32, i32* @SM_CYCAPTION, align 4
  %84 = call i32 @GetSystemMetrics(i32 %83)
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %87, %84
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %82, %75
  br label %90

90:                                               ; preds = %89, %60
  %91 = load i64, i64* %7, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load i32, i32* @SM_CYMENU, align 4
  %95 = call i32 @GetSystemMetrics(i32 %94)
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %98, %95
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %93, %90
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @WS_EX_CLIENTEDGE, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %100
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %107 = load i32, i32* @SM_CXEDGE, align 4
  %108 = call i32 @GetSystemMetrics(i32 %107)
  %109 = load i32, i32* @SM_CYEDGE, align 4
  %110 = call i32 @GetSystemMetrics(i32 %109)
  %111 = call i32 @InflateRect(%struct.TYPE_4__* %106, i32 %108, i32 %110)
  br label %112

112:                                              ; preds = %105, %100
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @WS_VSCROLL, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %137

117:                                              ; preds = %112
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* @WS_EX_LEFTSCROLLBAR, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %117
  %123 = load i32, i32* @SM_CXVSCROLL, align 4
  %124 = call i32 @GetSystemMetrics(i32 %123)
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = sub nsw i32 %127, %124
  store i32 %128, i32* %126, align 4
  br label %136

129:                                              ; preds = %117
  %130 = load i32, i32* @SM_CXVSCROLL, align 4
  %131 = call i32 @GetSystemMetrics(i32 %130)
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, %131
  store i32 %135, i32* %133, align 4
  br label %136

136:                                              ; preds = %129, %122
  br label %137

137:                                              ; preds = %136, %112
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* @WS_HSCROLL, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %137
  %143 = load i32, i32* @SM_CYHSCROLL, align 4
  %144 = call i32 @GetSystemMetrics(i32 %143)
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, %144
  store i32 %148, i32* %146, align 4
  br label %149

149:                                              ; preds = %142, %137
  ret void
}

declare dso_local i32 @GetSystemMetrics(i32) #1

declare dso_local i32 @InflateRect(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
