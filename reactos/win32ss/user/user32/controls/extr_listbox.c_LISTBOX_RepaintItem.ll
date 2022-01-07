; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_listbox.c_LISTBOX_RepaintItem.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_listbox.c_LISTBOX_RepaintItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32, i32, i64 }

@LBS_NOREDRAW = common dso_local global i32 0, align 4
@LBS_DISPLAYCHANGED = common dso_local global i32 0, align 4
@DCX_CACHE = common dso_local global i32 0, align 4
@WM_CTLCOLORLISTBOX = common dso_local global i32 0, align 4
@COLOR_GRAYTEXT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32)* @LISTBOX_RepaintItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LISTBOX_RepaintItem(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %9, align 8
  store i64 0, i64* %11, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @IsWindowVisible(i64 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %116

18:                                               ; preds = %3
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @LBS_NOREDRAW, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load i32, i32* @LBS_DISPLAYCHANGED, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  br label %116

31:                                               ; preds = %18
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @LISTBOX_GetItemRect(%struct.TYPE_5__* %32, i32 %33, i32* %8)
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %116

37:                                               ; preds = %31
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @DCX_CACHE, align 4
  %42 = call i64 @GetDCEx(i64 %40, i32 0, i32 %41)
  store i64 %42, i64* %7, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  br label %116

45:                                               ; preds = %37
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load i64, i64* %7, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @SelectObject(i64 %51, i64 %54)
  store i64 %55, i64* %9, align 8
  br label %56

56:                                               ; preds = %50, %45
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @WM_CTLCOLORLISTBOX, align 4
  %61 = load i64, i64* %7, align 8
  %62 = trunc i64 %61 to i32
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = call i64 @SendMessageW(i32 %59, i32 %60, i32 %62, i32 %66)
  store i64 %67, i64* %10, align 8
  %68 = load i64, i64* %10, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %56
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* %10, align 8
  %73 = call i64 @SelectObject(i64 %71, i64 %72)
  store i64 %73, i64* %11, align 8
  br label %74

74:                                               ; preds = %70, %56
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @IsWindowEnabled(i64 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %74
  %81 = load i64, i64* %7, align 8
  %82 = load i32, i32* @COLOR_GRAYTEXT, align 4
  %83 = call i32 @GetSysColor(i32 %82)
  %84 = call i32 @SetTextColor(i64 %81, i32 %83)
  br label %85

85:                                               ; preds = %80, %74
  %86 = load i64, i64* %7, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @SetWindowOrgEx(i64 %86, i32 %89, i32 0, i32* null)
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %92 = load i64, i64* %7, align 8
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @TRUE, align 4
  %96 = call i32 @LISTBOX_PaintItem(%struct.TYPE_5__* %91, i64 %92, i32* %8, i32 %93, i32 %94, i32 %95)
  %97 = load i64, i64* %9, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %85
  %100 = load i64, i64* %7, align 8
  %101 = load i64, i64* %9, align 8
  %102 = call i64 @SelectObject(i64 %100, i64 %101)
  br label %103

103:                                              ; preds = %99, %85
  %104 = load i64, i64* %11, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load i64, i64* %7, align 8
  %108 = load i64, i64* %11, align 8
  %109 = call i64 @SelectObject(i64 %107, i64 %108)
  br label %110

110:                                              ; preds = %106, %103
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %7, align 8
  %115 = call i32 @ReleaseDC(i64 %113, i64 %114)
  br label %116

116:                                              ; preds = %110, %44, %36, %25, %17
  ret void
}

declare dso_local i32 @IsWindowVisible(i64) #1

declare dso_local i32 @LISTBOX_GetItemRect(%struct.TYPE_5__*, i32, i32*) #1

declare dso_local i64 @GetDCEx(i64, i32, i32) #1

declare dso_local i64 @SelectObject(i64, i64) #1

declare dso_local i64 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @IsWindowEnabled(i64) #1

declare dso_local i32 @SetTextColor(i64, i32) #1

declare dso_local i32 @GetSysColor(i32) #1

declare dso_local i32 @SetWindowOrgEx(i64, i32, i32, i32*) #1

declare dso_local i32 @LISTBOX_PaintItem(%struct.TYPE_5__*, i64, i32*, i32, i32, i32) #1

declare dso_local i32 @ReleaseDC(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
