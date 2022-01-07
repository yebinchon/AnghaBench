; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_vlm.c_vlm_ControlMediaAdd.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_vlm.c_vlm_ControlMediaAdd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_26__, i32, i32, %struct.TYPE_22__, %struct.TYPE_21__, i32, %struct.TYPE_23__*, i32 }
%struct.TYPE_26__ = type { i32, i64 }
%struct.TYPE_22__ = type { i32*, i32 }
%struct.TYPE_21__ = type { i32* }
%struct.TYPE_24__ = type { i32, i64 }

@.str = private unnamed_addr constant [26 x i8] c"invalid media description\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"vod server\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"vod-server\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"cannot find vod server\00", align 1
@vlm_MediaVodControl = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"media\00", align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"Media: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, %struct.TYPE_24__*, i64*)* @vlm_ControlMediaAdd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlm_ControlMediaAdd(%struct.TYPE_23__* %0, %struct.TYPE_24__* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %11 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %12 = call i64 @vlm_MediaDescriptionCheck(%struct.TYPE_23__* %10, %struct.TYPE_24__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %3
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @vlm_ControlMediaGetByName(%struct.TYPE_23__* %15, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %14, %3
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %23 = call i32 @msg_Err(%struct.TYPE_23__* %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %24, i32* %4, align 4
  br label %175

25:                                               ; preds = %14
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %77

30:                                               ; preds = %25
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %32, align 8
  %34 = icmp ne %struct.TYPE_25__* %33, null
  br i1 %34, label %77, label %35

35:                                               ; preds = %30
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %37 = call i32 @VLC_OBJECT(%struct.TYPE_23__* %36)
  %38 = call i8* @vlc_custom_create(i32 %37, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %39 = bitcast i8* %38 to %struct.TYPE_25__*
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 3
  store %struct.TYPE_25__* %39, %struct.TYPE_25__** %41, align 8
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %43, align 8
  %45 = call i32 @module_need_var(%struct.TYPE_25__* %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 7
  store i32 %45, i32* %49, align 8
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %35
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %58 = call i32 @msg_Err(%struct.TYPE_23__* %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %60, align 8
  %62 = call i32 @vlc_object_delete(%struct.TYPE_25__* %61)
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 3
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %64, align 8
  %65 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %65, i32* %4, align 4
  br label %175

66:                                               ; preds = %35
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 6
  store %struct.TYPE_23__* %67, %struct.TYPE_23__** %71, align 8
  %72 = load i32, i32* @vlm_MediaVodControl, align 4
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 5
  store i32 %72, i32* %76, align 8
  br label %77

77:                                               ; preds = %66, %30, %25
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %79 = call i32 @VLC_OBJECT(%struct.TYPE_23__* %78)
  %80 = call i8* @vlc_custom_create(i32 %79, i32 72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %81 = bitcast i8* %80 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %81, %struct.TYPE_25__** %8, align 8
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %83 = icmp ne %struct.TYPE_25__* %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %77
  %85 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %85, i32* %4, align 4
  br label %175

86:                                               ; preds = %77
  %87 = call i32 @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @asprintf(i8** %9, i32 %87, i32 %90)
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %97

93:                                               ; preds = %86
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %95 = call i32 @vlc_object_delete(%struct.TYPE_25__* %94)
  %96 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %96, i32* %4, align 4
  br label %175

97:                                               ; preds = %86
  %98 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i8*, i8** %9, align 8
  %103 = call i32* @vlc_LogHeaderCreate(i32* %101, i8* %102)
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 0
  store i32* %103, i32** %106, align 8
  %107 = load i8*, i8** %9, align 8
  %108 = call i32 @free(i8* %107)
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = icmp eq i32* %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %97
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %116 = call i32 @vlc_object_delete(%struct.TYPE_25__* %115)
  %117 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %117, i32* %4, align 4
  br label %175

118:                                              ; preds = %97
  %119 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %122 = call i32 @vlm_media_Copy(%struct.TYPE_26__* %120, %struct.TYPE_24__* %121)
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 8
  %127 = sext i32 %125 to i64
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %129, i32 0, i32 1
  store i64 %127, i64* %130, align 8
  %131 = call i32 @input_item_New(i32* null, i32* null)
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 1
  store i32 %131, i32* %134, align 8
  %135 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 0
  store i32* null, i32** %137, align 8
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @TAB_INIT(i32 %140, i32 %143)
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %152 = call i32 @TAB_APPEND(i32 %147, i32 %150, %struct.TYPE_25__* %151)
  %153 = load i64*, i64** %7, align 8
  %154 = icmp ne i64* %153, null
  br i1 %154, label %155, label %161

155:                                              ; preds = %118
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64*, i64** %7, align 8
  store i64 %159, i64* %160, align 8
  br label %161

161:                                              ; preds = %155, %118
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %163 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @vlm_SendEventMediaAdded(%struct.TYPE_23__* %162, i64 %166, i32 %170)
  %172 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %173 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %174 = call i32 @vlm_OnMediaUpdate(%struct.TYPE_23__* %172, %struct.TYPE_25__* %173)
  store i32 %174, i32* %4, align 4
  br label %175

175:                                              ; preds = %161, %114, %93, %84, %56, %21
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

declare dso_local i64 @vlm_MediaDescriptionCheck(%struct.TYPE_23__*, %struct.TYPE_24__*) #1

declare dso_local i64 @vlm_ControlMediaGetByName(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_23__*, i8*) #1

declare dso_local i8* @vlc_custom_create(i32, i32, i8*) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_23__*) #1

declare dso_local i32 @module_need_var(%struct.TYPE_25__*, i8*, i8*) #1

declare dso_local i32 @vlc_object_delete(%struct.TYPE_25__*) #1

declare dso_local i32 @asprintf(i8**, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @vlc_LogHeaderCreate(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @vlm_media_Copy(%struct.TYPE_26__*, %struct.TYPE_24__*) #1

declare dso_local i32 @input_item_New(i32*, i32*) #1

declare dso_local i32 @TAB_INIT(i32, i32) #1

declare dso_local i32 @TAB_APPEND(i32, i32, %struct.TYPE_25__*) #1

declare dso_local i32 @vlm_SendEventMediaAdded(%struct.TYPE_23__*, i64, i32) #1

declare dso_local i32 @vlm_OnMediaUpdate(%struct.TYPE_23__*, %struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
