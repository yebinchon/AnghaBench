; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_spa_stats.c_spa_txg_history_show.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_spa_stats.c_spa_txg_history_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.TYPE_2__ = type { i32, i64, i64, i64, i64, i64, i64*, i64 }

@.str = private unnamed_addr constant [91 x i8] c"%-8llu %-16llu %-5c %-12llu %-12llu %-12llu %-8llu %-8llu %-12llu %-12llu %-12llu %-12llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @spa_txg_history_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_txg_history_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %22 [
    i32 133, label %16
    i32 131, label %17
    i32 130, label %18
    i32 128, label %19
    i32 129, label %20
    i32 132, label %21
  ]

16:                                               ; preds = %2
  store i8 66, i8* %10, align 1
  br label %23

17:                                               ; preds = %2
  store i8 79, i8* %10, align 1
  br label %23

18:                                               ; preds = %2
  store i8 81, i8* %10, align 1
  br label %23

19:                                               ; preds = %2
  store i8 87, i8* %10, align 1
  br label %23

20:                                               ; preds = %2
  store i8 83, i8* %10, align 1
  br label %23

21:                                               ; preds = %2
  store i8 67, i8* %10, align 1
  br label %23

22:                                               ; preds = %2
  store i8 63, i8* %10, align 1
  br label %23

23:                                               ; preds = %22, %21, %20, %19, %18, %17, %16
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 6
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 131
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %23
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 6
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 131
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 6
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 133
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %35, %40
  store i64 %41, i64* %6, align 8
  br label %42

42:                                               ; preds = %30, %23
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 6
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 130
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %42
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 6
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 130
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 6
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 131
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %54, %59
  store i64 %60, i64* %7, align 8
  br label %61

61:                                               ; preds = %49, %42
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 6
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 128
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %61
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 6
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 128
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 6
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 130
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %73, %78
  store i64 %79, i64* %8, align 8
  br label %80

80:                                               ; preds = %68, %61
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 6
  %83 = load i64*, i64** %82, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 129
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %80
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 6
  %90 = load i64*, i64** %89, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 129
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 6
  %95 = load i64*, i64** %94, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 128
  %97 = load i64, i64* %96, align 8
  %98 = sub nsw i64 %92, %97
  store i64 %98, i64* %9, align 8
  br label %99

99:                                               ; preds = %87, %80
  %100 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 7
  %103 = load i64, i64* %102, align 8
  %104 = trunc i64 %103 to i32
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 6
  %107 = load i64*, i64** %106, align 8
  %108 = getelementptr inbounds i64, i64* %107, i64 133
  %109 = load i64, i64* %108, align 8
  %110 = load i8, i8* %10, align 1
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 5
  %113 = load i64, i64* %112, align 8
  %114 = trunc i64 %113 to i32
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = trunc i64 %117 to i32
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = trunc i64 %121 to i32
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = trunc i64 %125 to i32
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = trunc i64 %129 to i32
  %131 = load i64, i64* %6, align 8
  %132 = trunc i64 %131 to i32
  %133 = load i64, i64* %7, align 8
  %134 = trunc i64 %133 to i32
  %135 = load i64, i64* %8, align 8
  %136 = trunc i64 %135 to i32
  %137 = load i64, i64* %9, align 8
  %138 = trunc i64 %137 to i32
  %139 = call i32 @seq_printf(%struct.seq_file* %100, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i64 0, i64 0), i32 %104, i64 %109, i8 signext %110, i32 %114, i32 %118, i32 %122, i32 %126, i32 %130, i32 %132, i32 %134, i32 %136, i32 %138)
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i64, i8 signext, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
