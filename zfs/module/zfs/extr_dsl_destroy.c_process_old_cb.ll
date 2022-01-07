; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_destroy.c_process_old_cb.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_destroy.c_process_old_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64 }
%struct.TYPE_21__ = type { i32 }
%struct.process_old_arg = type { i32, i32, i32, i32, %struct.TYPE_18__*, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_17__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_22__*, i32, %struct.TYPE_21__*)* @process_old_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_old_cb(i8* %0, %struct.TYPE_22__* %1, i32 %2, %struct.TYPE_21__* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.process_old_arg*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_21__* %3, %struct.TYPE_21__** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.process_old_arg*
  store %struct.process_old_arg* %12, %struct.process_old_arg** %9, align 8
  %13 = load %struct.process_old_arg*, %struct.process_old_arg** %9, align 8
  %14 = getelementptr inbounds %struct.process_old_arg, %struct.process_old_arg* %13, i32 0, i32 6
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  store %struct.TYPE_20__* %19, %struct.TYPE_20__** %10, align 8
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %21 = call i32 @BP_IS_HOLE(%struct.TYPE_22__* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.process_old_arg*, %struct.process_old_arg** %9, align 8
  %30 = getelementptr inbounds %struct.process_old_arg, %struct.process_old_arg* %29, i32 0, i32 6
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %30, align 8
  %32 = call %struct.TYPE_17__* @dsl_dataset_phys(%struct.TYPE_18__* %31)
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sle i64 %28, %34
  br i1 %35, label %36, label %81

36:                                               ; preds = %4
  %37 = load %struct.process_old_arg*, %struct.process_old_arg** %9, align 8
  %38 = getelementptr inbounds %struct.process_old_arg, %struct.process_old_arg* %37, i32 0, i32 6
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %44 = call i32 @dsl_deadlist_insert(i32* %40, %struct.TYPE_22__* %41, i32 %42, %struct.TYPE_21__* %43)
  %45 = load %struct.process_old_arg*, %struct.process_old_arg** %9, align 8
  %46 = getelementptr inbounds %struct.process_old_arg, %struct.process_old_arg* %45, i32 0, i32 4
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %46, align 8
  %48 = icmp ne %struct.TYPE_18__* %47, null
  br i1 %48, label %49, label %80

49:                                               ; preds = %36
  %50 = load %struct.process_old_arg*, %struct.process_old_arg** %9, align 8
  %51 = getelementptr inbounds %struct.process_old_arg, %struct.process_old_arg* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %80, label %54

54:                                               ; preds = %49
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.process_old_arg*, %struct.process_old_arg** %9, align 8
  %59 = getelementptr inbounds %struct.process_old_arg, %struct.process_old_arg* %58, i32 0, i32 4
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %59, align 8
  %61 = call %struct.TYPE_17__* @dsl_dataset_phys(%struct.TYPE_18__* %60)
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %57, %63
  br i1 %64, label %65, label %80

65:                                               ; preds = %54
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %70 = call i64 @bp_get_dsize_sync(i32 %68, %struct.TYPE_22__* %69)
  %71 = load %struct.process_old_arg*, %struct.process_old_arg** %9, align 8
  %72 = getelementptr inbounds %struct.process_old_arg, %struct.process_old_arg* %71, i32 0, i32 4
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %72, align 8
  %74 = call %struct.TYPE_17__* @dsl_dataset_phys(%struct.TYPE_18__* %73)
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %70
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %75, align 8
  br label %80

80:                                               ; preds = %65, %54, %49, %36
  br label %118

81:                                               ; preds = %4
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %86 = call i64 @bp_get_dsize_sync(i32 %84, %struct.TYPE_22__* %85)
  %87 = load %struct.process_old_arg*, %struct.process_old_arg** %9, align 8
  %88 = getelementptr inbounds %struct.process_old_arg, %struct.process_old_arg* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, %86
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %88, align 4
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %94 = call i64 @BP_GET_PSIZE(%struct.TYPE_22__* %93)
  %95 = load %struct.process_old_arg*, %struct.process_old_arg** %9, align 8
  %96 = getelementptr inbounds %struct.process_old_arg, %struct.process_old_arg* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %98, %94
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %96, align 8
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %102 = call i64 @BP_GET_UCSIZE(%struct.TYPE_22__* %101)
  %103 = load %struct.process_old_arg*, %struct.process_old_arg** %9, align 8
  %104 = getelementptr inbounds %struct.process_old_arg, %struct.process_old_arg* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %106, %102
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %104, align 4
  %109 = load %struct.process_old_arg*, %struct.process_old_arg** %9, align 8
  %110 = getelementptr inbounds %struct.process_old_arg, %struct.process_old_arg* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %117 = call i32 @dsl_free_sync(i32 %111, %struct.TYPE_20__* %112, i32 %115, %struct.TYPE_22__* %116)
  br label %118

118:                                              ; preds = %81, %80
  ret i32 0
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @BP_IS_HOLE(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_17__* @dsl_dataset_phys(%struct.TYPE_18__*) #1

declare dso_local i32 @dsl_deadlist_insert(i32*, %struct.TYPE_22__*, i32, %struct.TYPE_21__*) #1

declare dso_local i64 @bp_get_dsize_sync(i32, %struct.TYPE_22__*) #1

declare dso_local i64 @BP_GET_PSIZE(%struct.TYPE_22__*) #1

declare dso_local i64 @BP_GET_UCSIZE(%struct.TYPE_22__*) #1

declare dso_local i32 @dsl_free_sync(i32, %struct.TYPE_20__*, i32, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
