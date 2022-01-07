; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/extr_caca.c_Manage.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/extr_caca.c_Manage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64, i32, i32 }
%struct.caca_event = type { i32 }

@INVALID_DEADLINE = common dso_local global i64 0, align 8
@CACA_EVENT_ANY = common dso_local global i32 0, align 4
@keys = common dso_local global %struct.TYPE_10__* null, align 8
@mouses = common dso_local global %struct.TYPE_9__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @Manage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Manage(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.caca_event, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %3, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @INVALID_DEADLINE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %1
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i64 (...) @vlc_tick_now()
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @caca_set_mouse(i32 %27, i32 0)
  %29 = load i64, i64* @INVALID_DEADLINE, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %24, %18, %1
  br label %33

33:                                               ; preds = %176, %32
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @CACA_EVENT_ANY, align 4
  %38 = call i64 @caca_get_event(i32 %36, i32 %37, %struct.caca_event* %4, i32 0)
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %177

40:                                               ; preds = %33
  %41 = call i32 @caca_get_event_type(%struct.caca_event* %4)
  switch i32 %41, label %175 [
    i32 133, label %42
    i32 128, label %90
    i32 132, label %91
    i32 131, label %109
    i32 130, label %109
    i32 129, label %170
  ]

42:                                               ; preds = %40
  %43 = call i32 @caca_get_event_key_ch(%struct.caca_event* %4)
  store i32 %43, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %76, %42
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** @keys, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, -1
  br i1 %51, label %52, label %79

52:                                               ; preds = %44
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** @keys, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %52
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** @keys, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %61
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @VoutDisplayEventKey(%struct.TYPE_8__* %71, i32 %72)
  br label %74

74:                                               ; preds = %70, %61
  br label %177

75:                                               ; preds = %52
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %44

79:                                               ; preds = %44
  %80 = load i32, i32* %5, align 4
  %81 = icmp sge i32 %80, 32
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load i32, i32* %5, align 4
  %84 = icmp sle i32 %83, 127
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @VoutDisplayEventKey(%struct.TYPE_8__* %86, i32 %87)
  br label %177

89:                                               ; preds = %82, %79
  br label %176

90:                                               ; preds = %40
  br label %176

91:                                               ; preds = %40
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @caca_set_mouse(i32 %94, i32 1)
  %96 = call i64 (...) @vlc_tick_now()
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %96, %99
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @caca_get_event_mouse_x(%struct.caca_event* %4)
  %107 = call i32 @caca_get_event_mouse_y(%struct.caca_event* %4)
  %108 = call i32 @vout_window_ReportMouseMoved(i32 %105, i32 %106, i32 %107)
  br label %176

109:                                              ; preds = %40, %40
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @caca_set_mouse(i32 %112, i32 1)
  %114 = call i64 (...) @vlc_tick_now()
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %114, %117
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  %121 = call i32 @caca_get_event_mouse_button(%struct.caca_event* %4)
  store i32 %121, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %122

122:                                              ; preds = %166, %109
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** @mouses, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, -1
  br i1 %129, label %130, label %169

130:                                              ; preds = %122
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** @mouses, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %8, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %165

139:                                              ; preds = %130
  %140 = call i32 @caca_get_event_type(%struct.caca_event* %4)
  %141 = icmp eq i32 %140, 131
  br i1 %141, label %142, label %153

142:                                              ; preds = %139
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** @mouses, align 8
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @vout_window_ReportMousePressed(i32 %145, i32 %151)
  br label %164

153:                                              ; preds = %139
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** @mouses, align 8
  %158 = load i32, i32* %9, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @vout_window_ReportMouseReleased(i32 %156, i32 %162)
  br label %164

164:                                              ; preds = %153, %142
  br label %177

165:                                              ; preds = %130
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %9, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %9, align 4
  br label %122

169:                                              ; preds = %122
  br label %176

170:                                              ; preds = %40
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @vout_window_ReportClose(i32 %173)
  br label %176

175:                                              ; preds = %40
  br label %176

176:                                              ; preds = %175, %170, %169, %91, %90, %89
  br label %33

177:                                              ; preds = %74, %85, %164, %33
  ret void
}

declare dso_local i64 @vlc_tick_now(...) #1

declare dso_local i32 @caca_set_mouse(i32, i32) #1

declare dso_local i64 @caca_get_event(i32, i32, %struct.caca_event*, i32) #1

declare dso_local i32 @caca_get_event_type(%struct.caca_event*) #1

declare dso_local i32 @caca_get_event_key_ch(%struct.caca_event*) #1

declare dso_local i32 @VoutDisplayEventKey(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @vout_window_ReportMouseMoved(i32, i32, i32) #1

declare dso_local i32 @caca_get_event_mouse_x(%struct.caca_event*) #1

declare dso_local i32 @caca_get_event_mouse_y(%struct.caca_event*) #1

declare dso_local i32 @caca_get_event_mouse_button(%struct.caca_event*) #1

declare dso_local i32 @vout_window_ReportMousePressed(i32, i32) #1

declare dso_local i32 @vout_window_ReportMouseReleased(i32, i32) #1

declare dso_local i32 @vout_window_ReportClose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
