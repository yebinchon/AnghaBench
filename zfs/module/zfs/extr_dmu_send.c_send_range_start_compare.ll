; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_send.c_send_range_start_compare.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_send.c_send_range_start_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_range = type { i32, i32, i32, i64 }

@DNODES_PER_BLOCK = common dso_local global i32 0, align 4
@OBJECT_RANGE = common dso_local global i64 0, align 8
@OBJECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.send_range*, %struct.send_range*)* @send_range_start_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_range_start_compare(%struct.send_range* %0, %struct.send_range* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.send_range*, align 8
  %5 = alloca %struct.send_range*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.send_range* %0, %struct.send_range** %4, align 8
  store %struct.send_range* %1, %struct.send_range** %5, align 8
  %11 = load %struct.send_range*, %struct.send_range** %4, align 8
  %12 = getelementptr inbounds %struct.send_range, %struct.send_range* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load %struct.send_range*, %struct.send_range** %4, align 8
  %15 = getelementptr inbounds %struct.send_range, %struct.send_range* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.send_range*, %struct.send_range** %5, align 8
  %18 = getelementptr inbounds %struct.send_range, %struct.send_range* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %8, align 4
  %20 = load %struct.send_range*, %struct.send_range** %5, align 8
  %21 = getelementptr inbounds %struct.send_range, %struct.send_range* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load %struct.send_range*, %struct.send_range** %4, align 8
  %24 = getelementptr inbounds %struct.send_range, %struct.send_range* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.send_range*, %struct.send_range** %5, align 8
  %27 = getelementptr inbounds %struct.send_range, %struct.send_range* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @TREE_CMP(i32 %25, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %3, align 4
  br label %108

35:                                               ; preds = %2
  %36 = load %struct.send_range*, %struct.send_range** %4, align 8
  %37 = getelementptr inbounds %struct.send_range, %struct.send_range* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.send_range*, %struct.send_range** %4, align 8
  %42 = getelementptr inbounds %struct.send_range, %struct.send_range* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @DNODES_PER_BLOCK, align 4
  %45 = mul nsw i32 %43, %44
  store i32 %45, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %40, %35
  %47 = load %struct.send_range*, %struct.send_range** %5, align 8
  %48 = getelementptr inbounds %struct.send_range, %struct.send_range* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.send_range*, %struct.send_range** %5, align 8
  %53 = getelementptr inbounds %struct.send_range, %struct.send_range* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @DNODES_PER_BLOCK, align 4
  %56 = mul nsw i32 %54, %55
  store i32 %56, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %51, %46
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @TREE_CMP(i32 %58, i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i64 @likely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %3, align 4
  br label %108

66:                                               ; preds = %57
  %67 = load %struct.send_range*, %struct.send_range** %5, align 8
  %68 = getelementptr inbounds %struct.send_range, %struct.send_range* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @OBJECT_RANGE, align 8
  %71 = icmp eq i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = load %struct.send_range*, %struct.send_range** %4, align 8
  %74 = getelementptr inbounds %struct.send_range, %struct.send_range* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @OBJECT_RANGE, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @TREE_CMP(i32 %72, i32 %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %66
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %3, align 4
  br label %108

85:                                               ; preds = %66
  %86 = load %struct.send_range*, %struct.send_range** %5, align 8
  %87 = getelementptr inbounds %struct.send_range, %struct.send_range* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @OBJECT, align 8
  %90 = icmp eq i64 %88, %89
  %91 = zext i1 %90 to i32
  %92 = load %struct.send_range*, %struct.send_range** %4, align 8
  %93 = getelementptr inbounds %struct.send_range, %struct.send_range* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @OBJECT, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @TREE_CMP(i32 %91, i32 %97)
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = call i64 @unlikely(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %85
  %103 = load i32, i32* %10, align 4
  store i32 %103, i32* %3, align 4
  br label %108

104:                                              ; preds = %85
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @TREE_CMP(i32 %105, i32 %106)
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %104, %102, %83, %64, %33
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @TREE_CMP(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
