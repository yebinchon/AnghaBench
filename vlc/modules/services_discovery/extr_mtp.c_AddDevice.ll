; ModuleID = '/home/carl/AnghaBench/vlc/modules/services_discovery/extr_mtp.c_AddDevice.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/services_discovery/extr_mtp.c_AddDevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i8*, i64, i32, i32*, i32, i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_17__, i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_20__*, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"MTP Device\00", align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Found device: %s\00", align 1
@CountTracks = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"No tracks on the device\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Track found: %s - %s\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"The device seems to be mounted, unmount it first\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_21__*)* @AddDevice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AddDevice(%struct.TYPE_18__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  store %struct.TYPE_19__* %13, %struct.TYPE_19__** %6, align 8
  store i8* null, i8** %7, align 8
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %15 = call i32* @LIBMTP_Open_Raw_Device(%struct.TYPE_21__* %14)
  store i32* %15, i32** %8, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %107

17:                                               ; preds = %2
  %18 = load i32*, i32** %8, align 8
  %19 = call i8* @LIBMTP_Get_Friendlyname(i32* %18)
  store i8* %19, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %33, label %21

21:                                               ; preds = %17
  %22 = load i32*, i32** %8, align 8
  %23 = call i8* @LIBMTP_Get_Modelname(i32* %22)
  store i8* %23, i8** %7, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = call i32 @N_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %27 = call i8* @strdup(i32 %26)
  store i8* %27, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %30, i32* %3, align 4
  br label %111

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31, %21
  br label %33

33:                                               ; preds = %32, %17
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 (%struct.TYPE_18__*, i8*, ...) @msg_Info(%struct.TYPE_18__* %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 4
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* @CountTracks, align 4
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %56 = call %struct.TYPE_20__* @LIBMTP_Get_Tracklisting_With_Callback(i32* %53, i32 %54, %struct.TYPE_18__* %55)
  store %struct.TYPE_20__* %56, %struct.TYPE_20__** %9, align 8
  %57 = icmp eq %struct.TYPE_20__* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %33
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %60 = call i32 @msg_Warn(%struct.TYPE_18__* %59, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 3
  store i32* null, i32** %62, align 8
  br label %100

63:                                               ; preds = %33
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32* @calloc(i32 %66, i32 8)
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 3
  store i32* %67, i32** %69, align 8
  %70 = icmp ne i32* %67, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %63
  %72 = load i8*, i8** %7, align 8
  %73 = call i32 @free(i8* %72)
  %74 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %74, i32* %3, align 4
  br label %111

75:                                               ; preds = %63
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  br label %78

78:                                               ; preds = %81, %75
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %80 = icmp ne %struct.TYPE_20__* %79, null
  br i1 %80, label %81, label %99

81:                                               ; preds = %78
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @msg_Dbg(%struct.TYPE_18__* %82, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %85, i32 %88)
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %92 = call i32 @AddTrack(%struct.TYPE_18__* %90, %struct.TYPE_20__* %91)
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  store %struct.TYPE_20__* %93, %struct.TYPE_20__** %10, align 8
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %95, align 8
  store %struct.TYPE_20__* %96, %struct.TYPE_20__** %9, align 8
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %98 = call i32 @LIBMTP_destroy_track_t(%struct.TYPE_20__* %97)
  br label %78

99:                                               ; preds = %78
  br label %100

100:                                              ; preds = %99, %58
  %101 = load i8*, i8** %7, align 8
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 0
  store i8* %101, i8** %103, align 8
  %104 = load i32*, i32** %8, align 8
  %105 = call i32 @LIBMTP_Release_Device(i32* %104)
  %106 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %106, i32* %3, align 4
  br label %111

107:                                              ; preds = %2
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %109 = call i32 (%struct.TYPE_18__*, i8*, ...) @msg_Info(%struct.TYPE_18__* %108, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  %110 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %107, %100, %71, %29
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32* @LIBMTP_Open_Raw_Device(%struct.TYPE_21__*) #1

declare dso_local i8* @LIBMTP_Get_Friendlyname(i32*) #1

declare dso_local i8* @LIBMTP_Get_Modelname(i32*) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @msg_Info(%struct.TYPE_18__*, i8*, ...) #1

declare dso_local %struct.TYPE_20__* @LIBMTP_Get_Tracklisting_With_Callback(i32*, i32, %struct.TYPE_18__*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_18__*, i8*) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_18__*, i8*, i32, i32) #1

declare dso_local i32 @AddTrack(%struct.TYPE_18__*, %struct.TYPE_20__*) #1

declare dso_local i32 @LIBMTP_destroy_track_t(%struct.TYPE_20__*) #1

declare dso_local i32 @LIBMTP_Release_Device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
