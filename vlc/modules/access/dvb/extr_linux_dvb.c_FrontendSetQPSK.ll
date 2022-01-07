; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dvb/extr_linux_dvb.c_FrontendSetQPSK.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dvb/extr_linux_dvb.c_FrontendSetQPSK.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.dvb_frontend_parameters = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i8* }
%struct.dvb_frontend_event = type { i32, %struct.TYPE_7__, i32 }

@.str = private unnamed_addr constant [14 x i8] c"dvb-frequency\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"dvb-lnb-lof1\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"frequency %d is in IF-band\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"frequency %d is in S-band\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"frequency %d is in C-band (lower)\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"frequency %d is in C-band (higher)\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"frequency %d is in Ku-band\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"frequency %d is out of any known band\00", align 1
@.str.8 = private unnamed_addr constant [65 x i8] c"specify dvb-lnb-lof1 manually for the local oscillator frequency\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"dvb-lnb-lof2\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"dvb-lnb-slof\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"dvb-srate\00", align 1
@FEC_NONE = common dso_local global i32 0, align 4
@FE_GET_EVENT = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@FE_SET_FRONTEND = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [19 x i8] c"frontend error: %s\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*)* @FrontendSetQPSK to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FrontendSetQPSK(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.dvb_frontend_parameters, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dvb_frontend_event, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = call i8* @var_GetInteger(i32* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %15 = ptrtoint i8* %14 to i32
  store i32 %15, i32* %8, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = call i8* @var_GetInteger(i32* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %18 = ptrtoint i8* %17 to i32
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %92

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  %23 = icmp sge i32 %22, 950000
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i32, i32* %8, align 4
  %26 = icmp sle i32 %25, 2150000
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @msg_Dbg(i32* %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  store i32 0, i32* %10, align 4
  br label %82

31:                                               ; preds = %24, %21
  %32 = load i32, i32* %8, align 4
  %33 = icmp sge i32 %32, 2500000
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i32, i32* %8, align 4
  %36 = icmp sle i32 %35, 2700000
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @msg_Dbg(i32* %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  store i32 3650000, i32* %10, align 4
  br label %81

41:                                               ; preds = %34, %31
  %42 = load i32, i32* %8, align 4
  %43 = icmp sge i32 %42, 3400000
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = icmp sle i32 %45, 4200000
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @msg_Dbg(i32* %48, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %49)
  store i32 5150000, i32* %10, align 4
  br label %80

51:                                               ; preds = %44, %41
  %52 = load i32, i32* %8, align 4
  %53 = icmp sge i32 %52, 4500000
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load i32, i32* %8, align 4
  %56 = icmp sle i32 %55, 4800000
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @msg_Dbg(i32* %58, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %59)
  store i32 5950000, i32* %10, align 4
  br label %79

61:                                               ; preds = %54, %51
  %62 = load i32, i32* %8, align 4
  %63 = icmp sge i32 %62, 10700000
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load i32, i32* %8, align 4
  %66 = icmp sle i32 %65, 13250000
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i32*, i32** %4, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @msg_Dbg(i32* %68, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %69)
  store i32 9750000, i32* %10, align 4
  store i32 10600000, i32* %11, align 4
  store i32 11700000, i32* %9, align 4
  br label %78

71:                                               ; preds = %64, %61
  %72 = load i32*, i32** %4, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 (i32*, i8*, ...) @msg_Err(i32* %72, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %73)
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 (i32*, i8*, ...) @msg_Err(i32* %75, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.8, i64 0, i64 0))
  %77 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %77, i32* %3, align 4
  br label %174

78:                                               ; preds = %67
  br label %79

79:                                               ; preds = %78, %57
  br label %80

80:                                               ; preds = %79, %47
  br label %81

81:                                               ; preds = %80, %37
  br label %82

82:                                               ; preds = %81, %27
  %83 = load i32*, i32** %4, align 8
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @var_SetInteger(i32* %83, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  %86 = load i32*, i32** %4, align 8
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @var_SetInteger(i32* %86, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %87)
  %89 = load i32*, i32** %4, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @var_SetInteger(i32* %89, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %90)
  br label %100

92:                                               ; preds = %2
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %10, align 4
  %94 = load i32*, i32** %4, align 8
  %95 = call i8* @var_GetInteger(i32* %94, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %96 = ptrtoint i8* %95 to i32
  store i32 %96, i32* %11, align 4
  %97 = load i32*, i32** %4, align 8
  %98 = call i8* @var_GetInteger(i32* %97, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  %99 = ptrtoint i8* %98 to i32
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %92, %82
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %100
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %9, align 4
  %106 = icmp sge i32 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %8, align 4
  %110 = sub nsw i32 %109, %108
  store i32 %110, i32* %8, align 4
  br label %115

111:                                              ; preds = %103, %100
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %8, align 4
  %114 = sub nsw i32 %113, %112
  store i32 %114, i32* %8, align 4
  br label %115

115:                                              ; preds = %111, %107
  %116 = load i32, i32* %8, align 4
  %117 = icmp sge i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = load i32, i32* %8, align 4
  br label %123

120:                                              ; preds = %115
  %121 = load i32, i32* %8, align 4
  %122 = sub nsw i32 0, %121
  br label %123

123:                                              ; preds = %120, %118
  %124 = phi i32 [ %119, %118 ], [ %122, %120 ]
  %125 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %6, i32 0, i32 0
  store i32 %124, i32* %125, align 8
  %126 = load i32*, i32** %4, align 8
  %127 = call i32 @DecodeInversion(i32* %126)
  %128 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %6, i32 0, i32 2
  store i32 %127, i32* %128, align 8
  %129 = load i32*, i32** %4, align 8
  %130 = call i8* @var_GetInteger(i32* %129, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %131 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %6, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  store i8* %130, i8** %133, align 8
  %134 = load i32, i32* @FEC_NONE, align 4
  %135 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %6, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  store i32 %134, i32* %137, align 8
  %138 = load i32*, i32** %4, align 8
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %140 = call i64 @DoDiseqc(i32* %138, %struct.TYPE_8__* %139)
  %141 = icmp slt i64 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %123
  %143 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %143, i32* %3, align 4
  br label %174

144:                                              ; preds = %123
  br label %145

145:                                              ; preds = %158, %144
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @FE_GET_EVENT, align 4
  %150 = bitcast %struct.dvb_frontend_event* %12 to %struct.dvb_frontend_parameters*
  %151 = call i64 @ioctl(i32 %148, i32 %149, %struct.dvb_frontend_parameters* %150)
  %152 = icmp slt i64 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %145
  %154 = load i64, i64* @errno, align 8
  %155 = load i64, i64* @EWOULDBLOCK, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %153
  br label %159

158:                                              ; preds = %153, %145
  br label %145

159:                                              ; preds = %157
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @FE_SET_FRONTEND, align 4
  %164 = call i64 @ioctl(i32 %162, i32 %163, %struct.dvb_frontend_parameters* %6)
  %165 = icmp slt i64 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %159
  %167 = load i32*, i32** %4, align 8
  %168 = load i64, i64* @errno, align 8
  %169 = call i32 @vlc_strerror_c(i64 %168)
  %170 = call i32 (i32*, i8*, ...) @msg_Err(i32* %167, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i32 %169)
  %171 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %171, i32* %3, align 4
  br label %174

172:                                              ; preds = %159
  %173 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %173, i32* %3, align 4
  br label %174

174:                                              ; preds = %172, %166, %142, %71
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local i8* @var_GetInteger(i32*, i8*) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, i32) #1

declare dso_local i32 @msg_Err(i32*, i8*, ...) #1

declare dso_local i32 @var_SetInteger(i32*, i8*, i32) #1

declare dso_local i32 @DecodeInversion(i32*) #1

declare dso_local i64 @DoDiseqc(i32*, %struct.TYPE_8__*) #1

declare dso_local i64 @ioctl(i32, i32, %struct.dvb_frontend_parameters*) #1

declare dso_local i32 @vlc_strerror_c(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
