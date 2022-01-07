; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_expr.c_sqlite3IdListDup.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_expr.c_sqlite3IdListDup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.IdList_item* }
%struct.IdList_item = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @sqlite3IdListDup(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.IdList_item*, align 8
  %9 = alloca %struct.IdList_item*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp ne i32* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = icmp eq %struct.TYPE_5__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %86

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = call i8* @sqlite3DbMallocRawNN(i32* %18, i32 16)
  %20 = bitcast i8* %19 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %6, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = icmp eq %struct.TYPE_5__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %86

24:                                               ; preds = %17
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 8
  %36 = trunc i64 %35 to i32
  %37 = call i8* @sqlite3DbMallocRawNN(i32* %30, i32 %36)
  %38 = bitcast i8* %37 to %struct.IdList_item*
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  store %struct.IdList_item* %38, %struct.IdList_item** %40, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load %struct.IdList_item*, %struct.IdList_item** %42, align 8
  %44 = icmp eq %struct.IdList_item* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %24
  %46 = load i32*, i32** %4, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %48 = call i32 @sqlite3DbFreeNN(i32* %46, %struct.TYPE_5__* %47)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %86

49:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %81, %49
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %84

56:                                               ; preds = %50
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load %struct.IdList_item*, %struct.IdList_item** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.IdList_item, %struct.IdList_item* %59, i64 %61
  store %struct.IdList_item* %62, %struct.IdList_item** %8, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load %struct.IdList_item*, %struct.IdList_item** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.IdList_item, %struct.IdList_item* %65, i64 %67
  store %struct.IdList_item* %68, %struct.IdList_item** %9, align 8
  %69 = load i32*, i32** %4, align 8
  %70 = load %struct.IdList_item*, %struct.IdList_item** %9, align 8
  %71 = getelementptr inbounds %struct.IdList_item, %struct.IdList_item* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @sqlite3DbStrDup(i32* %69, i32 %72)
  %74 = load %struct.IdList_item*, %struct.IdList_item** %8, align 8
  %75 = getelementptr inbounds %struct.IdList_item, %struct.IdList_item* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.IdList_item*, %struct.IdList_item** %9, align 8
  %77 = getelementptr inbounds %struct.IdList_item, %struct.IdList_item* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.IdList_item*, %struct.IdList_item** %8, align 8
  %80 = getelementptr inbounds %struct.IdList_item, %struct.IdList_item* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %56
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %50

84:                                               ; preds = %50
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %85, %struct.TYPE_5__** %3, align 8
  br label %86

86:                                               ; preds = %84, %45, %23, %16
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %87
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @sqlite3DbMallocRawNN(i32*, i32) #1

declare dso_local i32 @sqlite3DbFreeNN(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @sqlite3DbStrDup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
