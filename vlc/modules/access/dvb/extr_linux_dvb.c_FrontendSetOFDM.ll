; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dvb/extr_linux_dvb.c_FrontendSetOFDM.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dvb/extr_linux_dvb.c_FrontendSetOFDM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.dvb_frontend_parameters = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i8*, i8*, i32 }
%struct.dvb_frontend_event = type { %struct.TYPE_6__, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"dvb-frequency\00", align 1
@FEC_NONE = common dso_local global i8* null, align 8
@QAM_AUTO = common dso_local global i32 0, align 4
@GUARD_INTERVAL_AUTO = common dso_local global i32 0, align 4
@FE_GET_EVENT = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@FE_SET_FRONTEND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"frontend error: %s\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*)* @FrontendSetOFDM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FrontendSetOFDM(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.dvb_frontend_parameters, align 8
  %7 = alloca %struct.dvb_frontend_event, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @var_GetInteger(i32* %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %10 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %6, i32 0, i32 2
  store i32 %9, i32* %10, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @DecodeInversion(i32* %11)
  %13 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %6, i32 0, i32 1
  store i32 %12, i32* %13, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @DecodeBandwidth(i32* %14)
  %16 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %6, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 6
  store i32 %15, i32* %18, align 8
  %19 = load i8*, i8** @FEC_NONE, align 8
  %20 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %6, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 5
  store i8* %19, i8** %22, align 8
  %23 = load i8*, i8** @FEC_NONE, align 8
  %24 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %6, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 4
  store i8* %23, i8** %26, align 8
  %27 = load i32, i32* @QAM_AUTO, align 4
  %28 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %6, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 3
  store i32 %27, i32* %30, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @DecodeTransmission(i32* %31)
  %33 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %6, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  store i32 %32, i32* %35, align 8
  %36 = load i32, i32* @GUARD_INTERVAL_AUTO, align 4
  %37 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %6, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 4
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @DecodeHierarchy(i32* %40)
  %42 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %6, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  br label %45

45:                                               ; preds = %58, %2
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @FE_GET_EVENT, align 4
  %50 = bitcast %struct.dvb_frontend_event* %7 to %struct.dvb_frontend_parameters*
  %51 = call i64 @ioctl(i32 %48, i32 %49, %struct.dvb_frontend_parameters* %50)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %45
  %54 = load i64, i64* @errno, align 8
  %55 = load i64, i64* @EWOULDBLOCK, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %59

58:                                               ; preds = %53, %45
  br label %45

59:                                               ; preds = %57
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @FE_SET_FRONTEND, align 4
  %64 = call i64 @ioctl(i32 %62, i32 %63, %struct.dvb_frontend_parameters* %6)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load i32*, i32** %4, align 8
  %68 = load i64, i64* @errno, align 8
  %69 = call i32 @vlc_strerror_c(i64 %68)
  %70 = call i32 @msg_Err(i32* %67, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %71, i32* %3, align 4
  br label %74

72:                                               ; preds = %59
  %73 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %66
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @var_GetInteger(i32*, i8*) #1

declare dso_local i32 @DecodeInversion(i32*) #1

declare dso_local i32 @DecodeBandwidth(i32*) #1

declare dso_local i32 @DecodeTransmission(i32*) #1

declare dso_local i32 @DecodeHierarchy(i32*) #1

declare dso_local i64 @ioctl(i32, i32, %struct.dvb_frontend_parameters*) #1

declare dso_local i32 @msg_Err(i32*, i8*, i32) #1

declare dso_local i32 @vlc_strerror_c(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
