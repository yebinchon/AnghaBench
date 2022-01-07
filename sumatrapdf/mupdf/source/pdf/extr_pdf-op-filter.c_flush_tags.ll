; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-op-filter.c_flush_tags.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-op-filter.c_flush_tags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { %struct.TYPE_7__*, i32, i32, i32, i64 }
%struct.TYPE_9__ = type { i32 (i32*, %struct.TYPE_9__*, i32)*, i32 (i32*, %struct.TYPE_9__*, i32, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_8__*, %struct.TYPE_7__**)* @flush_tags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_tags(i32* %0, %struct.TYPE_8__* %1, %struct.TYPE_7__** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__**, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_7__** %2, %struct.TYPE_7__*** %6, align 8
  %8 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %7, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %11 = icmp eq %struct.TYPE_7__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %88

13:                                               ; preds = %3
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = icmp ne %struct.TYPE_7__* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i32*, i32** %4, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  call void @flush_tags(i32* %19, %struct.TYPE_8__* %20, %struct.TYPE_7__** %22)
  br label %23

23:                                               ; preds = %18, %13
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %56

28:                                               ; preds = %23
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load i32 (i32*, %struct.TYPE_9__*, i32, i32, i32)*, i32 (i32*, %struct.TYPE_9__*, i32, i32, i32)** %32, align 8
  %34 = icmp ne i32 (i32*, %struct.TYPE_9__*, i32, i32, i32)* %33, null
  br i1 %34, label %35, label %55

35:                                               ; preds = %28
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i32 (i32*, %struct.TYPE_9__*, i32, i32, i32)*, i32 (i32*, %struct.TYPE_9__*, i32, i32, i32)** %39, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 %40(i32* %41, %struct.TYPE_9__* %44, i32 %47, i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %35, %28
  br label %78

56:                                               ; preds = %23
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32 (i32*, %struct.TYPE_9__*, i32)*, i32 (i32*, %struct.TYPE_9__*, i32)** %60, align 8
  %62 = icmp ne i32 (i32*, %struct.TYPE_9__*, i32)* %61, null
  br i1 %62, label %63, label %77

63:                                               ; preds = %56
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32 (i32*, %struct.TYPE_9__*, i32)*, i32 (i32*, %struct.TYPE_9__*, i32)** %67, align 8
  %69 = load i32*, i32** %4, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 %68(i32* %69, %struct.TYPE_9__* %72, i32 %75)
  br label %77

77:                                               ; preds = %63, %56
  br label %78

78:                                               ; preds = %77, %55
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  store %struct.TYPE_7__* %81, %struct.TYPE_7__** %83, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  store %struct.TYPE_7__* %84, %struct.TYPE_7__** %86, align 8
  %87 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %87, align 8
  br label %88

88:                                               ; preds = %78, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
