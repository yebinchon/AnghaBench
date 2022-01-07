; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/imagesoft/extr_floatwindow.c_FloatToolbarCreateColorsGui.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/imagesoft/extr_floatwindow.c_FloatToolbarCreateColorsGui.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { double, i32 }

@WC_STATIC = common dso_local global i32 0, align 4
@WS_CHILD = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@CBS_DROPDOWN = common dso_local global i32 0, align 4
@hInstance = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@WC_COMBOBOX = common dso_local global i32 0, align 4
@CB_ADDSTRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Primary\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Secondary\00", align 1
@CB_SETCURSEL = common dso_local global i32 0, align 4
@WS_EX_STATICEDGE = common dso_local global i32 0, align 4
@WC_BUTTON = common dso_local global i32 0, align 4
@BS_BITMAP = common dso_local global i32 0, align 4
@IDB_COLORSMORE = common dso_local global i32 0, align 4
@IMAGE_BITMAP = common dso_local global i32 0, align 4
@LR_LOADTRANSPARENT = common dso_local global i32 0, align 4
@LR_LOADMAP3DCOLORS = common dso_local global i32 0, align 4
@BM_SETIMAGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Possible layout?\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FloatToolbarCreateColorsGui(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @GetClientRect(i32 %15, %struct.TYPE_7__* %8)
  %17 = load i32, i32* @WC_STATIC, align 4
  %18 = load i32, i32* @WS_CHILD, align 4
  %19 = load i32, i32* @WS_VISIBLE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @CBS_DROPDOWN, align 4
  %22 = or i32 %20, %21
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %24 = load double, double* %23, align 8
  %25 = fmul double %24, 6.500000e-01
  %26 = fptosi double %25 to i32
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 2
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @hInstance, align 4
  %36 = call i32* @CreateWindowEx(i32 0, i32 %17, i32* null, i32 %22, i32 2, i32 2, i32 %26, i32 %29, i32 %34, i32* null, i32 %35, i32* null)
  store i32* %36, i32** %4, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %1
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %2, align 4
  br label %155

41:                                               ; preds = %1
  %42 = load i32, i32* @WC_STATIC, align 4
  %43 = load i32, i32* @WS_CHILD, align 4
  %44 = load i32, i32* @WS_VISIBLE, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @CBS_DROPDOWN, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @hInstance, align 4
  %54 = call i32* @CreateWindowEx(i32 0, i32 %42, i32* null, i32 %47, i32 145, i32 35, i32 25, i32 135, i32 %52, i32* null, i32 %53, i32* null)
  store i32* %54, i32** %5, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %41
  %58 = load i32, i32* @FALSE, align 4
  store i32 %58, i32* %2, align 4
  br label %155

59:                                               ; preds = %41
  %60 = load i32, i32* @WC_COMBOBOX, align 4
  %61 = load i32, i32* @WS_CHILD, align 4
  %62 = load i32, i32* @WS_VISIBLE, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @CBS_DROPDOWN, align 4
  %65 = or i32 %63, %64
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @hInstance, align 4
  %72 = call i32* @CreateWindowEx(i32 0, i32 %60, i32* null, i32 %65, i32 118, i32 5, i32 75, i32 25, i32 %70, i32* null, i32 %71, i32* null)
  store i32* %72, i32** %6, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %59
  %76 = load i32, i32* @FALSE, align 4
  store i32 %76, i32* %2, align 4
  br label %155

77:                                               ; preds = %59
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @MakeFlatCombo(i32* %78)
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* @CB_ADDSTRING, align 4
  %82 = call i64 @_T(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %83 = trunc i64 %82 to i32
  %84 = call i32 @SendMessage(i32* %80, i32 %81, i32 0, i32 %83)
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* @CB_ADDSTRING, align 4
  %87 = call i64 @_T(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %88 = trunc i64 %87 to i32
  %89 = call i32 @SendMessage(i32* %85, i32 %86, i32 0, i32 %88)
  %90 = load i32*, i32** %6, align 8
  %91 = load i32, i32* @CB_SETCURSEL, align 4
  %92 = call i32 @SendMessage(i32* %90, i32 %91, i32 0, i32 0)
  %93 = load i32, i32* @WS_EX_STATICEDGE, align 4
  %94 = load i32, i32* @WC_BUTTON, align 4
  %95 = load i32, i32* @WS_CHILD, align 4
  %96 = load i32, i32* @WS_VISIBLE, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @BS_BITMAP, align 4
  %99 = or i32 %97, %98
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %101 = load double, double* %100, align 8
  %102 = fsub double %101, 1.500000e+01
  %103 = fptosi double %102 to i32
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = sub nsw i32 %105, 15
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @hInstance, align 4
  %113 = call i32* @CreateWindowEx(i32 %93, i32 %94, i32* null, i32 %99, i32 %103, i32 %106, i32 15, i32 15, i32 %111, i32* null, i32 %112, i32* null)
  store i32* %113, i32** %7, align 8
  %114 = load i32*, i32** %7, align 8
  %115 = icmp eq i32* %114, null
  br i1 %115, label %116, label %118

116:                                              ; preds = %77
  %117 = load i32, i32* @FALSE, align 4
  store i32 %117, i32* %2, align 4
  br label %155

118:                                              ; preds = %77
  %119 = load i32, i32* @hInstance, align 4
  %120 = load i32, i32* @IDB_COLORSMORE, align 4
  %121 = call i32 @MAKEINTRESOURCE(i32 %120)
  %122 = load i32, i32* @IMAGE_BITMAP, align 4
  %123 = load i32, i32* @LR_LOADTRANSPARENT, align 4
  %124 = load i32, i32* @LR_LOADMAP3DCOLORS, align 4
  %125 = or i32 %123, %124
  %126 = call i64 @LoadImage(i32 %119, i32 %121, i32 %122, i32 12, i32 11, i32 %125)
  %127 = inttoptr i64 %126 to i32*
  store i32* %127, i32** %9, align 8
  %128 = load i32*, i32** %9, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %137

130:                                              ; preds = %118
  %131 = load i32*, i32** %7, align 8
  %132 = load i32, i32* @BM_SETIMAGE, align 4
  %133 = load i32, i32* @IMAGE_BITMAP, align 4
  %134 = load i32*, i32** %9, align 8
  %135 = ptrtoint i32* %134 to i32
  %136 = call i32 @SendMessage(i32* %131, i32 %132, i32 %133, i32 %135)
  br label %137

137:                                              ; preds = %130, %118
  %138 = load i32*, i32** %5, align 8
  %139 = call i32 @FloatWindowPaintHueSlider(i32* %138)
  %140 = load i32*, i32** %4, align 8
  %141 = call i32 @FloatWindowPaintColorPicker(i32* %140)
  %142 = load i32*, i32** %4, align 8
  %143 = icmp ne i32* %142, null
  br i1 %143, label %144, label %153

144:                                              ; preds = %137
  %145 = load i32*, i32** %4, align 8
  %146 = call i32 @GetDC(i32* %145)
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* %10, align 4
  %148 = call i64 @_T(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %149 = call i32 @TextOut(i32 %147, i32 8, i32 75, i64 %148, i32 16)
  %150 = load i32*, i32** %4, align 8
  %151 = load i32, i32* %10, align 4
  %152 = call i32 @ReleaseDC(i32* %150, i32 %151)
  br label %153

153:                                              ; preds = %144, %137
  %154 = load i32, i32* @TRUE, align 4
  store i32 %154, i32* %2, align 4
  br label %155

155:                                              ; preds = %153, %116, %75, %57, %39
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_7__*) #1

declare dso_local i32* @CreateWindowEx(i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @MakeFlatCombo(i32*) #1

declare dso_local i32 @SendMessage(i32*, i32, i32, i32) #1

declare dso_local i64 @_T(i8*) #1

declare dso_local i64 @LoadImage(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MAKEINTRESOURCE(i32) #1

declare dso_local i32 @FloatWindowPaintHueSlider(i32*) #1

declare dso_local i32 @FloatWindowPaintColorPicker(i32*) #1

declare dso_local i32 @GetDC(i32*) #1

declare dso_local i32 @TextOut(i32, i32, i32, i64, i32) #1

declare dso_local i32 @ReleaseDC(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
