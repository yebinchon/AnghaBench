; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_update_title_textures.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_update_title_textures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.sway_container = type { i32, i32, i32, i32 }

@config = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @container_update_title_textures(%struct.sway_container* %0) #0 {
  %2 = alloca %struct.sway_container*, align 8
  store %struct.sway_container* %0, %struct.sway_container** %2, align 8
  %3 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %4 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %5 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %4, i32 0, i32 3
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  %9 = call i32 @update_title_texture(%struct.sway_container* %3, i32* %5, i32* %8)
  %10 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %11 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %12 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  %16 = call i32 @update_title_texture(%struct.sway_container* %10, i32* %12, i32* %15)
  %17 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %18 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %19 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = call i32 @update_title_texture(%struct.sway_container* %17, i32* %19, i32* %22)
  %24 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %25 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %26 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = call i32 @update_title_texture(%struct.sway_container* %24, i32* %26, i32* %29)
  %31 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %32 = call i32 @container_damage_whole(%struct.sway_container* %31)
  ret void
}

declare dso_local i32 @update_title_texture(%struct.sway_container*, i32*, i32*) #1

declare dso_local i32 @container_damage_whole(%struct.sway_container*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
