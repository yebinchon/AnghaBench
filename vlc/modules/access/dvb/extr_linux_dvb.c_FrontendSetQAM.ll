; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dvb/extr_linux_dvb.c_FrontendSetQAM.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dvb/extr_linux_dvb.c_FrontendSetQAM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.dvb_frontend_parameters = type { %struct.TYPE_9__, i32, i8* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.dvb_frontend_event = type { %struct.TYPE_9__, i32, i8* }

@.str = private unnamed_addr constant [14 x i8] c"dvb-frequency\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"dvb-srate\00", align 1
@FEC_NONE = common dso_local global i32 0, align 4
@QAM_AUTO = common dso_local global i32 0, align 4
@FE_GET_EVENT = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@FE_SET_FRONTEND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"frontend error: %s\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_11__*)* @FrontendSetQAM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FrontendSetQAM(i32* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.dvb_frontend_parameters, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dvb_frontend_event, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %6, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i8* @var_GetInteger(i32* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %15 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %7, i32 0, i32 2
  store i8* %14, i8** %15, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @DecodeInversion(i32* %16)
  %18 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %7, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = call i8* @var_GetInteger(i32* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %21 = ptrtoint i8* %20 to i32
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ult i32 %22, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %2
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ugt i32 %29, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load i32, i32* %8, align 4
  %37 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %7, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  br label %40

40:                                               ; preds = %35, %28, %2
  %41 = load i32, i32* @FEC_NONE, align 4
  %42 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %7, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 8
  %45 = load i32, i32* @QAM_AUTO, align 4
  %46 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %7, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  br label %49

49:                                               ; preds = %62, %40
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @FE_GET_EVENT, align 4
  %54 = bitcast %struct.dvb_frontend_event* %9 to %struct.dvb_frontend_parameters*
  %55 = call i64 @ioctl(i32 %52, i32 %53, %struct.dvb_frontend_parameters* %54)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %49
  %58 = load i64, i64* @errno, align 8
  %59 = load i64, i64* @EWOULDBLOCK, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %63

62:                                               ; preds = %57, %49
  br label %49

63:                                               ; preds = %61
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @FE_SET_FRONTEND, align 4
  %68 = call i64 @ioctl(i32 %66, i32 %67, %struct.dvb_frontend_parameters* %7)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load i32*, i32** %4, align 8
  %72 = load i64, i64* @errno, align 8
  %73 = call i32 @vlc_strerror_c(i64 %72)
  %74 = call i32 @msg_Err(i32* %71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %75, i32* %3, align 4
  br label %78

76:                                               ; preds = %63
  %77 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %76, %70
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i8* @var_GetInteger(i32*, i8*) #1

declare dso_local i32 @DecodeInversion(i32*) #1

declare dso_local i64 @ioctl(i32, i32, %struct.dvb_frontend_parameters*) #1

declare dso_local i32 @msg_Err(i32*, i8*, i32) #1

declare dso_local i32 @vlc_strerror_c(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
