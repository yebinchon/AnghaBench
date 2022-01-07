; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_ps2mouse.c_movement_get.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_ps2mouse.c_movement_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps2mouse_softc = type { i32, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@PS2M_DATA_AONE = common dso_local global i32 0, align 4
@PS2M_DATA_LEFT_BUTTON = common dso_local global i32 0, align 4
@PS2M_DATA_RIGHT_BUTTON = common dso_local global i32 0, align 4
@PS2M_DATA_MID_BUTTON = common dso_local global i32 0, align 4
@PS2M_DATA_X_OFLOW = common dso_local global i32 0, align 4
@PS2M_DATA_X_SIGN = common dso_local global i32 0, align 4
@PS2M_DATA_Y_OFLOW = common dso_local global i32 0, align 4
@PS2M_DATA_Y_SIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ps2mouse_softc*)* @movement_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @movement_get(%struct.ps2mouse_softc* %0) #0 {
  %2 = alloca %struct.ps2mouse_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ps2mouse_softc* %0, %struct.ps2mouse_softc** %2, align 8
  %6 = load i32, i32* @PS2M_DATA_AONE, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %2, align 8
  %8 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @PS2M_DATA_LEFT_BUTTON, align 4
  %11 = load i32, i32* @PS2M_DATA_RIGHT_BUTTON, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @PS2M_DATA_MID_BUTTON, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %9, %14
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %2, align 8
  %19 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp sge i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %1
  %23 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %2, align 8
  %24 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %25, 255
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* @PS2M_DATA_X_OFLOW, align 4
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %3, align 4
  store i32 255, i32* %4, align 4
  br label %36

31:                                               ; preds = %22
  %32 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %2, align 8
  %33 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %31, %27
  br label %55

37:                                               ; preds = %1
  %38 = load i32, i32* @PS2M_DATA_X_SIGN, align 4
  %39 = load i32, i32* %3, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %3, align 4
  %41 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %2, align 8
  %42 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %43, -255
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load i32, i32* @PS2M_DATA_X_OFLOW, align 4
  %47 = load i32, i32* %3, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %3, align 4
  store i32 255, i32* %4, align 4
  br label %54

49:                                               ; preds = %37
  %50 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %2, align 8
  %51 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %49, %45
  br label %55

55:                                               ; preds = %54, %36
  %56 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %2, align 8
  %57 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  %58 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %2, align 8
  %59 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp sge i64 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %55
  %63 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %2, align 8
  %64 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %65, 255
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load i32, i32* @PS2M_DATA_Y_OFLOW, align 4
  %69 = load i32, i32* %3, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %3, align 4
  store i32 255, i32* %5, align 4
  br label %76

71:                                               ; preds = %62
  %72 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %2, align 8
  %73 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %71, %67
  br label %95

77:                                               ; preds = %55
  %78 = load i32, i32* @PS2M_DATA_Y_SIGN, align 4
  %79 = load i32, i32* %3, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %3, align 4
  %81 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %2, align 8
  %82 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp slt i64 %83, -255
  br i1 %84, label %85, label %89

85:                                               ; preds = %77
  %86 = load i32, i32* @PS2M_DATA_Y_OFLOW, align 4
  %87 = load i32, i32* %3, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %3, align 4
  store i32 255, i32* %5, align 4
  br label %94

89:                                               ; preds = %77
  %90 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %2, align 8
  %91 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %89, %85
  br label %95

95:                                               ; preds = %94, %76
  %96 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %2, align 8
  %97 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %96, i32 0, i32 2
  store i64 0, i64* %97, align 8
  %98 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %2, align 8
  %99 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %2, align 8
  %103 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 %105, 3
  %107 = icmp slt i32 %101, %106
  br i1 %107, label %108, label %118

108:                                              ; preds = %95
  %109 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %2, align 8
  %110 = load i32, i32* %3, align 4
  %111 = call i32 @fifo_put(%struct.ps2mouse_softc* %109, i32 %110)
  %112 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %2, align 8
  %113 = load i32, i32* %4, align 4
  %114 = call i32 @fifo_put(%struct.ps2mouse_softc* %112, i32 %113)
  %115 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %2, align 8
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @fifo_put(%struct.ps2mouse_softc* %115, i32 %116)
  br label %118

118:                                              ; preds = %108, %95
  ret void
}

declare dso_local i32 @fifo_put(%struct.ps2mouse_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
