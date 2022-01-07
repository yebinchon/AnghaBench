; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3SrcListAppend.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3SrcListAppend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32* }
%struct.TYPE_16__ = type { i32, i32, %struct.SrcList_item* }
%struct.SrcList_item = type { i32, i8*, i8* }
%struct.TYPE_15__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @sqlite3SrcListAppend(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1, %struct.TYPE_15__* %2, %struct.TYPE_15__* %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.SrcList_item*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %9, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %14 = icmp eq %struct.TYPE_15__* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %17 = icmp ne %struct.TYPE_15__* %16, null
  br label %18

18:                                               ; preds = %15, %4
  %19 = phi i1 [ true, %4 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %23 = icmp ne %struct.TYPE_17__* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %11, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %36 = icmp eq %struct.TYPE_16__* %35, null
  br i1 %36, label %37, label %60

37:                                               ; preds = %18
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call %struct.TYPE_16__* @sqlite3DbMallocRawNN(i32* %40, i32 16)
  store %struct.TYPE_16__* %41, %struct.TYPE_16__** %7, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %43 = icmp eq %struct.TYPE_16__* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %5, align 8
  br label %118

45:                                               ; preds = %37
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 1
  store i32 1, i32* %49, align 4
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 2
  %52 = load %struct.SrcList_item*, %struct.SrcList_item** %51, align 8
  %53 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %52, i64 0
  %54 = call i32 @memset(%struct.SrcList_item* %53, i32 0, i32 24)
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 2
  %57 = load %struct.SrcList_item*, %struct.SrcList_item** %56, align 8
  %58 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %57, i64 0
  %59 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %58, i32 0, i32 0
  store i32 -1, i32* %59, align 8
  br label %76

60:                                               ; preds = %18
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call %struct.TYPE_16__* @sqlite3SrcListEnlarge(%struct.TYPE_17__* %61, %struct.TYPE_16__* %62, i32 1, i32 %65)
  store %struct.TYPE_16__* %66, %struct.TYPE_16__** %12, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %68 = icmp eq %struct.TYPE_16__* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %60
  %70 = load i32*, i32** %11, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %72 = call i32 @sqlite3SrcListDelete(i32* %70, %struct.TYPE_16__* %71)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %5, align 8
  br label %118

73:                                               ; preds = %60
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  store %struct.TYPE_16__* %74, %struct.TYPE_16__** %7, align 8
  br label %75

75:                                               ; preds = %73
  br label %76

76:                                               ; preds = %75, %45
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 2
  %79 = load %struct.SrcList_item*, %struct.SrcList_item** %78, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %79, i64 %84
  store %struct.SrcList_item* %85, %struct.SrcList_item** %10, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %87 = icmp ne %struct.TYPE_15__* %86, null
  br i1 %87, label %88, label %94

88:                                               ; preds = %76
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %9, align 8
  br label %94

94:                                               ; preds = %93, %88, %76
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %96 = icmp ne %struct.TYPE_15__* %95, null
  br i1 %96, label %97, label %108

97:                                               ; preds = %94
  %98 = load i32*, i32** %11, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %100 = call i8* @sqlite3NameFromToken(i32* %98, %struct.TYPE_15__* %99)
  %101 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %102 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %101, i32 0, i32 2
  store i8* %100, i8** %102, align 8
  %103 = load i32*, i32** %11, align 8
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %105 = call i8* @sqlite3NameFromToken(i32* %103, %struct.TYPE_15__* %104)
  %106 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %107 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %106, i32 0, i32 1
  store i8* %105, i8** %107, align 8
  br label %116

108:                                              ; preds = %94
  %109 = load i32*, i32** %11, align 8
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %111 = call i8* @sqlite3NameFromToken(i32* %109, %struct.TYPE_15__* %110)
  %112 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %113 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %112, i32 0, i32 2
  store i8* %111, i8** %113, align 8
  %114 = load %struct.SrcList_item*, %struct.SrcList_item** %10, align 8
  %115 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %114, i32 0, i32 1
  store i8* null, i8** %115, align 8
  br label %116

116:                                              ; preds = %108, %97
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_16__* %117, %struct.TYPE_16__** %5, align 8
  br label %118

118:                                              ; preds = %116, %69, %44
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  ret %struct.TYPE_16__* %119
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_16__* @sqlite3DbMallocRawNN(i32*, i32) #1

declare dso_local i32 @memset(%struct.SrcList_item*, i32, i32) #1

declare dso_local %struct.TYPE_16__* @sqlite3SrcListEnlarge(%struct.TYPE_17__*, %struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @sqlite3SrcListDelete(i32*, %struct.TYPE_16__*) #1

declare dso_local i8* @sqlite3NameFromToken(i32*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
