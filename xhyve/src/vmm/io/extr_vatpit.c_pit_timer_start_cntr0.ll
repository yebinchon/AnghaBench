; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vatpit.c_pit_timer_start_cntr0.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vatpit.c_pit_timer_start_cntr0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vatpit = type { i64, %struct.channel* }
%struct.channel = type { i64, i64, i32, i32 }

@vatpit_callout_handler = common dso_local global i32 0, align 4
@C_ABSOLUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vatpit*)* @pit_timer_start_cntr0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pit_timer_start_cntr0(%struct.vatpit* %0) #0 {
  %2 = alloca %struct.vatpit*, align 8
  %3 = alloca %struct.channel*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.vatpit* %0, %struct.vatpit** %2, align 8
  %6 = load %struct.vatpit*, %struct.vatpit** %2, align 8
  %7 = getelementptr inbounds %struct.vatpit, %struct.vatpit* %6, i32 0, i32 1
  %8 = load %struct.channel*, %struct.channel** %7, align 8
  %9 = getelementptr inbounds %struct.channel, %struct.channel* %8, i64 0
  store %struct.channel* %9, %struct.channel** %3, align 8
  %10 = load %struct.channel*, %struct.channel** %3, align 8
  %11 = getelementptr inbounds %struct.channel, %struct.channel* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %52

14:                                               ; preds = %1
  %15 = load %struct.channel*, %struct.channel** %3, align 8
  %16 = getelementptr inbounds %struct.channel, %struct.channel* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.vatpit*, %struct.vatpit** %2, align 8
  %19 = getelementptr inbounds %struct.vatpit, %struct.vatpit* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = mul nsw i64 %17, %20
  store i64 %21, i64* %5, align 8
  %22 = load %struct.channel*, %struct.channel** %3, align 8
  %23 = getelementptr inbounds %struct.channel, %struct.channel* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = add nsw i64 %24, %25
  %27 = load %struct.channel*, %struct.channel** %3, align 8
  %28 = getelementptr inbounds %struct.channel, %struct.channel* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = call i64 (...) @sbinuptime()
  store i64 %29, i64* %4, align 8
  %30 = load %struct.channel*, %struct.channel** %3, align 8
  %31 = getelementptr inbounds %struct.channel, %struct.channel* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %4, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %14
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* %5, align 8
  %38 = add nsw i64 %36, %37
  %39 = load %struct.channel*, %struct.channel** %3, align 8
  %40 = getelementptr inbounds %struct.channel, %struct.channel* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %35, %14
  %42 = load %struct.channel*, %struct.channel** %3, align 8
  %43 = getelementptr inbounds %struct.channel, %struct.channel* %42, i32 0, i32 3
  %44 = load %struct.channel*, %struct.channel** %3, align 8
  %45 = getelementptr inbounds %struct.channel, %struct.channel* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* @vatpit_callout_handler, align 4
  %48 = load %struct.channel*, %struct.channel** %3, align 8
  %49 = getelementptr inbounds %struct.channel, %struct.channel* %48, i32 0, i32 2
  %50 = load i32, i32* @C_ABSOLUTE, align 4
  %51 = call i32 @callout_reset_sbt(i32* %43, i64 %46, i32 0, i32 %47, i32* %49, i32 %50)
  br label %52

52:                                               ; preds = %41, %1
  ret void
}

declare dso_local i64 @sbinuptime(...) #1

declare dso_local i32 @callout_reset_sbt(i32*, i64, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
