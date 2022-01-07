; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_input-manager.c_input_device_get_config.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_input-manager.c_input_device_get_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, %struct.input_config** }
%struct.input_config = type { i64 }
%struct.TYPE_4__ = type { i32, %struct.input_config** }
%struct.sway_input_device = type { i8* }

@config = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.input_config* @input_device_get_config(%struct.sway_input_device* %0) #0 {
  %2 = alloca %struct.input_config*, align 8
  %3 = alloca %struct.sway_input_device*, align 8
  %4 = alloca %struct.input_config*, align 8
  %5 = alloca %struct.input_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.sway_input_device* %0, %struct.sway_input_device** %3, align 8
  store %struct.input_config* null, %struct.input_config** %4, align 8
  store %struct.input_config* null, %struct.input_config** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %47, %1
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %10, %15
  br i1 %16, label %17, label %50

17:                                               ; preds = %9
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load %struct.input_config**, %struct.input_config*** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.input_config*, %struct.input_config** %22, i64 %24
  %26 = load %struct.input_config*, %struct.input_config** %25, align 8
  store %struct.input_config* %26, %struct.input_config** %5, align 8
  %27 = load %struct.input_config*, %struct.input_config** %5, align 8
  %28 = getelementptr inbounds %struct.input_config, %struct.input_config* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.sway_input_device*, %struct.sway_input_device** %3, align 8
  %31 = getelementptr inbounds %struct.sway_input_device, %struct.sway_input_device* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @strcmp(i64 %29, i8* %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %17
  %36 = load %struct.input_config*, %struct.input_config** %5, align 8
  store %struct.input_config* %36, %struct.input_config** %2, align 8
  br label %86

37:                                               ; preds = %17
  %38 = load %struct.input_config*, %struct.input_config** %5, align 8
  %39 = getelementptr inbounds %struct.input_config, %struct.input_config* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @strcmp(i64 %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load %struct.input_config*, %struct.input_config** %5, align 8
  store %struct.input_config* %44, %struct.input_config** %4, align 8
  br label %45

45:                                               ; preds = %43, %37
  br label %46

46:                                               ; preds = %45
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %9

50:                                               ; preds = %9
  %51 = load %struct.sway_input_device*, %struct.sway_input_device** %3, align 8
  %52 = call i8* @input_device_get_type(%struct.sway_input_device* %51)
  store i8* %52, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %81, %50
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %54, %59
  br i1 %60, label %61, label %84

61:                                               ; preds = %53
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load %struct.input_config**, %struct.input_config*** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.input_config*, %struct.input_config** %66, i64 %68
  %70 = load %struct.input_config*, %struct.input_config** %69, align 8
  store %struct.input_config* %70, %struct.input_config** %5, align 8
  %71 = load %struct.input_config*, %struct.input_config** %5, align 8
  %72 = getelementptr inbounds %struct.input_config, %struct.input_config* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 5
  %75 = load i8*, i8** %7, align 8
  %76 = call i64 @strcmp(i64 %74, i8* %75)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %61
  %79 = load %struct.input_config*, %struct.input_config** %5, align 8
  store %struct.input_config* %79, %struct.input_config** %2, align 8
  br label %86

80:                                               ; preds = %61
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %53

84:                                               ; preds = %53
  %85 = load %struct.input_config*, %struct.input_config** %4, align 8
  store %struct.input_config* %85, %struct.input_config** %2, align 8
  br label %86

86:                                               ; preds = %84, %78, %35
  %87 = load %struct.input_config*, %struct.input_config** %2, align 8
  ret %struct.input_config* %87
}

declare dso_local i64 @strcmp(i64, i8*) #1

declare dso_local i8* @input_device_get_type(%struct.sway_input_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
