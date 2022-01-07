; ModuleID = '/home/carl/AnghaBench/stb/tests/oversample/extr_main.c_winproc.c'
source_filename = "/home/carl/AnghaBench/stb/tests/oversample/extr_main.c_winproc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@STBWINGRAPH_winproc_exit = common dso_local global i32 0, align 4
@font = common dso_local global i32 0, align 4
@translating = common dso_local global i32 0, align 4
@translate_t = common dso_local global i32 0, align 4
@rotating = common dso_local global i32 0, align 4
@rotate_t = common dso_local global i32 0, align 4
@integer_align = common dso_local global i32 0, align 4
@srgb = common dso_local global i32 0, align 4
@GL_FRAMEBUFFER_SRGB_EXT = common dso_local global i32 0, align 4
@show_tex = common dso_local global i32 0, align 4
@black_on_white = common dso_local global i32 0, align 4
@raw_mouse_x = common dso_local global i32 0, align 4
@raw_mouse_y = common dso_local global i32 0, align 4
@VK_RIGHT = common dso_local global i32 0, align 4
@move = common dso_local global i32* null, align 8
@VK_LEFT = common dso_local global i32 0, align 4
@VK_UP = common dso_local global i32 0, align 4
@VK_DOWN = common dso_local global i32 0, align 4
@sx = common dso_local global i32 0, align 4
@sy = common dso_local global i32 0, align 4
@initialized = common dso_local global i32 0, align 4
@STBWINGRAPH_unprocessed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @winproc(i8* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %164 [
    i32 138, label %9
    i32 139, label %10
    i32 132, label %69
    i32 136, label %76
    i32 135, label %113
    i32 128, label %150
    i32 137, label %158
  ]

9:                                                ; preds = %2
  br label %166

10:                                               ; preds = %2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %68 [
    i32 27, label %14
    i32 111, label %17
    i32 79, label %17
    i32 115, label %25
    i32 83, label %25
    i32 116, label %29
    i32 84, label %29
    i32 114, label %34
    i32 82, label %34
    i32 112, label %39
    i32 80, label %39
    i32 103, label %44
    i32 71, label %44
    i32 118, label %58
    i32 86, label %58
    i32 98, label %63
    i32 66, label %63
  ]

14:                                               ; preds = %10
  %15 = call i32 @stbwingraph_ShowCursor(i32* null, i32 1)
  %16 = load i32, i32* @STBWINGRAPH_winproc_exit, align 4
  store i32 %16, i32* %3, align 4
  br label %167

17:                                               ; preds = %10, %10
  %18 = load i32, i32* @font, align 4
  %19 = add nsw i32 %18, 1
  %20 = srem i32 %19, 3
  %21 = load i32, i32* @font, align 4
  %22 = sdiv i32 %21, 3
  %23 = mul nsw i32 %22, 3
  %24 = add nsw i32 %20, %23
  store i32 %24, i32* @font, align 4
  br label %68

25:                                               ; preds = %10, %10
  %26 = load i32, i32* @font, align 4
  %27 = add nsw i32 %26, 3
  %28 = srem i32 %27, 6
  store i32 %28, i32* @font, align 4
  br label %68

29:                                               ; preds = %10, %10
  %30 = load i32, i32* @translating, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  store i32 %33, i32* @translating, align 4
  store i32 0, i32* @translate_t, align 4
  br label %68

34:                                               ; preds = %10, %10
  %35 = load i32, i32* @rotating, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  store i32 %38, i32* @rotating, align 4
  store i32 0, i32* @rotate_t, align 4
  br label %68

39:                                               ; preds = %10, %10
  %40 = load i32, i32* @integer_align, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  store i32 %43, i32* @integer_align, align 4
  br label %68

44:                                               ; preds = %10, %10
  %45 = load i32, i32* @srgb, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  store i32 %48, i32* @srgb, align 4
  %49 = load i32, i32* @srgb, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i32, i32* @GL_FRAMEBUFFER_SRGB_EXT, align 4
  %53 = call i32 @glEnable(i32 %52)
  br label %57

54:                                               ; preds = %44
  %55 = load i32, i32* @GL_FRAMEBUFFER_SRGB_EXT, align 4
  %56 = call i32 @glDisable(i32 %55)
  br label %57

57:                                               ; preds = %54, %51
  br label %68

58:                                               ; preds = %10, %10
  %59 = load i32, i32* @show_tex, align 4
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  store i32 %62, i32* @show_tex, align 4
  br label %68

63:                                               ; preds = %10, %10
  %64 = load i32, i32* @black_on_white, align 4
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  store i32 %67, i32* @black_on_white, align 4
  br label %68

68:                                               ; preds = %10, %63, %58, %57, %39, %34, %29, %25, %17
  br label %166

69:                                               ; preds = %2
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* @raw_mouse_x, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* @raw_mouse_y, align 4
  br label %166

76:                                               ; preds = %2
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @VK_RIGHT, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load i32*, i32** @move, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  store i32 1, i32* %84, align 4
  br label %85

85:                                               ; preds = %82, %76
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @VK_LEFT, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load i32*, i32** @move, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  store i32 1, i32* %93, align 4
  br label %94

94:                                               ; preds = %91, %85
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @VK_UP, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load i32*, i32** @move, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 2
  store i32 1, i32* %102, align 4
  br label %103

103:                                              ; preds = %100, %94
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @VK_DOWN, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %103
  %110 = load i32*, i32** @move, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 3
  store i32 1, i32* %111, align 4
  br label %112

112:                                              ; preds = %109, %103
  br label %166

113:                                              ; preds = %2
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @VK_RIGHT, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %113
  %120 = load i32*, i32** @move, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  store i32 0, i32* %121, align 4
  br label %122

122:                                              ; preds = %119, %113
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @VK_LEFT, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = load i32*, i32** @move, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  store i32 0, i32* %130, align 4
  br label %131

131:                                              ; preds = %128, %122
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @VK_UP, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %131
  %138 = load i32*, i32** @move, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 2
  store i32 0, i32* %139, align 4
  br label %140

140:                                              ; preds = %137, %131
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @VK_DOWN, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %140
  %147 = load i32*, i32** @move, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 3
  store i32 0, i32* %148, align 4
  br label %149

149:                                              ; preds = %146, %140
  br label %166

150:                                              ; preds = %2
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* @sx, align 4
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* @sy, align 4
  %157 = call i32 @loopmode(i32 0, i32 1, i32 0)
  br label %166

158:                                              ; preds = %2
  %159 = load i32, i32* @initialized, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %158
  %162 = call i32 @loopmode(i32 0, i32 1, i32 0)
  br label %163

163:                                              ; preds = %161, %158
  br label %166

164:                                              ; preds = %2
  %165 = load i32, i32* @STBWINGRAPH_unprocessed, align 4
  store i32 %165, i32* %3, align 4
  br label %167

166:                                              ; preds = %163, %150, %149, %112, %69, %68, %9
  store i32 0, i32* %3, align 4
  br label %167

167:                                              ; preds = %166, %164, %14
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i32 @stbwingraph_ShowCursor(i32*, i32) #1

declare dso_local i32 @glEnable(i32) #1

declare dso_local i32 @glDisable(i32) #1

declare dso_local i32 @loopmode(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
