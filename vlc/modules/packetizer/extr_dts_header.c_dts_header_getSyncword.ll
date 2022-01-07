; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_dts_header.c_dts_header_getSyncword.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_dts_header.c_dts_header_getSyncword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"\7F\FE\80\01\00", align 1
@DTS_SYNC_CORE_BE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"\FE\7F\01\80\00", align 1
@DTS_SYNC_CORE_LE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"dX %\00", align 1
@DTS_SYNC_SUBSTREAM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"\1F\FF\E8\00\00", align 1
@DTS_SYNC_CORE_14BITS_BE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"\FF\1F\00\E8\00", align 1
@DTS_SYNC_CORE_14BITS_LE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"\0A\80\19!\00", align 1
@DTS_SYNC_SUBSTREAM_LBR = common dso_local global i32 0, align 4
@DTS_SYNC_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @dts_header_getSyncword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dts_header_getSyncword(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = call i64 @memcmp(i32* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @DTS_SYNC_CORE_BE, align 4
  store i32 %8, i32* %2, align 4
  br label %63

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @memcmp(i32* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @DTS_SYNC_CORE_LE, align 4
  store i32 %14, i32* %2, align 4
  br label %63

15:                                               ; preds = %9
  %16 = load i32*, i32** %3, align 8
  %17 = call i64 @memcmp(i32* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @DTS_SYNC_SUBSTREAM, align 4
  store i32 %20, i32* %2, align 4
  br label %63

21:                                               ; preds = %15
  %22 = load i32*, i32** %3, align 8
  %23 = call i64 @memcmp(i32* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %21
  %26 = load i32*, i32** %3, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 4
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 7
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load i32*, i32** %3, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 5
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 240
  %35 = icmp eq i32 %34, 240
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @DTS_SYNC_CORE_14BITS_BE, align 4
  store i32 %37, i32* %2, align 4
  br label %63

38:                                               ; preds = %30, %25, %21
  %39 = load i32*, i32** %3, align 8
  %40 = call i64 @memcmp(i32* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = load i32*, i32** %3, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 4
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 240
  %47 = icmp eq i32 %46, 240
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load i32*, i32** %3, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 5
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 7
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @DTS_SYNC_CORE_14BITS_LE, align 4
  store i32 %54, i32* %2, align 4
  br label %63

55:                                               ; preds = %48, %42, %38
  %56 = load i32*, i32** %3, align 8
  %57 = call i64 @memcmp(i32* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @DTS_SYNC_SUBSTREAM_LBR, align 4
  store i32 %60, i32* %2, align 4
  br label %63

61:                                               ; preds = %55
  %62 = load i32, i32* @DTS_SYNC_NONE, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %61, %59, %53, %36, %19, %13, %7
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
