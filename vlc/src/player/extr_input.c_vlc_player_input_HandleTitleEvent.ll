; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_input.c_vlc_player_input_HandleTitleEvent.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_input.c_vlc_player_input_HandleTitleEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_player_input = type { i64, i64, %struct.TYPE_11__, i32, %struct.TYPE_13__*, i32* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { float, i32 }
%struct.TYPE_13__ = type { i64, i32* }
%struct.vlc_input_event_title = type { i32, i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_12__ = type { i32, i32 }

@on_titles_changed = common dso_local global i32 0, align 4
@on_title_selection_changed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vlc_player_input*, %struct.vlc_input_event_title*)* @vlc_player_input_HandleTitleEvent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlc_player_input_HandleTitleEvent(%struct.vlc_player_input* %0, %struct.vlc_input_event_title* %1) #0 {
  %3 = alloca %struct.vlc_player_input*, align 8
  %4 = alloca %struct.vlc_input_event_title*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vlc_player_input* %0, %struct.vlc_player_input** %3, align 8
  store %struct.vlc_input_event_title* %1, %struct.vlc_input_event_title** %4, align 8
  %9 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %10 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %9, i32 0, i32 5
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %5, align 8
  %12 = load %struct.vlc_input_event_title*, %struct.vlc_input_event_title** %4, align 8
  %13 = getelementptr inbounds %struct.vlc_input_event_title, %struct.vlc_input_event_title* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %180 [
    i32 129, label %15
    i32 128, label %102
  ]

15:                                               ; preds = %2
  %16 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %17 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.TYPE_12__* @input_priv(i32 %18)
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %6, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  %26 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %27 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %26, i32 0, i32 4
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %29 = icmp ne %struct.TYPE_13__* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %15
  %31 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %32 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %31, i32 0, i32 4
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %34 = call i32 @vlc_player_title_list_Release(%struct.TYPE_13__* %33)
  br label %35

35:                                               ; preds = %30, %15
  %36 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %37 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %39 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load %struct.vlc_input_event_title*, %struct.vlc_input_event_title** %4, align 8
  %41 = getelementptr inbounds %struct.vlc_input_event_title, %struct.vlc_input_event_title* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.vlc_input_event_title*, %struct.vlc_input_event_title** %4, align 8
  %45 = getelementptr inbounds %struct.vlc_input_event_title, %struct.vlc_input_event_title* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call %struct.TYPE_13__* @vlc_player_title_list_Create(i32 %43, i64 %47, i32 %48, i32 %49)
  %51 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %52 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %51, i32 0, i32 4
  store %struct.TYPE_13__* %50, %struct.TYPE_13__** %52, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* @on_titles_changed, align 4
  %55 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %56 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %55, i32 0, i32 4
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %56, align 8
  %58 = call i32 (i32*, i32, %struct.TYPE_13__*, ...) @vlc_player_SendEvent(i32* %53, i32 %54, %struct.TYPE_13__* %57)
  %59 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %60 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %59, i32 0, i32 4
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  %62 = icmp ne %struct.TYPE_13__* %61, null
  br i1 %62, label %63, label %101

63:                                               ; preds = %35
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* @on_title_selection_changed, align 4
  %66 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %67 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %66, i32 0, i32 4
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = bitcast i32* %71 to %struct.TYPE_13__*
  %73 = call i32 (i32*, i32, %struct.TYPE_13__*, ...) @vlc_player_SendEvent(i32* %64, i32 %65, %struct.TYPE_13__* %72, i32 0)
  %74 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %75 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp sge i32 %78, 0
  br i1 %79, label %80, label %100

80:                                               ; preds = %63
  %81 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %82 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = load %struct.vlc_input_event_title*, %struct.vlc_input_event_title** %4, align 8
  %88 = getelementptr inbounds %struct.vlc_input_event_title, %struct.vlc_input_event_title* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ult i64 %86, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %80
  %93 = load i32*, i32** %5, align 8
  %94 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %95 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @vlc_player_SelectTitleIdx(i32* %93, i32 %98)
  br label %100

100:                                              ; preds = %92, %80, %63
  br label %101

101:                                              ; preds = %100, %35
  br label %182

102:                                              ; preds = %2
  %103 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %104 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %103, i32 0, i32 4
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %104, align 8
  %106 = icmp ne %struct.TYPE_13__* %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %102
  br label %182

108:                                              ; preds = %102
  %109 = load %struct.vlc_input_event_title*, %struct.vlc_input_event_title** %4, align 8
  %110 = getelementptr inbounds %struct.vlc_input_event_title, %struct.vlc_input_event_title* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %113 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %112, i32 0, i32 4
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ult i64 %111, %116
  %118 = zext i1 %117 to i32
  %119 = call i32 @assert(i32 %118)
  %120 = load %struct.vlc_input_event_title*, %struct.vlc_input_event_title** %4, align 8
  %121 = getelementptr inbounds %struct.vlc_input_event_title, %struct.vlc_input_event_title* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %124 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %123, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  %125 = load i32*, i32** %5, align 8
  %126 = load i32, i32* @on_title_selection_changed, align 4
  %127 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %128 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %127, i32 0, i32 4
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %133 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds i32, i32* %131, i64 %134
  %136 = bitcast i32* %135 to %struct.TYPE_13__*
  %137 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %138 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = call i32 (i32*, i32, %struct.TYPE_13__*, ...) @vlc_player_SendEvent(i32* %125, i32 %126, %struct.TYPE_13__* %136, i64 %139)
  %141 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %142 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = icmp sge i32 %145, 0
  br i1 %146, label %147, label %179

147:                                              ; preds = %108
  %148 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %149 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  %154 = load %struct.vlc_input_event_title*, %struct.vlc_input_event_title** %4, align 8
  %155 = getelementptr inbounds %struct.vlc_input_event_title, %struct.vlc_input_event_title* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = icmp eq i64 %153, %156
  br i1 %157, label %158, label %179

158:                                              ; preds = %147
  %159 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %160 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  %163 = load float, float* %162, align 8
  %164 = fcmp ogt float %163, 0.000000e+00
  br i1 %164, label %165, label %179

165:                                              ; preds = %158
  %166 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %167 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %170 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  %173 = load float, float* %172, align 8
  %174 = call i32 @input_SetPosition(i32 %168, float %173, i32 0)
  %175 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %176 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 1
  store i32 0, i32* %178, align 4
  br label %179

179:                                              ; preds = %165, %158, %147, %108
  br label %182

180:                                              ; preds = %2
  %181 = call i32 (...) @vlc_assert_unreachable()
  br label %182

182:                                              ; preds = %107, %180, %179, %101
  ret void
}

declare dso_local %struct.TYPE_12__* @input_priv(i32) #1

declare dso_local i32 @vlc_player_title_list_Release(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__* @vlc_player_title_list_Create(i32, i64, i32, i32) #1

declare dso_local i32 @vlc_player_SendEvent(i32*, i32, %struct.TYPE_13__*, ...) #1

declare dso_local i32 @vlc_player_SelectTitleIdx(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @input_SetPosition(i32, float, i32) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
