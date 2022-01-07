; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_output.c_restore_workspaces.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_output.c_restore_workspaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__*, %struct.TYPE_8__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.sway_workspace**, i64 }
%struct.sway_workspace = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.sway_container** }
%struct.sway_container = type { i64, i64, i64, i64 }
%struct.TYPE_8__ = type { i32, %struct.sway_output** }
%struct.sway_output = type { i64, i64, i64, i64, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.sway_workspace** }

@root = common dso_local global %struct.TYPE_14__* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"move\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_output*)* @restore_workspaces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_workspaces(%struct.sway_output* %0) #0 {
  %2 = alloca %struct.sway_output*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sway_output*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sway_workspace*, align 8
  %7 = alloca %struct.sway_output*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sway_workspace*, align 8
  %10 = alloca %struct.sway_workspace*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sway_container*, align 8
  store %struct.sway_output* %0, %struct.sway_output** %2, align 8
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %95, %1
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** @root, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %14, %19
  br i1 %20, label %21, label %98

21:                                               ; preds = %13
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** @root, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load %struct.sway_output**, %struct.sway_output*** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.sway_output*, %struct.sway_output** %26, i64 %28
  %30 = load %struct.sway_output*, %struct.sway_output** %29, align 8
  store %struct.sway_output* %30, %struct.sway_output** %4, align 8
  %31 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %32 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  %33 = icmp eq %struct.sway_output* %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %21
  br label %95

35:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %70, %35
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %39 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %38, i32 0, i32 5
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %37, %42
  br i1 %43, label %44, label %73

