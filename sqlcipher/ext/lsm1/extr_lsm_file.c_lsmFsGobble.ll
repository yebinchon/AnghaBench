; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_file.c_lsmFsGobble.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_file.c_lsmFsGobble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32* }
%struct.TYPE_10__ = type { i64, i64 }

@LSM_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lsmFsGobble(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1, i64* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* @LSM_OK, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %10, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %11, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i32*, i32** %10, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %30 = call i64 @fsSegmentRedirects(i32* %28, %struct.TYPE_10__* %29)
  %31 = icmp eq i64 0, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %4
  %37 = load i32*, i32** %10, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %39 = load i64*, i64** %7, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @fsPageRedirects(i32* %37, %struct.TYPE_10__* %38, i64 %41)
  %43 = icmp eq i64 0, %42
  br label %44

44:                                               ; preds = %36, %4
  %45 = phi i1 [ false, %4 ], [ %43, %36 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load i32*, i32** %10, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @fsPageToBlock(i32* %48, i64 %51)
  store i32 %52, i32* %12, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = load i32, i32* %12, align 4
  %58 = call i64 @fsFirstPageOnBlock(i32* %56, i32 %57)
  %59 = sub nsw i64 %55, %58
  %60 = trunc i64 %59 to i32
  %61 = sext i32 %60 to i64
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, %61
  store i64 %65, i64* %63, align 8
  br label %66

66:                                               ; preds = %96, %44
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @LSM_OK, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %112

70:                                               ; preds = %66
  store i32 0, i32* %13, align 4
  %71 = load i32*, i32** %10, align 8
  %72 = load i32, i32* %12, align 4
  %73 = load i64*, i64** %7, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i64 @firstOnBlock(i32* %71, i32 %72, i64* %73, i32 %74)
  store i64 %75, i64* %14, align 8
  %76 = load i64, i64* %14, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %70
  %79 = load i64, i64* %14, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  br label %112

82:                                               ; preds = %70
  %83 = load i32*, i32** %10, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @fsBlockNext(i32* %83, %struct.TYPE_10__* %84, i32 %85, i32* %13)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @LSM_OK, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %82
  %91 = load i32*, i32** %10, align 8
  %92 = load i32*, i32** %11, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @fsFreeBlock(i32* %91, i32* %92, %struct.TYPE_10__* %93, i32 %94)
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %90, %82
  %97 = load i32*, i32** %10, align 8
  %98 = load i32, i32* %12, align 4
  %99 = call i64 @fsLastPageOnBlock(i32* %97, i32 %98)
  %100 = add nsw i64 1, %99
  %101 = load i32*, i32** %10, align 8
  %102 = load i32, i32* %12, align 4
  %103 = call i64 @fsFirstPageOnBlock(i32* %101, i32 %102)
  %104 = sub nsw i64 %100, %103
  %105 = trunc i64 %104 to i32
  %106 = sext i32 %105 to i64
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = sub nsw i64 %109, %106
  store i64 %110, i64* %108, align 8
  %111 = load i32, i32* %13, align 4
  store i32 %111, i32* %12, align 4
  br label %66

112:                                              ; preds = %78, %66
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i32*, i32** %10, align 8
  %117 = load i32, i32* %12, align 4
  %118 = call i64 @fsFirstPageOnBlock(i32* %116, i32 %117)
  %119 = sub nsw i64 %115, %118
  %120 = trunc i64 %119 to i32
  %121 = sext i32 %120 to i64
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = sub nsw i64 %124, %121
  store i64 %125, i64* %123, align 8
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp sgt i64 %128, 0
  %130 = zext i1 %129 to i32
  %131 = call i32 @assert(i32 %130)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @fsSegmentRedirects(i32*, %struct.TYPE_10__*) #1

declare dso_local i64 @fsPageRedirects(i32*, %struct.TYPE_10__*, i64) #1

declare dso_local i32 @fsPageToBlock(i32*, i64) #1

declare dso_local i64 @fsFirstPageOnBlock(i32*, i32) #1

declare dso_local i64 @firstOnBlock(i32*, i32, i64*, i32) #1

declare dso_local i32 @fsBlockNext(i32*, %struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @fsFreeBlock(i32*, i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i64 @fsLastPageOnBlock(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
