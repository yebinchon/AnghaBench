; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/extr_rtp.c_rtp_init_ts.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/extr_rtp.c_rtp_init_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8*)* @rtp_init_ts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rtp_init_ts(i32* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10, %2
  %14 = call i64 (...) @vlc_tick_now()
  store i64 %14, i64* %3, align 8
  br label %29

15:                                               ; preds = %10
  store i64 0, i64* %6, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @strlen(i8* %16)
  store i64 %17, i64* %7, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @__MIN(i64 %19, i32 8)
  %21 = call i32 @memcpy(i64* %6, i8* %18, i32 %20)
  %22 = load i32*, i32** %4, align 8
  %23 = ptrtoint i32* %22 to i64
  %24 = load i64, i64* %6, align 8
  %25 = xor i64 %24, %23
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = and i64 %26, 281474976710655
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  store i64 %28, i64* %3, align 8
  br label %29

29:                                               ; preds = %15, %13
  %30 = load i64, i64* %3, align 8
  ret i64 %30
}

declare dso_local i64 @vlc_tick_now(...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcpy(i64*, i8*, i32) #1

declare dso_local i32 @__MIN(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
