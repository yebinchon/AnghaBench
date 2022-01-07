; ModuleID = '/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_multiSelectOrderByKeyInfo.c'
source_filename = "/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_multiSelectOrderByKeyInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32*, %struct.TYPE_33__** }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_29__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.TYPE_33__* }
%struct.TYPE_28__ = type { %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i32, %struct.ExprList_item* }
%struct.ExprList_item = type { i32, %struct.TYPE_32__*, %struct.TYPE_26__ }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i64 }

@EP_Collate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_30__* (%struct.TYPE_29__*, %struct.TYPE_28__*, i32)* @multiSelectOrderByKeyInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_30__* @multiSelectOrderByKeyInfo(%struct.TYPE_29__* %0, %struct.TYPE_28__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_31__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca %struct.TYPE_30__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ExprList_item*, align 8
  %13 = alloca %struct.TYPE_32__*, align 8
  %14 = alloca %struct.TYPE_33__*, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %4, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  store %struct.TYPE_31__* %17, %struct.TYPE_31__** %7, align 8
  %18 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_31__*, %struct.TYPE_31__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %8, align 4
  %23 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_27__*, %struct.TYPE_27__** %24, align 8
  store %struct.TYPE_27__* %25, %struct.TYPE_27__** %9, align 8
  %26 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %27, %28
  %30 = call %struct.TYPE_30__* @sqlite3KeyInfoAlloc(%struct.TYPE_27__* %26, i32 %29, i32 1)
  store %struct.TYPE_30__* %30, %struct.TYPE_30__** %10, align 8
  %31 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %32 = icmp ne %struct.TYPE_30__* %31, null
  br i1 %32, label %33, label %117

33:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %113, %33
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %116

38:                                               ; preds = %34
  %39 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %39, i32 0, i32 1
  %41 = load %struct.ExprList_item*, %struct.ExprList_item** %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %41, i64 %43
  store %struct.ExprList_item* %44, %struct.ExprList_item** %12, align 8
  %45 = load %struct.ExprList_item*, %struct.ExprList_item** %12, align 8
  %46 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %45, i32 0, i32 1
  %47 = load %struct.TYPE_32__*, %struct.TYPE_32__** %46, align 8
  store %struct.TYPE_32__* %47, %struct.TYPE_32__** %13, align 8
  %48 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @EP_Collate, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %38
  %55 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %56 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %57 = call %struct.TYPE_33__* @sqlite3ExprCollSeq(%struct.TYPE_29__* %55, %struct.TYPE_32__* %56)
  store %struct.TYPE_33__* %57, %struct.TYPE_33__** %14, align 8
  br label %88

58:                                               ; preds = %38
  %59 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %60 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %61 = load %struct.ExprList_item*, %struct.ExprList_item** %12, align 8
  %62 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %65, 1
  %67 = call %struct.TYPE_33__* @multiSelectCollSeq(%struct.TYPE_29__* %59, %struct.TYPE_28__* %60, i64 %66)
  store %struct.TYPE_33__* %67, %struct.TYPE_33__** %14, align 8
  %68 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %69 = icmp eq %struct.TYPE_33__* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %58
  %71 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_33__*, %struct.TYPE_33__** %72, align 8
  store %struct.TYPE_33__* %73, %struct.TYPE_33__** %14, align 8
  br label %74

74:                                               ; preds = %70, %58
  %75 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %76 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %77 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call %struct.TYPE_32__* @sqlite3ExprAddCollateString(%struct.TYPE_29__* %75, %struct.TYPE_32__* %76, i32 %79)
  %81 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %81, i32 0, i32 1
  %83 = load %struct.ExprList_item*, %struct.ExprList_item** %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %83, i64 %85
  %87 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %86, i32 0, i32 1
  store %struct.TYPE_32__* %80, %struct.TYPE_32__** %87, align 8
  br label %88

88:                                               ; preds = %74, %54
  %89 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %90 = call i32 @sqlite3KeyInfoIsWriteable(%struct.TYPE_30__* %89)
  %91 = call i32 @assert(i32 %90)
  %92 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %93 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %94, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %95, i64 %97
  store %struct.TYPE_33__* %92, %struct.TYPE_33__** %98, align 8
  %99 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %99, i32 0, i32 1
  %101 = load %struct.ExprList_item*, %struct.ExprList_item** %100, align 8
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %101, i64 %103
  %105 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 %106, i32* %112, align 4
  br label %113

113:                                              ; preds = %88
  %114 = load i32, i32* %11, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %11, align 4
  br label %34

116:                                              ; preds = %34
  br label %117

117:                                              ; preds = %116, %3
  %118 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  ret %struct.TYPE_30__* %118
}

declare dso_local %struct.TYPE_30__* @sqlite3KeyInfoAlloc(%struct.TYPE_27__*, i32, i32) #1

declare dso_local %struct.TYPE_33__* @sqlite3ExprCollSeq(%struct.TYPE_29__*, %struct.TYPE_32__*) #1

declare dso_local %struct.TYPE_33__* @multiSelectCollSeq(%struct.TYPE_29__*, %struct.TYPE_28__*, i64) #1

declare dso_local %struct.TYPE_32__* @sqlite3ExprAddCollateString(%struct.TYPE_29__*, %struct.TYPE_32__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3KeyInfoIsWriteable(%struct.TYPE_30__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
