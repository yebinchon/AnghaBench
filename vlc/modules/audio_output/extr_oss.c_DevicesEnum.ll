; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_oss.c_DevicesEnum.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_oss.c_DevicesEnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"/dev/dsp\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@SNDCTL_SYSINFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"cannot get system infos: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"using %s version %s (0x%06X) under %s\00", align 1
@SNDCTL_AUDIOINFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"cannot get device %d infos: %s\00", align 1
@PCM_CAP_HIDDEN = common dso_local global i32 0, align 4
@PCM_CAP_MODEM = common dso_local global i32 0, align 4
@PCM_CAP_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @DevicesEnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DevicesEnum(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__, align 4
  store i32* %0, i32** %3, align 8
  %9 = load i32, i32* @O_WRONLY, align 4
  %10 = call i32 @vlc_open(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %92

14:                                               ; preds = %1
  store i32 -1, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @SNDCTL_SYSINFO, align 4
  %17 = call i64 @ioctl(i32 %15, i32 %16, %struct.TYPE_4__* %5)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* @errno, align 4
  %22 = call i32 @vlc_strerror(i32 %21)
  %23 = call i32 @msg_Err(i32* %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  br label %88

24:                                               ; preds = %14
  %25 = load i32*, i32** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 9
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 8
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 7
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @msg_Dbg(i32* %25, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %27, i32 %29, i32 %31, i32 %33)
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %84, %24
  %36 = load i32, i32* %7, align 4
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %87

40:                                               ; preds = %35
  %41 = bitcast %struct.TYPE_4__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %41, i8 0, i64 40, i1 false)
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %42, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @SNDCTL_AUDIOINFO, align 4
  %46 = call i64 @ioctl(i32 %44, i32 %45, %struct.TYPE_4__* %8)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @errno, align 4
  %52 = call i32 @vlc_strerror_c(i32 %51)
  %53 = call i32 @msg_Warn(i32* %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %50, i32 %52)
  br label %84

54:                                               ; preds = %40
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @PCM_CAP_HIDDEN, align 4
  %58 = load i32, i32* @PCM_CAP_MODEM, align 4
  %59 = or i32 %57, %58
  %60 = and i32 %56, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %84

63:                                               ; preds = %54
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @PCM_CAP_OUTPUT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %63
  br label %84

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  br label %84

75:                                               ; preds = %70
  %76 = load i32*, i32** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @aout_HotplugReport(i32* %76, i32 %78, i32 %80)
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %75, %74, %69, %62, %48
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %35

87:                                               ; preds = %35
  br label %88

88:                                               ; preds = %87, %19
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @vlc_close(i32 %89)
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %88, %13
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @vlc_open(i8*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @msg_Err(i32*, i8*, i32) #1

declare dso_local i32 @vlc_strerror(i32) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @msg_Warn(i32*, i8*, i32, i32) #1

declare dso_local i32 @vlc_strerror_c(i32) #1

declare dso_local i32 @aout_HotplugReport(i32*, i32, i32) #1

declare dso_local i32 @vlc_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
