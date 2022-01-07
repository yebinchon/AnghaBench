; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mcicda/extr_mcicda.c_MCICDA_Info.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mcicda/extr_mcicda.c_MCICDA_Info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32* }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"(%04X, %08X, %p);\0A\00", align 1
@MCIERR_NULL_PARAMETER_BLOCK = common dso_local global i32 0, align 4
@MCIERR_INVALID_DEVICE_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"buf=%p, len=%u\0A\00", align 1
@MCI_INFO_PRODUCT = common dso_local global i32 0, align 4
@MCICDA_Info.wszAudioCd = internal constant [16 x i8] c"Wine's audio CD\00", align 16
@MCI_INFO_MEDIA_UPC = common dso_local global i32 0, align 4
@MCIERR_NO_IDENTITY = common dso_local global i32 0, align 4
@MCI_INFO_MEDIA_IDENTITY = common dso_local global i32 0, align 4
@MCICDA_Info.wszLu = internal constant [4 x i8] c"%lu\00", align 1
@IOCTL_CDROM_READ_TOC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Don't know this info command (%u)\0A\00", align 1
@MCIERR_MISSING_PARAMETER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"=> %s\0A\00", align 1
@MCIERR_PARAM_OVERFLOW = common dso_local global i32 0, align 4
@MMSYSERR_NOERROR = common dso_local global i32 0, align 4
@MCI_NOTIFY = common dso_local global i32 0, align 4
@MCI_NOTIFY_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.TYPE_8__*)* @MCICDA_Info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MCICDA_Info(i32 %0, i32 %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [16 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  store i8* null, i8** %8, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.TYPE_7__* @MCICDA_GetOpenDrv(i32 %15)
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %9, align 8
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %20 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18, %struct.TYPE_8__* %19)
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %22 = icmp eq %struct.TYPE_8__* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %3
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %23, %3
  %29 = load i32, i32* @MCIERR_NULL_PARAMETER_BLOCK, align 4
  store i32 %29, i32* %4, align 4
  br label %124

30:                                               ; preds = %23
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %32 = icmp eq %struct.TYPE_7__* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @MCIERR_INVALID_DEVICE_ID, align 4
  store i32 %34, i32* %4, align 4
  br label %124

35:                                               ; preds = %30
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = ptrtoint i32* %38 to i32
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @MCI_INFO_PRODUCT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %35
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @MCICDA_Info.wszAudioCd, i64 0, i64 0), i8** %8, align 8
  br label %83

49:                                               ; preds = %35
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @MCI_INFO_MEDIA_UPC, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @MCIERR_NO_IDENTITY, align 4
  store i32 %55, i32* %10, align 4
  br label %82

56:                                               ; preds = %49
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @MCI_INFO_MEDIA_IDENTITY, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %56
  store i32 0, i32* %12, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @IOCTL_CDROM_READ_TOC, align 4
  %66 = call i32 @device_io(i32 %64, i32 %65, i32* null, i32 0, i32* %13, i32 4, i32* %14, i32* null)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %61
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %70 = call i32 @MCICDA_GetError(%struct.TYPE_7__* %69)
  store i32 %70, i32* %4, align 4
  br label %124

71:                                               ; preds = %61
  %72 = call i32 @CDROM_Audio_GetSerial(i32* %13)
  store i32 %72, i32* %12, align 4
  %73 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @sprintfW(i8* %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MCICDA_Info.wszLu, i64 0, i64 0), i32 %74)
  %76 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  store i8* %76, i8** %8, align 8
  br label %81

77:                                               ; preds = %56
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @WARN(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @MCIERR_MISSING_PARAMETER, align 4
  store i32 %80, i32* %10, align 4
  br label %81

81:                                               ; preds = %77, %71
  br label %82

82:                                               ; preds = %81, %54
  br label %83

83:                                               ; preds = %82, %48
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %106, label %86

86:                                               ; preds = %83
  %87 = load i8*, i8** %8, align 8
  %88 = call i32 @debugstr_w(i8* %87)
  %89 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %86
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @lstrcpynW(i32* %97, i8* %98, i32 %101)
  br label %105

103:                                              ; preds = %86
  %104 = load i32, i32* @MCIERR_PARAM_OVERFLOW, align 4
  store i32 %104, i32* %10, align 4
  br label %105

105:                                              ; preds = %103, %94
  br label %106

106:                                              ; preds = %105, %83
  %107 = load i32, i32* @MMSYSERR_NOERROR, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %122

110:                                              ; preds = %106
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* @MCI_NOTIFY, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %110
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %120 = load i32, i32* @MCI_NOTIFY_SUCCESSFUL, align 4
  %121 = call i32 @MCICDA_Notify(i32 %118, %struct.TYPE_7__* %119, i32 %120)
  br label %122

122:                                              ; preds = %115, %110, %106
  %123 = load i32, i32* %10, align 4
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %122, %68, %33, %28
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local %struct.TYPE_7__* @MCICDA_GetOpenDrv(i32) #1

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @device_io(i32, i32, i32*, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @MCICDA_GetError(%struct.TYPE_7__*) #1

declare dso_local i32 @CDROM_Audio_GetSerial(i32*) #1

declare dso_local i32 @sprintfW(i8*, i8*, i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i32 @lstrcpynW(i32*, i8*, i32) #1

declare dso_local i32 @MCICDA_Notify(i32, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
