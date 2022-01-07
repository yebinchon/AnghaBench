; ModuleID = '/home/carl/AnghaBench/vlc/src/video_output/extr_video_output.c_ThreadProcessMouseState.c'
source_filename = "/home/carl/AnghaBench/vlc/src/video_output/extr_video_output.c_ThreadProcessMouseState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i32 (%struct.TYPE_25__*, i32)*, %struct.TYPE_25__, %struct.TYPE_22__, i32, i32 }
%struct.TYPE_25__ = type { i32, i32, i64, i32 }
%struct.TYPE_22__ = type { i32, i64, i64 }

@.str = private unnamed_addr constant [12 x i8] c"mouse-moved\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"mouse-button-down\00", align 1
@MOUSE_BUTTON_LEFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"mouse-clicked\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"fullscreen\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*, %struct.TYPE_25__*)* @ThreadProcessMouseState to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ThreadProcessMouseState(%struct.TYPE_24__* %0, %struct.TYPE_25__* %1) #0 {
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_25__, align 8
  %6 = alloca %struct.TYPE_25__, align 8
  %7 = alloca %struct.TYPE_25__, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %4, align 8
  %11 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 4
  %15 = call i32 @vlc_mutex_lock(i32* %14)
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %22 = call i32 @vout_display_TranslateMouseState(i32 %20, %struct.TYPE_25__* %5, %struct.TYPE_25__* %21)
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 4
  %27 = call i32 @vlc_mutex_unlock(i32* %26)
  store %struct.TYPE_25__* %5, %struct.TYPE_25__** %8, align 8
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 0
  %33 = call i32 @vlc_mutex_lock(i32* %32)
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %72

41:                                               ; preds = %2
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %72

49:                                               ; preds = %41
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %57 = call i32 @filter_chain_MouseFilter(i64 %55, %struct.TYPE_25__* %6, %struct.TYPE_25__* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %49
  store %struct.TYPE_25__* %6, %struct.TYPE_25__** %8, align 8
  br label %60

60:                                               ; preds = %59, %49
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %68 = call i32 @filter_chain_MouseFilter(i64 %66, %struct.TYPE_25__* %7, %struct.TYPE_25__* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %60
  store %struct.TYPE_25__* %7, %struct.TYPE_25__** %8, align 8
  br label %71

71:                                               ; preds = %70, %60
  br label %72

72:                                               ; preds = %71, %41, %2
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 0
  %78 = call i32 @vlc_mutex_unlock(i32* %77)
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %84 = call i64 @vlc_mouse_HasMoved(%struct.TYPE_25__* %82, %struct.TYPE_25__* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %72
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @var_SetCoords(%struct.TYPE_24__* %87, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %90, i32 %93)
  br label %95

95:                                               ; preds = %86, %72
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %101 = call i64 @vlc_mouse_HasButton(%struct.TYPE_25__* %99, %struct.TYPE_25__* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %125

103:                                              ; preds = %95
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %105 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @var_SetInteger(%struct.TYPE_24__* %104, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %107)
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %114 = load i32, i32* @MOUSE_BUTTON_LEFT, align 4
  %115 = call i64 @vlc_mouse_HasPressed(%struct.TYPE_25__* %112, %struct.TYPE_25__* %113, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %103
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %119 = call i32 @var_GetCoords(%struct.TYPE_24__* %118, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %9, i32* %10)
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %10, align 4
  %123 = call i32 @var_SetCoords(%struct.TYPE_24__* %120, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %117, %103
  br label %125

125:                                              ; preds = %124, %95
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %125
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %132 = call i32 @var_ToggleBool(%struct.TYPE_24__* %131, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %133

133:                                              ; preds = %130, %125
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 2
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %139 = bitcast %struct.TYPE_25__* %137 to i8*
  %140 = bitcast %struct.TYPE_25__* %138 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %139, i8* align 8 %140, i64 24, i1 false)
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i32 0, i32 1
  %145 = load i32 (%struct.TYPE_25__*, i32)*, i32 (%struct.TYPE_25__*, i32)** %144, align 8
  %146 = icmp ne i32 (%struct.TYPE_25__*, i32)* %145, null
  br i1 %146, label %147, label %160

147:                                              ; preds = %133
  %148 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_23__*, %struct.TYPE_23__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %150, i32 0, i32 1
  %152 = load i32 (%struct.TYPE_25__*, i32)*, i32 (%struct.TYPE_25__*, i32)** %151, align 8
  %153 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %154 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 %152(%struct.TYPE_25__* %153, i32 %158)
  br label %160

160:                                              ; preds = %147, %133
  ret void
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vout_display_TranslateMouseState(i32, %struct.TYPE_25__*, %struct.TYPE_25__*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @filter_chain_MouseFilter(i64, %struct.TYPE_25__*, %struct.TYPE_25__*) #1

declare dso_local i64 @vlc_mouse_HasMoved(%struct.TYPE_25__*, %struct.TYPE_25__*) #1

declare dso_local i32 @var_SetCoords(%struct.TYPE_24__*, i8*, i32, i32) #1

declare dso_local i64 @vlc_mouse_HasButton(%struct.TYPE_25__*, %struct.TYPE_25__*) #1

declare dso_local i32 @var_SetInteger(%struct.TYPE_24__*, i8*, i32) #1

declare dso_local i64 @vlc_mouse_HasPressed(%struct.TYPE_25__*, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @var_GetCoords(%struct.TYPE_24__*, i8*, i32*, i32*) #1

declare dso_local i32 @var_ToggleBool(%struct.TYPE_24__*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
