; ModuleID = '/home/carl/AnghaBench/vlc/src/extr_libvlc.c_libvlc_InternalCleanup.c'
source_filename = "/home/carl/AnghaBench/vlc/src/extr_libvlc.c_libvlc_InternalCleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i64, i64, i32*, i64, i64, i64 }

@.str = private unnamed_addr constant [24 x i8] c"removing all interfaces\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"pidfile\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"removing PID file %s\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"cannot remove PID file %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"ignore-config\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @libvlc_InternalCleanup(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %5 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %6 = call %struct.TYPE_17__* @libvlc_priv(%struct.TYPE_18__* %5)
  store %struct.TYPE_17__* %6, %struct.TYPE_17__** %3, align 8
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @input_preparser_Deactivate(i32* %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %18 = call i32 (%struct.TYPE_18__*, i8*, ...) @msg_Dbg(%struct.TYPE_18__* %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %20 = call i32 @intf_DestroyAll(%struct.TYPE_18__* %19)
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %16
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @vlc_thumbnailer_Release(i64 %28)
  br label %30

30:                                               ; preds = %25, %16
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @vlc_media_source_provider_Delete(i64 %38)
  br label %40

40:                                               ; preds = %35, %30
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %42 = call i32 @libvlc_InternalDialogClean(%struct.TYPE_18__* %41)
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %44 = call i32 @libvlc_InternalKeystoreClean(%struct.TYPE_18__* %43)
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %46 = call i8* @var_InheritString(%struct.TYPE_18__* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i8* %46, i8** %4, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %65

49:                                               ; preds = %40
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 (%struct.TYPE_18__*, i8*, ...) @msg_Dbg(%struct.TYPE_18__* %50, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %51)
  %53 = load i8*, i8** %4, align 8
  %54 = call i64 @unlink(i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %58 = load i8*, i8** %4, align 8
  %59 = load i32, i32* @errno, align 4
  %60 = call i32 @vlc_strerror_c(i32 %59)
  %61 = call i32 @msg_Warn(%struct.TYPE_18__* %57, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %58, i32 %60)
  br label %62

62:                                               ; preds = %56, %49
  %63 = load i8*, i8** %4, align 8
  %64 = call i32 @free(i8* %63)
  br label %65

65:                                               ; preds = %62, %40
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @input_preparser_Delete(i32* %73)
  br label %75

75:                                               ; preds = %70, %65
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @vlc_playlist_Delete(i64 %83)
  br label %85

85:                                               ; preds = %80, %75
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @libvlc_MlRelease(i64 %93)
  br label %95

95:                                               ; preds = %90, %85
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %97 = call i32 @libvlc_InternalActionsClean(%struct.TYPE_18__* %96)
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %99 = call i32 @var_InheritBool(%struct.TYPE_18__* %98, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %95
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %103 = call i32 @VLC_OBJECT(%struct.TYPE_18__* %102)
  %104 = call i32 @config_AutoSaveConfigFile(i32 %103)
  br label %105

105:                                              ; preds = %101, %95
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @vlc_LogDestroy(i32 %109)
  %111 = call i32 @module_EndBank(i32 1)
  ret void
}

declare dso_local %struct.TYPE_17__* @libvlc_priv(%struct.TYPE_18__*) #1

declare dso_local i32 @input_preparser_Deactivate(i32*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_18__*, i8*, ...) #1

declare dso_local i32 @intf_DestroyAll(%struct.TYPE_18__*) #1

declare dso_local i32 @vlc_thumbnailer_Release(i64) #1

declare dso_local i32 @vlc_media_source_provider_Delete(i64) #1

declare dso_local i32 @libvlc_InternalDialogClean(%struct.TYPE_18__*) #1

declare dso_local i32 @libvlc_InternalKeystoreClean(%struct.TYPE_18__*) #1

declare dso_local i8* @var_InheritString(%struct.TYPE_18__*, i8*) #1

declare dso_local i64 @unlink(i8*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_18__*, i8*, i8*, i32) #1

declare dso_local i32 @vlc_strerror_c(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @input_preparser_Delete(i32*) #1

declare dso_local i32 @vlc_playlist_Delete(i64) #1

declare dso_local i32 @libvlc_MlRelease(i64) #1

declare dso_local i32 @libvlc_InternalActionsClean(%struct.TYPE_18__*) #1

declare dso_local i32 @var_InheritBool(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @config_AutoSaveConfigFile(i32) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_18__*) #1

declare dso_local i32 @vlc_LogDestroy(i32) #1

declare dso_local i32 @module_EndBank(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
