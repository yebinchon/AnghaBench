; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_ty.c_DemuxDecodeXds.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_ty.c_DemuxDecodeXds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32, %struct.TYPE_31__* }
%struct.TYPE_31__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, %struct.TYPE_27__ }
%struct.TYPE_27__ = type { %struct.TYPE_26__, %struct.TYPE_24__, i64, i64, i64 }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_29__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"Channel number\00", align 1
@ES_OUT_SET_GROUP_META = common dso_local global i32 0, align 4
@TY_ES_GROUP = common dso_local global i32 0, align 4
@ES_OUT_SET_GROUP_EPG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_30__*, i32, i32)* @DemuxDecodeXds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DemuxDecodeXds(%struct.TYPE_30__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_30__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_31__*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  store %struct.TYPE_31__* %14, %struct.TYPE_31__** %7, align 8
  %15 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %15, i32 0, i32 0
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @XdsParse(%struct.TYPE_25__* %16, i32 %17, i32 %18)
  %20 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %137

25:                                               ; preds = %3
  %26 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i32 0, i32 1
  store %struct.TYPE_27__* %28, %struct.TYPE_27__** %8, align 8
  %29 = call %struct.TYPE_28__* (...) @vlc_meta_New()
  store %struct.TYPE_28__* %29, %struct.TYPE_28__** %9, align 8
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %25
  %35 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %36 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @vlc_meta_SetPublisher(%struct.TYPE_28__* %35, i64 %38)
  br label %40

40:                                               ; preds = %34, %25
  %41 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %47 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @vlc_meta_SetTitle(%struct.TYPE_28__* %46, i64 %49)
  br label %51

51:                                               ; preds = %45, %40
  %52 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %58 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @vlc_meta_AddExtra(%struct.TYPE_28__* %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %60)
  br label %62

62:                                               ; preds = %56, %51
  %63 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @ES_OUT_SET_GROUP_META, align 4
  %67 = load i32, i32* @TY_ES_GROUP, align 4
  %68 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %69 = call i32 @es_out_Control(i32 %65, i32 %66, i32 %67, %struct.TYPE_28__* %68)
  %70 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %71 = call i32 @vlc_meta_Delete(%struct.TYPE_28__* %70)
  %72 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %136

77:                                               ; preds = %62
  %78 = load i32, i32* @TY_ES_GROUP, align 4
  %79 = load i32, i32* @TY_ES_GROUP, align 4
  %80 = call %struct.TYPE_28__* @vlc_epg_New(i32 %78, i32 %79)
  store %struct.TYPE_28__* %80, %struct.TYPE_28__** %10, align 8
  %81 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %82 = icmp ne %struct.TYPE_28__* %81, null
  br i1 %82, label %83, label %135

83:                                               ; preds = %77
  %84 = call %struct.TYPE_29__* @vlc_epg_event_New(i32 0, i32 0, i32 0)
  store %struct.TYPE_29__* %84, %struct.TYPE_29__** %11, align 8
  %85 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %86 = icmp ne %struct.TYPE_29__* %85, null
  br i1 %86, label %87, label %110

87:                                               ; preds = %83
  %88 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %87
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @strdup(i64 %97)
  %99 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  br label %101

101:                                              ; preds = %93, %87
  %102 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %103 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %104 = call i32 @vlc_epg_AddEvent(%struct.TYPE_28__* %102, %struct.TYPE_29__* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %101
  %107 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %108 = call i32 @vlc_epg_event_Delete(%struct.TYPE_29__* %107)
  br label %109

109:                                              ; preds = %106, %101
  br label %110

110:                                              ; preds = %109, %83
  %111 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %112 = call i32 @vlc_epg_SetCurrent(%struct.TYPE_28__* %111, i32 0)
  %113 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %110
  br label %119

119:                                              ; preds = %118, %110
  %120 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp sgt i64 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %119
  %125 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @ES_OUT_SET_GROUP_EPG, align 4
  %129 = load i32, i32* @TY_ES_GROUP, align 4
  %130 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %131 = call i32 @es_out_Control(i32 %127, i32 %128, i32 %129, %struct.TYPE_28__* %130)
  br label %132

132:                                              ; preds = %124, %119
  %133 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %134 = call i32 @vlc_epg_Delete(%struct.TYPE_28__* %133)
  br label %135

135:                                              ; preds = %132, %77
  br label %136

136:                                              ; preds = %135, %62
  br label %137

137:                                              ; preds = %136, %3
  %138 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %139, i32 0, i32 0
  store i32 0, i32* %140, align 8
  ret void
}

declare dso_local i32 @XdsParse(%struct.TYPE_25__*, i32, i32) #1

declare dso_local %struct.TYPE_28__* @vlc_meta_New(...) #1

declare dso_local i32 @vlc_meta_SetPublisher(%struct.TYPE_28__*, i64) #1

declare dso_local i32 @vlc_meta_SetTitle(%struct.TYPE_28__*, i64) #1

declare dso_local i32 @vlc_meta_AddExtra(%struct.TYPE_28__*, i8*, i64) #1

declare dso_local i32 @es_out_Control(i32, i32, i32, %struct.TYPE_28__*) #1

declare dso_local i32 @vlc_meta_Delete(%struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_28__* @vlc_epg_New(i32, i32) #1

declare dso_local %struct.TYPE_29__* @vlc_epg_event_New(i32, i32, i32) #1

declare dso_local i32 @strdup(i64) #1

declare dso_local i32 @vlc_epg_AddEvent(%struct.TYPE_28__*, %struct.TYPE_29__*) #1

declare dso_local i32 @vlc_epg_event_Delete(%struct.TYPE_29__*) #1

declare dso_local i32 @vlc_epg_SetCurrent(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @vlc_epg_Delete(%struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
