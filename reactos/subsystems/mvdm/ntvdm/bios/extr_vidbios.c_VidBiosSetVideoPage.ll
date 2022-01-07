; ModuleID = '/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/bios/extr_vidbios.c_VidBiosSetVideoPage.c'
source_filename = "/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/bios/extr_vidbios.c_VidBiosSetVideoPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@BIOS_MAX_PAGES = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@Bda = common dso_local global %struct.TYPE_2__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@VGA_CRTC_INDEX = common dso_local global i32 0, align 4
@VGA_CRTC_START_ADDR_LOW_REG = common dso_local global i32 0, align 4
@VGA_CRTC_DATA = common dso_local global i32 0, align 4
@VGA_CRTC_START_ADDR_HIGH_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @VidBiosSetVideoPage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @VidBiosSetVideoPage(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @BIOS_MAX_PAGES, align 4
  %8 = icmp sge i32 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %2, align 4
  br label %57

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Bda, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %12, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* @TRUE, align 4
  store i32 %18, i32* %2, align 4
  br label %57

19:                                               ; preds = %11
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Bda, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Bda, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Bda, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %25, %28
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Bda, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @VGA_CRTC_INDEX, align 4
  %33 = load i32, i32* @VGA_CRTC_START_ADDR_LOW_REG, align 4
  %34 = call i32 @IOWriteB(i32 %32, i32 %33)
  %35 = load i32, i32* @VGA_CRTC_DATA, align 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Bda, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @LOBYTE(i32 %38)
  %40 = call i32 @IOWriteB(i32 %35, i32 %39)
  %41 = load i32, i32* @VGA_CRTC_INDEX, align 4
  %42 = load i32, i32* @VGA_CRTC_START_ADDR_HIGH_REG, align 4
  %43 = call i32 @IOWriteB(i32 %41, i32 %42)
  %44 = load i32, i32* @VGA_CRTC_DATA, align 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Bda, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @HIBYTE(i32 %47)
  %49 = call i32 @IOWriteB(i32 %44, i32 %48)
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @VidBiosGetCursorPosition(i32* %4, i32* %5, i32 %50)
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @VidBiosSetCursorPosition(i32 %52, i32 %53, i32 %54)
  %56 = load i32, i32* @TRUE, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %19, %17, %9
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @IOWriteB(i32, i32) #1

declare dso_local i32 @LOBYTE(i32) #1

declare dso_local i32 @HIBYTE(i32) #1

declare dso_local i32 @VidBiosGetCursorPosition(i32*, i32*, i32) #1

declare dso_local i32 @VidBiosSetCursorPosition(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
