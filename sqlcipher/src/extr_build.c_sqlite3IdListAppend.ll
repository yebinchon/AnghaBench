; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3IdListAppend.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3IdListAppend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32* }
%struct.TYPE_12__ = type { %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i64 }

@IN_RENAME_OBJECT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @sqlite3IdListAppend(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %8, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %14 = icmp eq %struct.TYPE_12__* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load i32*, i32** %8, align 8
  %17 = call %struct.TYPE_12__* @sqlite3DbMallocZero(i32* %16, i32 16)
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %6, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %19 = icmp eq %struct.TYPE_12__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %76

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21, %3
  %23 = load i32*, i32** %8, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = call %struct.TYPE_13__* @sqlite3ArrayAllocate(i32* %23, %struct.TYPE_13__* %26, i32 8, i32* %28, i32* %9)
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %31, align 8
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %22
  %35 = load i32*, i32** %8, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %37 = call i32 @sqlite3IdListDelete(i32* %35, %struct.TYPE_12__* %36)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %76

38:                                               ; preds = %22
  %39 = load i32*, i32** %8, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call i64 @sqlite3NameFromToken(i32* %39, i32* %40)
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  store i64 %41, i64* %48, align 8
  %49 = load i64, i64* @IN_RENAME_OBJECT, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %74

51:                                               ; preds = %38
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %51
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i8*
  %72 = load i32*, i32** %7, align 8
  %73 = call i32 @sqlite3RenameTokenMap(%struct.TYPE_11__* %62, i8* %71, i32* %72)
  br label %74

74:                                               ; preds = %61, %51, %38
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %75, %struct.TYPE_12__** %4, align 8
  br label %76

76:                                               ; preds = %74, %34, %20
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  ret %struct.TYPE_12__* %77
}

declare dso_local %struct.TYPE_12__* @sqlite3DbMallocZero(i32*, i32) #1

declare dso_local %struct.TYPE_13__* @sqlite3ArrayAllocate(i32*, %struct.TYPE_13__*, i32, i32*, i32*) #1

declare dso_local i32 @sqlite3IdListDelete(i32*, %struct.TYPE_12__*) #1

declare dso_local i64 @sqlite3NameFromToken(i32*, i32*) #1

declare dso_local i32 @sqlite3RenameTokenMap(%struct.TYPE_11__*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
