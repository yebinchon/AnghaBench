; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5SegIterInit.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5SegIterInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_19__ = type { i64, i32, %struct.TYPE_17__*, i64, %struct.TYPE_18__* }
%struct.TYPE_17__ = type { i32, i64 }

@SQLITE_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, %struct.TYPE_18__*, %struct.TYPE_19__*)* @fts5SegIterInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts5SegIterInit(%struct.TYPE_20__* %0, %struct.TYPE_18__* %1, %struct.TYPE_19__* %2) #0 {
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %6, align 8
  %7 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %15 = icmp eq %struct.TYPE_17__* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  br label %80

18:                                               ; preds = %3
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SQLITE_OK, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %18
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %26 = call i32 @memset(%struct.TYPE_19__* %25, i32 0, i32 40)
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %29 = call i32 @fts5SegIterSetNext(%struct.TYPE_20__* %27, %struct.TYPE_19__* %28)
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 4
  store %struct.TYPE_18__* %30, %struct.TYPE_18__** %32, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %35, 1
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %41 = call i32 @fts5SegIterNextPage(%struct.TYPE_20__* %39, %struct.TYPE_19__* %40)
  br label %42

42:                                               ; preds = %24, %18
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SQLITE_OK, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %80

48:                                               ; preds = %42
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 1
  store i32 4, i32* %50, align 8
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp sgt i32 %55, 4
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert_nc(i32 %57)
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %60, align 8
  %62 = call i32 @fts5LeafFirstTermOff(%struct.TYPE_17__* %61)
  %63 = icmp eq i32 %62, 4
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert_nc(i32 %64)
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, 1
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 3
  store i64 %71, i64* %73, align 8
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %76 = call i32 @fts5SegIterLoadTerm(%struct.TYPE_20__* %74, %struct.TYPE_19__* %75, i32 0)
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %79 = call i32 @fts5SegIterLoadNPos(%struct.TYPE_20__* %77, %struct.TYPE_19__* %78)
  br label %80

80:                                               ; preds = %11, %48, %42
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @fts5SegIterSetNext(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i32 @fts5SegIterNextPage(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i32 @assert_nc(i32) #1

declare dso_local i32 @fts5LeafFirstTermOff(%struct.TYPE_17__*) #1

declare dso_local i32 @fts5SegIterLoadTerm(%struct.TYPE_20__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @fts5SegIterLoadNPos(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
