; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_input-manager.c_apply_input_type_config.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_input-manager.c_apply_input_type_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, %struct.input_config** }
%struct.input_config = type { i8*, i8* }
%struct.TYPE_4__ = type { i32, %struct.input_config** }
%struct.sway_input_device = type { i8* }

@config = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_input_device*)* @apply_input_type_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_input_type_config(%struct.sway_input_device* %0) #0 {
  %2 = alloca %struct.sway_input_device*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.input_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.input_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.input_config*, align 8
  %9 = alloca %struct.input_config*, align 8
  store %struct.sway_input_device* %0, %struct.sway_input_device** %2, align 8
  %10 = load %struct.sway_input_device*, %struct.sway_input_device** %2, align 8
  %11 = call i8* @input_device_get_type(%struct.sway_input_device* %10)
  store i8* %11, i8** %3, align 8
  store %struct.input_config* null, %struct.input_config** %4, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %40, %1
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %13, %18
  br i1 %19, label %20, label %43

20:                                               ; preds = %12
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load %struct.input_config**, %struct.input_config*** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.input_config*, %struct.input_config** %25, i64 %27
  %29 = load %struct.input_config*, %struct.input_config** %28, align 8
  store %struct.input_config* %29, %struct.input_config** %6, align 8
  %30 = load %struct.input_config*, %struct.input_config** %6, align 8
  %31 = getelementptr inbounds %struct.input_config, %struct.input_config* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 5
  %34 = load i8*, i8** %3, align 8
  %35 = call i64 @strcmp(i8* %33, i8* %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %20
  %38 = load %struct.input_config*, %struct.input_config** %6, align 8
  store %struct.input_config* %38, %struct.input_config** %4, align 8
  br label %43

39:                                               ; preds = %20
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %12

43:                                               ; preds = %37, %12
  %44 = load %struct.input_config*, %struct.input_config** %4, align 8
  %45 = icmp eq %struct.input_config* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %103

47:                                               ; preds = %43
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %100, %47
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %49, %54
  br i1 %55, label %56, label %103

56:                                               ; preds = %48
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load %struct.input_config**, %struct.input_config*** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.input_config*, %struct.input_config** %61, i64 %63
  %65 = load %struct.input_config*, %struct.input_config** %64, align 8
  store %struct.input_config* %65, %struct.input_config** %8, align 8
  %66 = load %struct.sway_input_device*, %struct.sway_input_device** %2, align 8
  %67 = getelementptr inbounds %struct.sway_input_device, %struct.sway_input_device* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.input_config*, %struct.input_config** %8, align 8
  %70 = getelementptr inbounds %struct.input_config, %struct.input_config* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i64 @strcmp(i8* %68, i8* %71)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %99

74:                                               ; preds = %56
  %75 = load %struct.input_config*, %struct.input_config** %8, align 8
  %76 = getelementptr inbounds %struct.input_config, %struct.input_config* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call %struct.input_config* @new_input_config(i8* %77)
  store %struct.input_config* %78, %struct.input_config** %9, align 8
  %79 = load %struct.input_config*, %struct.input_config** %9, align 8
  %80 = load %struct.input_config*, %struct.input_config** %4, align 8
  %81 = call i32 @merge_input_config(%struct.input_config* %79, %struct.input_config* %80)
  %82 = load %struct.input_config*, %struct.input_config** %9, align 8
  %83 = load %struct.input_config*, %struct.input_config** %8, align 8
  %84 = call i32 @merge_input_config(%struct.input_config* %82, %struct.input_config* %83)
  %85 = load i8*, i8** %3, align 8
  %86 = load %struct.input_config*, %struct.input_config** %9, align 8
  %87 = getelementptr inbounds %struct.input_config, %struct.input_config* %86, i32 0, i32 1
  store i8* %85, i8** %87, align 8
  %88 = load %struct.input_config*, %struct.input_config** %9, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load %struct.input_config**, %struct.input_config*** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.input_config*, %struct.input_config** %93, i64 %95
  store %struct.input_config* %88, %struct.input_config** %96, align 8
  %97 = load %struct.input_config*, %struct.input_config** %8, align 8
  %98 = call i32 @free_input_config(%struct.input_config* %97)
  store %struct.input_config* null, %struct.input_config** %8, align 8
  br label %103

99:                                               ; preds = %56
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %48

103:                                              ; preds = %46, %74, %48
  ret void
}

declare dso_local i8* @input_device_get_type(%struct.sway_input_device*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.input_config* @new_input_config(i8*) #1

declare dso_local i32 @merge_input_config(%struct.input_config*, %struct.input_config*) #1

declare dso_local i32 @free_input_config(%struct.input_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
