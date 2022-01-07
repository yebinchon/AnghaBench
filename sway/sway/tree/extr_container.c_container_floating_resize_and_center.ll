; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_floating_resize_and_center.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_floating_resize_and_center.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.sway_container = type { i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i32, %struct.sway_workspace* }
%struct.sway_workspace = type { i64, i64, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.wlr_box = type { i32, i32, i64, i64 }

@root = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @container_floating_resize_and_center(%struct.sway_container* %0) #0 {
  %2 = alloca %struct.sway_container*, align 8
  %3 = alloca %struct.sway_workspace*, align 8
  %4 = alloca %struct.wlr_box*, align 8
  store %struct.sway_container* %0, %struct.sway_container** %2, align 8
  %5 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %6 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %5, i32 0, i32 13
  %7 = load %struct.sway_workspace*, %struct.sway_workspace** %6, align 8
  store %struct.sway_workspace* %7, %struct.sway_workspace** %3, align 8
  %8 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %9 = icmp ne %struct.sway_workspace* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %12 = call i32 @floating_natural_resize(%struct.sway_container* %11)
  br label %205

13:                                               ; preds = %1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @root, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %18 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %17, i32 0, i32 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.wlr_box* @wlr_output_layout_get_box(i32 %16, i32 %21)
  store %struct.wlr_box* %22, %struct.wlr_box** %4, align 8
  %23 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %24 = icmp ne %struct.wlr_box* %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %13
  %26 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %27 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %26, i32 0, i32 11
  store i64 0, i64* %27, align 8
  %28 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %29 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %28, i32 0, i32 10
  store i64 0, i64* %29, align 8
  %30 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %31 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %33 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  br label %205

34:                                               ; preds = %13
  %35 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %36 = call i32 @floating_natural_resize(%struct.sway_container* %35)
  %37 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %38 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %37, i32 0, i32 12
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %118, label %41

41:                                               ; preds = %34
  %42 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %43 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %46 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %44, %47
  br i1 %48, label %57, label %49

49:                                               ; preds = %41
  %50 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %51 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %54 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %52, %55
  br i1 %56, label %57, label %88

57:                                               ; preds = %49, %41
  %58 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %59 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %62 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %66 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %64, %67
  %69 = sdiv i64 %68, 2
  %70 = add nsw i64 %60, %69
  %71 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %72 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %71, i32 0, i32 11
  store i64 %70, i64* %72, align 8
  %73 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %74 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %77 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %81 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = sub nsw i64 %79, %82
  %84 = sdiv i64 %83, 2
  %85 = add nsw i64 %75, %84
  %86 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %87 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %86, i32 0, i32 10
  store i64 %85, i64* %87, align 8
  br label %117

88:                                               ; preds = %49
  %89 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %90 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %93 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %96 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = sub nsw i64 %94, %97
  %99 = sdiv i64 %98, 2
  %100 = add nsw i64 %91, %99
  %101 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %102 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %101, i32 0, i32 11
  store i64 %100, i64* %102, align 8
  %103 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %104 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %107 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %110 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = sub nsw i64 %108, %111
  %113 = sdiv i64 %112, 2
  %114 = add nsw i64 %105, %113
  %115 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %116 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %115, i32 0, i32 10
  store i64 %114, i64* %116, align 8
  br label %117

117:                                              ; preds = %88, %57
  br label %205

118:                                              ; preds = %34
  %119 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %120 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %123 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp sgt i64 %121, %124
  br i1 %125, label %134, label %126

126:                                              ; preds = %118
  %127 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %128 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %131 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp sgt i64 %129, %132
  br i1 %133, label %134, label %165

134:                                              ; preds = %126, %118
  %135 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %136 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %139 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = sext i32 %140 to i64
  %142 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %143 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = sub nsw i64 %141, %144
  %146 = sdiv i64 %145, 2
  %147 = add nsw i64 %137, %146
  %148 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %149 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %148, i32 0, i32 9
  store i64 %147, i64* %149, align 8
  %150 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %151 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %154 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = sext i32 %155 to i64
  %157 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %158 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = sub nsw i64 %156, %159
  %161 = sdiv i64 %160, 2
  %162 = add nsw i64 %152, %161
  %163 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %164 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %163, i32 0, i32 8
  store i64 %162, i64* %164, align 8
  br label %194

165:                                              ; preds = %126
  %166 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %167 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %170 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %173 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = sub nsw i64 %171, %174
  %176 = sdiv i64 %175, 2
  %177 = add nsw i64 %168, %176
  %178 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %179 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %178, i32 0, i32 9
  store i64 %177, i64* %179, align 8
  %180 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %181 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %184 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %187 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = sub nsw i64 %185, %188
  %190 = sdiv i64 %189, 2
  %191 = add nsw i64 %182, %190
  %192 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %193 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %192, i32 0, i32 8
  store i64 %191, i64* %193, align 8
  br label %194

194:                                              ; preds = %165, %134
  %195 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %196 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %195, i32 0, i32 5
  store i32 1, i32* %196, align 4
  %197 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %198 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %197, i32 0, i32 4
  store i32 1, i32* %198, align 8
  %199 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %200 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %199, i32 0, i32 7
  store i32 1, i32* %200, align 4
  %201 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %202 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %201, i32 0, i32 6
  store i32 1, i32* %202, align 8
  %203 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %204 = call i32 @container_set_geometry_from_content(%struct.sway_container* %203)
  br label %205

205:                                              ; preds = %10, %25, %194, %117
  ret void
}

declare dso_local i32 @floating_natural_resize(%struct.sway_container*) #1

declare dso_local %struct.wlr_box* @wlr_output_layout_get_box(i32, i32) #1

declare dso_local i32 @container_set_geometry_from_content(%struct.sway_container*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
