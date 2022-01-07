; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_svgawin.c_key_event.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_svgawin.c_key_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UpAndRunning = common dso_local global i32 0, align 4
@SCANCODE_CAPSLOCK = common dso_local global i32 0, align 4
@capslock = common dso_local global i32 0, align 4
@LED_CAP = common dso_local global i32 0, align 4
@scrolllock = common dso_local global i32 0, align 4
@LED_SCR = common dso_local global i32 0, align 4
@SCANCODE_NUMLOCK = common dso_local global i32 0, align 4
@numlock = common dso_local global i32 0, align 4
@LED_NUM = common dso_local global i32 0, align 4
@KBD_FLAG_EXT = common dso_local global i32 0, align 4
@RDP_INPUT_SCANCODE = common dso_local global i32 0, align 4
@RDP_KEYPRESS = common dso_local global i32 0, align 4
@RDP_INPUT_MOUSE = common dso_local global i32 0, align 4
@MOUSE_FLAG_DOWN = common dso_local global i32 0, align 4
@MOUSE_FLAG_BUTTON4 = common dso_local global i32 0, align 4
@MOUSE_FLAG_BUTTON5 = common dso_local global i32 0, align 4
@RDP_KEYRELEASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @key_event(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @UpAndRunning, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %139

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  store i32 %11, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @SCANCODE_CAPSLOCK, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %10
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load i32, i32* @capslock, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* @capslock, align 4
  %23 = load i32, i32* @LED_CAP, align 4
  %24 = load i32, i32* @capslock, align 4
  %25 = call i32 @setled(i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %18, %15, %10
  %27 = load i32, i32* %3, align 4
  %28 = icmp eq i32 %27, 128
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load i32, i32* @scrolllock, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  store i32 %36, i32* @scrolllock, align 4
  %37 = load i32, i32* @LED_SCR, align 4
  %38 = load i32, i32* @scrolllock, align 4
  %39 = call i32 @setled(i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %32, %29, %26
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @SCANCODE_NUMLOCK, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load i32, i32* @numlock, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  store i32 %51, i32* @numlock, align 4
  %52 = load i32, i32* @LED_NUM, align 4
  %53 = load i32, i32* @numlock, align 4
  %54 = call i32 @setled(i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %47, %44, %40
  %56 = load i32, i32* %3, align 4
  switch i32 %56, label %122 [
    i32 142, label %57
    i32 145, label %59
    i32 143, label %61
    i32 144, label %63
    i32 135, label %65
    i32 134, label %67
    i32 140, label %69
    i32 141, label %71
    i32 139, label %73
    i32 132, label %75
    i32 138, label %77
    i32 137, label %78
    i32 130, label %79
    i32 131, label %80
    i32 136, label %81
    i32 129, label %83
    i32 127, label %85
    i32 133, label %87
    i32 146, label %89
    i32 128, label %105
    i32 112, label %106
    i32 113, label %114
  ]

57:                                               ; preds = %55
  store i32 200, i32* %5, align 4
  %58 = load i32, i32* @KBD_FLAG_EXT, align 4
  store i32 %58, i32* %6, align 4
  br label %122

59:                                               ; preds = %55
  store i32 208, i32* %5, align 4
  %60 = load i32, i32* @KBD_FLAG_EXT, align 4
  store i32 %60, i32* %6, align 4
  br label %122

61:                                               ; preds = %55
  store i32 205, i32* %5, align 4
  %62 = load i32, i32* @KBD_FLAG_EXT, align 4
  store i32 %62, i32* %6, align 4
  br label %122

63:                                               ; preds = %55
  store i32 203, i32* %5, align 4
  %64 = load i32, i32* @KBD_FLAG_EXT, align 4
  store i32 %64, i32* %6, align 4
  br label %122

65:                                               ; preds = %55
  store i32 209, i32* %5, align 4
  %66 = load i32, i32* @KBD_FLAG_EXT, align 4
  store i32 %66, i32* %6, align 4
  br label %122

67:                                               ; preds = %55
  store i32 201, i32* %5, align 4
  %68 = load i32, i32* @KBD_FLAG_EXT, align 4
  store i32 %68, i32* %6, align 4
  br label %122

69:                                               ; preds = %55
  store i32 199, i32* %5, align 4
  %70 = load i32, i32* @KBD_FLAG_EXT, align 4
  store i32 %70, i32* %6, align 4
  br label %122

71:                                               ; preds = %55
  store i32 207, i32* %5, align 4
  %72 = load i32, i32* @KBD_FLAG_EXT, align 4
  store i32 %72, i32* %6, align 4
  br label %122

73:                                               ; preds = %55
  store i32 210, i32* %5, align 4
  %74 = load i32, i32* @KBD_FLAG_EXT, align 4
  store i32 %74, i32* %6, align 4
  br label %122

75:                                               ; preds = %55
  store i32 211, i32* %5, align 4
  %76 = load i32, i32* @KBD_FLAG_EXT, align 4
  store i32 %76, i32* %6, align 4
  br label %122

77:                                               ; preds = %55
  store i32 53, i32* %5, align 4
  br label %122

78:                                               ; preds = %55
  store i32 28, i32* %5, align 4
  br label %122

79:                                               ; preds = %55
  store i32 29, i32* %5, align 4
  br label %122

80:                                               ; preds = %55
  store i32 56, i32* %5, align 4
  br label %122

81:                                               ; preds = %55
  store i32 91, i32* %5, align 4
  %82 = load i32, i32* @KBD_FLAG_EXT, align 4
  store i32 %82, i32* %6, align 4
  br label %122

83:                                               ; preds = %55
  store i32 92, i32* %5, align 4
  %84 = load i32, i32* @KBD_FLAG_EXT, align 4
  store i32 %84, i32* %6, align 4
  br label %122

85:                                               ; preds = %55
  store i32 93, i32* %5, align 4
  %86 = load i32, i32* @KBD_FLAG_EXT, align 4
  store i32 %86, i32* %6, align 4
  br label %122

87:                                               ; preds = %55
  store i32 55, i32* %5, align 4
  %88 = load i32, i32* @KBD_FLAG_EXT, align 4
  store i32 %88, i32* %6, align 4
  br label %122

89:                                               ; preds = %55
  %90 = load i32, i32* %4, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %89
  %93 = load i32, i32* @KBD_FLAG_EXT, align 4
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* @RDP_INPUT_SCANCODE, align 4
  %95 = load i32, i32* @RDP_KEYPRESS, align 4
  %96 = load i32, i32* %6, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @rdp_send_input(i32 0, i32 %94, i32 %97, i32 70, i32 0)
  %99 = load i32, i32* @RDP_INPUT_SCANCODE, align 4
  %100 = load i32, i32* @RDP_KEYPRESS, align 4
  %101 = load i32, i32* %6, align 4
  %102 = or i32 %100, %101
  %103 = call i32 @rdp_send_input(i32 0, i32 %99, i32 %102, i32 198, i32 0)
  br label %104

104:                                              ; preds = %92, %89
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %55, %104
  store i32 70, i32* %5, align 4
  br label %122

106:                                              ; preds = %55
  %107 = load i32, i32* @RDP_INPUT_MOUSE, align 4
  %108 = load i32, i32* @MOUSE_FLAG_DOWN, align 4
  %109 = load i32, i32* @MOUSE_FLAG_BUTTON4, align 4
  %110 = or i32 %108, %109
  %111 = call i32 (...) @mouse_getx()
  %112 = call i32 (...) @mouse_gety()
  %113 = call i32 @rdp_send_input(i32 0, i32 %107, i32 %110, i32 %111, i32 %112)
  br label %139

114:                                              ; preds = %55
  %115 = load i32, i32* @RDP_INPUT_MOUSE, align 4
  %116 = load i32, i32* @MOUSE_FLAG_DOWN, align 4
  %117 = load i32, i32* @MOUSE_FLAG_BUTTON5, align 4
  %118 = or i32 %116, %117
  %119 = call i32 (...) @mouse_getx()
  %120 = call i32 (...) @mouse_gety()
  %121 = call i32 @rdp_send_input(i32 0, i32 %115, i32 %118, i32 %119, i32 %120)
  br label %139

122:                                              ; preds = %55, %105, %87, %85, %83, %81, %80, %79, %78, %77, %75, %73, %71, %69, %67, %65, %63, %61, %59, %57
  %123 = load i32, i32* %4, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %122
  %126 = load i32, i32* @RDP_INPUT_SCANCODE, align 4
  %127 = load i32, i32* @RDP_KEYPRESS, align 4
  %128 = load i32, i32* %6, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* %5, align 4
  %131 = call i32 @rdp_send_input(i32 0, i32 %126, i32 %129, i32 %130, i32 0)
  br label %139

132:                                              ; preds = %122
  %133 = load i32, i32* @RDP_INPUT_SCANCODE, align 4
  %134 = load i32, i32* @RDP_KEYRELEASE, align 4
  %135 = load i32, i32* %6, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* %5, align 4
  %138 = call i32 @rdp_send_input(i32 0, i32 %133, i32 %136, i32 %137, i32 0)
  br label %139

139:                                              ; preds = %9, %106, %114, %132, %125
  ret void
}

declare dso_local i32 @setled(i32, i32) #1

declare dso_local i32 @rdp_send_input(i32, i32, i32, i32, i32) #1

declare dso_local i32 @mouse_getx(...) #1

declare dso_local i32 @mouse_gety(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
