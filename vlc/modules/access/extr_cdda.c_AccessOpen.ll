; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_cdda.c_AccessOpen.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_cdda.c_AccessOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32, i32*, i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32*, i32*, i32*, i32, i32, i64, i32*, i32* }

@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"cannot count tracks\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"no audio tracks found\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"CD-TEXT information missing\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"metadata-network-access\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"album art policy set to manual: not fetching\00", align 1
@ReadDir = common dso_local global i32 0, align 4
@AccessControl = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @AccessOpen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AccessOpen(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = bitcast i32* %8 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call %struct.TYPE_5__* @vlc_obj_malloc(i32* %10, i32 64)
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %7, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %13 = icmp eq %struct.TYPE_5__* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @ioctl_Close(i32* %18, i32* %19)
  %21 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %21, i32* %3, align 4
  br label %124

22:                                               ; preds = %2
  %23 = load i32*, i32** %5, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 8
  store i32* %23, i32** %25, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i32* @ioctl_GetTOC(i32* %26, i32* %27, i32 1)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  store i32* %28, i32** %30, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %22
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @msg_Err(i32* %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %119

38:                                               ; preds = %22
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 5
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 4
  %46 = call i64 @TOC_GetAudioRange(i32* %41, i32* %43, i32* %45)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %38
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @msg_Err(i32* %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @vcddev_toc_Free(i32* %58)
  br label %119

60:                                               ; preds = %38
  %61 = load i32*, i32** %4, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 7
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 6
  %67 = call i64 @ioctl_GetCdText(i32* %61, i32* %62, i32** %64, i64* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %60
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @msg_Dbg(i32* %70, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 7
  store i32* null, i32** %73, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 6
  store i64 0, i64* %75, align 8
  br label %76

76:                                               ; preds = %69, %60
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 3
  store i32* null, i32** %78, align 8
  %79 = load i32*, i32** %4, align 8
  %80 = call i64 @var_InheritBool(i32* %79, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %99

82:                                               ; preds = %76
  %83 = load i32*, i32** %4, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = call i32* @GetMusicbrainzInfo(i32* %83, i32* %86, i64 %89, i32 %92, i32 %95)
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 3
  store i32* %96, i32** %98, align 8
  br label %102

99:                                               ; preds = %76
  %100 = load i32*, i32** %4, align 8
  %101 = call i32 @msg_Dbg(i32* %100, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %82
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 5
  store %struct.TYPE_5__* %103, %struct.TYPE_5__** %105, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 4
  store i32* null, i32** %107, align 8
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 3
  store i32* null, i32** %109, align 8
  %110 = load i32, i32* @ReadDir, align 4
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 8
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  store i32* null, i32** %114, align 8
  %115 = load i32, i32* @AccessControl, align 4
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %118, i32* %3, align 4
  br label %124

119:                                              ; preds = %53, %35
  %120 = load i32*, i32** %4, align 8
  %121 = load i32*, i32** %5, align 8
  %122 = call i32 @ioctl_Close(i32* %120, i32* %121)
  %123 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %119, %102, %17
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local %struct.TYPE_5__* @vlc_obj_malloc(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ioctl_Close(i32*, i32*) #1

declare dso_local i32* @ioctl_GetTOC(i32*, i32*, i32) #1

declare dso_local i32 @msg_Err(i32*, i8*) #1

declare dso_local i64 @TOC_GetAudioRange(i32*, i32*, i32*) #1

declare dso_local i32 @vcddev_toc_Free(i32*) #1

declare dso_local i64 @ioctl_GetCdText(i32*, i32*, i32**, i64*) #1

declare dso_local i32 @msg_Dbg(i32*, i8*) #1

declare dso_local i64 @var_InheritBool(i32*, i8*) #1

declare dso_local i32* @GetMusicbrainzInfo(i32*, i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
