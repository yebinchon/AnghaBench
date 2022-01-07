; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_free.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, %struct.TYPE_9__*, %struct.TYPE_9__**, i32 }

@stb_alloc_count_free = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stb_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %103

11:                                               ; preds = %1
  %12 = load i64, i64* @stb_alloc_count_free, align 8
  %13 = add nsw i64 %12, 1
  store i64 %13, i64* @stb_alloc_count_free, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 @stb__identify(i8* %14)
  switch i32 %15, label %101 [
    i32 129, label %16
    i32 128, label %17
    i32 130, label %42
  ]

16:                                               ; preds = %11
  br label %103

17:                                               ; preds = %11
  %18 = load i8*, i8** %2, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_9__*
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i64 -1
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %3, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %25, align 8
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %26, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = icmp ne %struct.TYPE_9__* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %17
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %33, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = call %struct.TYPE_9__*** @stb__prevn(%struct.TYPE_9__* %37)
  store %struct.TYPE_9__** %34, %struct.TYPE_9__*** %38, align 8
  br label %39

39:                                               ; preds = %31, %17
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = call i32 @free(%struct.TYPE_9__* %40)
  br label %103

42:                                               ; preds = %11
  %43 = load i8*, i8** %2, align 8
  %44 = bitcast i8* %43 to %struct.TYPE_9__*
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i64 -1
  store %struct.TYPE_9__* %45, %struct.TYPE_9__** %4, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %50, align 8
  store %struct.TYPE_9__* %48, %struct.TYPE_9__** %51, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = icmp ne %struct.TYPE_9__* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %42
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %58, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = call %struct.TYPE_9__*** @stb__prevn(%struct.TYPE_9__* %62)
  store %struct.TYPE_9__** %59, %struct.TYPE_9__*** %63, align 8
  br label %64

64:                                               ; preds = %56, %42
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %66 = call i64 @stb__chunks(%struct.TYPE_9__* %65)
  %67 = inttoptr i64 %66 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %67, %struct.TYPE_9__** %5, align 8
  br label %68

68:                                               ; preds = %71, %64
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %70 = icmp ne %struct.TYPE_9__* %69, null
  br i1 %70, label %71, label %84

71:                                               ; preds = %68
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  store %struct.TYPE_9__* %74, %struct.TYPE_9__** %6, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* @stb_alloc_count_free, align 8
  %80 = add nsw i64 %79, %78
  store i64 %80, i64* @stb_alloc_count_free, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %82 = call i32 @free(%struct.TYPE_9__* %81)
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %83, %struct.TYPE_9__** %5, align 8
  br label %68

84:                                               ; preds = %68
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %86 = call i32 @stb__setchunks(%struct.TYPE_9__* %85, i32* null)
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 2
  store %struct.TYPE_9__** null, %struct.TYPE_9__*** %88, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %90, align 8
  br label %91

91:                                               ; preds = %96, %84
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  store i8* %94, i8** %7, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i8*, i8** %7, align 8
  call void @stb_free(i8* %97)
  br label %91

98:                                               ; preds = %91
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %100 = call i32 @free(%struct.TYPE_9__* %99)
  br label %103

101:                                              ; preds = %11
  %102 = call i32 @assert(i32 0)
  br label %103

103:                                              ; preds = %10, %16, %39, %98, %101
  ret void
}

declare dso_local i32 @stb__identify(i8*) #1

declare dso_local %struct.TYPE_9__*** @stb__prevn(%struct.TYPE_9__*) #1

declare dso_local i32 @free(%struct.TYPE_9__*) #1

declare dso_local i64 @stb__chunks(%struct.TYPE_9__*) #1

declare dso_local i32 @stb__setchunks(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
