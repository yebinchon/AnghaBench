; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_sd-radv.c_radv_compute_timeout.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_sd-radv.c_radv_compute_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SD_RADV_DEFAULT_MIN_TIMEOUT_USEC = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @radv_compute_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @radv_compute_timeout(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp sle i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = load i32, i32* @SD_RADV_DEFAULT_MIN_TIMEOUT_USEC, align 4
  %10 = call i32 @assert_return(i32 %8, i32 %9)
  %11 = load i64, i64* %3, align 8
  %12 = load i32, i32* @USEC_PER_SEC, align 4
  %13 = mul nsw i32 3, %12
  %14 = call i64 @MAX(i64 %11, i32 %13)
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load i32, i32* @USEC_PER_SEC, align 4
  %17 = mul nsw i32 4, %16
  %18 = call i64 @MAX(i64 %15, i32 %17)
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %3, align 8
  %20 = call i64 (...) @random_u32()
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* %3, align 8
  %23 = sub nsw i64 %21, %22
  %24 = srem i64 %20, %23
  %25 = add nsw i64 %19, %24
  ret i64 %25
}

declare dso_local i32 @assert_return(i32, i32) #1

declare dso_local i64 @MAX(i64, i32) #1

declare dso_local i64 @random_u32(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
