; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_nodeRelease.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_nodeRelease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_10__* }

@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*)* @nodeRelease to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nodeRelease(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %6 = load i32, i32* @SQLITE_OK, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %8 = icmp ne %struct.TYPE_10__* %7, null
  br i1 %8, label %9, label %68

9:                                                ; preds = %2
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, -1
  store i64 %25, i64* %23, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %67

30:                                               ; preds = %9
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, -1
  store i64 %34, i64* %32, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  store i32 -1, i32* %41, align 8
  br label %42

42:                                               ; preds = %39, %30
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = icmp ne %struct.TYPE_10__* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = call i32 @nodeRelease(%struct.TYPE_11__* %48, %struct.TYPE_10__* %51)
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %47, %42
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @SQLITE_OK, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %60 = call i32 @nodeWrite(%struct.TYPE_11__* %58, %struct.TYPE_10__* %59)
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %57, %53
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %64 = call i32 @nodeHashDelete(%struct.TYPE_11__* %62, %struct.TYPE_10__* %63)
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %66 = call i32 @sqlite3_free(%struct.TYPE_10__* %65)
  br label %67

67:                                               ; preds = %61, %9
  br label %68

68:                                               ; preds = %67, %2
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @nodeWrite(%struct.TYPE_11__*, %struct.TYPE_10__*) #1

declare dso_local i32 @nodeHashDelete(%struct.TYPE_11__*, %struct.TYPE_10__*) #1

declare dso_local i32 @sqlite3_free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
