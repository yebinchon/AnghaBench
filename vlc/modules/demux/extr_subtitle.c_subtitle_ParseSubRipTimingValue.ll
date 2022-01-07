; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_subtitle.c_subtitle_ParseSubRipTimingValue.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_subtitle.c_subtitle_ParseSubRipTimingValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"%d:%d:%d,%d\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%d:%d:%d.%d\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%d:%d:%d\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i8*)* @subtitle_ParseSubRipTimingValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subtitle_ParseSubRipTimingValue(i64* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 (i8*, i8*, i32*, i32*, i32*, ...) @sscanf(i8* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %6, i32* %7, i32* %8, i32* %9)
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %21, label %13

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 (i8*, i8*, i32*, i32*, i32*, ...) @sscanf(i8* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %6, i32* %7, i32* %8, i32* %9)
  %16 = icmp eq i32 %15, 4
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 (i8*, i8*, i32*, i32*, i32*, ...) @sscanf(i8* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %6, i32* %7, i32* %8)
  %20 = icmp eq i32 %19, 3
  br i1 %20, label %21, label %35

21:                                               ; preds = %17, %13, %2
  %22 = load i32, i32* %6, align 4
  %23 = mul nsw i32 %22, 3600
  %24 = load i32, i32* %7, align 4
  %25 = mul nsw i32 %24, 60
  %26 = add nsw i32 %23, %25
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %26, %27
  %29 = call i64 @vlc_tick_from_sec(i32 %28)
  %30 = load i32, i32* %9, align 4
  %31 = call i64 @VLC_TICK_FROM_MS(i32 %30)
  %32 = add nsw i64 %29, %31
  %33 = load i64*, i64** %4, align 8
  store i64 %32, i64* %33, align 8
  %34 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %34, i32* %3, align 4
  br label %37

35:                                               ; preds = %17
  %36 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %35, %21
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, ...) #1

declare dso_local i64 @vlc_tick_from_sec(i32) #1

declare dso_local i64 @VLC_TICK_FROM_MS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
