; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_ui.c_SetBootTypeDropdownWidth.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_ui.c_SetBootTypeDropdownWidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64, i64 }

@image_path = common dso_local global i32* null, align 8
@hBootType = common dso_local global i32 0, align 4
@hMainDialog = common dso_local global i32 0, align 4
@WM_GETFONT = common dso_local global i32 0, align 4
@short_image_path = common dso_local global i32 0, align 4
@CB_SETDROPPEDWIDTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetBootTypeDropdownWidth() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_5__, align 8
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = load i32*, i32** @image_path, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %41

8:                                                ; preds = %0
  %9 = load i32, i32* @hBootType, align 4
  %10 = call i32 @GetWindowRect(i32 %9, %struct.TYPE_6__* %4)
  %11 = load i32, i32* @hMainDialog, align 4
  %12 = bitcast %struct.TYPE_6__* %4 to i32*
  %13 = call i32 @MapWindowPoints(i32* null, i32 %11, i32* %12, i32 2)
  %14 = load i32, i32* @hBootType, align 4
  %15 = call i32 @GetDC(i32 %14)
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* @hBootType, align 4
  %17 = load i32, i32* @WM_GETFONT, align 4
  %18 = call i64 @SendMessageA(i32 %16, i32 %17, i32 0, i32 0)
  store i64 %18, i64* %2, align 8
  %19 = load i32, i32* %1, align 4
  %20 = load i64, i64* %2, align 8
  %21 = call i32 @SelectObject(i32 %19, i64 %20)
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* @short_image_path, align 4
  %24 = call i32 @GetTextExtentPointU(i32 %22, i32 %23, %struct.TYPE_5__* %3)
  %25 = load i32, i32* @hBootType, align 4
  %26 = load i32, i32* %1, align 4
  %27 = call i32 @safe_release_dc(i32 %25, i32 %26)
  %28 = load i32, i32* @hBootType, align 4
  %29 = load i32, i32* @CB_SETDROPPEDWIDTH, align 4
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 10
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %34, %36
  %38 = call i64 @max(i64 %32, i64 %37)
  %39 = trunc i64 %38 to i32
  %40 = call i32 @SendMessage(i32 %28, i32 %29, i32 %39, i32 0)
  br label %41

41:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @GetWindowRect(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @MapWindowPoints(i32*, i32, i32*, i32) #1

declare dso_local i32 @GetDC(i32) #1

declare dso_local i64 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @SelectObject(i32, i64) #1

declare dso_local i32 @GetTextExtentPointU(i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @safe_release_dc(i32, i32) #1

declare dso_local i32 @SendMessage(i32, i32, i32, i32) #1

declare dso_local i64 @max(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
