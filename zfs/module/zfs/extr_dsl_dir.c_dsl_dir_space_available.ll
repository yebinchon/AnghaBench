; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dir.c_dsl_dir_space_available.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dir.c_dsl_dir_space_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64, i64, i64 }

@UINT64_MAX = common dso_local global i64 0, align 8
@ZFS_SPACE_CHECK_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dsl_dir_space_available(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i64, i64* @UINT64_MAX, align 8
  store i64 %14, i64* %11, align 8
  %15 = load i64, i64* @UINT64_MAX, align 8
  store i64 %15, i64* %9, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = icmp ne %struct.TYPE_7__* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i64 @dsl_dir_space_available(%struct.TYPE_7__* %23, %struct.TYPE_7__* %24, i64 %25, i32 %26)
  store i64 %27, i64* %9, align 8
  br label %28

28:                                               ; preds = %20, %4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = call i32 @mutex_enter(i32* %30)
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = call %struct.TYPE_8__* @dsl_dir_phys(%struct.TYPE_7__* %32)
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %28
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = call %struct.TYPE_8__* @dsl_dir_phys(%struct.TYPE_7__* %38)
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %11, align 8
  br label %42

42:                                               ; preds = %37, %28
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = call %struct.TYPE_8__* @dsl_dir_phys(%struct.TYPE_7__* %43)
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %12, align 8
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %42
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %51 = call i64 @dsl_dir_space_towrite(%struct.TYPE_7__* %50)
  %52 = load i64, i64* %12, align 8
  %53 = add nsw i64 %52, %51
  store i64 %53, i64* %12, align 8
  br label %54

54:                                               ; preds = %49, %42
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = icmp eq %struct.TYPE_7__* %57, null
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @ZFS_SPACE_CHECK_NORMAL, align 4
  %64 = call i64 @dsl_pool_adjustedsize(i32 %62, i32 %63)
  store i64 %64, i64* %13, align 8
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* %13, align 8
  %67 = call i64 @MIN(i64 %65, i64 %66)
  store i64 %67, i64* %11, align 8
  br label %68

68:                                               ; preds = %59, %54
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %70 = call %struct.TYPE_8__* @dsl_dir_phys(%struct.TYPE_7__* %69)
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %12, align 8
  %74 = icmp sgt i64 %72, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %68
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* @UINT64_MAX, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %75
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %81 = call %struct.TYPE_8__* @dsl_dir_phys(%struct.TYPE_7__* %80)
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %12, align 8
  %85 = sub nsw i64 %83, %84
  %86 = load i64, i64* %9, align 8
  %87 = add nsw i64 %86, %85
  store i64 %87, i64* %9, align 8
  br label %88

88:                                               ; preds = %79, %75, %68
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %91 = icmp eq %struct.TYPE_7__* %89, %90
  br i1 %91, label %92, label %114

92:                                               ; preds = %88
  %93 = load i64, i64* %7, align 8
  %94 = icmp sle i64 %93, 0
  %95 = zext i1 %94 to i32
  %96 = call i32 @ASSERT(i32 %95)
  %97 = load i64, i64* %12, align 8
  %98 = load i64, i64* %7, align 8
  %99 = sub nsw i64 0, %98
  %100 = icmp sge i64 %97, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @ASSERT(i32 %101)
  %103 = load i64, i64* %7, align 8
  %104 = load i64, i64* %12, align 8
  %105 = add nsw i64 %104, %103
  store i64 %105, i64* %12, align 8
  %106 = load i64, i64* %9, align 8
  %107 = load i64, i64* @UINT64_MAX, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %92
  %110 = load i64, i64* %7, align 8
  %111 = load i64, i64* %9, align 8
  %112 = sub nsw i64 %111, %110
  store i64 %112, i64* %9, align 8
  br label %113

113:                                              ; preds = %109, %92
  br label %114

114:                                              ; preds = %113, %88
  %115 = load i64, i64* %12, align 8
  %116 = load i64, i64* %11, align 8
  %117 = icmp sgt i64 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  store i64 0, i64* %10, align 8
  br label %125

119:                                              ; preds = %114
  %120 = load i64, i64* %9, align 8
  %121 = load i64, i64* %11, align 8
  %122 = load i64, i64* %12, align 8
  %123 = sub nsw i64 %121, %122
  %124 = call i64 @MIN(i64 %120, i64 %123)
  store i64 %124, i64* %10, align 8
  br label %125

125:                                              ; preds = %119, %118
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = call i32 @mutex_exit(i32* %127)
  %129 = load i64, i64* %10, align 8
  ret i64 %129
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local %struct.TYPE_8__* @dsl_dir_phys(%struct.TYPE_7__*) #1

declare dso_local i64 @dsl_dir_space_towrite(%struct.TYPE_7__*) #1

declare dso_local i64 @dsl_pool_adjustedsize(i32, i32) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
