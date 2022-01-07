; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vrtc.c_vrtc_set_reg_a.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vrtc.c_vrtc_set_reg_a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vrtc = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@RTCSA_TUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"RTC divider held in reset at %#lx/%#llx\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"RTC divider out of reset at %#lx/%#llx\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"RTC reg_a changed from %#x to %#x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vrtc*, i32)* @vrtc_set_reg_a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vrtc_set_reg_a(%struct.vrtc* %0, i32 %1) #0 {
  %3 = alloca %struct.vrtc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vrtc* %0, %struct.vrtc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @RTCSA_TUP, align 4
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %4, align 4
  %13 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %14 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %18 = call i64 @vrtc_freq(%struct.vrtc* %17)
  store i64 %18, i64* %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i64 @divider_enabled(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @divider_enabled(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %22
  %27 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %28 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %31 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %34 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @VM_CTR2(i32 %29, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35)
  br label %61

37:                                               ; preds = %22, %2
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @divider_enabled(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %59, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %4, align 4
  %43 = call i64 @divider_enabled(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %41
  %46 = call i32 (...) @sbinuptime()
  %47 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %48 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %50 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %53 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %56 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @VM_CTR2(i32 %51, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %57)
  br label %60

59:                                               ; preds = %41, %37
  br label %60

60:                                               ; preds = %59, %45
  br label %61

61:                                               ; preds = %60, %26
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %64 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %4, align 4
  %68 = xor i32 %66, %67
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %61
  %72 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %73 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @VM_CTR2(i32 %74, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %71, %61
  %79 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %80 = call i64 @vrtc_freq(%struct.vrtc* %79)
  store i64 %80, i64* %6, align 8
  %81 = load i64, i64* %6, align 8
  %82 = load i64, i64* %5, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %86 = load i64, i64* %6, align 8
  %87 = call i32 @vrtc_callout_reset(%struct.vrtc* %85, i64 %86)
  br label %92

88:                                               ; preds = %78
  %89 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %90 = load i64, i64* %6, align 8
  %91 = call i32 @vrtc_callout_check(%struct.vrtc* %89, i64 %90)
  br label %92

92:                                               ; preds = %88, %84
  ret void
}

declare dso_local i64 @vrtc_freq(%struct.vrtc*) #1

declare dso_local i64 @divider_enabled(i32) #1

declare dso_local i32 @VM_CTR2(i32, i8*, i32, i32) #1

declare dso_local i32 @sbinuptime(...) #1

declare dso_local i32 @vrtc_callout_reset(%struct.vrtc*, i64) #1

declare dso_local i32 @vrtc_callout_check(%struct.vrtc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
