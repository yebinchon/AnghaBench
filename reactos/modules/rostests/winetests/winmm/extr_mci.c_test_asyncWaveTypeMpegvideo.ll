; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/winmm/extr_mci.c_test_asyncWaveTypeMpegvideo.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/winmm/extr_mci.c_test_asyncWaveTypeMpegvideo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [54 x i8] c"open tempfile.wav alias mysound notify type mpegvideo\00", align 1
@ok_saved = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"mci open tempfile.wav returned %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Cannot open tempfile.wav for playing (%s), skipping\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"mci open deviceId: %s, expected 1\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"mci open DeviceID: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"open alias notify\00", align 1
@MCI_NOTIFY_SUCCESSFUL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"play mysound notify\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"mci play returned %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"pause mysound wait\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"mci pause wait returned %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"status mysound mode notify\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"mci status mode returned %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"paused\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"mci status mode: %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"play (superseded)\00", align 1
@MCI_NOTIFY_SUPERSEDED = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"seek mysound to start wait\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"mci seek to start wait returned %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"set mysound time format milliseconds\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"mci time format milliseconds returned %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"play mysound to 1500 notify\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"play\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"close mysound wait\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"mci close wait returned %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"play (aborted by close)\00", align 1
@MCI_NOTIFY_ABORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_asyncWaveTypeMpegvideo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_asyncWaveTypeMpegvideo(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [1024 x i8], align 16
  store i32* %0, i32** %2, align 8
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %7 = call i32 @memset(i8* %6, i32 0, i32 1024)
  %8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @mciSendStringA(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %8, i32 1024, i32* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @ok_saved, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* %4, align 4
  %16 = call i8* @dbg_mcierr(i32 %15)
  %17 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = call i8* @dbg_mcierr(i32 %21)
  %23 = call i32 @skip(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i8* %22)
  br label %127

24:                                               ; preds = %1
  %25 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %31 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %30)
  %32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %33 = call i32 @atoi(i8* %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i8*
  %38 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %37)
  %39 = load i32*, i32** %2, align 8
  %40 = load i32, i32* @MCI_NOTIFY_SUCCESSFUL, align 4
  %41 = call i32 @test_notification(i32* %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %40)
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @mciSendStringA(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* null, i32 0, i32* %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* %4, align 4
  %49 = call i8* @dbg_mcierr(i32 %48)
  %50 = call i32 @ok(i32 %47, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* %49)
  %51 = call i32 @Sleep(i32 500)
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @mciSendStringA(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* null, i32 0, i32* %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = load i32, i32* %4, align 4
  %59 = call i8* @dbg_mcierr(i32 %58)
  %60 = call i32 @ok(i32 %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i8* %59)
  %61 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %62 = load i32*, i32** %2, align 8
  %63 = call i32 @mciSendStringA(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i8* %61, i32 1024, i32* %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = load i32, i32* %4, align 4
  %69 = call i8* @dbg_mcierr(i32 %68)
  %70 = call i32 @ok(i32 %67, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i8* %69)
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %24
  %74 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %75 = call i32 @strcmp(i8* %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %80 = call i32 @ok(i32 %78, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i8* %79)
  br label %81

81:                                               ; preds = %73, %24
  %82 = load i32*, i32** %2, align 8
  %83 = load i32, i32* @MCI_NOTIFY_SUPERSEDED, align 4
  %84 = call i32 @test_notification(i32* %82, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i32 %83)
  %85 = load i32*, i32** %2, align 8
  %86 = load i32, i32* @MCI_NOTIFY_SUCCESSFUL, align 4
  %87 = call i32 @test_notification(i32* %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i32 %86)
  %88 = call i32 @mciSendStringA(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0), i8* null, i32 0, i32* null)
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = load i32, i32* %4, align 4
  %94 = call i8* @dbg_mcierr(i32 %93)
  %95 = call i32 @ok(i32 %92, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0), i8* %94)
  %96 = call i32 @mciSendStringA(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i64 0, i64 0), i8* null, i32 0, i32* null)
  store i32 %96, i32* %4, align 4
  %97 = load i32, i32* %4, align 4
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = load i32, i32* %4, align 4
  %102 = call i8* @dbg_mcierr(i32 %101)
  %103 = call i32 @ok(i32 %100, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i64 0, i64 0), i8* %102)
  %104 = load i32*, i32** %2, align 8
  %105 = call i32 @mciSendStringA(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0), i8* null, i32 0, i32* %104)
  store i32 %105, i32* %4, align 4
  %106 = load i32, i32* %4, align 4
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  %110 = load i32, i32* %4, align 4
  %111 = call i8* @dbg_mcierr(i32 %110)
  %112 = call i32 @ok(i32 %109, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* %111)
  %113 = call i32 @Sleep(i32 200)
  %114 = load i32*, i32** %2, align 8
  %115 = call i32 @test_notification(i32* %114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i32 0)
  %116 = call i32 @mciSendStringA(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0), i8* null, i32 0, i32* null)
  store i32 %116, i32* %4, align 4
  %117 = load i32, i32* %4, align 4
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  %121 = load i32, i32* %4, align 4
  %122 = call i8* @dbg_mcierr(i32 %121)
  %123 = call i32 @ok(i32 %120, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i64 0, i64 0), i8* %122)
  %124 = load i32*, i32** %2, align 8
  %125 = load i32, i32* @MCI_NOTIFY_ABORTED, align 4
  %126 = call i32 @test_notification(i32* %124, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i64 0, i64 0), i32 %125)
  br label %127

127:                                              ; preds = %81, %20
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @mciSendStringA(i8*, i8*, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i8*) #1

declare dso_local i8* @dbg_mcierr(i32) #1

declare dso_local i32 @skip(i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @test_notification(i32*, i8*, i32) #1

declare dso_local i32 @Sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
