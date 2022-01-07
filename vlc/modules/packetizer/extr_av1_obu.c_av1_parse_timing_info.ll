; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_av1_obu.c_av1_parse_timing_info.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_av1_obu.c_av1_parse_timing_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.av1_timing_info_s = type { i32, i64, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.av1_timing_info_s*)* @av1_parse_timing_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @av1_parse_timing_info(i32* %0, %struct.av1_timing_info_s* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.av1_timing_info_s*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.av1_timing_info_s* %1, %struct.av1_timing_info_s** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i8* @bs_read(i32* %5, i32 32)
  %7 = load %struct.av1_timing_info_s*, %struct.av1_timing_info_s** %4, align 8
  %8 = getelementptr inbounds %struct.av1_timing_info_s, %struct.av1_timing_info_s* %7, i32 0, i32 3
  store i8* %6, i8** %8, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i8* @bs_read(i32* %9, i32 32)
  %11 = load %struct.av1_timing_info_s*, %struct.av1_timing_info_s** %4, align 8
  %12 = getelementptr inbounds %struct.av1_timing_info_s, %struct.av1_timing_info_s* %11, i32 0, i32 2
  store i8* %10, i8** %12, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i64 @bs_read1(i32* %13)
  %15 = load %struct.av1_timing_info_s*, %struct.av1_timing_info_s** %4, align 8
  %16 = getelementptr inbounds %struct.av1_timing_info_s, %struct.av1_timing_info_s* %15, i32 0, i32 1
  store i64 %14, i64* %16, align 8
  %17 = load %struct.av1_timing_info_s*, %struct.av1_timing_info_s** %4, align 8
  %18 = getelementptr inbounds %struct.av1_timing_info_s, %struct.av1_timing_info_s* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @bs_read_ue(i32* %22)
  %24 = load %struct.av1_timing_info_s*, %struct.av1_timing_info_s** %4, align 8
  %25 = getelementptr inbounds %struct.av1_timing_info_s, %struct.av1_timing_info_s* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  br label %26

26:                                               ; preds = %21, %2
  ret i32 1
}

declare dso_local i8* @bs_read(i32*, i32) #1

declare dso_local i64 @bs_read1(i32*) #1

declare dso_local i32 @bs_read_ue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
