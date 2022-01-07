; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_flushthread.c_add_trim_entry_avoid_sb.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_flushthread.c_add_trim_entry_avoid_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@superblock_addrs = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_trim_entry_avoid_sb(%struct.TYPE_5__* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @sector_align(i32 4, i32 %14)
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %10, align 8
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %107, %4
  %18 = load i64*, i64** @superblock_addrs, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %110

24:                                               ; preds = %17
  %25 = load i64*, i64** @superblock_addrs, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %10, align 8
  %31 = add nsw i64 %29, %30
  %32 = load i64, i64* %7, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %34, label %95

34:                                               ; preds = %24
  %35 = load i64*, i64** @superblock_addrs, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = add nsw i64 %40, %41
  %43 = icmp slt i64 %39, %42
  br i1 %43, label %44, label %95

44:                                               ; preds = %34
  %45 = load i64*, i64** @superblock_addrs, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %44
  %53 = load i32*, i32** %6, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load i64*, i64** @superblock_addrs, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %7, align 8
  %61 = sub nsw i64 %59, %60
  %62 = call i32 @add_trim_entry(i32* %53, i64 %54, i64 %61)
  br label %63

63:                                               ; preds = %52, %44
  %64 = load i64, i64* %8, align 8
  %65 = load i64*, i64** @superblock_addrs, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %10, align 8
  %71 = add nsw i64 %69, %70
  %72 = load i64, i64* %7, align 8
  %73 = sub nsw i64 %71, %72
  %74 = icmp sle i64 %64, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %63
  br label %115

76:                                               ; preds = %63
  %77 = load i64*, i64** @superblock_addrs, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %10, align 8
  %83 = add nsw i64 %81, %82
  %84 = load i64, i64* %7, align 8
  %85 = sub nsw i64 %83, %84
  %86 = load i64, i64* %8, align 8
  %87 = sub nsw i64 %86, %85
  store i64 %87, i64* %8, align 8
  %88 = load i64*, i64** @superblock_addrs, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %10, align 8
  %94 = add nsw i64 %92, %93
  store i64 %94, i64* %7, align 8
  br label %107

95:                                               ; preds = %34, %24
  %96 = load i64*, i64** @superblock_addrs, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %7, align 8
  %102 = load i64, i64* %8, align 8
  %103 = add nsw i64 %101, %102
  %104 = icmp sgt i64 %100, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %95
  br label %110

106:                                              ; preds = %95
  br label %107

107:                                              ; preds = %106, %76
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %9, align 4
  br label %17

110:                                              ; preds = %105, %17
  %111 = load i32*, i32** %6, align 8
  %112 = load i64, i64* %7, align 8
  %113 = load i64, i64* %8, align 8
  %114 = call i32 @add_trim_entry(i32* %111, i64 %112, i64 %113)
  br label %115

115:                                              ; preds = %110, %75
  ret void
}

declare dso_local i32 @sector_align(i32, i32) #1

declare dso_local i32 @add_trim_entry(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
