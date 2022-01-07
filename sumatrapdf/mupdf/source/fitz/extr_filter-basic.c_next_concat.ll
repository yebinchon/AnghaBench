; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_filter-basic.c_next_concat.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_filter-basic.c_next_concat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32*, i64, i64 }
%struct.concat_filter = type { i64, i64, i32, i64, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i64, i64, i64 }

@EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, i64)* @next_concat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next_concat(i32* %0, %struct.TYPE_5__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.concat_filter*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.concat_filter*
  store %struct.concat_filter* %13, %struct.concat_filter** %8, align 8
  br label %14

14:                                               ; preds = %153, %3
  %15 = load %struct.concat_filter*, %struct.concat_filter** %8, align 8
  %16 = getelementptr inbounds %struct.concat_filter, %struct.concat_filter* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.concat_filter*, %struct.concat_filter** %8, align 8
  %19 = getelementptr inbounds %struct.concat_filter, %struct.concat_filter* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %154

22:                                               ; preds = %14
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.concat_filter*, %struct.concat_filter** %8, align 8
  %27 = getelementptr inbounds %struct.concat_filter, %struct.concat_filter* %26, i32 0, i32 4
  %28 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %27, align 8
  %29 = load %struct.concat_filter*, %struct.concat_filter** %8, align 8
  %30 = getelementptr inbounds %struct.concat_filter, %struct.concat_filter* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %28, i64 %31
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %25, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %22
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.concat_filter*, %struct.concat_filter** %8, align 8
  %42 = getelementptr inbounds %struct.concat_filter, %struct.concat_filter* %41, i32 0, i32 4
  %43 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %42, align 8
  %44 = load %struct.concat_filter*, %struct.concat_filter** %8, align 8
  %45 = getelementptr inbounds %struct.concat_filter, %struct.concat_filter* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %43, i64 %46
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  store i64 %40, i64* %49, align 8
  br label %50

50:                                               ; preds = %37, %22
  %51 = load i32*, i32** %5, align 8
  %52 = load %struct.concat_filter*, %struct.concat_filter** %8, align 8
  %53 = getelementptr inbounds %struct.concat_filter, %struct.concat_filter* %52, i32 0, i32 4
  %54 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %53, align 8
  %55 = load %struct.concat_filter*, %struct.concat_filter** %8, align 8
  %56 = getelementptr inbounds %struct.concat_filter, %struct.concat_filter* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %54, i64 %57
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call i64 @fz_available(i32* %51, %struct.TYPE_6__* %59, i64 %60)
  store i64 %61, i64* %9, align 8
  %62 = load i64, i64* %9, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %100

64:                                               ; preds = %50
  %65 = load %struct.concat_filter*, %struct.concat_filter** %8, align 8
  %66 = getelementptr inbounds %struct.concat_filter, %struct.concat_filter* %65, i32 0, i32 4
  %67 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %66, align 8
  %68 = load %struct.concat_filter*, %struct.concat_filter** %8, align 8
  %69 = getelementptr inbounds %struct.concat_filter, %struct.concat_filter* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %67, i64 %70
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to i32*
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  store i32* %75, i32** %77, align 8
  %78 = load %struct.concat_filter*, %struct.concat_filter** %8, align 8
  %79 = getelementptr inbounds %struct.concat_filter, %struct.concat_filter* %78, i32 0, i32 4
  %80 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %79, align 8
  %81 = load %struct.concat_filter*, %struct.concat_filter** %8, align 8
  %82 = getelementptr inbounds %struct.concat_filter, %struct.concat_filter* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %80, i64 %83
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load i64, i64* %9, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = add i64 %93, %90
  store i64 %94, i64* %92, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %96, align 8
  %99 = load i32, i32* %97, align 4
  store i32 %99, i32* %4, align 4
  br label %162

100:                                              ; preds = %50
  %101 = load %struct.concat_filter*, %struct.concat_filter** %8, align 8
  %102 = getelementptr inbounds %struct.concat_filter, %struct.concat_filter* %101, i32 0, i32 4
  %103 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %102, align 8
  %104 = load %struct.concat_filter*, %struct.concat_filter** %8, align 8
  %105 = getelementptr inbounds %struct.concat_filter, %struct.concat_filter* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %103, i64 %106
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %100
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  store i32 1, i32* %114, align 8
  br label %154

115:                                              ; preds = %100
  %116 = load %struct.concat_filter*, %struct.concat_filter** %8, align 8
  %117 = getelementptr inbounds %struct.concat_filter, %struct.concat_filter* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %117, align 8
  %120 = load i32*, i32** %5, align 8
  %121 = load %struct.concat_filter*, %struct.concat_filter** %8, align 8
  %122 = getelementptr inbounds %struct.concat_filter, %struct.concat_filter* %121, i32 0, i32 4
  %123 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %122, align 8
  %124 = load %struct.concat_filter*, %struct.concat_filter** %8, align 8
  %125 = getelementptr inbounds %struct.concat_filter, %struct.concat_filter* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = sub i64 %126, 1
  %128 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %123, i64 %127
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = call i32 @fz_drop_stream(i32* %120, %struct.TYPE_6__* %129)
  %131 = load %struct.concat_filter*, %struct.concat_filter** %8, align 8
  %132 = getelementptr inbounds %struct.concat_filter, %struct.concat_filter* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %152

135:                                              ; preds = %115
  %136 = load %struct.concat_filter*, %struct.concat_filter** %8, align 8
  %137 = getelementptr inbounds %struct.concat_filter, %struct.concat_filter* %136, i32 0, i32 2
  %138 = getelementptr inbounds i32, i32* %137, i64 1
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 2
  store i32* %138, i32** %140, align 8
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 2
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 1
  %145 = ptrtoint i32* %144 to i64
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  store i64 %145, i64* %147, align 8
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %150, 1
  store i64 %151, i64* %149, align 8
  store i32 32, i32* %4, align 4
  br label %162

152:                                              ; preds = %115
  br label %153

153:                                              ; preds = %152
  br label %14

154:                                              ; preds = %112, %14
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = inttoptr i64 %157 to i32*
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 2
  store i32* %158, i32** %160, align 8
  %161 = load i32, i32* @EOF, align 4
  store i32 %161, i32* %4, align 4
  br label %162

162:                                              ; preds = %154, %135, %64
  %163 = load i32, i32* %4, align 4
  ret i32 %163
}

declare dso_local i64 @fz_available(i32*, %struct.TYPE_6__*, i64) #1

declare dso_local i32 @fz_drop_stream(i32*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
