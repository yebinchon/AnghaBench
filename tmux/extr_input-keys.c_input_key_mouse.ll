; ModuleID = '/home/carl/AnghaBench/tmux/extr_input-keys.c_input_key_mouse.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_input-keys.c_input_key_mouse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_pane = type { i32, i32, %struct.screen* }
%struct.screen = type { i32 }
%struct.mouse_event = type { i32, i8, i32, i32 }

@ALL_MOUSE_MODES = common dso_local global i32 0, align 4
@MODE_MOUSE_BUTTON = common dso_local global i32 0, align 4
@MODE_MOUSE_ALL = common dso_local global i32 0, align 4
@MODE_MOUSE_SGR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"\1B[<%u;%u;%u%c\00", align 1
@MODE_MOUSE_UTF8 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"\1B[M\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"writing mouse %.*s to %%%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.window_pane*, %struct.mouse_event*)* @input_key_mouse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @input_key_mouse(%struct.window_pane* %0, %struct.mouse_event* %1) #0 {
  %3 = alloca %struct.window_pane*, align 8
  %4 = alloca %struct.mouse_event*, align 8
  %5 = alloca %struct.screen*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [40 x i8], align 16
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.window_pane* %0, %struct.window_pane** %3, align 8
  store %struct.mouse_event* %1, %struct.mouse_event** %4, align 8
  %11 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %12 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %11, i32 0, i32 2
  %13 = load %struct.screen*, %struct.screen** %12, align 8
  store %struct.screen* %13, %struct.screen** %5, align 8
  %14 = load %struct.screen*, %struct.screen** %5, align 8
  %15 = getelementptr inbounds %struct.screen, %struct.screen* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @ALL_MOUSE_MODES, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %215

22:                                               ; preds = %2
  %23 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %24 = load %struct.mouse_event*, %struct.mouse_event** %4, align 8
  %25 = call i64 @cmd_mouse_at(%struct.window_pane* %23, %struct.mouse_event* %24, i32* %9, i32* %10, i32 0)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %215

