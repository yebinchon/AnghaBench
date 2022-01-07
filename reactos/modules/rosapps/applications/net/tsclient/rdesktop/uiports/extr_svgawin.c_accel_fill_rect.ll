; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_svgawin.c_accel_fill_rect.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_svgawin.c_accel_fill_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sdata = common dso_local global i64 0, align 8
@g_server_Bpp = common dso_local global i32 0, align 4
@g_width = common dso_local global i32 0, align 4
@g_server_bpp = common dso_local global i32 0, align 4
@has_fill_box = common dso_local global i64 0, align 8
@ACCEL_SETFGCOLOR = common dso_local global i32 0, align 4
@ACCEL_FILLBOX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @accel_fill_rect(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i64, i64* @sdata, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %87

16:                                               ; preds = %5
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @g_server_Bpp, align 4
  %19 = mul nsw i32 %17, %18
  %20 = call i32* @xmalloc(i32 %19)
  store i32* %20, i32** %12, align 8
  %21 = load i32, i32* @g_server_Bpp, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %38

23:                                               ; preds = %16
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %34, %23
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = load i32, i32* %10, align 4
  %30 = load i32*, i32** %12, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 %29, i32* %33, align 4
  br label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %11, align 4
  br label %24

37:                                               ; preds = %24
  br label %57

38:                                               ; preds = %16
  %39 = load i32, i32* @g_server_Bpp, align 4
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %56

41:                                               ; preds = %38
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %52, %41
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load i32, i32* %10, align 4
  %48 = load i32*, i32** %12, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %47, i32* %51, align 4
  br label %52

52:                                               ; preds = %46
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %11, align 4
  br label %42

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %55, %38
  br label %57

57:                                               ; preds = %56, %37
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i64, i64* @sdata, align 8
  %61 = load i32, i32* @g_width, align 4
  %62 = load i32, i32* @g_server_bpp, align 4
  %63 = call i32* @get_ptr(i32 %58, i32 %59, i64 %60, i32 %61, i32 %62)
  store i32* %63, i32** %13, align 8
  store i32 0, i32* %11, align 4
  br label %64

64:                                               ; preds = %81, %57
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %84

68:                                               ; preds = %64
  %69 = load i32*, i32** %13, align 8
  %70 = load i32*, i32** %12, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @g_server_Bpp, align 4
  %73 = mul nsw i32 %71, %72
  %74 = call i32 @copy_mem(i32* %69, i32* %70, i32 %73)
  %75 = load i32*, i32** %13, align 8
  %76 = load i32, i32* @g_width, align 4
  %77 = load i32, i32* @g_server_Bpp, align 4
  %78 = mul nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %75, i64 %79
  store i32* %80, i32** %13, align 8
  br label %81

81:                                               ; preds = %68
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %64

84:                                               ; preds = %64
  %85 = load i32*, i32** %12, align 8
  %86 = call i32 @xfree(i32* %85)
  br label %163

87:                                               ; preds = %5
  %88 = load i64, i64* @has_fill_box, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %87
  %91 = load i32, i32* @ACCEL_SETFGCOLOR, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i32 (i32, i32, ...) @vga_accel(i32 %91, i32 %92)
  %94 = load i32, i32* @ACCEL_FILLBOX, align 4
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %9, align 4
  %99 = call i32 (i32, i32, ...) @vga_accel(i32 %94, i32 %95, i32 %96, i32 %97, i32 %98)
  br label %162

100:                                              ; preds = %87
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @g_server_Bpp, align 4
  %103 = mul nsw i32 %101, %102
  %104 = call i32* @xmalloc(i32 %103)
  store i32* %104, i32** %12, align 8
  %105 = load i32, i32* @g_server_Bpp, align 4
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %122

107:                                              ; preds = %100
  store i32 0, i32* %11, align 4
  br label %108

108:                                              ; preds = %118, %107
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %121

112:                                              ; preds = %108
  %113 = load i32, i32* %10, align 4
  %114 = load i32*, i32** %12, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 %113, i32* %117, align 4
  br label %118

118:                                              ; preds = %112
  %119 = load i32, i32* %11, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %11, align 4
  br label %108

121:                                              ; preds = %108
  br label %141

122:                                              ; preds = %100
  %123 = load i32, i32* @g_server_Bpp, align 4
  %124 = icmp eq i32 %123, 2
  br i1 %124, label %125, label %140

125:                                              ; preds = %122
  store i32 0, i32* %11, align 4
  br label %126

126:                                              ; preds = %136, %125
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %139

130:                                              ; preds = %126
  %131 = load i32, i32* %10, align 4
  %132 = load i32*, i32** %12, align 8
  %133 = load i32, i32* %11, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  store i32 %131, i32* %135, align 4
  br label %136

136:                                              ; preds = %130
  %137 = load i32, i32* %11, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %11, align 4
  br label %126

139:                                              ; preds = %126
  br label %140

140:                                              ; preds = %139, %122
  br label %141

141:                                              ; preds = %140, %121
  store i32 0, i32* %11, align 4
  br label %142

142:                                              ; preds = %156, %141
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* %9, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %159

146:                                              ; preds = %142
  %147 = load i32*, i32** %12, align 8
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* %11, align 4
  %151 = add nsw i32 %149, %150
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* @g_server_Bpp, align 4
  %154 = mul nsw i32 %152, %153
  %155 = call i32 @vga_drawscansegment(i32* %147, i32 %148, i32 %151, i32 %154)
  br label %156

156:                                              ; preds = %146
  %157 = load i32, i32* %11, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %11, align 4
  br label %142

159:                                              ; preds = %142
  %160 = load i32*, i32** %12, align 8
  %161 = call i32 @xfree(i32* %160)
  br label %162

162:                                              ; preds = %159, %90
  br label %163

163:                                              ; preds = %162, %84
  ret void
}

declare dso_local i32* @xmalloc(i32) #1

declare dso_local i32* @get_ptr(i32, i32, i64, i32, i32) #1

declare dso_local i32 @copy_mem(i32*, i32*, i32) #1

declare dso_local i32 @xfree(i32*) #1

declare dso_local i32 @vga_accel(i32, i32, ...) #1

declare dso_local i32 @vga_drawscansegment(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
