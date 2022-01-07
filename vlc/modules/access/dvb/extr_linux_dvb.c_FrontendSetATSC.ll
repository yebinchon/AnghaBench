; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dvb/extr_linux_dvb.c_FrontendSetATSC.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dvb/extr_linux_dvb.c_FrontendSetATSC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.dvb_frontend_parameters = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.dvb_frontend_event = type { %struct.TYPE_6__, i32 }

@.str = private unnamed_addr constant [14 x i8] c"dvb-frequency\00", align 1
@VSB_8 = common dso_local global i32 0, align 4
@FE_GET_EVENT = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@FE_SET_FRONTEND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"frontend error: %s\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*)* @FrontendSetATSC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FrontendSetATSC(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.dvb_frontend_parameters, align 4
  %7 = alloca %struct.dvb_frontend_event, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @var_GetInteger(i32* %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %10 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %6, i32 0, i32 1
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @VSB_8, align 4
  %12 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %6, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 4
  br label %15

15:                                               ; preds = %28, %2
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @FE_GET_EVENT, align 4
  %20 = bitcast %struct.dvb_frontend_event* %7 to %struct.dvb_frontend_parameters*
  %21 = call i64 @ioctl(i32 %18, i32 %19, %struct.dvb_frontend_parameters* %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %15
  %24 = load i64, i64* @errno, align 8
  %25 = load i64, i64* @EWOULDBLOCK, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %29

28:                                               ; preds = %23, %15
  br label %15

29:                                               ; preds = %27
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @FE_SET_FRONTEND, align 4
  %34 = call i64 @ioctl(i32 %32, i32 %33, %struct.dvb_frontend_parameters* %6)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load i32*, i32** %4, align 8
  %38 = load i64, i64* @errno, align 8
  %39 = call i32 @vlc_strerror_c(i64 %38)
  %40 = call i32 @msg_Err(i32* %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %41, i32* %3, align 4
  br label %44

42:                                               ; preds = %29
  %43 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %36
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @var_GetInteger(i32*, i8*) #1

declare dso_local i64 @ioctl(i32, i32, %struct.dvb_frontend_parameters*) #1

declare dso_local i32 @msg_Err(i32*, i8*, i32) #1

declare dso_local i32 @vlc_strerror_c(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
