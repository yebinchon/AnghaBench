; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_swap.c_swap_add_extras.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_swap.c_swap_add_extras.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i8*, %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_19__ = type { i32, i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@UNIT_DEPENDENCY_IMPLICIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*)* @swap_add_extras to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swap_add_extras(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %5 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %6 = call i32 @assert(%struct.TYPE_18__* %5)
  %7 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %8 = call %struct.TYPE_19__* @UNIT(%struct.TYPE_18__* %7)
  %9 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 2
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %71, label %20

20:                                               ; preds = %15
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i8* @strdup(i64 %30)
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  br label %62

34:                                               ; preds = %20
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i8* @strdup(i64 %44)
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  br label %61

48:                                               ; preds = %34
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %50 = call %struct.TYPE_19__* @UNIT(%struct.TYPE_18__* %49)
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 2
  %55 = call i32 @unit_name_to_path(i32 %52, i8** %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %153

60:                                               ; preds = %48
  br label %61

61:                                               ; preds = %60, %40
  br label %62

62:                                               ; preds = %61, %26
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %153

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70, %15
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @path_simplify(i8* %74, i32 0)
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %77 = call %struct.TYPE_19__* @UNIT(%struct.TYPE_18__* %76)
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %93, label %81

81:                                               ; preds = %71
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %83 = call %struct.TYPE_19__* @UNIT(%struct.TYPE_18__* %82)
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 2
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @unit_set_description(%struct.TYPE_19__* %83, i8* %86)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %81
  %91 = load i32, i32* %4, align 4
  store i32 %91, i32* %2, align 4
  br label %153

92:                                               ; preds = %81
  br label %93

93:                                               ; preds = %92, %71
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %95 = call %struct.TYPE_19__* @UNIT(%struct.TYPE_18__* %94)
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 2
  %98 = load i8*, i8** %97, align 8
  %99 = load i32, i32* @UNIT_DEPENDENCY_IMPLICIT, align 4
  %100 = call i32 @unit_require_mounts_for(%struct.TYPE_19__* %95, i8* %98, i32 %99)
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %93
  %104 = load i32, i32* %4, align 4
  store i32 %104, i32* %2, align 4
  br label %153

105:                                              ; preds = %93
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %107 = call i32 @swap_add_device_dependencies(%struct.TYPE_18__* %106)
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = load i32, i32* %4, align 4
  store i32 %111, i32* %2, align 4
  br label %153

112:                                              ; preds = %105
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %114 = call i32 @swap_load_devnode(%struct.TYPE_18__* %113)
  store i32 %114, i32* %4, align 4
  %115 = load i32, i32* %4, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = load i32, i32* %4, align 4
  store i32 %118, i32* %2, align 4
  br label %153

119:                                              ; preds = %112
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %121 = call %struct.TYPE_19__* @UNIT(%struct.TYPE_18__* %120)
  %122 = call i32 @unit_patch_contexts(%struct.TYPE_19__* %121)
  store i32 %122, i32* %4, align 4
  %123 = load i32, i32* %4, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %119
  %126 = load i32, i32* %4, align 4
  store i32 %126, i32* %2, align 4
  br label %153

127:                                              ; preds = %119
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %129 = call %struct.TYPE_19__* @UNIT(%struct.TYPE_18__* %128)
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 1
  %132 = call i32 @unit_add_exec_dependencies(%struct.TYPE_19__* %129, i32* %131)
  store i32 %132, i32* %4, align 4
  %133 = load i32, i32* %4, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %127
  %136 = load i32, i32* %4, align 4
  store i32 %136, i32* %2, align 4
  br label %153

137:                                              ; preds = %127
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %139 = call %struct.TYPE_19__* @UNIT(%struct.TYPE_18__* %138)
  %140 = call i32 @unit_set_default_slice(%struct.TYPE_19__* %139)
  store i32 %140, i32* %4, align 4
  %141 = load i32, i32* %4, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %137
  %144 = load i32, i32* %4, align 4
  store i32 %144, i32* %2, align 4
  br label %153

145:                                              ; preds = %137
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %147 = call i32 @swap_add_default_dependencies(%struct.TYPE_18__* %146)
  store i32 %147, i32* %4, align 4
  %148 = load i32, i32* %4, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %145
  %151 = load i32, i32* %4, align 4
  store i32 %151, i32* %2, align 4
  br label %153

152:                                              ; preds = %145
  store i32 0, i32* %2, align 4
  br label %153

153:                                              ; preds = %152, %150, %143, %135, %125, %117, %110, %103, %90, %67, %58
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local i32 @assert(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_19__* @UNIT(%struct.TYPE_18__*) #1

declare dso_local i8* @strdup(i64) #1

declare dso_local i32 @unit_name_to_path(i32, i8**) #1

declare dso_local i32 @path_simplify(i8*, i32) #1

declare dso_local i32 @unit_set_description(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @unit_require_mounts_for(%struct.TYPE_19__*, i8*, i32) #1

declare dso_local i32 @swap_add_device_dependencies(%struct.TYPE_18__*) #1

declare dso_local i32 @swap_load_devnode(%struct.TYPE_18__*) #1

declare dso_local i32 @unit_patch_contexts(%struct.TYPE_19__*) #1

declare dso_local i32 @unit_add_exec_dependencies(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @unit_set_default_slice(%struct.TYPE_19__*) #1

declare dso_local i32 @swap_add_default_dependencies(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
