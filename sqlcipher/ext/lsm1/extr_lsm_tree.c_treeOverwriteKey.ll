; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_tree.c_treeOverwriteKey.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_tree.c_treeOverwriteKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i64, i32*, %struct.TYPE_18__** }
%struct.TYPE_18__ = type { i32* }

@LSM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.TYPE_19__*, i32, i32*)* @treeOverwriteKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @treeOverwriteKey(%struct.TYPE_16__* %0, %struct.TYPE_19__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @LSM_OK, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %83

18:                                               ; preds = %4
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  store %struct.TYPE_17__* %21, %struct.TYPE_17__** %9, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %23, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %24, i64 %27
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  store %struct.TYPE_18__* %29, %struct.TYPE_18__** %12, align 8
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %13, align 4
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ugt i64 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %18
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %49, 1
  %51 = icmp eq i32 %46, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %42
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %55 = bitcast %struct.TYPE_18__* %54 to i32*
  %56 = load i32*, i32** %8, align 8
  %57 = call %struct.TYPE_18__* @copyTreeLeaf(%struct.TYPE_16__* %53, i32* %55, i32* %11, i32* %56)
  store %struct.TYPE_18__* %57, %struct.TYPE_18__** %10, align 8
  br label %63

58:                                               ; preds = %42, %18
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = call %struct.TYPE_18__* @copyTreeNode(%struct.TYPE_16__* %59, %struct.TYPE_18__* %60, i32* %11, i32* %61)
  store %struct.TYPE_18__* %62, %struct.TYPE_18__** %10, align 8
  br label %63

63:                                               ; preds = %58, %52
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %65 = icmp ne %struct.TYPE_18__* %64, null
  br i1 %65, label %66, label %82

66:                                               ; preds = %63
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %67, i32* %73, align 4
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add i64 %76, -1
  store i64 %77, i64* %75, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @treeUpdatePtr(%struct.TYPE_16__* %78, %struct.TYPE_19__* %79, i32 %80)
  br label %82

82:                                               ; preds = %66, %63
  br label %83

83:                                               ; preds = %82, %4
  ret void
}

declare dso_local %struct.TYPE_18__* @copyTreeLeaf(%struct.TYPE_16__*, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_18__* @copyTreeNode(%struct.TYPE_16__*, %struct.TYPE_18__*, i32*, i32*) #1

declare dso_local i32 @treeUpdatePtr(%struct.TYPE_16__*, %struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
