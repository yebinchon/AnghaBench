; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_subtitle.c_ParseRealTime.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_subtitle.c_ParseRealTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"%d:%d:%d.%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%d:%d.%d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%d.%d\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%d:%d\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@VLC_EGENERIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32*, i32*, i32*, i32*)* @ParseRealTime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ParseRealTime(i8* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  store i64 0, i64* %6, align 8
  br label %68

17:                                               ; preds = %5
  %18 = load i8*, i8** %7, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %19, i32* %20, i32* %21, i32* %22)
  %24 = icmp eq i32 %23, 4
  br i1 %24, label %49, label %25

25:                                               ; preds = %17
  %26 = load i8*, i8** %7, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %27, i32* %28, i32* %29)
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %49, label %32

32:                                               ; preds = %25
  %33 = load i8*, i8** %7, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %34, i32* %35)
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %49, label %38

38:                                               ; preds = %32
  %39 = load i8*, i8** %7, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* %40, i32* %41)
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %49, label %44

44:                                               ; preds = %38
  %45 = load i8*, i8** %7, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %46)
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %66

49:                                               ; preds = %44, %38, %32, %25, %17
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %51, 60
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %52, %54
  %56 = mul nsw i32 %55, 60
  %57 = load i32*, i32** %10, align 8
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %56, %58
  %60 = call i64 @vlc_tick_from_sec(i32 %59)
  %61 = load i32*, i32** %11, align 8
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %62, 10
  %64 = call i64 @VLC_TICK_FROM_MS(i32 %63)
  %65 = add nsw i64 %60, %64
  store i64 %65, i64* %6, align 8
  br label %68

66:                                               ; preds = %44
  %67 = load i64, i64* @VLC_EGENERIC, align 8
  store i64 %67, i64* %6, align 8
  br label %68

68:                                               ; preds = %66, %49, %16
  %69 = load i64, i64* %6, align 8
  ret i64 %69
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, ...) #1

declare dso_local i64 @vlc_tick_from_sec(i32) #1

declare dso_local i64 @VLC_TICK_FROM_MS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
