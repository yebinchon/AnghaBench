; ModuleID = '/home/carl/AnghaBench/sway/sway/config/extr_input.c_free_input_config.c'
source_filename = "/home/carl/AnghaBench/sway/sway/config/extr_input.c_free_input_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_config = type { %struct.input_config*, %struct.input_config*, %struct.input_config*, %struct.input_config*, %struct.input_config*, %struct.input_config*, %struct.input_config*, %struct.input_config*, %struct.input_config*, %struct.input_config* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_input_config(%struct.input_config* %0) #0 {
  %2 = alloca %struct.input_config*, align 8
  store %struct.input_config* %0, %struct.input_config** %2, align 8
  %3 = load %struct.input_config*, %struct.input_config** %2, align 8
  %4 = icmp ne %struct.input_config* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %49

6:                                                ; preds = %1
  %7 = load %struct.input_config*, %struct.input_config** %2, align 8
  %8 = getelementptr inbounds %struct.input_config, %struct.input_config* %7, i32 0, i32 9
  %9 = load %struct.input_config*, %struct.input_config** %8, align 8
  %10 = call i32 @free(%struct.input_config* %9)
  %11 = load %struct.input_config*, %struct.input_config** %2, align 8
  %12 = getelementptr inbounds %struct.input_config, %struct.input_config* %11, i32 0, i32 8
  %13 = load %struct.input_config*, %struct.input_config** %12, align 8
  %14 = call i32 @free(%struct.input_config* %13)
  %15 = load %struct.input_config*, %struct.input_config** %2, align 8
  %16 = getelementptr inbounds %struct.input_config, %struct.input_config* %15, i32 0, i32 7
  %17 = load %struct.input_config*, %struct.input_config** %16, align 8
  %18 = call i32 @free(%struct.input_config* %17)
  %19 = load %struct.input_config*, %struct.input_config** %2, align 8
  %20 = getelementptr inbounds %struct.input_config, %struct.input_config* %19, i32 0, i32 6
  %21 = load %struct.input_config*, %struct.input_config** %20, align 8
  %22 = call i32 @free(%struct.input_config* %21)
  %23 = load %struct.input_config*, %struct.input_config** %2, align 8
  %24 = getelementptr inbounds %struct.input_config, %struct.input_config* %23, i32 0, i32 5
  %25 = load %struct.input_config*, %struct.input_config** %24, align 8
  %26 = call i32 @free(%struct.input_config* %25)
  %27 = load %struct.input_config*, %struct.input_config** %2, align 8
  %28 = getelementptr inbounds %struct.input_config, %struct.input_config* %27, i32 0, i32 4
  %29 = load %struct.input_config*, %struct.input_config** %28, align 8
  %30 = call i32 @free(%struct.input_config* %29)
  %31 = load %struct.input_config*, %struct.input_config** %2, align 8
  %32 = getelementptr inbounds %struct.input_config, %struct.input_config* %31, i32 0, i32 3
  %33 = load %struct.input_config*, %struct.input_config** %32, align 8
  %34 = call i32 @free(%struct.input_config* %33)
  %35 = load %struct.input_config*, %struct.input_config** %2, align 8
  %36 = getelementptr inbounds %struct.input_config, %struct.input_config* %35, i32 0, i32 2
  %37 = load %struct.input_config*, %struct.input_config** %36, align 8
  %38 = call i32 @free(%struct.input_config* %37)
  %39 = load %struct.input_config*, %struct.input_config** %2, align 8
  %40 = getelementptr inbounds %struct.input_config, %struct.input_config* %39, i32 0, i32 1
  %41 = load %struct.input_config*, %struct.input_config** %40, align 8
  %42 = call i32 @free(%struct.input_config* %41)
  %43 = load %struct.input_config*, %struct.input_config** %2, align 8
  %44 = getelementptr inbounds %struct.input_config, %struct.input_config* %43, i32 0, i32 0
  %45 = load %struct.input_config*, %struct.input_config** %44, align 8
  %46 = call i32 @free(%struct.input_config* %45)
  %47 = load %struct.input_config*, %struct.input_config** %2, align 8
  %48 = call i32 @free(%struct.input_config* %47)
  br label %49

49:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @free(%struct.input_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
