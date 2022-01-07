; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_discover_outputs.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_discover_outputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.sway_output** }
%struct.sway_output = type { %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.sway_container = type { i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.wlr_box = type { i32, i32, i32, i32 }

@root = common dso_local global %struct.TYPE_8__* null, align 8
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Container %p entered output %p\00", align 1
@surface_send_enter_iterator = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Container %p left output %p\00", align 1
@surface_send_leave_iterator = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @container_discover_outputs(%struct.sway_container* %0) #0 {
  %2 = alloca %struct.sway_container*, align 8
  %3 = alloca %struct.wlr_box, align 4
  %4 = alloca %struct.sway_output*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sway_output*, align 8
  %7 = alloca %struct.wlr_box, align 4
  %8 = alloca %struct.wlr_box, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sway_output*, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store %struct.sway_container* %0, %struct.sway_container** %2, align 8
  %14 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %3, i32 0, i32 0
  %15 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %16 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %14, align 4
  %19 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %3, i32 0, i32 1
  %20 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %21 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %19, align 4
  %24 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %3, i32 0, i32 2
  %25 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %26 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %24, align 4
  %29 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %3, i32 0, i32 3
  %30 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %31 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %29, align 4
  %34 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %35 = call %struct.sway_output* @container_get_effective_output(%struct.sway_container* %34)
  store %struct.sway_output* %35, %struct.sway_output** %4, align 8
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %123, %1
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** @root, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %37, %42
  br i1 %43, label %44, label %126

44:                                               ; preds = %36
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** @root, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load %struct.sway_output**, %struct.sway_output*** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.sway_output*, %struct.sway_output** %49, i64 %51
  %53 = load %struct.sway_output*, %struct.sway_output** %52, align 8
  store %struct.sway_output* %53, %struct.sway_output** %6, align 8
  %54 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %55 = call i32 @output_get_box(%struct.sway_output* %54, %struct.wlr_box* %7)
  %56 = call i32 @wlr_box_intersection(%struct.wlr_box* %8, %struct.wlr_box* %3, %struct.wlr_box* %7)
  store i32 %56, i32* %9, align 4
  %57 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %58 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %61 = call i32 @list_find(i32 %59, %struct.sway_output* %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %91

64:                                               ; preds = %44
  %65 = load i32, i32* %10, align 4
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %91

67:                                               ; preds = %64
  %68 = load i32, i32* @SWAY_DEBUG, align 4
  %69 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %70 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %71 = call i32 @sway_log(i32 %68, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.sway_container* %69, %struct.sway_output* %70)
  %72 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %73 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %67
  %77 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %78 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* @surface_send_enter_iterator, align 4
  %81 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %82 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %81, i32 0, i32 0
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = call i32 @view_for_each_surface(i64 %79, i32 %80, %struct.TYPE_7__* %83)
  br label %85

85:                                               ; preds = %76, %67
  %86 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %87 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %90 = call i32 @list_add(i32 %88, %struct.sway_output* %89)
  br label %122

91:                                               ; preds = %64, %44
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %121, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, -1
  br i1 %96, label %97, label %121

97:                                               ; preds = %94
  %98 = load i32, i32* @SWAY_DEBUG, align 4
  %99 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %100 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %101 = call i32 @sway_log(i32 %98, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), %struct.sway_container* %99, %struct.sway_output* %100)
  %102 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %103 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %97
  %107 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %108 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* @surface_send_leave_iterator, align 4
  %111 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %112 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %111, i32 0, i32 0
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = call i32 @view_for_each_surface(i64 %109, i32 %110, %struct.TYPE_7__* %113)
  br label %115

115:                                              ; preds = %106, %97
  %116 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %117 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %10, align 4
  %120 = call i32 @list_del(i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %115, %94, %91
  br label %122

122:                                              ; preds = %121, %85
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %5, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %5, align 4
  br label %36

126:                                              ; preds = %36
  %127 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %128 = call %struct.sway_output* @container_get_effective_output(%struct.sway_container* %127)
  store %struct.sway_output* %128, %struct.sway_output** %11, align 8
  %129 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %130 = icmp ne %struct.sway_output* %129, null
  br i1 %130, label %131, label %142

131:                                              ; preds = %126
  %132 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %133 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %131
  %137 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %138 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %137, i32 0, i32 0
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  br label %143

142:                                              ; preds = %131, %126
  br label %143

143:                                              ; preds = %142, %136
  %144 = phi i32 [ %141, %136 ], [ -1, %142 ]
  %145 = sitofp i32 %144 to double
  store double %145, double* %12, align 8
  %146 = load %struct.sway_output*, %struct.sway_output** %11, align 8
  %147 = icmp ne %struct.sway_output* %146, null
  br i1 %147, label %148, label %154

148:                                              ; preds = %143
  %149 = load %struct.sway_output*, %struct.sway_output** %11, align 8
  %150 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %149, i32 0, i32 0
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  br label %155

154:                                              ; preds = %143
  br label %155

155:                                              ; preds = %154, %148
  %156 = phi i32 [ %153, %148 ], [ -1, %154 ]
  %157 = sitofp i32 %156 to double
  store double %157, double* %13, align 8
  %158 = load double, double* %12, align 8
  %159 = load double, double* %13, align 8
  %160 = fcmp une double %158, %159
  br i1 %160, label %161, label %166

161:                                              ; preds = %155
  %162 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %163 = call i32 @container_update_title_textures(%struct.sway_container* %162)
  %164 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %165 = call i32 @container_update_marks_textures(%struct.sway_container* %164)
  br label %166

166:                                              ; preds = %161, %155
  ret void
}

declare dso_local %struct.sway_output* @container_get_effective_output(%struct.sway_container*) #1

declare dso_local i32 @output_get_box(%struct.sway_output*, %struct.wlr_box*) #1

declare dso_local i32 @wlr_box_intersection(%struct.wlr_box*, %struct.wlr_box*, %struct.wlr_box*) #1

declare dso_local i32 @list_find(i32, %struct.sway_output*) #1

declare dso_local i32 @sway_log(i32, i8*, %struct.sway_container*, %struct.sway_output*) #1

declare dso_local i32 @view_for_each_surface(i64, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @list_add(i32, %struct.sway_output*) #1

declare dso_local i32 @list_del(i32, i32) #1

declare dso_local i32 @container_update_title_textures(%struct.sway_container*) #1

declare dso_local i32 @container_update_marks_textures(%struct.sway_container*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
