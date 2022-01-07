; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/winmm/extr_mci.c_test_playWaveTypeMpegvideo.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/winmm/extr_mci.c_test_playWaveTypeMpegvideo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [47 x i8] c"open tempfile.wav type MPEGVideo alias mysound\00", align 1
@ok_saved = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"mci open tempfile.wav type MPEGVideo returned %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"Cannot open tempfile.wav type MPEGVideo for playing (%s), skipping\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"mysound\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"mciGetDeviceIDA mysound returned %u, expected 1\0A\00", align 1
@MCI_PLAY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"mciCommand play returned %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"status mysound mode\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"mci status mode returned %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"playing\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"mci status mode: %s\0A\00", align 1
@MCI_STATUS_MODE = common dso_local global i32 0, align 4
@MCI_STATUS = common dso_local global i32 0, align 4
@MCI_STATUS_ITEM = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [36 x i8] c"mciCommand status mode returned %s\0A\00", align 1
@MCI_MODE_PLAY = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [28 x i8] c"mciCommand status mode: %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"setaudio mysound volume to 1000\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"mci setaudio volume to 1000 returned %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"setaudio mysound volume to 1001\00", align 1
@MCIERR_OUTOFRANGE = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [41 x i8] c"mci setaudio volume to 1001 returned %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"close mysound\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"mci close returned %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_playWaveTypeMpegvideo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_playWaveTypeMpegvideo() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_2__, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %7 = call i32 @memset(i8* %6, i32 0, i32 1024)
  %8 = call i64 @mciSendStringA(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* null, i32 0, i32* null)
  store i64 %8, i64* %1, align 8
  %9 = load i64, i64* %1, align 8
  %10 = load i64, i64* @ok_saved, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i64, i64* %1, align 8
  %14 = call i8* @dbg_mcierr(i64 %13)
  %15 = call i32 (i32, i8*, ...) @ok(i32 %12, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %14)
  %16 = load i64, i64* %1, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %0
  %19 = load i64, i64* %1, align 8
  %20 = call i8* @dbg_mcierr(i64 %19)
  %21 = call i32 @skip(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  br label %135

22:                                               ; preds = %0
  %23 = call i32 @mciGetDeviceIDA(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 %23, i32* %2, align 4
  %24 = load i32, i32* %2, align 4
  %25 = icmp eq i32 %24, 1
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %2, align 4
  %28 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @MCI_PLAY, align 4
  %31 = ptrtoint i32* %3 to i32
  %32 = call i64 @mciSendCommandA(i32 %29, i32 %30, i32 0, i32 %31)
  store i64 %32, i64* %1, align 8
  %33 = load i64, i64* %1, align 8
  %34 = icmp ne i64 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = load i64, i64* %1, align 8
  %38 = call i8* @dbg_mcierr(i64 %37)
  %39 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %38)
  %40 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %41 = call i64 @mciSendStringA(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %40, i32 1024, i32* null)
  store i64 %41, i64* %1, align 8
  %42 = load i64, i64* %1, align 8
  %43 = icmp ne i64 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = load i64, i64* %1, align 8
  %47 = call i8* @dbg_mcierr(i64 %46)
  %48 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* %47)
  %49 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %50 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %55 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* %54)
  %56 = load i32, i32* @MCI_STATUS_MODE, align 4
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  store i32 %56, i32* %57, align 8
  %58 = load i32, i32* %2, align 4
  %59 = load i32, i32* @MCI_STATUS, align 4
  %60 = load i32, i32* @MCI_STATUS_ITEM, align 4
  %61 = ptrtoint %struct.TYPE_2__* %4 to i32
  %62 = call i64 @mciSendCommandA(i32 %58, i32 %59, i32 %60, i32 %61)
  store i64 %62, i64* %1, align 8
  %63 = load i64, i64* %1, align 8
  %64 = icmp ne i64 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = load i64, i64* %1, align 8
  %68 = call i8* @dbg_mcierr(i64 %67)
  %69 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i8* %68)
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @MCI_MODE_PLAY, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to i8*
  %78 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i8* %77)
  %79 = call i64 @mciSendStringA(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i8* null, i32 0, i32* null)
  store i64 %79, i64* %1, align 8
  %80 = load i64, i64* %1, align 8
  %81 = icmp ne i64 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = load i64, i64* %1, align 8
  %85 = call i8* @dbg_mcierr(i64 %84)
  %86 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0), i8* %85)
  %87 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %88 = call i64 @mciSendStringA(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %87, i32 1024, i32* null)
  store i64 %88, i64* %1, align 8
  %89 = load i64, i64* %1, align 8
  %90 = icmp ne i64 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = load i64, i64* %1, align 8
  %94 = call i8* @dbg_mcierr(i64 %93)
  %95 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* %94)
  %96 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %97 = call i32 @strcmp(i8* %96, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %102 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* %101)
  %103 = call i64 @mciSendStringA(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), i8* null, i32 0, i32* null)
  store i64 %103, i64* %1, align 8
  %104 = load i64, i64* %1, align 8
  %105 = load i64, i64* @MCIERR_OUTOFRANGE, align 8
  %106 = icmp eq i64 %104, %105
  %107 = zext i1 %106 to i32
  %108 = load i64, i64* %1, align 8
  %109 = call i8* @dbg_mcierr(i64 %108)
  %110 = call i32 (i32, i8*, ...) @ok(i32 %107, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i64 0, i64 0), i8* %109)
  %111 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %112 = call i64 @mciSendStringA(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %111, i32 1024, i32* null)
  store i64 %112, i64* %1, align 8
  %113 = load i64, i64* %1, align 8
  %114 = icmp ne i64 %113, 0
  %115 = xor i1 %114, true
  %116 = zext i1 %115 to i32
  %117 = load i64, i64* %1, align 8
  %118 = call i8* @dbg_mcierr(i64 %117)
  %119 = call i32 (i32, i8*, ...) @ok(i32 %116, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* %118)
  %120 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %121 = call i32 @strcmp(i8* %120, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %122 = icmp ne i32 %121, 0
  %123 = xor i1 %122, true
  %124 = zext i1 %123 to i32
  %125 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %126 = call i32 (i32, i8*, ...) @ok(i32 %124, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* %125)
  %127 = call i64 @mciSendStringA(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* null, i32 0, i32* null)
  store i64 %127, i64* %1, align 8
  %128 = load i64, i64* %1, align 8
  %129 = icmp ne i64 %128, 0
  %130 = xor i1 %129, true
  %131 = zext i1 %130 to i32
  %132 = load i64, i64* %1, align 8
  %133 = call i8* @dbg_mcierr(i64 %132)
  %134 = call i32 (i32, i8*, ...) @ok(i32 %131, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0), i8* %133)
  br label %135

135:                                              ; preds = %22, %18
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @mciSendStringA(i8*, i8*, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i8* @dbg_mcierr(i64) #1

declare dso_local i32 @skip(i8*, i8*) #1

declare dso_local i32 @mciGetDeviceIDA(i8*) #1

declare dso_local i64 @mciSendCommandA(i32, i32, i32, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
