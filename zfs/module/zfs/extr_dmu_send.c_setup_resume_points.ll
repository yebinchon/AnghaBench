; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_send.c_setup_resume_points.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_send.c_setup_resume_points.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmu_send_params = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.send_thread_arg = type { i32 }
%struct.redact_list_thread_arg = type { i32 }
%struct.send_merge_thread_arg = type { i32 }
%struct.TYPE_7__ = type { i32 }

@B_FALSE = common dso_local global i32 0, align 4
@BEGINNV_REDACT_FROM_SNAPS = common dso_local global i32 0, align 4
@BEGINNV_RESUME_OBJECT = common dso_local global i32 0, align 4
@BEGINNV_RESUME_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmu_send_params*, %struct.send_thread_arg*, %struct.redact_list_thread_arg*, %struct.redact_list_thread_arg*, %struct.send_merge_thread_arg*, i64, i32*, i32*, i32*)* @setup_resume_points to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_resume_points(%struct.dmu_send_params* %0, %struct.send_thread_arg* %1, %struct.redact_list_thread_arg* %2, %struct.redact_list_thread_arg* %3, %struct.send_merge_thread_arg* %4, i64 %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.dmu_send_params*, align 8
  %12 = alloca %struct.send_thread_arg*, align 8
  %13 = alloca %struct.redact_list_thread_arg*, align 8
  %14 = alloca %struct.redact_list_thread_arg*, align 8
  %15 = alloca %struct.send_merge_thread_arg*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_6__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_7__, align 4
  %25 = alloca i32, align 4
  store %struct.dmu_send_params* %0, %struct.dmu_send_params** %11, align 8
  store %struct.send_thread_arg* %1, %struct.send_thread_arg** %12, align 8
  store %struct.redact_list_thread_arg* %2, %struct.redact_list_thread_arg** %13, align 8
  store %struct.redact_list_thread_arg* %3, %struct.redact_list_thread_arg** %14, align 8
  store %struct.send_merge_thread_arg* %4, %struct.send_merge_thread_arg** %15, align 8
  store i64 %5, i64* %16, align 8
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  %26 = load %struct.dmu_send_params*, %struct.dmu_send_params** %11, align 8
  %27 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %26, i32 0, i32 3
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %20, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %29 = load i64, i64* %16, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %9
  %32 = load %struct.dmu_send_params*, %struct.dmu_send_params** %11, align 8
  %33 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %22, align 4
  %35 = load i32*, i32** %17, align 8
  %36 = load i32, i32* %22, align 4
  %37 = call i32 @dmu_object_info(i32* %35, i32 %36, %struct.TYPE_7__* %24)
  store i32 %37, i32* %21, align 4
  %38 = load i32, i32* %21, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* %21, align 4
  store i32 %41, i32* %10, align 4
  br label %105

42:                                               ; preds = %31
  %43 = load %struct.dmu_send_params*, %struct.dmu_send_params** %11, align 8
  %44 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sdiv i32 %45, %47
  store i32 %48, i32* %23, align 4
  br label %49

49:                                               ; preds = %42, %9
  %50 = load i32, i32* @B_FALSE, align 4
  %51 = load %struct.send_merge_thread_arg*, %struct.send_merge_thread_arg** %15, align 8
  %52 = getelementptr inbounds %struct.send_merge_thread_arg, %struct.send_merge_thread_arg* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load i32*, i32** %18, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %49
  %56 = load %struct.redact_list_thread_arg*, %struct.redact_list_thread_arg** %14, align 8
  %57 = getelementptr inbounds %struct.redact_list_thread_arg, %struct.redact_list_thread_arg* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %22, align 4
  %62 = load i32, i32* %23, align 4
  %63 = call i32 @SET_BOOKMARK(i32* %57, i32 %60, i32 %61, i32 0, i32 %62)
  br label %64

64:                                               ; preds = %55, %49
  %65 = load %struct.send_thread_arg*, %struct.send_thread_arg** %12, align 8
  %66 = getelementptr inbounds %struct.send_thread_arg, %struct.send_thread_arg* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %22, align 4
  %71 = load i32, i32* %23, align 4
  %72 = call i32 @SET_BOOKMARK(i32* %66, i32 %69, i32 %70, i32 0, i32 %71)
  %73 = load i32*, i32** %19, align 8
  %74 = load i32, i32* @BEGINNV_REDACT_FROM_SNAPS, align 4
  %75 = call i64 @nvlist_exists(i32* %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %64
  %78 = load %struct.dmu_send_params*, %struct.dmu_send_params** %11, align 8
  %79 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %25, align 4
  %82 = load %struct.redact_list_thread_arg*, %struct.redact_list_thread_arg** %13, align 8
  %83 = getelementptr inbounds %struct.redact_list_thread_arg, %struct.redact_list_thread_arg* %82, i32 0, i32 0
  %84 = load i32, i32* %25, align 4
  %85 = load i32, i32* %22, align 4
  %86 = load i32, i32* %23, align 4
  %87 = call i32 @SET_BOOKMARK(i32* %83, i32 %84, i32 %85, i32 0, i32 %86)
  br label %88

88:                                               ; preds = %77, %64
  %89 = load i64, i64* %16, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %88
  %92 = load i32*, i32** %19, align 8
  %93 = load i32, i32* @BEGINNV_RESUME_OBJECT, align 4
  %94 = load %struct.dmu_send_params*, %struct.dmu_send_params** %11, align 8
  %95 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @fnvlist_add_uint64(i32* %92, i32 %93, i32 %96)
  %98 = load i32*, i32** %19, align 8
  %99 = load i32, i32* @BEGINNV_RESUME_OFFSET, align 4
  %100 = load %struct.dmu_send_params*, %struct.dmu_send_params** %11, align 8
  %101 = getelementptr inbounds %struct.dmu_send_params, %struct.dmu_send_params* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @fnvlist_add_uint64(i32* %98, i32 %99, i32 %102)
  br label %104

104:                                              ; preds = %91, %88
  store i32 0, i32* %10, align 4
  br label %105

105:                                              ; preds = %104, %40
  %106 = load i32, i32* %10, align 4
  ret i32 %106
}

declare dso_local i32 @dmu_object_info(i32*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @SET_BOOKMARK(i32*, i32, i32, i32, i32) #1

declare dso_local i64 @nvlist_exists(i32*, i32) #1

declare dso_local i32 @fnvlist_add_uint64(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
