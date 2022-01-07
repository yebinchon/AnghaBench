; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dvb/extr_linux_dvb.c_DVROpen.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dvb/extr_linux_dvb.c_DVROpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"dvb-adapter\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"dvb-device\00", align 1
@DVR = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"snprintf() truncated string for DVR\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Opening device %s\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"DVROpen: opening device failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"DVROpen: couldn't set non-blocking mode: %s\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DVROpen(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [128 x i8], align 16
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @var_GetInteger(i32* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %6, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @var_GetInteger(i32* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 %12, i32* %7, align 4
  %13 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %14 = load i8*, i8** @DVR, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @snprintf(i8* %13, i32 128, i8* %14, i32 %15, i32 %16)
  %18 = icmp sge i32 %17, 128
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 (i32*, i8*, ...) @msg_Err(i32* %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %22 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 127
  store i8 0, i8* %22, align 1
  br label %23

23:                                               ; preds = %19, %2
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %26 = call i32 @msg_Dbg(i32* %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %25)
  %27 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %28 = load i32, i32* @O_RDONLY, align 4
  %29 = call i32 @vlc_open(i8* %27, i32 %28)
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = icmp slt i32 %29, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %23
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* @errno, align 4
  %36 = call i32 @vlc_strerror_c(i32 %35)
  %37 = call i32 (i32*, i8*, ...) @msg_Err(i32* %34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %38, i32* %3, align 4
  br label %54

39:                                               ; preds = %23
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @F_SETFL, align 4
  %44 = load i32, i32* @O_NONBLOCK, align 4
  %45 = call i32 @fcntl(i32 %42, i32 %43, i32 %44)
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %52

47:                                               ; preds = %39
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* @errno, align 4
  %50 = call i32 @vlc_strerror_c(i32 %49)
  %51 = call i32 @msg_Warn(i32* %48, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %47, %39
  %53 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %33
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @var_GetInteger(i32*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @msg_Err(i32*, i8*, ...) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, i8*) #1

declare dso_local i32 @vlc_open(i8*, i32) #1

declare dso_local i32 @vlc_strerror_c(i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @msg_Warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
