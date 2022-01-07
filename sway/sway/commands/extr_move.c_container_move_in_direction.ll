; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_move.c_container_move_in_direction.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_move.c_container_move_in_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { i64, %struct.sway_workspace*, %struct.sway_container* }
%struct.sway_workspace = type { i32, i32 }
%struct.sway_output = type { i32 }
%struct.TYPE_4__ = type { i32, i32* }

@FULLSCREEN_WORKSPACE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Expected output to have a workspace\00", align 1
@FULLSCREEN_GLOBAL = common dso_local global i64 0, align 8
@WLR_DIRECTION_LEFT = common dso_local global i32 0, align 4
@WLR_DIRECTION_UP = common dso_local global i32 0, align 4
@L_TABBED = common dso_local global i64 0, align 8
@L_STACKED = common dso_local global i64 0, align 8
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Hit edge of output, nowhere else to go\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sway_container*, i32)* @container_move_in_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @container_move_in_direction(%struct.sway_container* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sway_container*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sway_output*, align 8
  %7 = alloca %struct.sway_workspace*, align 8
  %8 = alloca %struct.sway_container*, align 8
  %9 = alloca %struct.sway_container*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.sway_workspace*, align 8
  %16 = alloca %struct.sway_output*, align 8
  %17 = alloca %struct.sway_workspace*, align 8
  store %struct.sway_container* %0, %struct.sway_container** %4, align 8
  store i32 %1, i32* %5, align 4
  %18 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %19 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @FULLSCREEN_WORKSPACE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %2
  %24 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %25 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %24, i32 0, i32 1
  %26 = load %struct.sway_workspace*, %struct.sway_workspace** %25, align 8
  %27 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call %struct.sway_output* @output_get_in_direction(i32 %28, i32 %29)
  store %struct.sway_output* %30, %struct.sway_output** %6, align 8
  %31 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %32 = icmp ne %struct.sway_output* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %244

34:                                               ; preds = %23
  %35 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %36 = call %struct.sway_workspace* @output_get_active_workspace(%struct.sway_output* %35)
  store %struct.sway_workspace* %36, %struct.sway_workspace** %7, align 8
  %37 = load %struct.sway_workspace*, %struct.sway_workspace** %7, align 8
  %38 = call i32 @sway_assert(%struct.sway_workspace* %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %244

41:                                               ; preds = %34
  %42 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %43 = load %struct.sway_workspace*, %struct.sway_workspace** %7, align 8
  %44 = call i32 @container_move_to_workspace(%struct.sway_container* %42, %struct.sway_workspace* %43)
  store i32 1, i32* %3, align 4
  br label %244

45:                                               ; preds = %2
  %46 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %47 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @FULLSCREEN_GLOBAL, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %244

52:                                               ; preds = %45
  %53 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %54 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %53, i32 0, i32 2
  %55 = load %struct.sway_container*, %struct.sway_container** %54, align 8
  %56 = icmp ne %struct.sway_container* %55, null
  br i1 %56, label %57, label %69

57:                                               ; preds = %52
  %58 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %59 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %58, i32 0, i32 2
  %60 = load %struct.sway_container*, %struct.sway_container** %59, align 8
  %61 = call %struct.sway_container* @container_flatten(%struct.sway_container* %60)
  store %struct.sway_container* %61, %struct.sway_container** %8, align 8
  %62 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %63 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %64 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %63, i32 0, i32 2
  %65 = load %struct.sway_container*, %struct.sway_container** %64, align 8
  %66 = icmp ne %struct.sway_container* %62, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  store i32 1, i32* %3, align 4
  br label %244

68:                                               ; preds = %57
  br label %69

69:                                               ; preds = %68, %52
  %70 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  store %struct.sway_container* %70, %struct.sway_container** %9, align 8
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @WLR_DIRECTION_LEFT, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %78, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @WLR_DIRECTION_UP, align 4
  %77 = icmp eq i32 %75, %76
  br label %78

78:                                               ; preds = %74, %69
  %79 = phi i1 [ true, %69 ], [ %77, %74 ]
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i32 -1, i32 1
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %176, %130, %78
  %83 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %84 = icmp ne %struct.sway_container* %83, null
  br i1 %84, label %85, label %180

85:                                               ; preds = %82
  %86 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %87 = call %struct.TYPE_4__* @container_get_siblings(%struct.sway_container* %86)
  store %struct.TYPE_4__* %87, %struct.TYPE_4__** %11, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %89 = icmp ne %struct.TYPE_4__* %88, null
  br i1 %89, label %90, label %176

90:                                               ; preds = %85
  %91 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %92 = call i32 @container_parent_layout(%struct.sway_container* %91)
  store i32 %92, i32* %12, align 4
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %94 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %95 = call i32 @list_find(%struct.TYPE_4__* %93, %struct.sway_container* %94)
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %96, %97
  store i32 %98, i32* %14, align 4
  %99 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %100 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %90
  %104 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %105 = call i64 @container_is_floating(%struct.sway_container* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %103, %90
  store i32 0, i32* %3, align 4
  br label %244

108:                                              ; preds = %103
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %5, align 4
  %111 = call i64 @is_parallel(i32 %109, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %175

113:                                              ; preds = %108
  %114 = load i32, i32* %14, align 4
  %115 = icmp eq i32 %114, -1
  br i1 %115, label %122, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %14, align 4
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp eq i32 %117, %120
  br i1 %121, label %122, label %164

122:                                              ; preds = %116, %113
  %123 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %124 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %123, i32 0, i32 2
  %125 = load %struct.sway_container*, %struct.sway_container** %124, align 8
  %126 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %127 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %126, i32 0, i32 2
  %128 = load %struct.sway_container*, %struct.sway_container** %127, align 8
  %129 = icmp eq %struct.sway_container* %125, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %122
  %131 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %132 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %131, i32 0, i32 2
  %133 = load %struct.sway_container*, %struct.sway_container** %132, align 8
  store %struct.sway_container* %133, %struct.sway_container** %9, align 8
  br label %82

134:                                              ; preds = %122
  %135 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %136 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %135, i32 0, i32 2
  %137 = load %struct.sway_container*, %struct.sway_container** %136, align 8
  %138 = icmp ne %struct.sway_container* %137, null
  br i1 %138, label %139, label %151

139:                                              ; preds = %134
  %140 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %141 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %140, i32 0, i32 2
  %142 = load %struct.sway_container*, %struct.sway_container** %141, align 8
  %143 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* %10, align 4
  %146 = icmp slt i32 %145, 0
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, i32 0, i32 1
  %149 = add nsw i32 %144, %148
  %150 = call i32 @container_insert_child(%struct.sway_container* %142, %struct.sway_container* %143, i32 %149)
  br label %163

151:                                              ; preds = %134
  %152 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %153 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %152, i32 0, i32 1
  %154 = load %struct.sway_workspace*, %struct.sway_workspace** %153, align 8
  %155 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %156 = load i32, i32* %13, align 4
  %157 = load i32, i32* %10, align 4
  %158 = icmp slt i32 %157, 0
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i32 0, i32 1
  %161 = add nsw i32 %156, %160
  %162 = call i32 @workspace_insert_tiling(%struct.sway_workspace* %154, %struct.sway_container* %155, i32 %161)
  br label %163

163:                                              ; preds = %151, %139
  store i32 1, i32* %3, align 4
  br label %244

164:                                              ; preds = %116
  %165 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %14, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %5, align 4
  %174 = call i32 @container_move_to_container_from_direction(%struct.sway_container* %165, i32 %172, i32 %173)
  store i32 1, i32* %3, align 4
  br label %244

175:                                              ; preds = %108
  br label %176

176:                                              ; preds = %175, %85
  %177 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %178 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %177, i32 0, i32 2
  %179 = load %struct.sway_container*, %struct.sway_container** %178, align 8
  store %struct.sway_container* %179, %struct.sway_container** %9, align 8
  br label %82

180:                                              ; preds = %82
  %181 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %182 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %181, i32 0, i32 1
  %183 = load %struct.sway_workspace*, %struct.sway_workspace** %182, align 8
  store %struct.sway_workspace* %183, %struct.sway_workspace** %15, align 8
  %184 = load %struct.sway_workspace*, %struct.sway_workspace** %15, align 8
  %185 = icmp ne %struct.sway_workspace* %184, null
  br i1 %185, label %186, label %243

186:                                              ; preds = %180
  %187 = load %struct.sway_workspace*, %struct.sway_workspace** %15, align 8
  %188 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %5, align 4
  %191 = call i64 @is_parallel(i32 %189, i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %198, label %193

193:                                              ; preds = %186
  %194 = load %struct.sway_workspace*, %struct.sway_workspace** %15, align 8
  %195 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %196 = load i32, i32* %5, align 4
  %197 = call i32 @workspace_rejigger(%struct.sway_workspace* %194, %struct.sway_container* %195, i32 %196)
  store i32 1, i32* %3, align 4
  br label %244

198:                                              ; preds = %186
  %199 = load %struct.sway_workspace*, %struct.sway_workspace** %15, align 8
  %200 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = sext i32 %201 to i64
  %203 = load i64, i64* @L_TABBED, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %212, label %205

205:                                              ; preds = %198
  %206 = load %struct.sway_workspace*, %struct.sway_workspace** %15, align 8
  %207 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = sext i32 %208 to i64
  %210 = load i64, i64* @L_STACKED, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %217

212:                                              ; preds = %205, %198
  %213 = load %struct.sway_workspace*, %struct.sway_workspace** %15, align 8
  %214 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %215 = load i32, i32* %5, align 4
  %216 = call i32 @workspace_rejigger(%struct.sway_workspace* %213, %struct.sway_container* %214, i32 %215)
  store i32 1, i32* %3, align 4
  br label %244

217:                                              ; preds = %205
  br label %218

218:                                              ; preds = %217
  %219 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %220 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %219, i32 0, i32 1
  %221 = load %struct.sway_workspace*, %struct.sway_workspace** %220, align 8
  %222 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* %5, align 4
  %225 = call %struct.sway_output* @output_get_in_direction(i32 %223, i32 %224)
  store %struct.sway_output* %225, %struct.sway_output** %16, align 8
  %226 = load %struct.sway_output*, %struct.sway_output** %16, align 8
  %227 = icmp ne %struct.sway_output* %226, null
  br i1 %227, label %228, label %240

228:                                              ; preds = %218
  %229 = load %struct.sway_output*, %struct.sway_output** %16, align 8
  %230 = call %struct.sway_workspace* @output_get_active_workspace(%struct.sway_output* %229)
  store %struct.sway_workspace* %230, %struct.sway_workspace** %17, align 8
  %231 = load %struct.sway_workspace*, %struct.sway_workspace** %17, align 8
  %232 = call i32 @sway_assert(%struct.sway_workspace* %231, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %235, label %234

234:                                              ; preds = %228
  store i32 0, i32* %3, align 4
  br label %244

235:                                              ; preds = %228
  %236 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %237 = load %struct.sway_workspace*, %struct.sway_workspace** %17, align 8
  %238 = load i32, i32* %5, align 4
  %239 = call i32 @container_move_to_workspace_from_direction(%struct.sway_container* %236, %struct.sway_workspace* %237, i32 %238)
  store i32 1, i32* %3, align 4
  br label %244

240:                                              ; preds = %218
  %241 = load i32, i32* @SWAY_DEBUG, align 4
  %242 = call i32 @sway_log(i32 %241, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %243

243:                                              ; preds = %240, %180
  store i32 0, i32* %3, align 4
  br label %244

244:                                              ; preds = %243, %235, %234, %212, %193, %164, %163, %107, %67, %51, %41, %40, %33
  %245 = load i32, i32* %3, align 4
  ret i32 %245
}

declare dso_local %struct.sway_output* @output_get_in_direction(i32, i32) #1

declare dso_local %struct.sway_workspace* @output_get_active_workspace(%struct.sway_output*) #1

declare dso_local i32 @sway_assert(%struct.sway_workspace*, i8*) #1

declare dso_local i32 @container_move_to_workspace(%struct.sway_container*, %struct.sway_workspace*) #1

declare dso_local %struct.sway_container* @container_flatten(%struct.sway_container*) #1

declare dso_local %struct.TYPE_4__* @container_get_siblings(%struct.sway_container*) #1

declare dso_local i32 @container_parent_layout(%struct.sway_container*) #1

declare dso_local i32 @list_find(%struct.TYPE_4__*, %struct.sway_container*) #1

declare dso_local i64 @container_is_floating(%struct.sway_container*) #1

declare dso_local i64 @is_parallel(i32, i32) #1

declare dso_local i32 @container_insert_child(%struct.sway_container*, %struct.sway_container*, i32) #1

declare dso_local i32 @workspace_insert_tiling(%struct.sway_workspace*, %struct.sway_container*, i32) #1

declare dso_local i32 @container_move_to_container_from_direction(%struct.sway_container*, i32, i32) #1

declare dso_local i32 @workspace_rejigger(%struct.sway_workspace*, %struct.sway_container*, i32) #1

declare dso_local i32 @container_move_to_workspace_from_direction(%struct.sway_container*, %struct.sway_workspace*, i32) #1

declare dso_local i32 @sway_log(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