44:                                               ; preds = %36
  %45 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %46 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %45, i32 0, i32 5
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load %struct.sway_workspace**, %struct.sway_workspace*** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.sway_workspace*, %struct.sway_workspace** %49, i64 %51
  %53 = load %struct.sway_workspace*, %struct.sway_workspace** %52, align 8
  store %struct.sway_workspace* %53, %struct.sway_workspace** %6, align 8
  %54 = load %struct.sway_workspace*, %struct.sway_workspace** %6, align 8
  %55 = call %struct.sway_output* @workspace_output_get_highest_available(%struct.sway_workspace* %54, i32* null)
  store %struct.sway_output* %55, %struct.sway_output** %7, align 8
  %56 = load %struct.sway_output*, %struct.sway_output** %7, align 8
  %57 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  %58 = icmp eq %struct.sway_output* %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %44
  %60 = load %struct.sway_workspace*, %struct.sway_workspace** %6, align 8
  %61 = call i32 @workspace_detach(%struct.sway_workspace* %60)
  %62 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  %63 = load %struct.sway_workspace*, %struct.sway_workspace** %6, align 8
  %64 = call i32 @output_add_workspace(%struct.sway_output* %62, %struct.sway_workspace* %63)
  %65 = load %struct.sway_workspace*, %struct.sway_workspace** %6, align 8
  %66 = call i32 @ipc_event_workspace(i32* null, %struct.sway_workspace* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %59, %44
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %36

73:                                               ; preds = %36
  %74 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %75 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %74, i32 0, i32 5
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %73
  %81 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %82 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %81, i32 0, i32 4
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @workspace_next_name(i32 %85)
  store i8* %86, i8** %8, align 8
  %87 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = call %struct.sway_workspace* @workspace_create(%struct.sway_output* %87, i8* %88)
  store %struct.sway_workspace* %89, %struct.sway_workspace** %9, align 8
  %90 = load i8*, i8** %8, align 8
  %91 = call i32 @free(i8* %90)
  %92 = load %struct.sway_workspace*, %struct.sway_workspace** %9, align 8
  %93 = call i32 @ipc_event_workspace(i32* null, %struct.sway_workspace* %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %94

94:                                               ; preds = %80, %73
  br label %95

95:                                               ; preds = %94, %34
  %96 = load i32, i32* %3, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %3, align 4
  br label %13

98:                                               ; preds = %13
  br label %99

99:                                               ; preds = %221, %98
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** @root, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %224

108:                                              ; preds = %99
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** @root, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load %struct.sway_workspace**, %struct.sway_workspace*** %114, align 8
  %116 = getelementptr inbounds %struct.sway_workspace*, %struct.sway_workspace** %115, i64 0
  %117 = load %struct.sway_workspace*, %struct.sway_workspace** %116, align 8
  store %struct.sway_workspace* %117, %struct.sway_workspace** %10, align 8
  %118 = load %struct.sway_workspace*, %struct.sway_workspace** %10, align 8
  %119 = call i32 @workspace_detach(%struct.sway_workspace* %118)
  %120 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  %121 = load %struct.sway_workspace*, %struct.sway_workspace** %10, align 8
  %122 = call i32 @output_add_workspace(%struct.sway_output* %120, %struct.sway_workspace* %121)
  store i32 0, i32* %11, align 4
  br label %123

123:                                              ; preds = %218, %108
  %124 = load i32, i32* %11, align 4
  %125 = load %struct.sway_workspace*, %struct.sway_workspace** %10, align 8
  %126 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %125, i32 0, i32 0
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp slt i32 %124, %129
  br i1 %130, label %131, label %221

131:                                              ; preds = %123
  %132 = load %struct.sway_workspace*, %struct.sway_workspace** %10, align 8
  %133 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %132, i32 0, i32 0
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 1
  %136 = load %struct.sway_container**, %struct.sway_container*** %135, align 8
  %137 = load i32, i32* %11, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %136, i64 %138
  %140 = load %struct.sway_container*, %struct.sway_container** %139, align 8
  store %struct.sway_container* %140, %struct.sway_container** %12, align 8
  %141 = load %struct.sway_container*, %struct.sway_container** %12, align 8
  %142 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %214, label %145

145:                                              ; preds = %131
  %146 = load %struct.sway_container*, %struct.sway_container** %12, align 8
  %147 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %214, label %150

150:                                              ; preds = %145
  %151 = load %struct.sway_container*, %struct.sway_container** %12, align 8
  %152 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  %155 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp sgt i64 %153, %156
  br i1 %157, label %214, label %158

158:                                              ; preds = %150
  %159 = load %struct.sway_container*, %struct.sway_container** %12, align 8
  %160 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  %163 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = icmp sgt i64 %161, %164
  br i1 %165, label %214, label %166

166:                                              ; preds = %158
  %167 = load %struct.sway_container*, %struct.sway_container** %12, align 8
  %168 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  %171 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  %174 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = add nsw i64 %172, %175
  %177 = icmp sgt i64 %169, %176
  br i1 %177, label %214, label %178

178:                                              ; preds = %166
  %179 = load %struct.sway_container*, %struct.sway_container** %12, align 8
  %180 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %179, i32 0, i32 3
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  %183 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %182, i32 0, i32 3
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  %186 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = add nsw i64 %184, %187
  %189 = icmp sgt i64 %181, %188
  br i1 %189, label %214, label %190

190:                                              ; preds = %178
  %191 = load %struct.sway_container*, %struct.sway_container** %12, align 8
  %192 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.sway_container*, %struct.sway_container** %12, align 8
  %195 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = add nsw i64 %193, %196
  %198 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  %199 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = icmp slt i64 %197, %200
  br i1 %201, label %214, label %202

202:                                              ; preds = %190
  %203 = load %struct.sway_container*, %struct.sway_container** %12, align 8
  %204 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %203, i32 0, i32 3
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.sway_container*, %struct.sway_container** %12, align 8
  %207 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = add nsw i64 %205, %208
  %210 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  %211 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %210, i32 0, i32 3
  %212 = load i64, i64* %211, align 8
  %213 = icmp slt i64 %209, %212
  br i1 %213, label %214, label %217

214:                                              ; preds = %202, %190, %178, %166, %158, %150, %145, %131
  %215 = load %struct.sway_container*, %struct.sway_container** %12, align 8
  %216 = call i32 @container_floating_resize_and_center(%struct.sway_container* %215)
  br label %217

217:                                              ; preds = %214, %202
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %11, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %11, align 4
  br label %123

221:                                              ; preds = %123
  %222 = load %struct.sway_workspace*, %struct.sway_workspace** %10, align 8
  %223 = call i32 @ipc_event_workspace(i32* null, %struct.sway_workspace* %222, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %99

224:                                              ; preds = %99
  %225 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  %226 = call i32 @output_sort_workspaces(%struct.sway_output* %225)
  ret void
}

declare dso_local %struct.sway_output* @workspace_output_get_highest_available(%struct.sway_workspace*, i32*) #1

declare dso_local i32 @workspace_detach(%struct.sway_workspace*) #1

declare dso_local i32 @output_add_workspace(%struct.sway_output*, %struct.sway_workspace*) #1

declare dso_local i32 @ipc_event_workspace(i32*, %struct.sway_workspace*, i8*) #1

declare dso_local i8* @workspace_next_name(i32) #1

declare dso_local %struct.sway_workspace* @workspace_create(%struct.sway_output*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @container_floating_resize_and_center(%struct.sway_container*) #1

declare dso_local i32 @output_sort_workspaces(%struct.sway_output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
