; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_dvdnav.c_StreamProbeDVD.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_dvdnav.c_StreamProbeDVD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"CD001\01\00", align 1
@DVD_VIDEO_LB_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @StreamProbeDVD to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @StreamProbeDVD(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca [6 x i8], align 1
  %7 = alloca i8, align 1
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @vlc_stream_Peek(i32* %8, i64** %5, i32 2048)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 512
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %13, i32* %2, align 4
  br label %64

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %28, %14
  %16 = load i32, i32* %4, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %15
  %19 = load i64*, i64** %5, align 8
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %19, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %27, i32* %2, align 4
  br label %64

28:                                               ; preds = %18
  br label %15

29:                                               ; preds = %15
  %30 = load i32*, i32** %3, align 8
  %31 = call i64 @vlc_stream_Seek(i32* %30, i32 32769)
  %32 = load i64, i64* @VLC_SUCCESS, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %43, label %34

34:                                               ; preds = %29
  %35 = load i32*, i32** %3, align 8
  %36 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 0
  %37 = call i32 @vlc_stream_Read(i32* %35, i8* %36, i32 6)
  %38 = icmp slt i32 %37, 6
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 0
  %41 = call i64 @memcmp(i8* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39, %34, %29
  %44 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %44, i32* %2, align 4
  br label %64

45:                                               ; preds = %39
  %46 = load i32*, i32** %3, align 8
  %47 = load i32, i32* @DVD_VIDEO_LB_LEN, align 4
  %48 = mul nsw i32 256, %47
  %49 = call i64 @vlc_stream_Seek(i32* %46, i32 %48)
  %50 = load i64, i64* @VLC_SUCCESS, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %45
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @vlc_stream_Read(i32* %53, i8* %7, i32 2)
  %55 = icmp eq i32 %54, 2
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = call i32 @GetWLE(i8* %7)
  %58 = icmp eq i32 %57, 2
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i64, i64* @VLC_SUCCESS, align 8
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %2, align 4
  br label %64

62:                                               ; preds = %56, %52, %45
  %63 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %62, %59, %43, %26, %12
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @vlc_stream_Peek(i32*, i64**, i32) #1

declare dso_local i64 @vlc_stream_Seek(i32*, i32) #1

declare dso_local i32 @vlc_stream_Read(i32*, i8*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @GetWLE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
