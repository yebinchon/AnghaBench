; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_svgawin.c_process_mouse.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_svgawin.c_process_mouse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@mousex = common dso_local global i32 0, align 4
@mousey = common dso_local global i32 0, align 4
@mouseb = common dso_local global i32 0, align 4
@UpAndRunning = common dso_local global i32 0, align 4
@mcursor = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@RDP_INPUT_MOUSE = common dso_local global i32 0, align 4
@MOUSE_FLAG_DOWN = common dso_local global i32 0, align 4
@MOUSE_FLAG_BUTTON2 = common dso_local global i32 0, align 4
@MOUSE_FLAG_BUTTON3 = common dso_local global i32 0, align 4
@MOUSE_FLAG_BUTTON1 = common dso_local global i32 0, align 4
@MOUSE_FLAG_MOVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_mouse() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @mousex, align 4
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* @mousey, align 4
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* @mouseb, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @UpAndRunning, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  br label %164

10:                                               ; preds = %0
  %11 = call i32 (...) @mouse_getx()
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mcursor, i32 0, i32 0), align 4
  %13 = sub nsw i32 %11, %12
  store i32 %13, i32* @mousex, align 4
  %14 = call i32 (...) @mouse_gety()
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mcursor, i32 0, i32 1), align 4
  %16 = sub nsw i32 %14, %15
  store i32 %16, i32* @mousey, align 4
  %17 = call i32 (...) @mouse_getbutton()
  store i32 %17, i32* @mouseb, align 4
  %18 = load i32, i32* @mouseb, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %142

21:                                               ; preds = %10
  %22 = load i32, i32* @mouseb, align 4
  %23 = and i32 %22, 1
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %21
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, 1
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @RDP_INPUT_MOUSE, align 4
  %31 = load i32, i32* @MOUSE_FLAG_DOWN, align 4
  %32 = load i32, i32* @MOUSE_FLAG_BUTTON2, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @mousex, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mcursor, i32 0, i32 0), align 4
  %36 = add nsw i32 %34, %35
  %37 = load i32, i32* @mousey, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mcursor, i32 0, i32 1), align 4
  %39 = add nsw i32 %37, %38
  %40 = call i32 @rdp_send_input(i32 0, i32 %30, i32 %33, i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %29, %25
  br label %42

42:                                               ; preds = %41, %21
  %43 = load i32, i32* %3, align 4
  %44 = and i32 %43, 1
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %42
  %47 = load i32, i32* @mouseb, align 4
  %48 = and i32 %47, 1
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* @RDP_INPUT_MOUSE, align 4
  %52 = load i32, i32* @MOUSE_FLAG_BUTTON2, align 4
  %53 = load i32, i32* @mousex, align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mcursor, i32 0, i32 0), align 4
  %55 = add nsw i32 %53, %54
  %56 = load i32, i32* @mousey, align 4
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mcursor, i32 0, i32 1), align 4
  %58 = add nsw i32 %56, %57
  %59 = call i32 @rdp_send_input(i32 0, i32 %51, i32 %52, i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %50, %46
  br label %61

61:                                               ; preds = %60, %42
  %62 = load i32, i32* @mouseb, align 4
  %63 = and i32 %62, 2
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %61
  %66 = load i32, i32* %3, align 4
  %67 = and i32 %66, 2
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %81, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* @RDP_INPUT_MOUSE, align 4
  %71 = load i32, i32* @MOUSE_FLAG_DOWN, align 4
  %72 = load i32, i32* @MOUSE_FLAG_BUTTON3, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @mousex, align 4
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mcursor, i32 0, i32 0), align 4
  %76 = add nsw i32 %74, %75
  %77 = load i32, i32* @mousey, align 4
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mcursor, i32 0, i32 1), align 4
  %79 = add nsw i32 %77, %78
  %80 = call i32 @rdp_send_input(i32 0, i32 %70, i32 %73, i32 %76, i32 %79)
  br label %81

81:                                               ; preds = %69, %65
  br label %82

