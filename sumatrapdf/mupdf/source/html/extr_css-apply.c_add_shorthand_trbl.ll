; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-apply.c_add_shorthand_trbl.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-apply.c_add_shorthand_trbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*, i32, i8*, i8*, i8*, i8*)* @add_shorthand_trbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_shorthand_trbl(i32* %0, %struct.TYPE_5__* %1, i32 %2, i8* %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca %struct.TYPE_5__*, align 8
  %18 = alloca %struct.TYPE_5__*, align 8
  %19 = alloca %struct.TYPE_5__*, align 8
  %20 = alloca %struct.TYPE_5__*, align 8
  %21 = alloca %struct.TYPE_5__*, align 8
  %22 = alloca %struct.TYPE_5__*, align 8
  %23 = alloca %struct.TYPE_5__*, align 8
  %24 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %26 = call i32 @count_values(%struct.TYPE_5__* %25)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %50

29:                                               ; preds = %7
  %30 = load i32*, i32** %8, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @add_property(i32* %30, i8* %31, %struct.TYPE_5__* %32, i32 %33)
  %35 = load i32*, i32** %8, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @add_property(i32* %35, i8* %36, %struct.TYPE_5__* %37, i32 %38)
  %40 = load i32*, i32** %8, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @add_property(i32* %40, i8* %41, %struct.TYPE_5__* %42, i32 %43)
  %45 = load i32*, i32** %8, align 8
  %46 = load i8*, i8** %14, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @add_property(i32* %45, i8* %46, %struct.TYPE_5__* %47, i32 %48)
  br label %50

50:                                               ; preds = %29, %7
  %51 = load i32, i32* %15, align 4
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %78

53:                                               ; preds = %50
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  store %struct.TYPE_5__* %54, %struct.TYPE_5__** %16, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  store %struct.TYPE_5__* %57, %struct.TYPE_5__** %17, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @add_property(i32* %58, i8* %59, %struct.TYPE_5__* %60, i32 %61)
  %63 = load i32*, i32** %8, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @add_property(i32* %63, i8* %64, %struct.TYPE_5__* %65, i32 %66)
  %68 = load i32*, i32** %8, align 8
  %69 = load i8*, i8** %13, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @add_property(i32* %68, i8* %69, %struct.TYPE_5__* %70, i32 %71)
  %73 = load i32*, i32** %8, align 8
  %74 = load i8*, i8** %14, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @add_property(i32* %73, i8* %74, %struct.TYPE_5__* %75, i32 %76)
  br label %78

78:                                               ; preds = %53, %50
  %79 = load i32, i32* %15, align 4
  %80 = icmp eq i32 %79, 3
  br i1 %80, label %81, label %111

81:                                               ; preds = %78
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  store %struct.TYPE_5__* %82, %struct.TYPE_5__** %18, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  store %struct.TYPE_5__* %85, %struct.TYPE_5__** %19, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  store %struct.TYPE_5__* %90, %struct.TYPE_5__** %20, align 8
  %91 = load i32*, i32** %8, align 8
  %92 = load i8*, i8** %11, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @add_property(i32* %91, i8* %92, %struct.TYPE_5__* %93, i32 %94)
  %96 = load i32*, i32** %8, align 8
  %97 = load i8*, i8** %12, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @add_property(i32* %96, i8* %97, %struct.TYPE_5__* %98, i32 %99)
  %101 = load i32*, i32** %8, align 8
  %102 = load i8*, i8** %13, align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @add_property(i32* %101, i8* %102, %struct.TYPE_5__* %103, i32 %104)
  %106 = load i32*, i32** %8, align 8
  %107 = load i8*, i8** %14, align 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @add_property(i32* %106, i8* %107, %struct.TYPE_5__* %108, i32 %109)
  br label %111

111:                                              ; preds = %81, %78
  %112 = load i32, i32* %15, align 4
  %113 = icmp eq i32 %112, 4
  br i1 %113, label %114, label %151

114:                                              ; preds = %111
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  store %struct.TYPE_5__* %115, %struct.TYPE_5__** %21, align 8
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  store %struct.TYPE_5__* %118, %struct.TYPE_5__** %22, align 8
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  store %struct.TYPE_5__* %123, %struct.TYPE_5__** %23, align 8
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %129, align 8
  store %struct.TYPE_5__* %130, %struct.TYPE_5__** %24, align 8
  %131 = load i32*, i32** %8, align 8
  %132 = load i8*, i8** %11, align 8
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %134 = load i32, i32* %10, align 4
  %135 = call i32 @add_property(i32* %131, i8* %132, %struct.TYPE_5__* %133, i32 %134)
  %136 = load i32*, i32** %8, align 8
  %137 = load i8*, i8** %12, align 8
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %139 = load i32, i32* %10, align 4
  %140 = call i32 @add_property(i32* %136, i8* %137, %struct.TYPE_5__* %138, i32 %139)
  %141 = load i32*, i32** %8, align 8
  %142 = load i8*, i8** %13, align 8
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %144 = load i32, i32* %10, align 4
  %145 = call i32 @add_property(i32* %141, i8* %142, %struct.TYPE_5__* %143, i32 %144)
  %146 = load i32*, i32** %8, align 8
  %147 = load i8*, i8** %14, align 8
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %149 = load i32, i32* %10, align 4
  %150 = call i32 @add_property(i32* %146, i8* %147, %struct.TYPE_5__* %148, i32 %149)
  br label %151

151:                                              ; preds = %114, %111
  ret void
}

declare dso_local i32 @count_values(%struct.TYPE_5__*) #1

declare dso_local i32 @add_property(i32*, i8*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
