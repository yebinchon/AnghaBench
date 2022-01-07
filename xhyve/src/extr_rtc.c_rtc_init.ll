; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_rtc.c_rtc_init.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_rtc.c_rtc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@m_16MB = common dso_local global i64 0, align 8
@m_64KB = common dso_local global i64 0, align 8
@RTC_LMEM_LSB = common dso_local global i32 0, align 4
@RTC_LMEM_MSB = common dso_local global i32 0, align 4
@RTC_HMEM_LSB = common dso_local global i32 0, align 4
@RTC_HMEM_SB = common dso_local global i32 0, align 4
@RTC_HMEM_MSB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtc_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = call i64 (...) @xh_vm_get_lowmem_size()
  %7 = load i64, i64* @m_16MB, align 8
  %8 = sub i64 %6, %7
  %9 = load i64, i64* @m_64KB, align 8
  %10 = udiv i64 %8, %9
  store i64 %10, i64* %4, align 8
  %11 = load i32, i32* @RTC_LMEM_LSB, align 4
  %12 = load i64, i64* %4, align 8
  %13 = trunc i64 %12 to i32
  %14 = call i32 @xh_vm_rtc_write(i32 %11, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32, i32* @RTC_LMEM_MSB, align 4
  %20 = load i64, i64* %4, align 8
  %21 = lshr i64 %20, 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 @xh_vm_rtc_write(i32 %19, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = call i64 (...) @xh_vm_get_highmem_size()
  %29 = load i64, i64* @m_64KB, align 8
  %30 = udiv i64 %28, %29
  store i64 %30, i64* %3, align 8
  %31 = load i32, i32* @RTC_HMEM_LSB, align 4
  %32 = load i64, i64* %3, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i32 @xh_vm_rtc_write(i32 %31, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i32, i32* @RTC_HMEM_SB, align 4
  %40 = load i64, i64* %3, align 8
  %41 = lshr i64 %40, 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 @xh_vm_rtc_write(i32 %39, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load i32, i32* @RTC_HMEM_MSB, align 4
  %49 = load i64, i64* %3, align 8
  %50 = lshr i64 %49, 16
  %51 = trunc i64 %50 to i32
  %52 = call i32 @xh_vm_rtc_write(i32 %48, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp eq i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load i32, i32* %2, align 4
  %58 = call i32 @rtc_time(i32 %57)
  %59 = call i32 @xh_vm_rtc_settime(i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp eq i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  ret void
}

declare dso_local i64 @xh_vm_get_lowmem_size(...) #1

declare dso_local i32 @xh_vm_rtc_write(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @xh_vm_get_highmem_size(...) #1

declare dso_local i32 @xh_vm_rtc_settime(i32) #1

declare dso_local i32 @rtc_time(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
