; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_ModuleThread_UpdateVideoFormat.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_ModuleThread_UpdateVideoFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__, i64, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.decoder_owner = type { i32, i32, i32, i32*, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_11__*, i32, i32*, i32, i32* }

@MouseEvent = common dso_local global i32 0, align 4
@on_vout_started = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32*)* @ModuleThread_UpdateVideoFormat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ModuleThread_UpdateVideoFormat(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.decoder_owner*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %14 = call %struct.decoder_owner* @dec_get_owner(%struct.TYPE_11__* %13)
  store %struct.decoder_owner* %14, %struct.decoder_owner** %6, align 8
  store i32* null, i32** %8, align 8
  %15 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %16 = call i32 @CreateVoutIfNeeded(%struct.decoder_owner* %15, i32** %8, i32* %7, i32* null)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %135

20:                                               ; preds = %2
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = load i32*, i32** %5, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %28 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = icmp eq i32* %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %135

33:                                               ; preds = %26, %23
  br label %34

34:                                               ; preds = %33, %20
  %35 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %36 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %41 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %40, i32 0, i32 4
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @vlc_video_context_Release(i32* %42)
  br label %44

44:                                               ; preds = %39, %34
  %45 = load i32*, i32** %5, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32*, i32** %5, align 8
  %49 = call i32* @vlc_video_context_Hold(i32* %48)
  br label %51

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50, %47
  %52 = phi i32* [ %49, %47 ], [ null, %50 ]
  %53 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %54 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %53, i32 0, i32 4
  store i32* %52, i32** %54, align 8
  %55 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %56 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %88

59:                                               ; preds = %51
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  switch i32 %63, label %67 [
    i32 132, label %64
    i32 133, label %64
    i32 134, label %64
    i32 135, label %65
    i32 131, label %66
    i32 130, label %66
    i32 129, label %66
    i32 128, label %66
  ]

64:                                               ; preds = %59, %59, %59
  store i32 18, i32* %10, align 4
  br label %68

65:                                               ; preds = %59
  store i32 10, i32* %10, align 4
  br label %68

66:                                               ; preds = %59, %59, %59, %59
  store i32 3, i32* %10, align 4
  br label %68

67:                                               ; preds = %59
  store i32 2, i32* %10, align 4
  br label %68

68:                                               ; preds = %67, %66, %65, %64
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %10, align 4
  %73 = zext i32 %72 to i64
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %73, %76
  %78 = add nsw i64 %77, 1
  %79 = call i32* @picture_pool_NewFromFormat(i32* %71, i64 %78)
  %80 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %81 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %80, i32 0, i32 3
  store i32* %79, i32** %81, align 8
  %82 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %83 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %68
  store i32 -1, i32* %3, align 4
  br label %135

87:                                               ; preds = %68
  br label %88

88:                                               ; preds = %87, %51
  %89 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %90 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %88
  %94 = load i32*, i32** %8, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = call i32 @vout_ChangeSource(i32* %94, i32* %97)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  store i32 0, i32* %3, align 4
  br label %135

102:                                              ; preds = %93
  br label %103

103:                                              ; preds = %102, %88
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_11__* %105, %struct.TYPE_11__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %107 = load i32, i32* @MouseEvent, align 4
  store i32 %107, i32* %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  store i32* %111, i32** %108, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 3
  %113 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %114 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  store i32 %115, i32* %112, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 4
  %117 = load i32*, i32** %8, align 8
  store i32* %117, i32** %116, align 8
  %118 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %119 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32*, i32** %5, align 8
  %122 = call i32 @input_resource_StartVout(i32 %120, i32* %121, %struct.TYPE_10__* %12)
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %11, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %103
  %126 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %127 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %126, i32 0, i32 0
  store i32 1, i32* %127, align 8
  %128 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %129 = load i32, i32* @on_vout_started, align 4
  %130 = load i32*, i32** %8, align 8
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @decoder_Notify(%struct.decoder_owner* %128, i32 %129, i32* %130, i32 %131)
  br label %133

133:                                              ; preds = %125, %103
  %134 = load i32, i32* %11, align 4
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %133, %101, %86, %32, %19
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local %struct.decoder_owner* @dec_get_owner(%struct.TYPE_11__*) #1

declare dso_local i32 @CreateVoutIfNeeded(%struct.decoder_owner*, i32**, i32*, i32*) #1

declare dso_local i32 @vlc_video_context_Release(i32*) #1

declare dso_local i32* @vlc_video_context_Hold(i32*) #1

declare dso_local i32* @picture_pool_NewFromFormat(i32*, i64) #1

declare dso_local i32 @vout_ChangeSource(i32*, i32*) #1

declare dso_local i32 @input_resource_StartVout(i32, i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @decoder_Notify(%struct.decoder_owner*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
