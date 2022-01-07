; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_mount.c_mount_add_extras.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_mount.c_mount_add_extras.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @mount_add_extras to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mount_add_extras(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %6 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %7 = call %struct.TYPE_15__* @UNIT(%struct.TYPE_16__* %6)
  store %struct.TYPE_15__* %7, %struct.TYPE_15__** %4, align 8
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %9 = call i32 @assert(%struct.TYPE_16__* %8)
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %17
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 2
  %28 = call i32 @unit_name_to_path(i32 %25, i32* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %106

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33, %17
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @path_simplify(i32 %37, i32 0)
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %34
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @unit_set_description(%struct.TYPE_15__* %44, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %106

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53, %34
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %56 = call i32 @mount_add_device_dependencies(%struct.TYPE_16__* %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %106

61:                                               ; preds = %54
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %63 = call i32 @mount_add_mount_dependencies(%struct.TYPE_16__* %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* %5, align 4
  store i32 %67, i32* %2, align 4
  br label %106

68:                                               ; preds = %61
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %70 = call i32 @mount_add_quota_dependencies(%struct.TYPE_16__* %69)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* %5, align 4
  store i32 %74, i32* %2, align 4
  br label %106

75:                                               ; preds = %68
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %77 = call i32 @unit_patch_contexts(%struct.TYPE_15__* %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %2, align 4
  br label %106

82:                                               ; preds = %75
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 1
  %86 = call i32 @unit_add_exec_dependencies(%struct.TYPE_15__* %83, i32* %85)
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = load i32, i32* %5, align 4
  store i32 %90, i32* %2, align 4
  br label %106

91:                                               ; preds = %82
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %93 = call i32 @unit_set_default_slice(%struct.TYPE_15__* %92)
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %5, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32, i32* %5, align 4
  store i32 %97, i32* %2, align 4
  br label %106

98:                                               ; preds = %91
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %100 = call i32 @mount_add_default_dependencies(%struct.TYPE_16__* %99)
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = load i32, i32* %5, align 4
  store i32 %104, i32* %2, align 4
  br label %106

105:                                              ; preds = %98
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %105, %103, %96, %89, %80, %73, %66, %59, %51, %31
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local %struct.TYPE_15__* @UNIT(%struct.TYPE_16__*) #1

declare dso_local i32 @assert(%struct.TYPE_16__*) #1

declare dso_local i32 @unit_name_to_path(i32, i32*) #1

declare dso_local i32 @path_simplify(i32, i32) #1

declare dso_local i32 @unit_set_description(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @mount_add_device_dependencies(%struct.TYPE_16__*) #1

declare dso_local i32 @mount_add_mount_dependencies(%struct.TYPE_16__*) #1

declare dso_local i32 @mount_add_quota_dependencies(%struct.TYPE_16__*) #1

declare dso_local i32 @unit_patch_contexts(%struct.TYPE_15__*) #1

declare dso_local i32 @unit_add_exec_dependencies(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @unit_set_default_slice(%struct.TYPE_15__*) #1

declare dso_local i32 @mount_add_default_dependencies(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
