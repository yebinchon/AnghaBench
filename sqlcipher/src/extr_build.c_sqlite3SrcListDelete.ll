; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3SrcListDelete.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3SrcListDelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.SrcList_item* }
%struct.SrcList_item = type { i32, i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3SrcListDelete(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.SrcList_item*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %8 = icmp eq %struct.TYPE_8__* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %91

10:                                               ; preds = %2
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load %struct.SrcList_item*, %struct.SrcList_item** %12, align 8
  store %struct.SrcList_item* %13, %struct.SrcList_item** %6, align 8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %82, %10
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %87

20:                                               ; preds = %14
  %21 = load i32*, i32** %3, align 8
  %22 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %23 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @sqlite3DbFree(i32* %21, i32 %24)
  %26 = load i32*, i32** %3, align 8
  %27 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %28 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @sqlite3DbFree(i32* %26, i32 %29)
  %31 = load i32*, i32** %3, align 8
  %32 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %33 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @sqlite3DbFree(i32* %31, i32 %34)
  %36 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %37 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %20
  %42 = load i32*, i32** %3, align 8
  %43 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %44 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @sqlite3DbFree(i32* %42, i32 %46)
  br label %48

48:                                               ; preds = %41, %20
  %49 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %50 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load i32*, i32** %3, align 8
  %56 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %57 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @sqlite3ExprListDelete(i32* %55, i32 %59)
  br label %61

61:                                               ; preds = %54, %48
  %62 = load i32*, i32** %3, align 8
  %63 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %64 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @sqlite3DeleteTable(i32* %62, i32 %65)
  %67 = load i32*, i32** %3, align 8
  %68 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %69 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @sqlite3SelectDelete(i32* %67, i32 %70)
  %72 = load i32*, i32** %3, align 8
  %73 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %74 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @sqlite3ExprDelete(i32* %72, i32 %75)
  %77 = load i32*, i32** %3, align 8
  %78 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %79 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @sqlite3IdListDelete(i32* %77, i32 %80)
  br label %82

82:                                               ; preds = %61
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  %85 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %86 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %85, i32 1
  store %struct.SrcList_item* %86, %struct.SrcList_item** %6, align 8
  br label %14

87:                                               ; preds = %14
  %88 = load i32*, i32** %3, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %90 = call i32 @sqlite3DbFreeNN(i32* %88, %struct.TYPE_8__* %89)
  br label %91

91:                                               ; preds = %87, %9
  ret void
}

declare dso_local i32 @sqlite3DbFree(i32*, i32) #1

declare dso_local i32 @sqlite3ExprListDelete(i32*, i32) #1

declare dso_local i32 @sqlite3DeleteTable(i32*, i32) #1

declare dso_local i32 @sqlite3SelectDelete(i32*, i32) #1

declare dso_local i32 @sqlite3ExprDelete(i32*, i32) #1

declare dso_local i32 @sqlite3IdListDelete(i32*, i32) #1

declare dso_local i32 @sqlite3DbFreeNN(i32*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
