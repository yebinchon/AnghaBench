; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_send.c_send_range_after.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_send.c_send_range_after.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_range = type { i64, i32, i64, i32, i32 }

@B_TRUE = common dso_local global i64 0, align 8
@HOLE = common dso_local global i64 0, align 8
@OBJECT_RANGE = common dso_local global i64 0, align 8
@DNODES_PER_BLOCK_SHIFT = common dso_local global i32 0, align 4
@OBJECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.send_range*, %struct.send_range*)* @send_range_after to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_range_after(%struct.send_range* %0, %struct.send_range* %1) #0 {
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
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @B_TRUE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %163

17:                                               ; preds = %2
  %18 = load %struct.send_range*, %struct.send_range** %5, align 8
  %19 = getelementptr inbounds %struct.send_range, %struct.send_range* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @B_TRUE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 -1, i32* %3, align 4
  br label %163

24:                                               ; preds = %17
  %25 = load %struct.send_range*, %struct.send_range** %4, align 8
  %26 = getelementptr inbounds %struct.send_range, %struct.send_range* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %6, align 4
  %28 = load %struct.send_range*, %struct.send_range** %4, align 8
  %29 = getelementptr inbounds %struct.send_range, %struct.send_range* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  %32 = load %struct.send_range*, %struct.send_range** %5, align 8
  %33 = getelementptr inbounds %struct.send_range, %struct.send_range* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %8, align 4
  %35 = load %struct.send_range*, %struct.send_range** %5, align 8
  %36 = getelementptr inbounds %struct.send_range, %struct.send_range* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %67

41:                                               ; preds = %24
  %42 = load %struct.send_range*, %struct.send_range** %4, align 8
  %43 = getelementptr inbounds %struct.send_range, %struct.send_range* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @HOLE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load %struct.send_range*, %struct.send_range** %4, align 8
  %49 = getelementptr inbounds %struct.send_range, %struct.send_range* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @OBJECT_RANGE, align 8
  %52 = icmp eq i64 %50, %51
  br label %53

53:                                               ; preds = %47, %41
  %54 = phi i1 [ true, %41 ], [ %52, %47 ]
  %55 = zext i1 %54 to i32
  %56 = call i32 @ASSERT(i32 %55)
  %57 = load %struct.send_range*, %struct.send_range** %4, align 8
  %58 = getelementptr inbounds %struct.send_range, %struct.send_range* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @DNODES_PER_BLOCK_SHIFT, align 4
  %61 = shl i32 %59, %60
  store i32 %61, i32* %6, align 4
  %62 = load %struct.send_range*, %struct.send_range** %4, align 8
  %63 = getelementptr inbounds %struct.send_range, %struct.send_range* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @DNODES_PER_BLOCK_SHIFT, align 4
  %66 = shl i32 %64, %65
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %53, %24
  %68 = load i32, i32* %8, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %96

70:                                               ; preds = %67
  %71 = load %struct.send_range*, %struct.send_range** %5, align 8
  %72 = getelementptr inbounds %struct.send_range, %struct.send_range* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @HOLE, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %82, label %76

76:                                               ; preds = %70
  %77 = load %struct.send_range*, %struct.send_range** %5, align 8
  %78 = getelementptr inbounds %struct.send_range, %struct.send_range* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @OBJECT_RANGE, align 8
  %81 = icmp eq i64 %79, %80
  br label %82

82:                                               ; preds = %76, %70
  %83 = phi i1 [ true, %70 ], [ %81, %76 ]
  %84 = zext i1 %83 to i32
  %85 = call i32 @ASSERT(i32 %84)
  %86 = load %struct.send_range*, %struct.send_range** %5, align 8
  %87 = getelementptr inbounds %struct.send_range, %struct.send_range* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @DNODES_PER_BLOCK_SHIFT, align 4
  %90 = shl i32 %88, %89
  store i32 %90, i32* %8, align 4
  %91 = load %struct.send_range*, %struct.send_range** %5, align 8
  %92 = getelementptr inbounds %struct.send_range, %struct.send_range* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @DNODES_PER_BLOCK_SHIFT, align 4
  %95 = shl i32 %93, %94
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %82, %67
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp sle i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  store i32 -1, i32* %3, align 4
  br label %163

101:                                              ; preds = %96
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp sge i32 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  store i32 1, i32* %3, align 4
  br label %163

106:                                              ; preds = %101
  %107 = load %struct.send_range*, %struct.send_range** %5, align 8
  %108 = getelementptr inbounds %struct.send_range, %struct.send_range* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @OBJECT_RANGE, align 8
  %111 = icmp eq i64 %109, %110
  %112 = zext i1 %111 to i32
  %113 = load %struct.send_range*, %struct.send_range** %4, align 8
  %114 = getelementptr inbounds %struct.send_range, %struct.send_range* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @OBJECT_RANGE, align 8
  %117 = icmp eq i64 %115, %116
  %118 = zext i1 %117 to i32
  %119 = call i32 @TREE_CMP(i32 %112, i32 %118)
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  %121 = call i64 @unlikely(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %106
  %124 = load i32, i32* %10, align 4
  store i32 %124, i32* %3, align 4
  br label %163

125:                                              ; preds = %106
  %126 = load %struct.send_range*, %struct.send_range** %5, align 8
  %127 = getelementptr inbounds %struct.send_range, %struct.send_range* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @OBJECT, align 8
  %130 = icmp eq i64 %128, %129
  %131 = zext i1 %130 to i32
  %132 = load %struct.send_range*, %struct.send_range** %4, align 8
  %133 = getelementptr inbounds %struct.send_range, %struct.send_range* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @OBJECT, align 8
  %136 = icmp eq i64 %134, %135
  %137 = zext i1 %136 to i32
  %138 = call i32 @TREE_CMP(i32 %131, i32 %137)
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* %10, align 4
  %140 = call i64 @unlikely(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %125
  %143 = load i32, i32* %10, align 4
  store i32 %143, i32* %3, align 4
  br label %163

144:                                              ; preds = %125
  %145 = load %struct.send_range*, %struct.send_range** %4, align 8
  %146 = getelementptr inbounds %struct.send_range, %struct.send_range* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.send_range*, %struct.send_range** %5, align 8
  %149 = getelementptr inbounds %struct.send_range, %struct.send_range* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = icmp sle i32 %147, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %144
  store i32 -1, i32* %3, align 4
  br label %163

153:                                              ; preds = %144
  %154 = load %struct.send_range*, %struct.send_range** %4, align 8
  %155 = getelementptr inbounds %struct.send_range, %struct.send_range* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.send_range*, %struct.send_range** %5, align 8
  %158 = getelementptr inbounds %struct.send_range, %struct.send_range* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = icmp sge i32 %156, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %153
  store i32 1, i32* %3, align 4
  br label %163

162:                                              ; preds = %153
  store i32 0, i32* %3, align 4
  br label %163

163:                                              ; preds = %162, %161, %152, %142, %123, %105, %100, %23, %16
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @TREE_CMP(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
