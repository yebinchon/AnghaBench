; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_hash.c_sqlite3HashInsert.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_hash.c_sqlite3HashInsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32* }
%struct.TYPE_11__ = type { i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sqlite3HashInsert(%struct.TYPE_12__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %13 = icmp ne %struct.TYPE_12__* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call %struct.TYPE_11__* @findElementWithHash(%struct.TYPE_12__* %20, i8* %21, i32* %8)
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %9, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %47

27:                                               ; preds = %3
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %11, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @removeElementGivenHash(%struct.TYPE_12__* %34, %struct.TYPE_11__* %35, i32 %36)
  br label %45

38:                                               ; preds = %27
  %39 = load i8*, i8** %7, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  br label %45

45:                                               ; preds = %38, %33
  %46 = load i8*, i8** %11, align 8
  store i8* %46, i8** %4, align 8
  br label %122

47:                                               ; preds = %3
  %48 = load i8*, i8** %7, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i8* null, i8** %4, align 8
  br label %122

51:                                               ; preds = %47
  %52 = call i64 @sqlite3Malloc(i32 16)
  %53 = inttoptr i64 %52 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %53, %struct.TYPE_11__** %10, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %55 = icmp eq %struct.TYPE_11__* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i8*, i8** %7, align 8
  store i8* %57, i8** %4, align 8
  br label %122

58:                                               ; preds = %51
  %59 = load i8*, i8** %6, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  store i8* %59, i8** %61, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp sge i32 %71, 10
  br i1 %72, label %73, label %104

73:                                               ; preds = %58
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 2, %79
  %81 = icmp sgt i32 %76, %80
  br i1 %81, label %82, label %104

82:                                               ; preds = %73
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = mul nsw i32 %86, 2
  %88 = call i64 @rehash(%struct.TYPE_12__* %83, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %82
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp sgt i32 %93, 0
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert(i32 %95)
  %97 = load i8*, i8** %6, align 8
  %98 = call i32 @strHash(i8* %97)
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = urem i32 %98, %101
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %90, %82
  br label %104

104:                                              ; preds = %103, %73, %58
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %117

110:                                              ; preds = %104
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  br label %118

117:                                              ; preds = %104
  br label %118

118:                                              ; preds = %117, %110
  %119 = phi i32* [ %116, %110 ], [ null, %117 ]
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %121 = call i32 @insertElement(%struct.TYPE_12__* %105, i32* %119, %struct.TYPE_11__* %120)
  store i8* null, i8** %4, align 8
  br label %122

122:                                              ; preds = %118, %56, %50, %45
  %123 = load i8*, i8** %4, align 8
  ret i8* %123
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_11__* @findElementWithHash(%struct.TYPE_12__*, i8*, i32*) #1

declare dso_local i32 @removeElementGivenHash(%struct.TYPE_12__*, %struct.TYPE_11__*, i32) #1

declare dso_local i64 @sqlite3Malloc(i32) #1

declare dso_local i64 @rehash(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @strHash(i8*) #1

declare dso_local i32 @insertElement(%struct.TYPE_12__*, i32*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
