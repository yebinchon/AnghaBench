; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_tree.c_xmlBufferGrow.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_tree.c_xmlBufferGrow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32*, i32* }

@XML_BUFFER_ALLOC_IMMUTABLE = common dso_local global i64 0, align 8
@XML_BUFFER_ALLOC_IO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"growing buffer\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlBufferGrow(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = icmp eq %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %119

12:                                               ; preds = %2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @XML_BUFFER_ALLOC_IMMUTABLE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %119

19:                                               ; preds = %12
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = add i32 %20, %23
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %119

30:                                               ; preds = %19
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ugt i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = mul i32 %39, 2
  store i32 %40, i32* %6, align 4
  br label %48

41:                                               ; preds = %30
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = add i32 %44, %45
  %47 = add i32 %46, 100
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %41, %36
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @XML_BUFFER_ALLOC_IO, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %93

54:                                               ; preds = %48
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 4
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %93

59:                                               ; preds = %54
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 4
  %65 = load i32*, i32** %64, align 8
  %66 = ptrtoint i32* %62 to i64
  %67 = ptrtoint i32* %65 to i64
  %68 = sub i64 %66, %67
  %69 = sdiv exact i64 %68, 4
  store i64 %69, i64* %8, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* %8, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = add i64 %73, %75
  %77 = trunc i64 %76 to i32
  %78 = call i64 @xmlRealloc(i32* %72, i32 %77)
  %79 = inttoptr i64 %78 to i32*
  store i32* %79, i32** %7, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %59
  %83 = call i32 @xmlTreeErrMemory(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %119

84:                                               ; preds = %59
  %85 = load i32*, i32** %7, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 4
  store i32* %85, i32** %87, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = load i64, i64* %8, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 3
  store i32* %90, i32** %92, align 8
  br label %108

93:                                               ; preds = %54, %48
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = call i64 @xmlRealloc(i32* %96, i32 %97)
  %99 = inttoptr i64 %98 to i32*
  store i32* %99, i32** %7, align 8
  %100 = load i32*, i32** %7, align 8
  %101 = icmp eq i32* %100, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %93
  %103 = call i32 @xmlTreeErrMemory(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %119

104:                                              ; preds = %93
  %105 = load i32*, i32** %7, align 8
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 3
  store i32* %105, i32** %107, align 8
  br label %108

108:                                              ; preds = %104, %84
  %109 = load i32, i32* %6, align 4
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 4
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = sub i32 %114, %117
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %108, %102, %82, %29, %18, %11
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i64 @xmlRealloc(i32*, i32) #1

declare dso_local i32 @xmlTreeErrMemory(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
