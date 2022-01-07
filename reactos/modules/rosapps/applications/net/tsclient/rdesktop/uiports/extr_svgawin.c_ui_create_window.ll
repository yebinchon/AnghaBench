; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_svgawin.c_ui_create_window.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_svgawin.c_ui_create_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@G800x600x256 = common dso_local global i32 0, align 4
@g_width = common dso_local global i32 0, align 4
@g_height = common dso_local global i32 0, align 4
@g_server_Bpp = common dso_local global i32 0, align 4
@G640x480x256 = common dso_local global i32 0, align 4
@G640x480x64K = common dso_local global i32 0, align 4
@G800x600x64K = common dso_local global i32 0, align 4
@G1024x768x256 = common dso_local global i32 0, align 4
@G1024x768x64K = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Invalid width / height\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Graphics unavailable\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Keyboard unavailable\00", align 1
@key_event = common dso_local global i32 0, align 4
@use_accel = common dso_local global i64 0, align 8
@VGA_EXT_AVAILABLE = common dso_local global i32 0, align 4
@VGA_AVAIL_ACCEL = common dso_local global i32 0, align 4
@ACCELFLAG_PUTIMAGE = common dso_local global i32 0, align 4
@has_put_image = common dso_local global i32 0, align 4
@ACCELFLAG_SCREENCOPY = common dso_local global i32 0, align 4
@has_screen_copy = common dso_local global i32 0, align 4
@ACCELFLAG_FILLBOX = common dso_local global i32 0, align 4
@has_fill_box = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"accel %d\0A\00", align 1
@g_save_mem = common dso_local global i32 0, align 4
@sdata = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ui_create_window() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @G800x600x256, align 4
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* @g_width, align 4
  %6 = icmp eq i32 %5, 640
  br i1 %6, label %7, label %22

7:                                                ; preds = %0
  %8 = load i32, i32* @g_height, align 4
  %9 = icmp eq i32 %8, 480
  br i1 %9, label %10, label %22

10:                                               ; preds = %7
  %11 = load i32, i32* @g_server_Bpp, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load i32, i32* @G640x480x256, align 4
  store i32 %14, i32* %2, align 4
  br label %21

15:                                               ; preds = %10
  %16 = load i32, i32* @g_server_Bpp, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, i32* @G640x480x64K, align 4
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %18, %15
  br label %21

21:                                               ; preds = %20, %13
  br label %62

22:                                               ; preds = %7, %0
  %23 = load i32, i32* @g_width, align 4
  %24 = icmp eq i32 %23, 800
  br i1 %24, label %25, label %40

25:                                               ; preds = %22
  %26 = load i32, i32* @g_height, align 4
  %27 = icmp eq i32 %26, 600
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = load i32, i32* @g_server_Bpp, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* @G800x600x256, align 4
  store i32 %32, i32* %2, align 4
  br label %39

33:                                               ; preds = %28
  %34 = load i32, i32* @g_server_Bpp, align 4
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* @G800x600x64K, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %33
  br label %39

39:                                               ; preds = %38, %31
  br label %61

40:                                               ; preds = %25, %22
  %41 = load i32, i32* @g_width, align 4
  %42 = icmp eq i32 %41, 1024
  br i1 %42, label %43, label %58

43:                                               ; preds = %40
  %44 = load i32, i32* @g_height, align 4
  %45 = icmp eq i32 %44, 768
  br i1 %45, label %46, label %58

46:                                               ; preds = %43
  %47 = load i32, i32* @g_server_Bpp, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* @G1024x768x256, align 4
  store i32 %50, i32* %2, align 4
  br label %57

51:                                               ; preds = %46
  %52 = load i32, i32* @g_server_Bpp, align 4
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* @G1024x768x64K, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %54, %51
  br label %57

57:                                               ; preds = %56, %49
  br label %60

58:                                               ; preds = %43, %40
  %59 = call i32 @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %125

60:                                               ; preds = %57
  br label %61

61:                                               ; preds = %60, %39
  br label %62

62:                                               ; preds = %61, %21
  %63 = call i32 (...) @ui_reset_clip()
  %64 = load i32, i32* %2, align 4
  %65 = call i32 @vga_hasmode(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %62
  %68 = call i32 @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %125

69:                                               ; preds = %62
  %70 = call i32 @vga_setmousesupport(i32 1)
  %71 = load i32, i32* @g_width, align 4
  %72 = sdiv i32 %71, 2
  %73 = load i32, i32* @g_height, align 4
  %74 = sdiv i32 %73, 2
  %75 = call i32 @mouse_setposition(i32 %72, i32 %74)
  %76 = load i32, i32* %2, align 4
  %77 = call i32 @vga_setmode(i32 %76)
  %78 = call i64 (...) @keyboard_init()
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %69
  %81 = call i32 @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %125

82:                                               ; preds = %69
  %83 = load i32, i32* @key_event, align 4
  %84 = call i32 @keyboard_seteventhandler(i32 %83)
  %85 = load i64, i64* @use_accel, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %111

87:                                               ; preds = %82
  %88 = load i32, i32* @VGA_EXT_AVAILABLE, align 4
  %89 = load i32, i32* @VGA_AVAIL_ACCEL, align 4
  %90 = call i32 @vga_ext_set(i32 %88, i32 %89)
  store i32 %90, i32* %3, align 4
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* @ACCELFLAG_PUTIMAGE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  store i32 1, i32* @has_put_image, align 4
  br label %96

96:                                               ; preds = %95, %87
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* @ACCELFLAG_SCREENCOPY, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  store i32 1, i32* @has_screen_copy, align 4
  br label %102

102:                                              ; preds = %101, %96
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* @ACCELFLAG_FILLBOX, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  store i32 1, i32* @has_fill_box, align 4
  br label %108

108:                                              ; preds = %107, %102
  %109 = load i32, i32* %3, align 4
  %110 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %108, %82
  %112 = load i32, i32* @has_screen_copy, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %124, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* @g_save_mem, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %114
  %118 = load i32, i32* @g_width, align 4
  %119 = load i32, i32* @g_height, align 4
  %120 = mul nsw i32 %118, %119
  %121 = load i32, i32* @g_server_Bpp, align 4
  %122 = mul nsw i32 %120, %121
  %123 = call i32 @xmalloc(i32 %122)
  store i32 %123, i32* @sdata, align 4
  br label %124

124:                                              ; preds = %117, %114, %111
  store i32 1, i32* %1, align 4
  br label %125

125:                                              ; preds = %124, %80, %67, %58
  %126 = load i32, i32* %1, align 4
  ret i32 %126
}

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @ui_reset_clip(...) #1

declare dso_local i32 @vga_hasmode(i32) #1

declare dso_local i32 @vga_setmousesupport(i32) #1

declare dso_local i32 @mouse_setposition(i32, i32) #1

declare dso_local i32 @vga_setmode(i32) #1

declare dso_local i64 @keyboard_init(...) #1

declare dso_local i32 @keyboard_seteventhandler(i32) #1

declare dso_local i32 @vga_ext_set(i32, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
