; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_oss.c_ProbeAudioDevOss.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_oss.c_ProbeAudioDevOss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDONLY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"cannot open device %s for OSS audio (%s)\00", align 1
@errno = common dso_local global i32 0, align 4
@SNDCTL_DSP_GETCAPS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"cannot get audio caps (%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @ProbeAudioDevOss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ProbeAudioDevOss(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i32, i32* @O_RDONLY, align 4
  %10 = load i32, i32* @O_NONBLOCK, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @vlc_open(i8* %8, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* @errno, align 4
  %19 = call i32 @vlc_strerror_c(i32 %18)
  %20 = call i32 (i32*, i8*, i8*, ...) @msg_Err(i32* %16, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %19)
  br label %40

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @SNDCTL_DSP_GETCAPS, align 4
  %24 = call i64 @ioctl(i32 %22, i32 %23, i32* %6)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* @errno, align 4
  %29 = call i32 @vlc_strerror_c(i32 %28)
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 (i32*, i8*, i8*, ...) @msg_Err(i32* %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  br label %40

33:                                               ; preds = %21
  %34 = load i32, i32* %7, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @vlc_close(i32 %37)
  br label %39

39:                                               ; preds = %36, %33
  store i32 1, i32* %3, align 4
  br label %47

40:                                               ; preds = %26, %15
  %41 = load i32, i32* %7, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @vlc_close(i32 %44)
  br label %46

46:                                               ; preds = %43, %40
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %39
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @vlc_open(i8*, i32) #1

declare dso_local i32 @msg_Err(i32*, i8*, i8*, ...) #1

declare dso_local i32 @vlc_strerror_c(i32) #1

declare dso_local i64 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @vlc_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