82:                                               ; preds = %81, %61
  %83 = load i32, i32* %3, align 4
  %84 = and i32 %83, 2
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %82
  %87 = load i32, i32* @mouseb, align 4
  %88 = and i32 %87, 2
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %100, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* @RDP_INPUT_MOUSE, align 4
  %92 = load i32, i32* @MOUSE_FLAG_BUTTON3, align 4
  %93 = load i32, i32* @mousex, align 4
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mcursor, i32 0, i32 0), align 4
  %95 = add nsw i32 %93, %94
  %96 = load i32, i32* @mousey, align 4
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mcursor, i32 0, i32 1), align 4
  %98 = add nsw i32 %96, %97
  %99 = call i32 @rdp_send_input(i32 0, i32 %91, i32 %92, i32 %95, i32 %98)
  br label %100

100:                                              ; preds = %90, %86
  br label %101

101:                                              ; preds = %100, %82
  %102 = load i32, i32* @mouseb, align 4
  %103 = and i32 %102, 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %122

105:                                              ; preds = %101
  %106 = load i32, i32* %3, align 4
  %107 = and i32 %106, 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %121, label %109

109:                                              ; preds = %105
  %110 = load i32, i32* @RDP_INPUT_MOUSE, align 4
  %111 = load i32, i32* @MOUSE_FLAG_DOWN, align 4
  %112 = load i32, i32* @MOUSE_FLAG_BUTTON1, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @mousex, align 4
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mcursor, i32 0, i32 0), align 4
  %116 = add nsw i32 %114, %115
  %117 = load i32, i32* @mousey, align 4
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mcursor, i32 0, i32 1), align 4
  %119 = add nsw i32 %117, %118
  %120 = call i32 @rdp_send_input(i32 0, i32 %110, i32 %113, i32 %116, i32 %119)
  br label %121

121:                                              ; preds = %109, %105
  br label %122

122:                                              ; preds = %121, %101
  %123 = load i32, i32* %3, align 4
  %124 = and i32 %123, 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %141

126:                                              ; preds = %122
  %127 = load i32, i32* @mouseb, align 4
  %128 = and i32 %127, 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %140, label %130

130:                                              ; preds = %126
  %131 = load i32, i32* @RDP_INPUT_MOUSE, align 4
  %132 = load i32, i32* @MOUSE_FLAG_BUTTON1, align 4
  %133 = load i32, i32* @mousex, align 4
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mcursor, i32 0, i32 0), align 4
  %135 = add nsw i32 %133, %134
  %136 = load i32, i32* @mousey, align 4
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mcursor, i32 0, i32 1), align 4
  %138 = add nsw i32 %136, %137
  %139 = call i32 @rdp_send_input(i32 0, i32 %131, i32 %132, i32 %135, i32 %138)
  br label %140

140:                                              ; preds = %130, %126
  br label %141

141:                                              ; preds = %140, %122
  br label %142

142:                                              ; preds = %141, %10
  %143 = load i32, i32* @mousex, align 4
  %144 = load i32, i32* %1, align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %150, label %146

146:                                              ; preds = %142
  %147 = load i32, i32* @mousey, align 4
  %148 = load i32, i32* %2, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %164

150:                                              ; preds = %146, %142
  %151 = load i32, i32* @RDP_INPUT_MOUSE, align 4
  %152 = load i32, i32* @MOUSE_FLAG_MOVE, align 4
  %153 = load i32, i32* @mousex, align 4
  %154 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mcursor, i32 0, i32 0), align 4
  %155 = add nsw i32 %153, %154
  %156 = load i32, i32* @mousey, align 4
  %157 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mcursor, i32 0, i32 1), align 4
  %158 = add nsw i32 %156, %157
  %159 = call i32 @rdp_send_input(i32 0, i32 %151, i32 %152, i32 %155, i32 %158)
  %160 = load i32, i32* %1, align 4
  %161 = load i32, i32* %2, align 4
  %162 = call i32 @draw_cursor_under(i32 %160, i32 %161)
  %163 = call i32 (...) @draw_cursor()
  br label %164

164:                                              ; preds = %9, %150, %146
  ret void
}

declare dso_local i32 @mouse_getx(...) #1

declare dso_local i32 @mouse_gety(...) #1

declare dso_local i32 @mouse_getbutton(...) #1

declare dso_local i32 @rdp_send_input(i32, i32, i32, i32, i32) #1

declare dso_local i32 @draw_cursor_under(i32, i32) #1

declare dso_local i32 @draw_cursor(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
