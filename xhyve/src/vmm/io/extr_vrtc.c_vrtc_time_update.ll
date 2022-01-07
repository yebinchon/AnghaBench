; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vrtc.c_vrtc_time_update.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vrtc.c_vrtc_time_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vrtc = type { i64, i64, i32, %struct.rtcdev }
%struct.rtcdev = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Updating RTC secs from %#lx to %#lx\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Updating RTC base uptime from %#llx to %#llx\00", align 1
@VRTC_BROKEN_TIME = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"RTC update halted by guest\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@RTCIR_ALARM = common dso_local global i32 0, align 4
@RTCIR_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vrtc*, i64, i64)* @vrtc_time_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vrtc_time_update(%struct.vrtc* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vrtc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.rtcdev*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.vrtc* %0, %struct.vrtc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.vrtc*, %struct.vrtc** %5, align 8
  %15 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %14, i32 0, i32 3
  store %struct.rtcdev* %15, %struct.rtcdev** %8, align 8
  %16 = load %struct.rtcdev*, %struct.rtcdev** %8, align 8
  %17 = getelementptr inbounds %struct.rtcdev, %struct.rtcdev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %11, align 4
  %19 = load %struct.rtcdev*, %struct.rtcdev** %8, align 8
  %20 = getelementptr inbounds %struct.rtcdev, %struct.rtcdev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = load %struct.rtcdev*, %struct.rtcdev** %8, align 8
  %23 = getelementptr inbounds %struct.rtcdev, %struct.rtcdev* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %13, align 4
  %25 = load %struct.vrtc*, %struct.vrtc** %5, align 8
  %26 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %10, align 8
  %28 = load %struct.vrtc*, %struct.vrtc** %5, align 8
  %29 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @VM_CTR2(i32 %30, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %31, i64 %32)
  %34 = load %struct.vrtc*, %struct.vrtc** %5, align 8
  %35 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %9, align 8
  %37 = load %struct.vrtc*, %struct.vrtc** %5, align 8
  %38 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @VM_CTR2(i32 %39, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %40, i64 %41)
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.vrtc*, %struct.vrtc** %5, align 8
  %45 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* %10, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %151

50:                                               ; preds = %3
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* @VRTC_BROKEN_TIME, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i64, i64* @VRTC_BROKEN_TIME, align 8
  %56 = load %struct.vrtc*, %struct.vrtc** %5, align 8
  %57 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  store i32 0, i32* %4, align 4
  br label %151

58:                                               ; preds = %50
  %59 = load %struct.vrtc*, %struct.vrtc** %5, align 8
  %60 = call i64 @rtc_halted(%struct.vrtc* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load %struct.vrtc*, %struct.vrtc** %5, align 8
  %64 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @VM_CTR0(i32 %65, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32, i32* @EBUSY, align 4
  store i32 %67, i32* %4, align 4
  br label %151

68:                                               ; preds = %58
  br label %69

69:                                               ; preds = %132, %68
  %70 = load %struct.vrtc*, %struct.vrtc** %5, align 8
  %71 = call i64 @aintr_enabled(%struct.vrtc* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %69
  %74 = load i64, i64* %10, align 8
  %75 = load i64, i64* @VRTC_BROKEN_TIME, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = load %struct.vrtc*, %struct.vrtc** %5, align 8
  %79 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %79, align 8
  br label %86

82:                                               ; preds = %73, %69
  %83 = load i64, i64* %6, align 8
  %84 = load %struct.vrtc*, %struct.vrtc** %5, align 8
  %85 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  br label %86

86:                                               ; preds = %82, %77
  %87 = load %struct.vrtc*, %struct.vrtc** %5, align 8
  %88 = call i64 @aintr_enabled(%struct.vrtc* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %131

90:                                               ; preds = %86
  %91 = load %struct.vrtc*, %struct.vrtc** %5, align 8
  %92 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.vrtc*, %struct.vrtc** %5, align 8
  %95 = call i32 @secs_to_rtc(i64 %93, %struct.vrtc* %94, i32 0)
  %96 = load i32, i32* %11, align 4
  %97 = icmp sge i32 %96, 192
  br i1 %97, label %104, label %98

98:                                               ; preds = %90
  %99 = load i32, i32* %11, align 4
  %100 = load %struct.rtcdev*, %struct.rtcdev** %8, align 8
  %101 = getelementptr inbounds %struct.rtcdev, %struct.rtcdev* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %99, %102
  br i1 %103, label %104, label %130

104:                                              ; preds = %98, %90
  %105 = load i32, i32* %12, align 4
  %106 = icmp sge i32 %105, 192
  br i1 %106, label %113, label %107

107:                                              ; preds = %104
  %108 = load i32, i32* %12, align 4
  %109 = load %struct.rtcdev*, %struct.rtcdev** %8, align 8
  %110 = getelementptr inbounds %struct.rtcdev, %struct.rtcdev* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %108, %111
  br i1 %112, label %113, label %130

113:                                              ; preds = %107, %104
  %114 = load i32, i32* %13, align 4
  %115 = icmp sge i32 %114, 192
  br i1 %115, label %122, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %13, align 4
  %118 = load %struct.rtcdev*, %struct.rtcdev** %8, align 8
  %119 = getelementptr inbounds %struct.rtcdev, %struct.rtcdev* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %117, %120
  br i1 %121, label %122, label %130

122:                                              ; preds = %116, %113
  %123 = load %struct.vrtc*, %struct.vrtc** %5, align 8
  %124 = load %struct.rtcdev*, %struct.rtcdev** %8, align 8
  %125 = getelementptr inbounds %struct.rtcdev, %struct.rtcdev* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @RTCIR_ALARM, align 4
  %128 = or i32 %126, %127
  %129 = call i32 @vrtc_set_reg_c(%struct.vrtc* %123, i32 %128)
  br label %130

130:                                              ; preds = %122, %116, %107, %98
  br label %131

131:                                              ; preds = %130, %86
  br label %132

132:                                              ; preds = %131
  %133 = load %struct.vrtc*, %struct.vrtc** %5, align 8
  %134 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* %6, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %69, label %138

138:                                              ; preds = %132
  %139 = load %struct.vrtc*, %struct.vrtc** %5, align 8
  %140 = call i64 @uintr_enabled(%struct.vrtc* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %138
  %143 = load %struct.vrtc*, %struct.vrtc** %5, align 8
  %144 = load %struct.rtcdev*, %struct.rtcdev** %8, align 8
  %145 = getelementptr inbounds %struct.rtcdev, %struct.rtcdev* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @RTCIR_UPDATE, align 4
  %148 = or i32 %146, %147
  %149 = call i32 @vrtc_set_reg_c(%struct.vrtc* %143, i32 %148)
  br label %150

150:                                              ; preds = %142, %138
  store i32 0, i32* %4, align 4
  br label %151

151:                                              ; preds = %150, %62, %54, %49
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

declare dso_local i32 @VM_CTR2(i32, i8*, i64, i64) #1

declare dso_local i64 @rtc_halted(%struct.vrtc*) #1

declare dso_local i32 @VM_CTR0(i32, i8*) #1

declare dso_local i64 @aintr_enabled(%struct.vrtc*) #1

declare dso_local i32 @secs_to_rtc(i64, %struct.vrtc*, i32) #1

declare dso_local i32 @vrtc_set_reg_c(%struct.vrtc*, i32) #1

declare dso_local i64 @uintr_enabled(%struct.vrtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
