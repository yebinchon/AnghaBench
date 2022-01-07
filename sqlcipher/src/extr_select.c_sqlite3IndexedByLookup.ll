; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_select.c_sqlite3IndexedByLookup.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_select.c_sqlite3IndexedByLookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.SrcList_item = type { %struct.TYPE_12__*, %struct.TYPE_9__, %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [18 x i8] c"no such index: %s\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3IndexedByLookup(%struct.TYPE_11__* %0, %struct.SrcList_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.SrcList_item*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.SrcList_item* %1, %struct.SrcList_item** %5, align 8
  %9 = load %struct.SrcList_item*, %struct.SrcList_item** %5, align 8
  %10 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %9, i32 0, i32 2
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %12 = icmp ne %struct.TYPE_10__* %11, null
  br i1 %12, label %13, label %61

13:                                               ; preds = %2
  %14 = load %struct.SrcList_item*, %struct.SrcList_item** %5, align 8
  %15 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %61

19:                                               ; preds = %13
  %20 = load %struct.SrcList_item*, %struct.SrcList_item** %5, align 8
  %21 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %20, i32 0, i32 2
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %6, align 8
  %23 = load %struct.SrcList_item*, %struct.SrcList_item** %5, align 8
  %24 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %7, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %8, align 8
  br label %30

30:                                               ; preds = %43, %19
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %32 = icmp ne %struct.TYPE_12__* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i64 @sqlite3StrICmp(i32 %36, i8* %37)
  %39 = icmp ne i64 %38, 0
  br label %40

40:                                               ; preds = %33, %30
  %41 = phi i1 [ false, %30 ], [ %39, %33 ]
  br i1 %41, label %42, label %47

42:                                               ; preds = %40
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  store %struct.TYPE_12__* %46, %struct.TYPE_12__** %8, align 8
  br label %30

47:                                               ; preds = %40
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %49 = icmp ne %struct.TYPE_12__* %48, null
  br i1 %49, label %57, label %50

50:                                               ; preds = %47
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @sqlite3ErrorMsg(%struct.TYPE_11__* %51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %52, i32 0)
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 4
  %56 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %56, i32* %3, align 4
  br label %63

57:                                               ; preds = %47
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %59 = load %struct.SrcList_item*, %struct.SrcList_item** %5, align 8
  %60 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %59, i32 0, i32 0
  store %struct.TYPE_12__* %58, %struct.TYPE_12__** %60, align 8
  br label %61

61:                                               ; preds = %57, %13, %2
  %62 = load i32, i32* @SQLITE_OK, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %50
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64 @sqlite3StrICmp(i32, i8*) #1

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_11__*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
