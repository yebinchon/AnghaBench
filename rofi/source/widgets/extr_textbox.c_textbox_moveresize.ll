; ModuleID = '/home/carl/AnghaBench/rofi/source/widgets/extr_textbox.c_textbox_moveresize.c'
source_filename = "/home/carl/AnghaBench/rofi/source/widgets/extr_textbox.c_textbox_moveresize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@TB_INDICATOR = common dso_local global i32 0, align 4
@DOT_OFFSET = common dso_local global i32 0, align 4
@TB_AUTOWIDTH = common dso_local global i32 0, align 4
@TB_EDITABLE = common dso_local global i32 0, align 4
@PANGO_ELLIPSIZE_MIDDLE = common dso_local global i32 0, align 4
@TB_WRAP = common dso_local global i32 0, align 4
@PANGO_ELLIPSIZE_NONE = common dso_local global i32 0, align 4
@TB_AUTOHEIGHT = common dso_local global i32 0, align 4
@PANGO_SCALE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @textbox_moveresize(%struct.TYPE_8__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TB_INDICATOR, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* @DOT_OFFSET, align 4
  br label %23

22:                                               ; preds = %5
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i32 [ %21, %20 ], [ 0, %22 ]
  store i32 %24, i32* %11, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @TB_AUTOWIDTH, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %23
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @pango_layout_set_width(i32 %34, i32 -1)
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %37 = call i32 @textbox_get_font_width(%struct.TYPE_8__* %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %39 = call i32 @WIDGET(%struct.TYPE_8__* %38)
  %40 = call i32 @widget_padding_get_padding_width(i32 %39)
  %41 = add i32 %37, %40
  %42 = load i32, i32* %11, align 4
  %43 = add i32 %41, %42
  store i32 %43, i32* %9, align 4
  br label %82

44:                                               ; preds = %23
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @TB_EDITABLE, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @TB_EDITABLE, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %44
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @PANGO_ELLIPSIZE_MIDDLE, align 4
  %57 = call i32 @pango_layout_set_ellipsize(i32 %55, i32 %56)
  br label %81

58:                                               ; preds = %44
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @TB_WRAP, align 4
  %63 = and i32 %61, %62
  %64 = load i32, i32* @TB_WRAP, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %58
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @pango_layout_set_ellipsize(i32 %69, i32 %72)
  br label %80

74:                                               ; preds = %58
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @PANGO_ELLIPSIZE_NONE, align 4
  %79 = call i32 @pango_layout_set_ellipsize(i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %74, %66
  br label %81

81:                                               ; preds = %80, %52
  br label %82

82:                                               ; preds = %81, %31
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @TB_AUTOHEIGHT, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %112

89:                                               ; preds = %82
  %90 = load i32, i32* %9, align 4
  %91 = call i8* @MAX(i32 1, i32 %90)
  %92 = ptrtoint i8* %91 to i32
  store i32 %92, i32* %12, align 4
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @PANGO_SCALE, align 4
  %97 = load i32, i32* %12, align 4
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %99 = call i32 @WIDGET(%struct.TYPE_8__* %98)
  %100 = call i32 @widget_padding_get_padding_width(i32 %99)
  %101 = sub nsw i32 %97, %100
  %102 = load i32, i32* %11, align 4
  %103 = sub i32 %101, %102
  %104 = mul i32 %96, %103
  %105 = call i32 @pango_layout_set_width(i32 %95, i32 %104)
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %107 = call i32 @textbox_get_height(%struct.TYPE_8__* %106)
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %10, align 4
  %110 = call i8* @MAX(i32 %108, i32 %109)
  %111 = ptrtoint i8* %110 to i32
  store i32 %111, i32* %10, align 4
  br label %112

112:                                              ; preds = %89, %82
  %113 = load i32, i32* %7, align 4
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %113, %117
  br i1 %118, label %140, label %119

119:                                              ; preds = %112
  %120 = load i32, i32* %8, align 4
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %120, %124
  br i1 %125, label %140, label %126

126:                                              ; preds = %119
  %127 = load i32, i32* %9, align 4
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %127, %131
  br i1 %132, label %140, label %133

133:                                              ; preds = %126
  %134 = load i32, i32* %10, align 4
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %134, %138
  br i1 %139, label %140, label %161

140:                                              ; preds = %133, %126, %119, %112
  %141 = load i32, i32* %7, align 4
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  store i32 %141, i32* %144, align 4
  %145 = load i32, i32* %8, align 4
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 1
  store i32 %145, i32* %148, align 4
  %149 = load i32, i32* %10, align 4
  %150 = call i8* @MAX(i32 1, i32 %149)
  %151 = ptrtoint i8* %150 to i32
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 3
  store i32 %151, i32* %154, align 4
  %155 = load i32, i32* %9, align 4
  %156 = call i8* @MAX(i32 1, i32 %155)
  %157 = ptrtoint i8* %156 to i32
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 2
  store i32 %157, i32* %160, align 4
  br label %161

161:                                              ; preds = %140, %133
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @PANGO_SCALE, align 4
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %171 = call i32 @WIDGET(%struct.TYPE_8__* %170)
  %172 = call i32 @widget_padding_get_padding_width(i32 %171)
  %173 = sub nsw i32 %169, %172
  %174 = load i32, i32* %11, align 4
  %175 = sub i32 %173, %174
  %176 = mul i32 %165, %175
  %177 = call i32 @pango_layout_set_width(i32 %164, i32 %176)
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %179 = call i32 @WIDGET(%struct.TYPE_8__* %178)
  %180 = call i32 @widget_queue_redraw(i32 %179)
  ret void
}

declare dso_local i32 @pango_layout_set_width(i32, i32) #1

declare dso_local i32 @textbox_get_font_width(%struct.TYPE_8__*) #1

declare dso_local i32 @widget_padding_get_padding_width(i32) #1

declare dso_local i32 @WIDGET(%struct.TYPE_8__*) #1

declare dso_local i32 @pango_layout_set_ellipsize(i32, i32) #1

declare dso_local i8* @MAX(i32, i32) #1

declare dso_local i32 @textbox_get_height(%struct.TYPE_8__*) #1

declare dso_local i32 @widget_queue_redraw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
