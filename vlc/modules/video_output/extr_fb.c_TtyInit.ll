; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/extr_fb.c_TtyInit.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/extr_fb.c_TtyInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_mode = type { i8*, i8*, i64, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.termios, %struct.sigaction, %struct.sigaction, %struct.vt_mode }
%struct.termios = type { i32, i32*, i64 }
%struct.sigaction = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"tcgetattr failed\00", align 1
@ICANON = common dso_local global i32 0, align 4
@ECHO = common dso_local global i32 0, align 4
@ECHOCTL = common dso_local global i32 0, align 4
@VMIN = common dso_local global i64 0, align 8
@VTIME = common dso_local global i64 0, align 8
@TCSAFLUSH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"tcsetattr failed\00", align 1
@VT_RELDISP = common dso_local global i32 0, align 4
@VT_ACKACQ = common dso_local global %struct.vt_mode* null, align 8
@VT_GETMODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"cannot get terminal mode (%s)\00", align 1
@errno = common dso_local global i32 0, align 4
@VT_PROCESS = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i8* null, align 8
@SIGUSR2 = common dso_local global i8* null, align 8
@VT_SETMODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"cannot set terminal mode (%s)\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@SwitchDisplay = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @TtyInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TtyInit(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.termios, align 8
  %6 = alloca %struct.vt_mode, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %4, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @GfxMode(i32 %12)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = call i32 @tcgetattr(i32 0, %struct.termios* %15)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = call i32 (%struct.TYPE_5__*, i8*, ...) @msg_Err(%struct.TYPE_5__* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %1
  %22 = call i32 @tcgetattr(i32 0, %struct.termios* %5)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = call i32 (%struct.TYPE_5__*, i8*, ...) @msg_Err(%struct.TYPE_5__* %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* @ICANON, align 4
  %29 = xor i32 %28, -1
  %30 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, %29
  store i32 %32, i32* %30, align 8
  %33 = load i32, i32* @ECHO, align 4
  %34 = load i32, i32* @ECHOCTL, align 4
  %35 = or i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, %36
  store i32 %39, i32* %37, align 8
  %40 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 2
  store i64 0, i64* %40, align 8
  %41 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @VMIN, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32 1, i32* %44, align 4
  %45 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @VTIME, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32 0, i32* %48, align 4
  %49 = load i32, i32* @TCSAFLUSH, align 4
  %50 = call i32 @tcsetattr(i32 0, i32 %49, %struct.termios* %5)
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %55

52:                                               ; preds = %27
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %54 = call i32 (%struct.TYPE_5__*, i8*, ...) @msg_Err(%struct.TYPE_5__* %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %27
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @VT_RELDISP, align 4
  %60 = load %struct.vt_mode*, %struct.vt_mode** @VT_ACKACQ, align 8
  %61 = call i32 @ioctl(i32 %58, i32 %59, %struct.vt_mode* %60)
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @VT_GETMODE, align 4
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 4
  %68 = call i32 @ioctl(i32 %64, i32 %65, %struct.vt_mode* %67)
  %69 = icmp eq i32 -1, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %55
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %72 = load i32, i32* @errno, align 4
  %73 = call i32 @vlc_strerror_c(i32 %72)
  %74 = call i32 (%struct.TYPE_5__*, i8*, ...) @msg_Err(%struct.TYPE_5__* %71, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  br label %100

75:                                               ; preds = %55
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 4
  %78 = bitcast %struct.vt_mode* %6 to i8*
  %79 = bitcast %struct.vt_mode* %77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %78, i8* align 8 %79, i64 32, i1 false)
  %80 = load i32, i32* @VT_PROCESS, align 4
  %81 = getelementptr inbounds %struct.vt_mode, %struct.vt_mode* %6, i32 0, i32 3
  store i32 %80, i32* %81, align 8
  %82 = getelementptr inbounds %struct.vt_mode, %struct.vt_mode* %6, i32 0, i32 2
  store i64 0, i64* %82, align 8
  %83 = load i8*, i8** @SIGUSR1, align 8
  %84 = getelementptr inbounds %struct.vt_mode, %struct.vt_mode* %6, i32 0, i32 1
  store i8* %83, i8** %84, align 8
  %85 = load i8*, i8** @SIGUSR2, align 8
  %86 = getelementptr inbounds %struct.vt_mode, %struct.vt_mode* %6, i32 0, i32 0
  store i8* %85, i8** %86, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @VT_SETMODE, align 4
  %91 = call i32 @ioctl(i32 %89, i32 %90, %struct.vt_mode* %6)
  %92 = icmp eq i32 -1, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %75
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %95 = load i32, i32* @errno, align 4
  %96 = call i32 @vlc_strerror_c(i32 %95)
  %97 = call i32 (%struct.TYPE_5__*, i8*, ...) @msg_Err(%struct.TYPE_5__* %94, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %96)
  br label %100

98:                                               ; preds = %75
  %99 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %99, i32* %2, align 4
  br label %109

100:                                              ; preds = %93, %70
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = call i32 @tcsetattr(i32 0, i32 0, %struct.termios* %102)
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @TextMode(i32 %106)
  %108 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %100, %98
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @GfxMode(i32) #1

declare dso_local i32 @tcgetattr(i32, %struct.termios*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local i32 @tcsetattr(i32, i32, %struct.termios*) #1

declare dso_local i32 @ioctl(i32, i32, %struct.vt_mode*) #1

declare dso_local i32 @vlc_strerror_c(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @TextMode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
