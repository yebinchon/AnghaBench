; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vatpit.c_pit_readback1.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vatpit.c_pit_readback1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vatpit = type { %struct.channel* }
%struct.channel = type { i32, i64, i32, i32 }

@TIMER_RB_LCTR = common dso_local global i32 0, align 4
@TIMER_RB_LSTATUS = common dso_local global i32 0, align 4
@TIMER_INTTC = common dso_local global i64 0, align 8
@TIMER_STS_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vatpit*, i32, i32)* @pit_readback1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pit_readback1(%struct.vatpit* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vatpit*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.channel*, align 8
  store %struct.vatpit* %0, %struct.vatpit** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.vatpit*, %struct.vatpit** %4, align 8
  %9 = getelementptr inbounds %struct.vatpit, %struct.vatpit* %8, i32 0, i32 0
  %10 = load %struct.channel*, %struct.channel** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.channel, %struct.channel* %10, i64 %12
  store %struct.channel* %13, %struct.channel** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @TIMER_RB_LCTR, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %3
  %19 = load %struct.channel*, %struct.channel** %7, align 8
  %20 = getelementptr inbounds %struct.channel, %struct.channel* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = load %struct.vatpit*, %struct.vatpit** %4, align 8
  %25 = load %struct.channel*, %struct.channel** %7, align 8
  %26 = call i32 @pit_update_counter(%struct.vatpit* %24, %struct.channel* %25, i32 1)
  br label %27

27:                                               ; preds = %23, %18, %3
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @TIMER_RB_LSTATUS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %64, label %32

32:                                               ; preds = %27
  %33 = load %struct.channel*, %struct.channel** %7, align 8
  %34 = getelementptr inbounds %struct.channel, %struct.channel* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %64, label %37

37:                                               ; preds = %32
  %38 = load %struct.channel*, %struct.channel** %7, align 8
  %39 = getelementptr inbounds %struct.channel, %struct.channel* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load %struct.channel*, %struct.channel** %7, align 8
  %41 = getelementptr inbounds %struct.channel, %struct.channel* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TIMER_INTTC, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %37
  %46 = load %struct.vatpit*, %struct.vatpit** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i64 @vatpit_get_out(%struct.vatpit* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load i32, i32* @TIMER_STS_OUT, align 4
  %52 = load %struct.channel*, %struct.channel** %7, align 8
  %53 = getelementptr inbounds %struct.channel, %struct.channel* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  br label %63

56:                                               ; preds = %45, %37
  %57 = load i32, i32* @TIMER_STS_OUT, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.channel*, %struct.channel** %7, align 8
  %60 = getelementptr inbounds %struct.channel, %struct.channel* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %56, %50
  br label %64

64:                                               ; preds = %63, %32, %27
  ret i32 0
}

declare dso_local i32 @pit_update_counter(%struct.vatpit*, %struct.channel*, i32) #1

declare dso_local i64 @vatpit_get_out(%struct.vatpit*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