28:                                               ; preds = %22
  %29 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %30 = call i32 @window_pane_visible(%struct.window_pane* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  br label %215

33:                                               ; preds = %28
  %34 = load %struct.mouse_event*, %struct.mouse_event** %4, align 8
  %35 = getelementptr inbounds %struct.mouse_event, %struct.mouse_event* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @MOUSE_DRAG(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @MODE_MOUSE_BUTTON, align 4
  %42 = load i32, i32* @MODE_MOUSE_ALL, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %215

47:                                               ; preds = %39, %33
  %48 = load %struct.mouse_event*, %struct.mouse_event** %4, align 8
  %49 = getelementptr inbounds %struct.mouse_event, %struct.mouse_event* %48, i32 0, i32 1
  %50 = load i8, i8* %49, align 4
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 32
  br i1 %52, label %53, label %73

53:                                               ; preds = %47
  %54 = load %struct.mouse_event*, %struct.mouse_event** %4, align 8
  %55 = getelementptr inbounds %struct.mouse_event, %struct.mouse_event* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @MOUSE_DRAG(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %53
  %60 = load %struct.mouse_event*, %struct.mouse_event** %4, align 8
  %61 = getelementptr inbounds %struct.mouse_event, %struct.mouse_event* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @MOUSE_BUTTONS(i32 %62)
  %64 = icmp eq i32 %63, 3
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load i32, i32* %6, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* @MODE_MOUSE_ALL, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %215

72:                                               ; preds = %65, %59, %53
  br label %99

73:                                               ; preds = %47
  %74 = load %struct.mouse_event*, %struct.mouse_event** %4, align 8
  %75 = getelementptr inbounds %struct.mouse_event, %struct.mouse_event* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @MOUSE_DRAG(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %98

79:                                               ; preds = %73
  %80 = load %struct.mouse_event*, %struct.mouse_event** %4, align 8
  %81 = getelementptr inbounds %struct.mouse_event, %struct.mouse_event* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @MOUSE_BUTTONS(i32 %82)
  %84 = icmp eq i32 %83, 3
  br i1 %84, label %85, label %98

85:                                               ; preds = %79
  %86 = load %struct.mouse_event*, %struct.mouse_event** %4, align 8
  %87 = getelementptr inbounds %struct.mouse_event, %struct.mouse_event* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @MOUSE_BUTTONS(i32 %88)
  %90 = icmp eq i32 %89, 3
  br i1 %90, label %91, label %98

91:                                               ; preds = %85
  %92 = load i32, i32* %6, align 4
  %93 = xor i32 %92, -1
  %94 = load i32, i32* @MODE_MOUSE_ALL, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %215

98:                                               ; preds = %91, %85, %79, %73
  br label %99

99:                                               ; preds = %98, %72
  %100 = load %struct.mouse_event*, %struct.mouse_event** %4, align 8
  %101 = getelementptr inbounds %struct.mouse_event, %struct.mouse_event* %100, i32 0, i32 1
  %102 = load i8, i8* %101, align 4
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 %103, 32
  br i1 %104, label %105, label %126

105:                                              ; preds = %99
  %106 = load %struct.screen*, %struct.screen** %5, align 8
  %107 = getelementptr inbounds %struct.screen, %struct.screen* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @MODE_MOUSE_SGR, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %126

112:                                              ; preds = %105
  %113 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %114 = load %struct.mouse_event*, %struct.mouse_event** %4, align 8
  %115 = getelementptr inbounds %struct.mouse_event, %struct.mouse_event* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, 1
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, 1
  %121 = load %struct.mouse_event*, %struct.mouse_event** %4, align 8
  %122 = getelementptr inbounds %struct.mouse_event, %struct.mouse_event* %121, i32 0, i32 1
  %123 = load i8, i8* %122, align 4
  %124 = sext i8 %123 to i32
  %125 = call i64 (i8*, i32, i8*, ...) @xsnprintf(i8* %113, i32 40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %116, i32 %118, i32 %120, i32 %124)
  store i64 %125, i64* %8, align 8
  br label %201

126:                                              ; preds = %105, %99
  %127 = load %struct.screen*, %struct.screen** %5, align 8
  %128 = getelementptr inbounds %struct.screen, %struct.screen* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @MODE_MOUSE_UTF8, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %171

133:                                              ; preds = %126
  %134 = load %struct.mouse_event*, %struct.mouse_event** %4, align 8
  %135 = getelementptr inbounds %struct.mouse_event, %struct.mouse_event* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp sgt i32 %136, 2015
  br i1 %137, label %144, label %138

138:                                              ; preds = %133
  %139 = load i32, i32* %9, align 4
  %140 = icmp sgt i32 %139, 2014
  br i1 %140, label %144, label %141

141:                                              ; preds = %138
  %142 = load i32, i32* %10, align 4
  %143 = icmp sgt i32 %142, 2014
  br i1 %143, label %144, label %145

144:                                              ; preds = %141, %138, %133
  br label %215

145:                                              ; preds = %141
  %146 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %147 = call i64 (i8*, i32, i8*, ...) @xsnprintf(i8* %146, i32 40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i64 %147, i64* %8, align 8
  %148 = load %struct.mouse_event*, %struct.mouse_event** %4, align 8
  %149 = getelementptr inbounds %struct.mouse_event, %struct.mouse_event* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, 32
  %152 = load i64, i64* %8, align 8
  %153 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 %152
  %154 = call i64 @input_split2(i32 %151, i8* %153)
  %155 = load i64, i64* %8, align 8
  %156 = add i64 %155, %154
  store i64 %156, i64* %8, align 8
  %157 = load i32, i32* %9, align 4
  %158 = add nsw i32 %157, 33
  %159 = load i64, i64* %8, align 8
  %160 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 %159
  %161 = call i64 @input_split2(i32 %158, i8* %160)
  %162 = load i64, i64* %8, align 8
  %163 = add i64 %162, %161
  store i64 %163, i64* %8, align 8
  %164 = load i32, i32* %10, align 4
  %165 = add nsw i32 %164, 33
  %166 = load i64, i64* %8, align 8
  %167 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 %166
  %168 = call i64 @input_split2(i32 %165, i8* %167)
  %169 = load i64, i64* %8, align 8
  %170 = add i64 %169, %168
  store i64 %170, i64* %8, align 8
  br label %200

171:                                              ; preds = %126
  %172 = load %struct.mouse_event*, %struct.mouse_event** %4, align 8
  %173 = getelementptr inbounds %struct.mouse_event, %struct.mouse_event* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = icmp sgt i32 %174, 223
  br i1 %175, label %176, label %177

176:                                              ; preds = %171
  br label %215

177:                                              ; preds = %171
  %178 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %179 = call i64 (i8*, i32, i8*, ...) @xsnprintf(i8* %178, i32 40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i64 %179, i64* %8, align 8
  %180 = load %struct.mouse_event*, %struct.mouse_event** %4, align 8
  %181 = getelementptr inbounds %struct.mouse_event, %struct.mouse_event* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, 32
  %184 = trunc i32 %183 to i8
  %185 = load i64, i64* %8, align 8
  %186 = add i64 %185, 1
  store i64 %186, i64* %8, align 8
  %187 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 %185
  store i8 %184, i8* %187, align 1
  %188 = load i32, i32* %9, align 4
  %189 = add nsw i32 %188, 33
  %190 = trunc i32 %189 to i8
  %191 = load i64, i64* %8, align 8
  %192 = add i64 %191, 1
  store i64 %192, i64* %8, align 8
  %193 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 %191
  store i8 %190, i8* %193, align 1
  %194 = load i32, i32* %10, align 4
  %195 = add nsw i32 %194, 33
  %196 = trunc i32 %195 to i8
  %197 = load i64, i64* %8, align 8
  %198 = add i64 %197, 1
  store i64 %198, i64* %8, align 8
  %199 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 %197
  store i8 %196, i8* %199, align 1
  br label %200

200:                                              ; preds = %177, %145
  br label %201

201:                                              ; preds = %200, %112
  %202 = load i64, i64* %8, align 8
  %203 = trunc i64 %202 to i32
  %204 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %205 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %206 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @log_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %203, i8* %204, i32 %207)
  %209 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %210 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %213 = load i64, i64* %8, align 8
  %214 = call i32 @bufferevent_write(i32 %211, i8* %212, i64 %213)
  br label %215

215:                                              ; preds = %201, %176, %144, %97, %71, %46, %32, %27, %21
  ret void
}

declare dso_local i64 @cmd_mouse_at(%struct.window_pane*, %struct.mouse_event*, i32*, i32*, i32) #1

declare dso_local i32 @window_pane_visible(%struct.window_pane*) #1

declare dso_local i64 @MOUSE_DRAG(i32) #1

declare dso_local i32 @MOUSE_BUTTONS(i32) #1

declare dso_local i64 @xsnprintf(i8*, i32, i8*, ...) #1

declare dso_local i64 @input_split2(i32, i8*) #1

declare dso_local i32 @log_debug(i8*, i32, i8*, i32) #1

declare dso_local i32 @bufferevent_write(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
