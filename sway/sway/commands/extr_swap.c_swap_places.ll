; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_swap.c_swap_places.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_swap.c_swap_places.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { i32, i64, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_container*, %struct.sway_container*)* @swap_places to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swap_places(%struct.sway_container* %0, %struct.sway_container* %1) #0 {
  %3 = alloca %struct.sway_container*, align 8
  %4 = alloca %struct.sway_container*, align 8
  %5 = alloca %struct.sway_container*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sway_container* %0, %struct.sway_container** %3, align 8
  store %struct.sway_container* %1, %struct.sway_container** %4, align 8
  %8 = call %struct.sway_container* @malloc(i32 40)
  store %struct.sway_container* %8, %struct.sway_container** %5, align 8
  %9 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %10 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %9, i32 0, i32 7
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %13 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %12, i32 0, i32 7
  store i32 %11, i32* %13, align 4
  %14 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %15 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %18 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %17, i32 0, i32 6
  store i32 %16, i32* %18, align 8
  %19 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %20 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %23 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 4
  %24 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %25 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %28 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 8
  %29 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %30 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %33 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %35 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %38 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %40 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %43 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %45 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %48 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %50 = call i32 @container_is_floating(%struct.sway_container* %49)
  store i32 %50, i32* %6, align 4
  %51 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %52 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %55 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %54, i32 0, i32 7
  store i32 %53, i32* %55, align 4
  %56 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %57 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %60 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 8
  %61 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %62 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %65 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 4
  %66 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %67 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %70 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 8
  %71 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %72 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %75 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %77 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %80 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %82 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %85 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %84, i32 0, i32 7
  store i32 %83, i32* %85, align 4
  %86 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %87 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %90 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %89, i32 0, i32 6
  store i32 %88, i32* %90, align 8
  %91 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %92 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %95 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %94, i32 0, i32 5
  store i32 %93, i32* %95, align 4
  %96 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %97 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %100 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %99, i32 0, i32 4
  store i32 %98, i32* %100, align 8
  %101 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %102 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %105 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 4
  %106 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %107 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %110 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  %111 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %112 = call i32 @container_sibling_index(%struct.sway_container* %111)
  store i32 %112, i32* %7, align 4
  %113 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %114 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %2
  %118 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %119 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %122 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %123 = call i32 @container_sibling_index(%struct.sway_container* %122)
  %124 = call i32 @container_insert_child(i64 %120, %struct.sway_container* %121, i32 %123)
  br label %144

125:                                              ; preds = %2
  %126 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %127 = call i32 @container_is_floating(%struct.sway_container* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %125
  %130 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %131 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %134 = call i32 @workspace_add_floating(i32 %132, %struct.sway_container* %133)
  br label %143

135:                                              ; preds = %125
  %136 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %137 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %140 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %141 = call i32 @container_sibling_index(%struct.sway_container* %140)
  %142 = call i32 @workspace_insert_tiling(i32 %138, %struct.sway_container* %139, i32 %141)
  br label %143

143:                                              ; preds = %135, %129
  br label %144

144:                                              ; preds = %143, %117
  %145 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %146 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %144
  %150 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %151 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %154 = load i32, i32* %7, align 4
  %155 = call i32 @container_insert_child(i64 %152, %struct.sway_container* %153, i32 %154)
  br label %173

156:                                              ; preds = %144
  %157 = load i32, i32* %6, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %156
  %160 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %161 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %164 = call i32 @workspace_add_floating(i32 %162, %struct.sway_container* %163)
  br label %172

165:                                              ; preds = %156
  %166 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %167 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %170 = load i32, i32* %7, align 4
  %171 = call i32 @workspace_insert_tiling(i32 %168, %struct.sway_container* %169, i32 %170)
  br label %172

172:                                              ; preds = %165, %159
  br label %173

173:                                              ; preds = %172, %149
  %174 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %175 = call i32 @free(%struct.sway_container* %174)
  ret void
}

declare dso_local %struct.sway_container* @malloc(i32) #1

declare dso_local i32 @container_is_floating(%struct.sway_container*) #1

declare dso_local i32 @container_sibling_index(%struct.sway_container*) #1

declare dso_local i32 @container_insert_child(i64, %struct.sway_container*, i32) #1

declare dso_local i32 @workspace_add_floating(i32, %struct.sway_container*) #1

declare dso_local i32 @workspace_insert_tiling(i32, %struct.sway_container*, i32) #1

declare dso_local i32 @free(%struct.sway_container*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
