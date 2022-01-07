; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_paint.c_ME_DebugWrite.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_paint.c_ME_DebugWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@TA_LEFT = common dso_local global i32 0, align 4
@TA_TOP = common dso_local global i32 0, align 4
@DEFAULT_GUI_FONT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_3__*, i32)* @ME_DebugWrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ME_DebugWrite(i32 %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @TA_LEFT, align 4
  %12 = load i32, i32* @TA_TOP, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @SetTextAlign(i32 %10, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @DEFAULT_GUI_FONT, align 4
  %17 = call i32 @GetStockObject(i32 %16)
  %18 = call i32 @SelectObject(i32 %15, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @RGB(i32 128, i32 128, i32 128)
  %21 = call i32 @SetTextColor(i32 %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @lstrlenW(i32 %30)
  %32 = call i32 @TextOutW(i32 %22, i32 %25, i32 %28, i32 %29, i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @SelectObject(i32 %33, i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @SetTextAlign(i32 %36, i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @SetTextColor(i32 %39, i32 %40)
  ret void
}

declare dso_local i32 @SetTextAlign(i32, i32) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @GetStockObject(i32) #1

declare dso_local i32 @SetTextColor(i32, i32) #1

declare dso_local i32 @RGB(i32, i32, i32) #1

declare dso_local i32 @TextOutW(i32, i32, i32, i32, i32) #1

declare dso_local i32 @lstrlenW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
