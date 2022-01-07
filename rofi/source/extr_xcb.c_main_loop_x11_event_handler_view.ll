; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_xcb.c_main_loop_x11_event_handler_view.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_xcb.c_main_loop_x11_event_handler_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }

@config = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@TRUE = common dso_local global i32 0, align 4
@xcb = common dso_local global %struct.TYPE_19__* null, align 8
@NK_BINDINGS_BUTTON_STATE_PRESS = common dso_local global i32 0, align 4
@NK_BINDINGS_BUTTON_STATE_RELEASE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@NK_BINDINGS_KEY_STATE_PRESSED = common dso_local global i32 0, align 4
@NK_BINDINGS_KEY_STATE_PRESS = common dso_local global i32 0, align 4
@NK_BINDINGS_KEY_STATE_RELEASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*)* @main_loop_x11_event_handler_view to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @main_loop_x11_event_handler_view(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %18 = call i32* (...) @rofi_view_get_active()
  store i32* %18, i32** %3, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %236

22:                                               ; preds = %1
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, -129
  switch i32 %26, label %232 [
    i32 133, label %27
    i32 134, label %29
    i32 129, label %35
    i32 136, label %54
    i32 135, label %100
    i32 128, label %143
    i32 132, label %148
    i32 131, label %190
    i32 130, label %216
  ]

27:                                               ; preds = %22
  %28 = call i32 (...) @rofi_view_frame_callback()
  br label %233

29:                                               ; preds = %22
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %31 = bitcast %struct.TYPE_16__* %30 to i32*
  store i32* %31, i32** %4, align 8
  %32 = load i32*, i32** %3, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @rofi_view_temp_configure_notify(i32* %32, i32* %33)
  br label %233

35:                                               ; preds = %22
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @config, i32 0, i32 0), align 4
  %37 = load i32, i32* @TRUE, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* @TRUE, align 4
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** @xcb, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %39, %35
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %45 = bitcast %struct.TYPE_16__* %44 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %45, %struct.TYPE_12__** %5, align 8
  %46 = load i32*, i32** %3, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @rofi_view_handle_mouse_motion(i32* %46, i32 %49, i32 %52)
  br label %233

54:                                               ; preds = %22
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %56 = bitcast %struct.TYPE_16__* %55 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %56, %struct.TYPE_18__** %6, align 8
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** @xcb, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i32*, i32** %3, align 8
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @rofi_view_handle_mouse_motion(i32* %62, i32 %65, i32 %68)
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @x11_button_to_nk_bindings_button(i32 %72, i32* %7)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %54
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** @xcb, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @NK_BINDINGS_BUTTON_STATE_PRESS, align 4
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @nk_bindings_seat_handle_button(i32 %78, i32* null, i32 %79, i32 %80, i32 %83)
  br label %99

85:                                               ; preds = %54
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @x11_button_to_nk_bindings_scroll(i32 %88, i32* %8, i32* %9)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %85
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** @xcb, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @nk_bindings_seat_handle_scroll(i32 %94, i32* null, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %91, %85
  br label %99

99:                                               ; preds = %98, %75
  br label %233

100:                                              ; preds = %22
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %102 = bitcast %struct.TYPE_16__* %101 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %102, %struct.TYPE_17__** %10, align 8
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** @xcb, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @x11_button_to_nk_bindings_button(i32 %110, i32* %11)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %100
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** @xcb, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* @NK_BINDINGS_BUTTON_STATE_RELEASE, align 4
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @nk_bindings_seat_handle_button(i32 %116, i32* null, i32 %117, i32 %118, i32 %121)
  br label %123

123:                                              ; preds = %113, %100
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @config, i32 0, i32 0), align 4
  %125 = load i32, i32* @TRUE, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %142

127:                                              ; preds = %123
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** @xcb, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %127
  %133 = load i32*, i32** %3, align 8
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @rofi_view_temp_click_to_exit(i32* %133, i32 %136)
  br label %138

138:                                              ; preds = %132, %127
  %139 = load i32, i32* @FALSE, align 4
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** @xcb, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 4
  br label %142

142:                                              ; preds = %138, %123
  br label %233

143:                                              ; preds = %22
  %144 = load i32*, i32** %3, align 8
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %146 = bitcast %struct.TYPE_16__* %145 to i32*
  %147 = call i32 @rofi_view_paste(i32* %144, i32* %146)
  br label %233

148:                                              ; preds = %22
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %150 = bitcast %struct.TYPE_16__* %149 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %150, %struct.TYPE_13__** %12, align 8
  store i32 0, i32* %13, align 4
  br label %151

