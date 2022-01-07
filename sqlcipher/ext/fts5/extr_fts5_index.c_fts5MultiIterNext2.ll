; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5MultiIterNext2.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5MultiIterNext2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_19__*, %struct.TYPE_18__* }
%struct.TYPE_19__ = type { i64, i32 (%struct.TYPE_21__*, %struct.TYPE_19__*, i32*)* }
%struct.TYPE_18__ = type { i32 }

@SQLITE_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, %struct.TYPE_20__*, i32*)* @fts5MultiIterNext2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts5MultiIterNext2(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SQLITE_OK, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %77

19:                                               ; preds = %3
  %20 = load i32*, i32** %6, align 8
  store i32 0, i32* %20, align 4
  br label %21

21:                                               ; preds = %71, %19
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i64 1
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i64 %32
  store %struct.TYPE_19__* %33, %struct.TYPE_19__** %8, align 8
  store i32 0, i32* %9, align 4
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SQLITE_OK, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 1
  %43 = load i32 (%struct.TYPE_21__*, %struct.TYPE_19__*, i32*)*, i32 (%struct.TYPE_21__*, %struct.TYPE_19__*, i32*)** %42, align 8
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %46 = call i32 %43(%struct.TYPE_21__* %44, %struct.TYPE_19__* %45, i32* %9)
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %21
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i64 @fts5MultiIterAdvanceRowid(%struct.TYPE_20__* %55, i32 %56, %struct.TYPE_19__** %8)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %54, %51, %21
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @fts5MultiIterAdvanced(%struct.TYPE_21__* %60, %struct.TYPE_20__* %61, i32 %62, i32 1)
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %65 = call i32 @fts5MultiIterSetEof(%struct.TYPE_20__* %64)
  %66 = load i32*, i32** %6, align 8
  store i32 1, i32* %66, align 4
  br label %67

67:                                               ; preds = %59, %54
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %70 = call i32 @fts5AssertMultiIterSetup(%struct.TYPE_21__* %68, %struct.TYPE_20__* %69)
  br label %71

71:                                               ; preds = %67
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %74 = call i64 @fts5MultiIterIsEmpty(%struct.TYPE_21__* %72, %struct.TYPE_20__* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %21, label %76

76:                                               ; preds = %71
  br label %77

77:                                               ; preds = %76, %3
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @fts5MultiIterAdvanceRowid(%struct.TYPE_20__*, i32, %struct.TYPE_19__**) #1

declare dso_local i32 @fts5MultiIterAdvanced(%struct.TYPE_21__*, %struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @fts5MultiIterSetEof(%struct.TYPE_20__*) #1

declare dso_local i32 @fts5AssertMultiIterSetup(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local i64 @fts5MultiIterIsEmpty(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
