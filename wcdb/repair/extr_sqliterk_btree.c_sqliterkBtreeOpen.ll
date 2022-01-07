; ModuleID = '/home/carl/AnghaBench/wcdb/repair/extr_sqliterk_btree.c_sqliterkBtreeOpen.c'
source_filename = "/home/carl/AnghaBench/wcdb/repair/extr_sqliterk_btree.c_sqliterkBtreeOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32*, i32*, i32, i32 }

@SQLITERK_MISUSE = common dso_local global i32 0, align 4
@SQLITERK_OK = common dso_local global i32 0, align 4
@SQLITERK_NOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"sqlite_master\00", align 1
@sqliterk_btree_type_master = common dso_local global i32 0, align 4
@sqliterk_btree_type_index = common dso_local global i32 0, align 4
@sqliterk_btree_type_table = common dso_local global i32 0, align 4
@SQLITERK_DAMAGED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqliterkBtreeOpen(i32* %0, i32* %1, i32 %2, %struct.TYPE_6__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_6__** %3, %struct.TYPE_6__*** %9, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  %16 = icmp ne %struct.TYPE_6__** %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %14, %4
  %18 = load i32, i32* @SQLITERK_MISUSE, align 4
  store i32 %18, i32* %5, align 4
  br label %126

19:                                               ; preds = %14
  %20 = load i32, i32* @SQLITERK_OK, align 4
  store i32 %20, i32* %10, align 4
  %21 = call %struct.TYPE_6__* @sqliterkOSMalloc(i32 40)
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %11, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %23 = icmp ne %struct.TYPE_6__* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @SQLITERK_NOMEM, align 4
  store i32 %25, i32* %10, align 4
  br label %117

26:                                               ; preds = %19
  %27 = load i32*, i32** %7, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 5
  store i32* %27, i32** %29, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 5
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 6
  %36 = call i32 @sqliterkPageAcquire(i32* %32, i32 %33, i32* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @SQLITERK_OK, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %26
  br label %117

41:                                               ; preds = %26
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %46 = load i32, i32* @sqliterk_btree_type_master, align 4
  %47 = call i32 @sqliterkBtreeSetMeta(%struct.TYPE_6__* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @SQLITERK_OK, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %117

52:                                               ; preds = %44
  br label %69

53:                                               ; preds = %41
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @sqliterkPageGetType(i32 %56)
  switch i32 %57, label %66 [
    i32 131, label %58
    i32 129, label %58
    i32 130, label %62
    i32 128, label %62
  ]

58:                                               ; preds = %53, %53
  %59 = load i32, i32* @sqliterk_btree_type_index, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 7
  store i32 %59, i32* %61, align 4
  br label %68

62:                                               ; preds = %53, %53
  %63 = load i32, i32* @sqliterk_btree_type_table, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 7
  store i32 %63, i32* %65, align 4
  br label %68

66:                                               ; preds = %53
  %67 = load i32, i32* @SQLITERK_DAMAGED, align 4
  store i32 %67, i32* %10, align 4
  br label %117

68:                                               ; preds = %62, %58
  br label %69

69:                                               ; preds = %68, %52
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @sqliterkPageClearData(i32 %72)
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 5
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @sqliterkPagerGetUsableSize(i32* %76)
  %78 = sub nsw i32 %77, 12
  %79 = mul nsw i32 %78, 64
  %80 = sdiv i32 %79, 255
  %81 = sub nsw i32 %80, 23
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 5
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @sqliterkPagerGetUsableSize(i32* %86)
  %88 = sub nsw i32 %87, 12
  %89 = mul nsw i32 %88, 32
  %90 = sdiv i32 %89, 255
  %91 = sub nsw i32 %90, 23
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 5
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @sqliterkPagerGetUsableSize(i32* %96)
  %98 = sub nsw i32 %97, 35
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 5
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @sqliterkPagerGetUsableSize(i32* %103)
  %105 = sub nsw i32 %104, 12
  %106 = mul nsw i32 %105, 32
  %107 = sdiv i32 %106, 255
  %108 = sub nsw i32 %107, 23
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  %111 = load i32*, i32** %6, align 8
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 4
  store i32* %111, i32** %113, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %115 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  store %struct.TYPE_6__* %114, %struct.TYPE_6__** %115, align 8
  %116 = load i32, i32* @SQLITERK_OK, align 4
  store i32 %116, i32* %5, align 4
  br label %126

117:                                              ; preds = %66, %51, %40, %24
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %119 = icmp ne %struct.TYPE_6__* %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %122 = call i32 @sqliterkBtreeClose(%struct.TYPE_6__* %121)
  br label %123

123:                                              ; preds = %120, %117
  %124 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %124, align 8
  %125 = load i32, i32* %10, align 4
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %123, %69, %17
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local %struct.TYPE_6__* @sqliterkOSMalloc(i32) #1

declare dso_local i32 @sqliterkPageAcquire(i32*, i32, i32*) #1

declare dso_local i32 @sqliterkBtreeSetMeta(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @sqliterkPageGetType(i32) #1

declare dso_local i32 @sqliterkPageClearData(i32) #1

declare dso_local i32 @sqliterkPagerGetUsableSize(i32*) #1

declare dso_local i32 @sqliterkBtreeClose(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