151:                                              ; preds = %186, %148
  %152 = load i32, i32* %13, align 4
  %153 = icmp slt i32 %152, 31
  br i1 %153, label %154, label %189

154:                                              ; preds = %151
  store i32 0, i32* %14, align 4
  br label %155

155:                                              ; preds = %182, %154
  %156 = load i32, i32* %14, align 4
  %157 = icmp slt i32 %156, 7
  br i1 %157, label %158, label %185

158:                                              ; preds = %155
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %13, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %14, align 4
  %167 = shl i32 1, %166
  %168 = and i32 %165, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %181

170:                                              ; preds = %158
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** @xcb, align 8
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %13, align 4
  %175 = mul nsw i32 8, %174
  %176 = load i32, i32* %14, align 4
  %177 = add nsw i32 %175, %176
  %178 = add nsw i32 %177, 8
  %179 = load i32, i32* @NK_BINDINGS_KEY_STATE_PRESSED, align 4
  %180 = call i32 @nk_bindings_seat_handle_key(i32 %173, i32* null, i32 %178, i32 %179)
  br label %181

181:                                              ; preds = %170, %158
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %14, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %14, align 4
  br label %155

185:                                              ; preds = %155
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %13, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %13, align 4
  br label %151

189:                                              ; preds = %151
  br label %233

190:                                              ; preds = %22
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %192 = bitcast %struct.TYPE_16__* %191 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %192, %struct.TYPE_15__** %15, align 8
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** @xcb, align 8
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 1
  store i32 %195, i32* %197, align 4
  %198 = load %struct.TYPE_19__*, %struct.TYPE_19__** @xcb, align 8
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @NK_BINDINGS_KEY_STATE_PRESS, align 4
  %208 = call i32* @nk_bindings_seat_handle_key_with_modmask(i32 %200, i32* null, i32 %203, i32 %206, i32 %207)
  store i32* %208, i32** %16, align 8
  %209 = load i32*, i32** %16, align 8
  %210 = icmp ne i32* %209, null
  br i1 %210, label %211, label %215

211:                                              ; preds = %190
  %212 = load i32*, i32** %3, align 8
  %213 = load i32*, i32** %16, align 8
  %214 = call i32 @rofi_view_handle_text(i32* %212, i32* %213)
  br label %215

215:                                              ; preds = %211, %190
  br label %233

216:                                              ; preds = %22
  %217 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %218 = bitcast %struct.TYPE_16__* %217 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %218, %struct.TYPE_14__** %17, align 8
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_19__*, %struct.TYPE_19__** @xcb, align 8
  %223 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %222, i32 0, i32 1
  store i32 %221, i32* %223, align 4
  %224 = load %struct.TYPE_19__*, %struct.TYPE_19__** @xcb, align 8
  %225 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @NK_BINDINGS_KEY_STATE_RELEASE, align 4
  %231 = call i32 @nk_bindings_seat_handle_key(i32 %226, i32* null, i32 %229, i32 %230)
  br label %233

232:                                              ; preds = %22
  br label %233

233:                                              ; preds = %232, %216, %215, %189, %143, %142, %99, %43, %29, %27
  %234 = load i32*, i32** %3, align 8
  %235 = call i32 @rofi_view_maybe_update(i32* %234)
  br label %236

236:                                              ; preds = %233, %21
  ret void
}

declare dso_local i32* @rofi_view_get_active(...) #1

declare dso_local i32 @rofi_view_frame_callback(...) #1

declare dso_local i32 @rofi_view_temp_configure_notify(i32*, i32*) #1

declare dso_local i32 @rofi_view_handle_mouse_motion(i32*, i32, i32) #1

declare dso_local i32 @x11_button_to_nk_bindings_button(i32, i32*) #1

declare dso_local i32 @nk_bindings_seat_handle_button(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @x11_button_to_nk_bindings_scroll(i32, i32*, i32*) #1

declare dso_local i32 @nk_bindings_seat_handle_scroll(i32, i32*, i32, i32) #1

declare dso_local i32 @rofi_view_temp_click_to_exit(i32*, i32) #1

declare dso_local i32 @rofi_view_paste(i32*, i32*) #1

declare dso_local i32 @nk_bindings_seat_handle_key(i32, i32*, i32, i32) #1

declare dso_local i32* @nk_bindings_seat_handle_key_with_modmask(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @rofi_view_handle_text(i32*, i32*) #1

declare dso_local i32 @rofi_view_maybe_update(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
