; ModuleID = '/home/carl/AnghaBench/sway/sway/config/extr_output.c_new_output_config.c'
source_filename = "/home/carl/AnghaBench/sway/sway/config/extr_output.c_new_output_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.output_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }

@WL_OUTPUT_SUBPIXEL_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.output_config* @new_output_config(i8* %0) #0 {
  %2 = alloca %struct.output_config*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.output_config*, align 8
  store i8* %0, i8** %3, align 8
  %5 = call %struct.output_config* @calloc(i32 1, i32 48)
  store %struct.output_config* %5, %struct.output_config** %4, align 8
  %6 = load %struct.output_config*, %struct.output_config** %4, align 8
  %7 = icmp eq %struct.output_config* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.output_config* null, %struct.output_config** %2, align 8
  br label %44

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i32* @strdup(i8* %10)
  %12 = load %struct.output_config*, %struct.output_config** %4, align 8
  %13 = getelementptr inbounds %struct.output_config, %struct.output_config* %12, i32 0, i32 10
  store i32* %11, i32** %13, align 8
  %14 = load %struct.output_config*, %struct.output_config** %4, align 8
  %15 = getelementptr inbounds %struct.output_config, %struct.output_config* %14, i32 0, i32 10
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %9
  %19 = load %struct.output_config*, %struct.output_config** %4, align 8
  %20 = call i32 @free(%struct.output_config* %19)
  store %struct.output_config* null, %struct.output_config** %2, align 8
  br label %44

21:                                               ; preds = %9
  %22 = load %struct.output_config*, %struct.output_config** %4, align 8
  %23 = getelementptr inbounds %struct.output_config, %struct.output_config* %22, i32 0, i32 0
  store i32 -1, i32* %23, align 8
  %24 = load %struct.output_config*, %struct.output_config** %4, align 8
  %25 = getelementptr inbounds %struct.output_config, %struct.output_config* %24, i32 0, i32 2
  store i32 -1, i32* %25, align 8
  %26 = load %struct.output_config*, %struct.output_config** %4, align 8
  %27 = getelementptr inbounds %struct.output_config, %struct.output_config* %26, i32 0, i32 1
  store i32 -1, i32* %27, align 4
  %28 = load %struct.output_config*, %struct.output_config** %4, align 8
  %29 = getelementptr inbounds %struct.output_config, %struct.output_config* %28, i32 0, i32 3
  store i32 -1, i32* %29, align 4
  %30 = load %struct.output_config*, %struct.output_config** %4, align 8
  %31 = getelementptr inbounds %struct.output_config, %struct.output_config* %30, i32 0, i32 4
  store i32 -1, i32* %31, align 8
  %32 = load %struct.output_config*, %struct.output_config** %4, align 8
  %33 = getelementptr inbounds %struct.output_config, %struct.output_config* %32, i32 0, i32 6
  store i32 -1, i32* %33, align 8
  %34 = load %struct.output_config*, %struct.output_config** %4, align 8
  %35 = getelementptr inbounds %struct.output_config, %struct.output_config* %34, i32 0, i32 5
  store i32 -1, i32* %35, align 4
  %36 = load %struct.output_config*, %struct.output_config** %4, align 8
  %37 = getelementptr inbounds %struct.output_config, %struct.output_config* %36, i32 0, i32 7
  store i32 -1, i32* %37, align 4
  %38 = load %struct.output_config*, %struct.output_config** %4, align 8
  %39 = getelementptr inbounds %struct.output_config, %struct.output_config* %38, i32 0, i32 8
  store i32 -1, i32* %39, align 8
  %40 = load i32, i32* @WL_OUTPUT_SUBPIXEL_UNKNOWN, align 4
  %41 = load %struct.output_config*, %struct.output_config** %4, align 8
  %42 = getelementptr inbounds %struct.output_config, %struct.output_config* %41, i32 0, i32 9
  store i32 %40, i32* %42, align 4
  %43 = load %struct.output_config*, %struct.output_config** %4, align 8
  store %struct.output_config* %43, %struct.output_config** %2, align 8
  br label %44

44:                                               ; preds = %21, %18, %8
  %45 = load %struct.output_config*, %struct.output_config** %2, align 8
  ret %struct.output_config* %45
}

declare dso_local %struct.output_config* @calloc(i32, i32) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @free(%struct.output_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
