; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vrtc.c_vrtc_set_reg_c.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vrtc.c_vrtc_set_reg_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vrtc = type { i32, %struct.rtcdev }
%struct.rtcdev = type { i32 }

@RTCIR_ALARM = common dso_local global i32 0, align 4
@RTCIR_PERIOD = common dso_local global i32 0, align 4
@RTCIR_UPDATE = common dso_local global i32 0, align 4
@RTCIR_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"RTC reg_c changed from %#x to %#x\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"RTC irq %d asserted\00", align 1
@RTC_IRQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"RTC irq %d deasserted\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vrtc*, i32)* @vrtc_set_reg_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vrtc_set_reg_c(%struct.vrtc* %0, i32 %1) #0 {
  %3 = alloca %struct.vrtc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtcdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vrtc* %0, %struct.vrtc** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %11 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %10, i32 0, i32 1
  store %struct.rtcdev* %11, %struct.rtcdev** %5, align 8
  %12 = load i32, i32* @RTCIR_ALARM, align 4
  %13 = load i32, i32* @RTCIR_PERIOD, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @RTCIR_UPDATE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load %struct.rtcdev*, %struct.rtcdev** %5, align 8
  %20 = getelementptr inbounds %struct.rtcdev, %struct.rtcdev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @RTCIR_INT, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %6, align 4
  %24 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %25 = call i64 @aintr_enabled(%struct.vrtc* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @RTCIR_ALARM, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %50, label %32

32:                                               ; preds = %27, %2
  %33 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %34 = call i64 @pintr_enabled(%struct.vrtc* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @RTCIR_PERIOD, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %36, %32
  %42 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %43 = call i64 @uintr_enabled(%struct.vrtc* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @RTCIR_UPDATE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45, %36, %27
  %51 = load i32, i32* @RTCIR_INT, align 4
  store i32 %51, i32* %7, align 4
  br label %53

52:                                               ; preds = %45, %41
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %52, %50
  %54 = load %struct.rtcdev*, %struct.rtcdev** %5, align 8
  %55 = getelementptr inbounds %struct.rtcdev, %struct.rtcdev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %4, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.rtcdev*, %struct.rtcdev** %5, align 8
  %61 = getelementptr inbounds %struct.rtcdev, %struct.rtcdev* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.rtcdev*, %struct.rtcdev** %5, align 8
  %64 = getelementptr inbounds %struct.rtcdev, %struct.rtcdev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = xor i32 %62, %65
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %53
  %70 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %71 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.rtcdev*, %struct.rtcdev** %5, align 8
  %75 = getelementptr inbounds %struct.rtcdev, %struct.rtcdev* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @VM_CTR2(i32 %72, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %76)
  br label %78

78:                                               ; preds = %69, %53
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %100, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %100

84:                                               ; preds = %81
  %85 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %86 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @RTC_IRQ, align 4
  %89 = call i32 @VM_CTR1(i32 %87, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %91 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @RTC_IRQ, align 4
  %94 = call i32 @vatpic_pulse_irq(i32 %92, i32 %93)
  %95 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %96 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @RTC_IRQ, align 4
  %99 = call i32 @vioapic_pulse_irq(i32 %97, i32 %98)
  br label %113

100:                                              ; preds = %81, %78
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %100
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %103
  %107 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %108 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @RTC_IRQ, align 4
  %111 = call i32 @VM_CTR1(i32 %109, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %106, %103, %100
  br label %113

113:                                              ; preds = %112, %84
  ret void
}

declare dso_local i64 @aintr_enabled(%struct.vrtc*) #1

declare dso_local i64 @pintr_enabled(%struct.vrtc*) #1

declare dso_local i64 @uintr_enabled(%struct.vrtc*) #1

declare dso_local i32 @VM_CTR2(i32, i8*, i32, i32) #1

declare dso_local i32 @VM_CTR1(i32, i8*, i32) #1

declare dso_local i32 @vatpic_pulse_irq(i32, i32) #1

declare dso_local i32 @vioapic_pulse_irq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
