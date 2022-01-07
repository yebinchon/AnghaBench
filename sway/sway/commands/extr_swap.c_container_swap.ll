; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_swap.c_container_swap.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_swap.c_container_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.sway_seat* }
%struct.sway_seat = type { i8* }
%struct.sway_container = type { i32, i32, %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sway_workspace = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Cannot swap with nothing\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Cannot swap ancestor and descendant\00", align 1
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Swapping containers %zu and %zu\00", align 1
@config = common dso_local global %struct.TYPE_8__* null, align 8
@.str.3 = private unnamed_addr constant [73 x i8] c"con1 or con2 are on an output without aworkspace. This should not happen\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @container_swap(%struct.sway_container* %0, %struct.sway_container* %1) #0 {
  %3 = alloca %struct.sway_container*, align 8
  %4 = alloca %struct.sway_container*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sway_seat*, align 8
  %12 = alloca %struct.sway_container*, align 8
  %13 = alloca %struct.sway_workspace*, align 8
  %14 = alloca %struct.sway_workspace*, align 8
  %15 = alloca i8*, align 8
  store %struct.sway_container* %0, %struct.sway_container** %3, align 8
  store %struct.sway_container* %1, %struct.sway_container** %4, align 8
  %16 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %17 = icmp ne %struct.sway_container* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %20 = icmp ne %struct.sway_container* %19, null
  br label %21

21:                                               ; preds = %18, %2
  %22 = phi i1 [ false, %2 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @sway_assert(i32 %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %225

27:                                               ; preds = %21
  %28 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %29 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %30 = call i32 @container_has_ancestor(%struct.sway_container* %28, %struct.sway_container* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  %33 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %34 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %35 = call i32 @container_has_ancestor(%struct.sway_container* %33, %struct.sway_container* %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br label %38

38:                                               ; preds = %32, %27
  %39 = phi i1 [ false, %27 ], [ %37, %32 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @sway_assert(i32 %40, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %225

44:                                               ; preds = %38
  %45 = load i32, i32* @SWAY_DEBUG, align 4
  %46 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %47 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %51 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @sway_log(i32 %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 %53)
  %55 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %56 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %5, align 4
  %58 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %59 = call i32 @container_is_scratchpad_hidden(%struct.sway_container* %58)
  store i32 %59, i32* %6, align 4
  %60 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %61 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %7, align 4
  %63 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %64 = call i32 @container_is_scratchpad_hidden(%struct.sway_container* %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %44
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %72 = call i32 @root_scratchpad_show(%struct.sway_container* %71)
  br label %73

73:                                               ; preds = %70, %67
  %74 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %75 = call i32 @root_scratchpad_remove_container(%struct.sway_container* %74)
  br label %76

76:                                               ; preds = %73, %44
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %76
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %84 = call i32 @root_scratchpad_show(%struct.sway_container* %83)
  br label %85

85:                                               ; preds = %82, %79
  %86 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %87 = call i32 @root_scratchpad_remove_container(%struct.sway_container* %86)
  br label %88

88:                                               ; preds = %85, %76
  %89 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %90 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %9, align 4
  %92 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %93 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %88
  %98 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %99 = call i32 @container_fullscreen_disable(%struct.sway_container* %98)
  br label %100

100:                                              ; preds = %97, %88
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %105 = call i32 @container_fullscreen_disable(%struct.sway_container* %104)
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load %struct.sway_seat*, %struct.sway_seat** %109, align 8
  store %struct.sway_seat* %110, %struct.sway_seat** %11, align 8
  %111 = load %struct.sway_seat*, %struct.sway_seat** %11, align 8
  %112 = call %struct.sway_container* @seat_get_focused_container(%struct.sway_seat* %111)
  store %struct.sway_container* %112, %struct.sway_container** %12, align 8
  %113 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %114 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %113, i32 0, i32 2
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call %struct.sway_workspace* @output_get_active_workspace(i32 %117)
  store %struct.sway_workspace* %118, %struct.sway_workspace** %13, align 8
  %119 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %120 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %119, i32 0, i32 2
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call %struct.sway_workspace* @output_get_active_workspace(i32 %123)
  store %struct.sway_workspace* %124, %struct.sway_workspace** %14, align 8
  %125 = load %struct.sway_workspace*, %struct.sway_workspace** %13, align 8
  %126 = icmp ne %struct.sway_workspace* %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %106
  %128 = load %struct.sway_workspace*, %struct.sway_workspace** %14, align 8
  %129 = icmp ne %struct.sway_workspace* %128, null
  br label %130

130:                                              ; preds = %127, %106
  %131 = phi i1 [ false, %106 ], [ %129, %127 ]
  %132 = zext i1 %131 to i32
  %133 = call i32 @sway_assert(i32 %132, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0))
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %130
  br label %225

136:                                              ; preds = %130
  store i8* null, i8** %15, align 8
  %137 = load %struct.sway_seat*, %struct.sway_seat** %11, align 8
  %138 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %141, label %146

141:                                              ; preds = %136
  %142 = load %struct.sway_seat*, %struct.sway_seat** %11, align 8
  %143 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = call i8* @strdup(i8* %144)
  store i8* %145, i8** %15, align 8
  br label %146

146:                                              ; preds = %141, %136
  %147 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %148 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %149 = call i32 @swap_places(%struct.sway_container* %147, %struct.sway_container* %148)
  %150 = load %struct.sway_workspace*, %struct.sway_workspace** %13, align 8
  %151 = call i32 @workspace_is_visible(%struct.sway_workspace* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %160, label %153

153:                                              ; preds = %146
  %154 = load %struct.sway_seat*, %struct.sway_seat** %11, align 8
  %155 = load %struct.sway_seat*, %struct.sway_seat** %11, align 8
  %156 = load %struct.sway_workspace*, %struct.sway_workspace** %13, align 8
  %157 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %156, i32 0, i32 0
  %158 = call i32 @seat_get_focus_inactive(%struct.sway_seat* %155, i32* %157)
  %159 = call i32 @seat_set_focus(%struct.sway_seat* %154, i32 %158)
  br label %160

160:                                              ; preds = %153, %146
  %161 = load %struct.sway_workspace*, %struct.sway_workspace** %14, align 8
  %162 = call i32 @workspace_is_visible(%struct.sway_workspace* %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %171, label %164

164:                                              ; preds = %160
  %165 = load %struct.sway_seat*, %struct.sway_seat** %11, align 8
  %166 = load %struct.sway_seat*, %struct.sway_seat** %11, align 8
  %167 = load %struct.sway_workspace*, %struct.sway_workspace** %14, align 8
  %168 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %167, i32 0, i32 0
  %169 = call i32 @seat_get_focus_inactive(%struct.sway_seat* %166, i32* %168)
  %170 = call i32 @seat_set_focus(%struct.sway_seat* %165, i32 %169)
  br label %171

171:                                              ; preds = %164, %160
  %172 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %173 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %174 = load %struct.sway_seat*, %struct.sway_seat** %11, align 8
  %175 = load %struct.sway_container*, %struct.sway_container** %12, align 8
  %176 = call i32 @swap_focus(%struct.sway_container* %172, %struct.sway_container* %173, %struct.sway_seat* %174, %struct.sway_container* %175)
  %177 = load i8*, i8** %15, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %179, label %187

179:                                              ; preds = %171
  %180 = load %struct.sway_seat*, %struct.sway_seat** %11, align 8
  %181 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %180, i32 0, i32 0
  %182 = load i8*, i8** %181, align 8
  %183 = call i32 @free(i8* %182)
  %184 = load i8*, i8** %15, align 8
  %185 = load %struct.sway_seat*, %struct.sway_seat** %11, align 8
  %186 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %185, i32 0, i32 0
  store i8* %184, i8** %186, align 8
  br label %187

187:                                              ; preds = %179, %171
  %188 = load i32, i32* %5, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %199

190:                                              ; preds = %187
  %191 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %192 = call i32 @root_scratchpad_add_container(%struct.sway_container* %191, i32* null)
  %193 = load i32, i32* %6, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %198, label %195

195:                                              ; preds = %190
  %196 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %197 = call i32 @root_scratchpad_show(%struct.sway_container* %196)
  br label %198

198:                                              ; preds = %195, %190
  br label %199

199:                                              ; preds = %198, %187
  %200 = load i32, i32* %7, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %211

202:                                              ; preds = %199
  %203 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %204 = call i32 @root_scratchpad_add_container(%struct.sway_container* %203, i32* null)
  %205 = load i32, i32* %8, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %202
  %208 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %209 = call i32 @root_scratchpad_show(%struct.sway_container* %208)
  br label %210

210:                                              ; preds = %207, %202
  br label %211

211:                                              ; preds = %210, %199
  %212 = load i32, i32* %9, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %211
  %215 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %216 = load i32, i32* %9, align 4
  %217 = call i32 @container_set_fullscreen(%struct.sway_container* %215, i32 %216)
  br label %218

218:                                              ; preds = %214, %211
  %219 = load i32, i32* %10, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %218
  %222 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %223 = load i32, i32* %10, align 4
  %224 = call i32 @container_set_fullscreen(%struct.sway_container* %222, i32 %223)
  br label %225

225:                                              ; preds = %26, %43, %135, %221, %218
  ret void
}

declare dso_local i32 @sway_assert(i32, i8*) #1

declare dso_local i32 @container_has_ancestor(%struct.sway_container*, %struct.sway_container*) #1

declare dso_local i32 @sway_log(i32, i8*, i32, i32) #1

declare dso_local i32 @container_is_scratchpad_hidden(%struct.sway_container*) #1

declare dso_local i32 @root_scratchpad_show(%struct.sway_container*) #1

declare dso_local i32 @root_scratchpad_remove_container(%struct.sway_container*) #1

declare dso_local i32 @container_fullscreen_disable(%struct.sway_container*) #1

declare dso_local %struct.sway_container* @seat_get_focused_container(%struct.sway_seat*) #1

declare dso_local %struct.sway_workspace* @output_get_active_workspace(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @swap_places(%struct.sway_container*, %struct.sway_container*) #1

declare dso_local i32 @workspace_is_visible(%struct.sway_workspace*) #1

declare dso_local i32 @seat_set_focus(%struct.sway_seat*, i32) #1

declare dso_local i32 @seat_get_focus_inactive(%struct.sway_seat*, i32*) #1

declare dso_local i32 @swap_focus(%struct.sway_container*, %struct.sway_container*, %struct.sway_seat*, %struct.sway_container*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @root_scratchpad_add_container(%struct.sway_container*, i32*) #1

declare dso_local i32 @container_set_fullscreen(%struct.sway_container*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
