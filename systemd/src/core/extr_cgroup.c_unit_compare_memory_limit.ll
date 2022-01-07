; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_cgroup.c_unit_compare_memory_limit.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_cgroup.c_unit_compare_memory_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [49 x i8] c"Failed to determine cgroup hierarchy version: %m\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@SPECIAL_ROOT_SLICE = common dso_local global i32 0, align 4
@CGROUP_MASK_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"MemoryLow\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"memory.low\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"MemoryMin\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"memory.min\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"MemoryHigh\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"memory.high\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"MemoryMax\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"memory.max\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"MemorySwapMax\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"memory.swap.max\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [23 x i8] c"Failed to parse %s: %m\00", align 1
@CGROUP_LIMIT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i8*, i64*, i64*)* @unit_compare_memory_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unit_compare_memory_limit(%struct.TYPE_13__* %0, i8* %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %16 = call i32 @assert(%struct.TYPE_13__* %15)
  %17 = call i32 (...) @cg_all_unified()
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* %14, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* %14, align 4
  %22 = call i32 @log_debug_errno(i32 %21, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %5, align 4
  br label %132

23:                                               ; preds = %4
  %24 = load i32, i32* %14, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @ENODATA, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %132

29:                                               ; preds = %23
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %31 = load i32, i32* @SPECIAL_ROOT_SLICE, align 4
  %32 = call i64 @unit_has_name(%struct.TYPE_13__* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @ENODATA, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %132

37:                                               ; preds = %29
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %39 = call i32 @unit_get_target_mask(%struct.TYPE_13__* %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @CGROUP_MASK_MEMORY, align 4
  %42 = call i32 @FLAGS_SET(i32 %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @ENODATA, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %132

47:                                               ; preds = %37
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %49 = call %struct.TYPE_13__* @unit_get_cgroup_context(%struct.TYPE_13__* %48)
  store %struct.TYPE_13__* %49, %struct.TYPE_13__** %10, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %51 = call i32 @assert(%struct.TYPE_13__* %50)
  %52 = load i8*, i8** %7, align 8
  %53 = call i64 @streq(i8* %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %57 = call i64 @unit_get_ancestor_memory_low(%struct.TYPE_13__* %56)
  store i64 %57, i64* %13, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  br label %96

58:                                               ; preds = %47
  %59 = load i8*, i8** %7, align 8
  %60 = call i64 @streq(i8* %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %64 = call i64 @unit_get_ancestor_memory_min(%struct.TYPE_13__* %63)
  store i64 %64, i64* %13, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8** %12, align 8
  br label %95

65:                                               ; preds = %58
  %66 = load i8*, i8** %7, align 8
  %67 = call i64 @streq(i8* %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %13, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8** %12, align 8
  br label %94

73:                                               ; preds = %65
  %74 = load i8*, i8** %7, align 8
  %75 = call i64 @streq(i8* %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %13, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8** %12, align 8
  br label %93

81:                                               ; preds = %73
  %82 = load i8*, i8** %7, align 8
  %83 = call i64 @streq(i8* %82, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %13, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8** %12, align 8
  br label %92

89:                                               ; preds = %81
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %5, align 4
  br label %132

92:                                               ; preds = %85
  br label %93

93:                                               ; preds = %92, %77
  br label %94

94:                                               ; preds = %93, %69
  br label %95

95:                                               ; preds = %94, %62
  br label %96

96:                                               ; preds = %95, %55
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %98 = load i8*, i8** %12, align 8
  %99 = load i64*, i64** %9, align 8
  %100 = call i32 @unit_get_kernel_memory_limit(%struct.TYPE_13__* %97, i8* %98, i64* %99)
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %14, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %96
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %105 = load i32, i32* %14, align 4
  %106 = load i8*, i8** %12, align 8
  %107 = call i32 @log_unit_debug_errno(%struct.TYPE_13__* %104, i32 %105, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i8* %106)
  store i32 %107, i32* %5, align 4
  br label %132

108:                                              ; preds = %96
  %109 = load i64*, i64** %9, align 8
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %13, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load i64, i64* %13, align 8
  %115 = load i64*, i64** %8, align 8
  store i64 %114, i64* %115, align 8
  store i32 1, i32* %5, align 4
  br label %132

116:                                              ; preds = %108
  %117 = load i64, i64* %13, align 8
  %118 = load i64, i64* @CGROUP_LIMIT_MAX, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load i64, i64* %13, align 8
  %122 = call i64 @PAGE_ALIGN_DOWN(i64 %121)
  store i64 %122, i64* %13, align 8
  br label %123

123:                                              ; preds = %120, %116
  %124 = load i64, i64* %13, align 8
  %125 = load i64*, i64** %8, align 8
  store i64 %124, i64* %125, align 8
  %126 = load i64*, i64** %9, align 8
  %127 = load i64, i64* %126, align 8
  %128 = load i64*, i64** %8, align 8
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %127, %129
  %131 = zext i1 %130 to i32
  store i32 %131, i32* %5, align 4
  br label %132

132:                                              ; preds = %123, %113, %103, %89, %44, %34, %26, %20
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local i32 @assert(%struct.TYPE_13__*) #1

declare dso_local i32 @cg_all_unified(...) #1

declare dso_local i32 @log_debug_errno(i32, i8*) #1

declare dso_local i64 @unit_has_name(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @unit_get_target_mask(%struct.TYPE_13__*) #1

declare dso_local i32 @FLAGS_SET(i32, i32) #1

declare dso_local %struct.TYPE_13__* @unit_get_cgroup_context(%struct.TYPE_13__*) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i64 @unit_get_ancestor_memory_low(%struct.TYPE_13__*) #1

declare dso_local i64 @unit_get_ancestor_memory_min(%struct.TYPE_13__*) #1

declare dso_local i32 @unit_get_kernel_memory_limit(%struct.TYPE_13__*, i8*, i64*) #1

declare dso_local i32 @log_unit_debug_errno(%struct.TYPE_13__*, i32, i8*, i8*) #1

declare dso_local i64 @PAGE_ALIGN_DOWN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
