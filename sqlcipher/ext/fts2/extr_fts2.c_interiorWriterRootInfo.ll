; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_interiorWriterRootInfo.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_interiorWriterRootInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_12__*, i64, %struct.TYPE_13__*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i8* }

@ROOT_MAX = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_12__*, i8**, i32*, i32*)* @interiorWriterRootInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interiorWriterRootInfo(i32* %0, %struct.TYPE_12__* %1, i8** %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %12, align 8
  store i32 0, i32* %13, align 4
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %22 = icmp eq %struct.TYPE_13__* %18, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %5
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @ROOT_MAX, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %23
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = load i8**, i8*** %9, align 8
  store i8* %34, i8** %35, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** %10, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @SQLITE_OK, align 4
  store i32 %41, i32* %6, align 4
  br label %136

42:                                               ; preds = %23, %5
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %44 = call i32 @ASSERT_VALID_INTERIOR_BLOCK(%struct.TYPE_13__* %43)
  %45 = load i32*, i32** %7, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @block_insert(i32* %45, i8* %49, i32 %53, i32* %13)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* @SQLITE_OK, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %42
  %59 = load i32, i32* %14, align 4
  store i32 %59, i32* %6, align 4
  br label %136

60:                                               ; preds = %42
  %61 = load i32, i32* %13, align 4
  %62 = load i32*, i32** %11, align 8
  store i32 %61, i32* %62, align 4
  %63 = call %struct.TYPE_12__* @sqlite3_malloc(i32 32)
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  store %struct.TYPE_12__* %63, %struct.TYPE_12__** %65, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, 1
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %13, align 4
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = call i32 @interiorWriterInit(i64 %69, i32 %73, i32 %77, i32 %78, %struct.TYPE_12__* %81)
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %84, align 8
  store %struct.TYPE_13__* %85, %struct.TYPE_13__** %12, align 8
  br label %86

86:                                               ; preds = %123, %60
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %88 = icmp ne %struct.TYPE_13__* %87, null
  br i1 %88, label %89, label %127

89:                                               ; preds = %86
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %91 = call i32 @ASSERT_VALID_INTERIOR_BLOCK(%struct.TYPE_13__* %90)
  %92 = load i32*, i32** %7, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @block_insert(i32* %92, i8* %96, i32 %100, i32* %13)
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* @SQLITE_OK, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %89
  %106 = load i32, i32* %14, align 4
  store i32 %106, i32* %6, align 4
  br label %136

107:                                              ; preds = %89
  %108 = load i32, i32* %13, align 4
  %109 = load i32*, i32** %11, align 8
  store i32 %108, i32* %109, align 4
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %111, align 8
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %13, align 4
  %122 = call i32 @interiorWriterAppend(%struct.TYPE_12__* %112, i32 %116, i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %107
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 2
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %125, align 8
  store %struct.TYPE_13__* %126, %struct.TYPE_13__** %12, align 8
  br label %86

127:                                              ; preds = %86
  %128 = load i32*, i32** %7, align 8
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %130, align 8
  %132 = load i8**, i8*** %9, align 8
  %133 = load i32*, i32** %10, align 8
  %134 = load i32*, i32** %11, align 8
  %135 = call i32 @interiorWriterRootInfo(i32* %128, %struct.TYPE_12__* %131, i8** %132, i32* %133, i32* %134)
  store i32 %135, i32* %6, align 4
  br label %136

136:                                              ; preds = %127, %105, %58, %30
  %137 = load i32, i32* %6, align 4
  ret i32 %137
}

declare dso_local i32 @ASSERT_VALID_INTERIOR_BLOCK(%struct.TYPE_13__*) #1

declare dso_local i32 @block_insert(i32*, i8*, i32, i32*) #1

declare dso_local %struct.TYPE_12__* @sqlite3_malloc(i32) #1

declare dso_local i32 @interiorWriterInit(i64, i32, i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @interiorWriterAppend(%struct.TYPE_12__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
