; ModuleID = '/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/hardware/extr_mouse.c_MouseGetPacket.c'
source_filename = "/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/hardware/extr_mouse.c_MouseGetPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i8*, i32 }

@MouseMutex = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i32 0, align 4
@MOUSE_ALWAYS_SET = common dso_local global i32 0, align 4
@HorzCounter = common dso_local global i32 0, align 4
@MOUSE_X_SIGN = common dso_local global i32 0, align 4
@VertCounter = common dso_local global i32 0, align 4
@MOUSE_Y_SIGN = common dso_local global i32 0, align 4
@MOUSE_MAX = common dso_local global i32 0, align 4
@MOUSE_X_OVERFLOW = common dso_local global i32 0, align 4
@MOUSE_Y_OVERFLOW = common dso_local global i32 0, align 4
@ButtonState = common dso_local global i32 0, align 4
@FROM_LEFT_1ST_BUTTON_PRESSED = common dso_local global i32 0, align 4
@MOUSE_LEFT_BUTTON = common dso_local global i32 0, align 4
@FROM_LEFT_2ND_BUTTON_PRESSED = common dso_local global i32 0, align 4
@MOUSE_MIDDLE_BUTTON = common dso_local global i32 0, align 4
@RIGHTMOST_BUTTON_PRESSED = common dso_local global i32 0, align 4
@MOUSE_RIGHT_BUTTON = common dso_local global i32 0, align 4
@MouseId = common dso_local global i32 0, align 4
@FROM_LEFT_3RD_BUTTON_PRESSED = common dso_local global i32 0, align 4
@MOUSE_4TH_BUTTON = common dso_local global i32 0, align 4
@FROM_LEFT_4TH_BUTTON_PRESSED = common dso_local global i32 0, align 4
@MOUSE_5TH_BUTTON = common dso_local global i32 0, align 4
@ScrollCounter = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @MouseGetPacket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MouseGetPacket(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %5 = call i32 @RtlZeroMemory(%struct.TYPE_4__* %4, i32 32)
  %6 = load i32, i32* @MouseMutex, align 4
  %7 = load i32, i32* @INFINITE, align 4
  %8 = call i32 @WaitForSingleObject(i32 %6, i32 %7)
  %9 = load i32, i32* @MOUSE_ALWAYS_SET, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 8
  %14 = load i32, i32* @HorzCounter, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load i32, i32* @MOUSE_X_SIGN, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load i32, i32* @HorzCounter, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* @HorzCounter, align 4
  br label %24

24:                                               ; preds = %16, %1
  %25 = load i32, i32* @VertCounter, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i32, i32* @MOUSE_Y_SIGN, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = load i32, i32* @VertCounter, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* @VertCounter, align 4
  br label %35

35:                                               ; preds = %27, %24
  %36 = load i32, i32* @HorzCounter, align 4
  %37 = load i32, i32* @MOUSE_MAX, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load i32, i32* @MOUSE_MAX, align 4
  store i32 %40, i32* @HorzCounter, align 4
  %41 = load i32, i32* @MOUSE_X_OVERFLOW, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %39, %35
  %47 = load i32, i32* @VertCounter, align 4
  %48 = load i32, i32* @MOUSE_MAX, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load i32, i32* @MOUSE_MAX, align 4
  store i32 %51, i32* @VertCounter, align 4
  %52 = load i32, i32* @MOUSE_Y_OVERFLOW, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %50, %46
  %58 = load i32, i32* @ButtonState, align 4
  %59 = load i32, i32* @FROM_LEFT_1ST_BUTTON_PRESSED, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load i32, i32* @MOUSE_LEFT_BUTTON, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %62, %57
  %69 = load i32, i32* @ButtonState, align 4
  %70 = load i32, i32* @FROM_LEFT_2ND_BUTTON_PRESSED, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load i32, i32* @MOUSE_MIDDLE_BUTTON, align 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %73, %68
  %80 = load i32, i32* @ButtonState, align 4
  %81 = load i32, i32* @RIGHTMOST_BUTTON_PRESSED, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load i32, i32* @MOUSE_RIGHT_BUTTON, align 4
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %84, %79
  %91 = load i32, i32* @MouseId, align 4
  %92 = icmp eq i32 %91, 4
  br i1 %92, label %93, label %116

93:                                               ; preds = %90
  %94 = load i32, i32* @ButtonState, align 4
  %95 = load i32, i32* @FROM_LEFT_3RD_BUTTON_PRESSED, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = load i32, i32* @MOUSE_4TH_BUTTON, align 4
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  br label %104

104:                                              ; preds = %98, %93
  %105 = load i32, i32* @ButtonState, align 4
  %106 = load i32, i32* @FROM_LEFT_4TH_BUTTON_PRESSED, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = load i32, i32* @MOUSE_5TH_BUTTON, align 4
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 8
  br label %115

115:                                              ; preds = %109, %104
  br label %116

116:                                              ; preds = %115, %90
  %117 = load i32, i32* @MouseId, align 4
  %118 = icmp sge i32 %117, 3
  br i1 %118, label %119, label %127

119:                                              ; preds = %116
  %120 = load i64, i64* @ScrollCounter, align 8
  %121 = trunc i64 %120 to i32
  %122 = and i32 %121, 15
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %119, %116
  %128 = load i32, i32* @HorzCounter, align 4
  %129 = call i8* @LOBYTE(i32 %128)
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 2
  store i8* %129, i8** %131, align 8
  %132 = load i32, i32* @VertCounter, align 4
  %133 = call i8* @LOBYTE(i32 %132)
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  store i8* %133, i8** %135, align 8
  %136 = call i32 (...) @MouseResetCounters()
  %137 = load i32, i32* @MouseMutex, align 4
  %138 = call i32 @ReleaseMutex(i32 %137)
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @WaitForSingleObject(i32, i32) #1

declare dso_local i8* @LOBYTE(i32) #1

declare dso_local i32 @MouseResetCounters(...) #1

declare dso_local i32 @ReleaseMutex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
