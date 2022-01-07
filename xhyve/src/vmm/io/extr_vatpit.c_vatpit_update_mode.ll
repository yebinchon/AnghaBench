; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vatpit.c_vatpit_update_mode.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vatpit.c_vatpit_update_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vatpit = type { %struct.channel* }
%struct.channel = type { i32, i32, i64 }

@TIMER_SEL_MASK = common dso_local global i32 0, align 4
@TIMER_RW_MASK = common dso_local global i32 0, align 4
@TIMER_MODE_MASK = common dso_local global i32 0, align 4
@TIMER_SEL_READBACK = common dso_local global i32 0, align 4
@TIMER_LATCH = common dso_local global i32 0, align 4
@TIMER_16BIT = common dso_local global i32 0, align 4
@TIMER_INTTC = common dso_local global i32 0, align 4
@TIMER_RATEGEN = common dso_local global i32 0, align 4
@TIMER_SQWAVE = common dso_local global i32 0, align 4
@TIMER_SWSTROBE = common dso_local global i32 0, align 4
@TIMER_STS_NULLCNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vatpit*, i32)* @vatpit_update_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vatpit_update_mode(%struct.vatpit* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vatpit*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vatpit* %0, %struct.vatpit** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @TIMER_SEL_MASK, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @TIMER_RW_MASK, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @TIMER_MODE_MASK, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @TIMER_SEL_READBACK, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.vatpit*, %struct.vatpit** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @pit_readback(%struct.vatpit* %23, i32 %24)
  store i32 %25, i32* %3, align 4
  br label %84

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @TIMER_LATCH, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @TIMER_16BIT, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 -1, i32* %3, align 4
  br label %84

35:                                               ; preds = %30, %26
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @TIMER_LATCH, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %35
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @TIMER_INTTC, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %39
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @TIMER_RATEGEN, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @TIMER_SQWAVE, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @TIMER_SWSTROBE, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 -1, i32* %3, align 4
  br label %84

56:                                               ; preds = %51, %47, %43, %39
  br label %57

57:                                               ; preds = %56, %35
  %58 = load %struct.vatpit*, %struct.vatpit** %4, align 8
  %59 = getelementptr inbounds %struct.vatpit, %struct.vatpit* %58, i32 0, i32 0
  %60 = load %struct.channel*, %struct.channel** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = ashr i32 %61, 6
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.channel, %struct.channel* %60, i64 %63
  store %struct.channel* %64, %struct.channel** %6, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @TIMER_LATCH, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %57
  %69 = load %struct.vatpit*, %struct.vatpit** %4, align 8
  %70 = load %struct.channel*, %struct.channel** %6, align 8
  %71 = call i32 @pit_update_counter(%struct.vatpit* %69, %struct.channel* %70, i32 1)
  br label %83

72:                                               ; preds = %57
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.channel*, %struct.channel** %6, align 8
  %75 = getelementptr inbounds %struct.channel, %struct.channel* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.channel*, %struct.channel** %6, align 8
  %77 = getelementptr inbounds %struct.channel, %struct.channel* %76, i32 0, i32 2
  store i64 0, i64* %77, align 8
  %78 = load i32, i32* @TIMER_STS_NULLCNT, align 4
  %79 = load %struct.channel*, %struct.channel** %6, align 8
  %80 = getelementptr inbounds %struct.channel, %struct.channel* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %72, %68
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %55, %34, %22
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @pit_readback(%struct.vatpit*, i32) #1

declare dso_local i32 @pit_update_counter(%struct.vatpit*, %struct.channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
