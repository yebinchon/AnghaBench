; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_file.c_lsmFsSortedPadding.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_file.c_lsmFsSortedPadding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64*, i64 }
%struct.TYPE_9__ = type { i32, i32, i64 }

@LSM_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lsmFsSortedPadding(%struct.TYPE_10__* %0, i32* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [3 x i64], align 16
  %12 = alloca [5 x i64], align 16
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %6, align 8
  %13 = load i32, i32* @LSM_OK, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %144

18:                                               ; preds = %3
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %144

23:                                               ; preds = %18
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sdiv i32 %27, %30
  %32 = add nsw i32 1, %31
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = mul nsw i32 %32, %35
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i64 @fsPageToBlock(%struct.TYPE_10__* %38, i32 %39)
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i64 @fsPageToBlock(%struct.TYPE_10__* %41, i32 %42)
  %44 = icmp eq i64 %40, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = sub nsw i32 %47, %48
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @fsLastPageOnPagesBlock(%struct.TYPE_10__* %51, i32 %52)
  %54 = icmp sgt i32 %50, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %23
  %56 = load i32, i32* %10, align 4
  %57 = sub nsw i32 %56, 4
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %55, %23
  %59 = load i32, i32* %10, align 4
  %60 = icmp sge i32 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load i32, i32* %10, align 4
  %64 = icmp sge i32 %63, 6
  br i1 %64, label %65, label %96

65:                                               ; preds = %58
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* %10, align 4
  %72 = sub nsw i32 %71, 6
  store i32 %72, i32* %10, align 4
  %73 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 0
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @putRecordSize(i64* %73, i32 %74, i32 1)
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %78 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 0
  %79 = call i32 @fsAppendData(%struct.TYPE_10__* %76, %struct.TYPE_9__* %77, i64* %78, i32 24, i32* %7)
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @memset(i64* %82, i32 0, i32 %83)
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load i64*, i64** %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @fsAppendData(%struct.TYPE_10__* %85, %struct.TYPE_9__* %86, i64* %89, i32 %90, i32* %7)
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %94 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 0
  %95 = call i32 @fsAppendData(%struct.TYPE_10__* %92, %struct.TYPE_9__* %93, i64* %94, i32 24, i32* %7)
  br label %116

96:                                               ; preds = %58
  %97 = load i32, i32* %10, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %115

99:                                               ; preds = %96
  %100 = bitcast [5 x i64]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %100, i8 0, i64 40, i1 false)
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [5 x i64], [5 x i64]* %12, i64 0, i64 0
  store i64 %102, i64* %103, align 16
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = load i32, i32* %10, align 4
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [5 x i64], [5 x i64]* %12, i64 0, i64 %108
  store i64 %105, i64* %109, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %112 = getelementptr inbounds [5 x i64], [5 x i64]* %12, i64 0, i64 0
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @fsAppendData(%struct.TYPE_10__* %110, %struct.TYPE_9__* %111, i64* %112, i32 %113, i32* %7)
  br label %115

115:                                              ; preds = %99, %96
  br label %116

116:                                              ; preds = %115, %65
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @LSM_OK, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %140, label %120

120:                                              ; preds = %116
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @fsLastPageOnPagesBlock(%struct.TYPE_10__* %124, i32 %127)
  %129 = icmp eq i32 %123, %128
  br i1 %129, label %140, label %130

130:                                              ; preds = %120
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, 1
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = srem i32 %134, %137
  %139 = icmp eq i32 %138, 0
  br label %140

140:                                              ; preds = %130, %120, %116
  %141 = phi i1 [ true, %120 ], [ true, %116 ], [ %139, %130 ]
  %142 = zext i1 %141 to i32
  %143 = call i32 @assert(i32 %142)
  br label %144

144:                                              ; preds = %140, %18, %3
  %145 = load i32, i32* %7, align 4
  ret i32 %145
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @fsPageToBlock(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @fsLastPageOnPagesBlock(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @putRecordSize(i64*, i32, i32) #1

declare dso_local i32 @fsAppendData(%struct.TYPE_10__*, %struct.TYPE_9__*, i64*, i32, i32*) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
