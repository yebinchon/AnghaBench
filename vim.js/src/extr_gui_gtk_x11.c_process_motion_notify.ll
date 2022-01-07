; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_gtk_x11.c_process_motion_notify.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_gtk_x11.c_process_motion_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@GDK_BUTTON1_MASK = common dso_local global i32 0, align 4
@GDK_BUTTON2_MASK = common dso_local global i32 0, align 4
@GDK_BUTTON3_MASK = common dso_local global i32 0, align 4
@GDK_BUTTON4_MASK = common dso_local global i32 0, align 4
@GDK_BUTTON5_MASK = common dso_local global i32 0, align 4
@MOUSE_DRAG = common dso_local global i8 0, align 1
@FALSE = common dso_local global i32 0, align 4
@gui = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@motion_repeat_timer = common dso_local global i64 0, align 8
@motion_repeat_timer_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @process_motion_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_motion_notify(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @GDK_BUTTON1_MASK, align 4
  %15 = load i32, i32* @GDK_BUTTON2_MASK, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @GDK_BUTTON3_MASK, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @GDK_BUTTON4_MASK, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @GDK_BUTTON5_MASK, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %13, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i8, i8* @MOUSE_DRAG, align 1
  %27 = sext i8 %26 to i32
  br label %29

28:                                               ; preds = %3
  br label %29

29:                                               ; preds = %28, %25
  %30 = phi i32 [ %27, %25 ], [ 32, %28 ]
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* @FALSE, align 4
  %32 = call i32 @gui_mch_mousehide(i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = load i8, i8* @MOUSE_DRAG, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %33, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @gui_mouse_moved(i32 %38, i32 %39)
  br label %124

41:                                               ; preds = %29
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @modifiers_gdk2mouse(i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @FALSE, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @gui_send_mouse_event(i32 %44, i32 %45, i32 %46, i32 %47, i32 %48)
  %50 = load i32, i32* %4, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %69, label %52

52:                                               ; preds = %41
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %69, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gui, i32 0, i32 0), align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp sge i32 %56, %60
  br i1 %61, label %69, label %62

62:                                               ; preds = %55
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gui, i32 0, i32 0), align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp sge i32 %63, %67
  br i1 %68, label %69, label %124

69:                                               ; preds = %62, %55, %52, %41
  store i32 10, i32* %12, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, i32* %4, align 4
  %74 = sub nsw i32 0, %73
  br label %82

75:                                               ; preds = %69
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gui, i32 0, i32 0), align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %76, %80
  br label %82

82:                                               ; preds = %75, %72
  %83 = phi i32 [ %74, %72 ], [ %81, %75 ]
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load i32, i32* %5, align 4
  %88 = sub nsw i32 0, %87
  br label %96

89:                                               ; preds = %82
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gui, i32 0, i32 0), align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 %90, %94
  br label %96

96:                                               ; preds = %89, %86
  %97 = phi i32 [ %88, %86 ], [ %95, %89 ]
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp sgt i32 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = load i32, i32* %9, align 4
  br label %105

103:                                              ; preds = %96
  %104 = load i32, i32* %10, align 4
  br label %105

105:                                              ; preds = %103, %101
  %106 = phi i32 [ %102, %101 ], [ %104, %103 ]
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %11, align 4
  %108 = icmp sgt i32 %107, 127
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  store i32 5, i32* %12, align 4
  br label %116

110:                                              ; preds = %105
  %111 = load i32, i32* %11, align 4
  %112 = sub nsw i32 127, %111
  %113 = mul nsw i32 130, %112
  %114 = sdiv i32 %113, 127
  %115 = add nsw i32 %114, 5
  store i32 %115, i32* %12, align 4
  br label %116

116:                                              ; preds = %110, %109
  %117 = load i64, i64* @motion_repeat_timer, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* @motion_repeat_timer_cb, align 4
  %122 = call i64 @gtk_timeout_add(i32 %120, i32 %121, i32* null)
  store i64 %122, i64* @motion_repeat_timer, align 8
  br label %123

123:                                              ; preds = %119, %116
  br label %124

124:                                              ; preds = %37, %123, %62
  ret void
}

declare dso_local i32 @gui_mch_mousehide(i32) #1

declare dso_local i32 @gui_mouse_moved(i32, i32) #1

declare dso_local i32 @modifiers_gdk2mouse(i32) #1

declare dso_local i32 @gui_send_mouse_event(i32, i32, i32, i32, i32) #1

declare dso_local i64 @gtk_timeout_add(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
