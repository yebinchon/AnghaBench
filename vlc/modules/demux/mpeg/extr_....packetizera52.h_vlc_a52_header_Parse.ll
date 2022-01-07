; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_....packetizera52.h_vlc_a52_header_Parse.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_....packetizera52.h_vlc_a52_header_Parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vlc_a52_header_Parse.p_acmod = internal constant [8 x i32] [i32 135, i32 129, i32 135, i32 134, i32 130, i32 131, i32 133, i32 132], align 16
@vlc_a52_header_Parse.pi_fscod_samplerates = internal constant [3 x i32] [i32 48000, i32 44100, i32 32000], align 4
@VLC_A52_MIN_HEADER_SIZE = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @vlc_a52_header_Parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlc_a52_header_Parse(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @VLC_A52_MIN_HEADER_SIZE, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %13, i32* %4, align 4
  br label %46

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 11
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 119
  br i1 %23, label %24, label %26

24:                                               ; preds = %19, %14
  %25 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %25, i32* %4, align 4
  br label %46

26:                                               ; preds = %19
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 5
  %29 = load i32, i32* %28, align 4
  %30 = ashr i32 %29, 3
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp sle i32 %31, 10
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i32*, i32** %5, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @vlc_a52_header_ParseAc3(i32* %34, i32* %35, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @vlc_a52_header_Parse.p_acmod, i64 0, i64 0), i32* getelementptr inbounds ([3 x i32], [3 x i32]* @vlc_a52_header_Parse.pi_fscod_samplerates, i64 0, i64 0))
  store i32 %36, i32* %4, align 4
  br label %46

37:                                               ; preds = %26
  %38 = load i32, i32* %8, align 4
  %39 = icmp sle i32 %38, 16
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32*, i32** %5, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @vlc_a52_header_ParseEac3(i32* %41, i32* %42, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @vlc_a52_header_Parse.p_acmod, i64 0, i64 0), i32* getelementptr inbounds ([3 x i32], [3 x i32]* @vlc_a52_header_Parse.pi_fscod_samplerates, i64 0, i64 0))
  store i32 %43, i32* %4, align 4
  br label %46

44:                                               ; preds = %37
  %45 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %44, %40, %33, %24, %12
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @vlc_a52_header_ParseAc3(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @vlc_a52_header_ParseEac3(i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
