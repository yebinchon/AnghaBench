; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlCtxtGrowAttrs.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlCtxtGrowAttrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @xmlCtxtGrowAttrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xmlCtxtGrowAttrs(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %11 = load i32**, i32*** %10, align 8
  %12 = icmp eq i32** %11, null
  br i1 %12, label %13, label %44

13:                                               ; preds = %2
  store i32 55, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 8
  %17 = trunc i64 %16 to i32
  %18 = call i64 @xmlMalloc(i32 %17)
  %19 = inttoptr i64 %18 to i32**
  store i32** %19, i32*** %6, align 8
  %20 = load i32**, i32*** %6, align 8
  %21 = icmp eq i32** %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %98

23:                                               ; preds = %13
  %24 = load i32**, i32*** %6, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  store i32** %24, i32*** %26, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sdiv i32 %27, 5
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 4
  %31 = trunc i64 %30 to i32
  %32 = call i64 @xmlMalloc(i32 %31)
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %7, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %23
  br label %98

37:                                               ; preds = %23
  %38 = load i32*, i32** %7, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32* %38, i32** %40, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  br label %94

44:                                               ; preds = %2
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 5
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp sgt i32 %46, %49
  br i1 %50, label %51, label %93

51:                                               ; preds = %44
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 5
  %54 = mul nsw i32 %53, 2
  store i32 %54, i32* %8, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i32**, i32*** %56, align 8
  %58 = bitcast i32** %57 to i8*
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 8
  %62 = trunc i64 %61 to i32
  %63 = call i64 @xmlRealloc(i8* %58, i32 %62)
  %64 = inttoptr i64 %63 to i32**
  store i32** %64, i32*** %6, align 8
  %65 = load i32**, i32*** %6, align 8
  %66 = icmp eq i32** %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %51
  br label %98

68:                                               ; preds = %51
  %69 = load i32**, i32*** %6, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  store i32** %69, i32*** %71, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = bitcast i32* %74 to i8*
  %76 = load i32, i32* %8, align 4
  %77 = sdiv i32 %76, 5
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 4
  %80 = trunc i64 %79 to i32
  %81 = call i64 @xmlRealloc(i8* %75, i32 %80)
  %82 = inttoptr i64 %81 to i32*
  store i32* %82, i32** %7, align 8
  %83 = load i32*, i32** %7, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %68
  br label %98

86:                                               ; preds = %68
  %87 = load i32*, i32** %7, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  store i32* %87, i32** %89, align 8
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %86, %44
  br label %94

94:                                               ; preds = %93, %37
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  store i32 %97, i32* %3, align 4
  br label %101

98:                                               ; preds = %85, %67, %36, %22
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %100 = call i32 @xmlErrMemory(%struct.TYPE_4__* %99, i32* null)
  store i32 -1, i32* %3, align 4
  br label %101

101:                                              ; preds = %98, %94
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i64 @xmlMalloc(i32) #1

declare dso_local i64 @xmlRealloc(i8*, i32) #1

declare dso_local i32 @xmlErrMemory(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
