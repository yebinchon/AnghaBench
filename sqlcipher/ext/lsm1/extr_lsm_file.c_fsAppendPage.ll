; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_file.c_fsAppendPage.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_file.c_fsAppendPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64, i32 }

@LSM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_9__*, i64*, i32*, i32*)* @fsAppendPage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsAppendPage(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i64* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %8, align 8
  store i64* %2, i64** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %12, align 8
  %20 = load i64, i64* %12, align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32*, i32** %10, align 8
  store i32 0, i32* %24, align 4
  %25 = load i32*, i32** %11, align 8
  store i32 0, i32* %25, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %27 = load i64, i64* %12, align 8
  %28 = call i64 @fsIsLast(%struct.TYPE_10__* %26, i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %55

30:                                               ; preds = %5
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %32 = load i64, i64* %12, align 8
  %33 = call i32 @fsPageToBlock(%struct.TYPE_10__* %31, i64 %32)
  store i32 %33, i32* %15, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %41 = load i32, i32* %15, align 4
  %42 = call i32 @fsBlockNext(%struct.TYPE_10__* %40, i32 0, i32 %41, i32* %14)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* @LSM_OK, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %30
  %47 = load i32, i32* %13, align 4
  store i32 %47, i32* %6, align 4
  br label %88

48:                                               ; preds = %30
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %50 = load i32, i32* %14, align 4
  %51 = call i64 @fsFirstPageOnBlock(%struct.TYPE_10__* %49, i32 %50)
  %52 = load i64*, i64** %9, align 8
  store i64 %51, i64* %52, align 8
  %53 = load i32, i32* %15, align 4
  %54 = load i32*, i32** %10, align 8
  store i32 %53, i32* %54, align 4
  br label %78

55:                                               ; preds = %5
  %56 = load i64, i64* %12, align 8
  %57 = add nsw i64 %56, 1
  %58 = load i64*, i64** %9, align 8
  store i64 %57, i64* %58, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %60 = load i64*, i64** %9, align 8
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @fsIsLast(%struct.TYPE_10__* %59, i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %55
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @lsmBlockAllocate(i32 %67, i32 0, i32* %16)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* @LSM_OK, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i32, i32* %13, align 4
  store i32 %73, i32* %6, align 4
  br label %88

74:                                               ; preds = %64
  %75 = load i32, i32* %16, align 4
  %76 = load i32*, i32** %11, align 8
  store i32 %75, i32* %76, align 4
  br label %77

77:                                               ; preds = %74, %55
  br label %78

78:                                               ; preds = %77, %48
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  %83 = load i64*, i64** %9, align 8
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load i32, i32* @LSM_OK, align 4
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %78, %72, %46
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @fsIsLast(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @fsPageToBlock(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @fsBlockNext(%struct.TYPE_10__*, i32, i32, i32*) #1

declare dso_local i64 @fsFirstPageOnBlock(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @lsmBlockAllocate(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
