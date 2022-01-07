; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_removeNode.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_removeNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_13__*, %struct.TYPE_13__* }

@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_13__*, i32)* @removeNode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @removeNode(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %10, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 1
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %20 = call i32 @nodeParentIndex(%struct.TYPE_14__* %18, %struct.TYPE_13__* %19, i32* %11)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @SQLITE_OK, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %3
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  store %struct.TYPE_13__* %27, %struct.TYPE_13__** %10, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 3
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %29, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  %35 = call i32 @deleteCell(%struct.TYPE_14__* %30, %struct.TYPE_13__* %31, i32 %32, i32 %34)
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %24, %3
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %39 = call i32 @nodeRelease(%struct.TYPE_14__* %37, %struct.TYPE_13__* %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @SQLITE_OK, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %43, %36
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @SQLITE_OK, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %4, align 4
  br label %111

51:                                               ; preds = %45
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @sqlite3_bind_int64(i32 %54, i32 1, i32 %57)
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @sqlite3_step(i32 %61)
  %63 = load i32, i32* @SQLITE_OK, align 4
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @sqlite3_reset(i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = icmp ne i32 %63, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %51
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %4, align 4
  br label %111

71:                                               ; preds = %51
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @sqlite3_bind_int64(i32 %74, i32 1, i32 %77)
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @sqlite3_step(i32 %81)
  %83 = load i32, i32* @SQLITE_OK, align 4
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @sqlite3_reset(i32 %86)
  store i32 %87, i32* %8, align 4
  %88 = icmp ne i32 %83, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %71
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %4, align 4
  br label %111

91:                                               ; preds = %71
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %94 = call i32 @nodeHashDelete(%struct.TYPE_14__* %92, %struct.TYPE_13__* %93)
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %99, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 2
  store %struct.TYPE_13__* %100, %struct.TYPE_13__** %102, align 8
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 8
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  store %struct.TYPE_13__* %107, %struct.TYPE_13__** %109, align 8
  %110 = load i32, i32* @SQLITE_OK, align 4
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %91, %89, %69, %49
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @nodeParentIndex(%struct.TYPE_14__*, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @deleteCell(%struct.TYPE_14__*, %struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @nodeRelease(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

declare dso_local i32 @sqlite3_bind_int64(i32, i32, i32) #1

declare dso_local i32 @sqlite3_step(i32) #1

declare dso_local i32 @sqlite3_reset(i32) #1

declare dso_local i32 @nodeHashDelete(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
