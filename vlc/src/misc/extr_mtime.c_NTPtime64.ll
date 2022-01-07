; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_mtime.c_NTPtime64.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_mtime.c_NTPtime64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i64 }

@TIME_UTC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NTPtime64() #0 {
  %1 = alloca %struct.timespec, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @TIME_UTC, align 4
  %4 = call i32 @timespec_get(%struct.timespec* %1, i32 %3)
  %5 = getelementptr inbounds %struct.timespec, %struct.timespec* %1, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = trunc i64 %6 to i32
  %8 = shl i32 %7, 32
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = sdiv i32 %9, 1000000000
  store i32 %10, i32* %2, align 4
  %11 = call i32 @UINT64_C(i32 70)
  %12 = mul nsw i32 %11, 365
  %13 = add nsw i32 %12, 17
  %14 = mul nsw i32 %13, 24
  %15 = mul nsw i32 %14, 60
  %16 = mul nsw i32 %15, 60
  %17 = getelementptr inbounds %struct.timespec, %struct.timespec* %1, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %16, %18
  %20 = shl i32 %19, 32
  %21 = load i32, i32* %2, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @timespec_get(%struct.timespec*, i32) #1

declare dso_local i32 @UINT64_C(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
