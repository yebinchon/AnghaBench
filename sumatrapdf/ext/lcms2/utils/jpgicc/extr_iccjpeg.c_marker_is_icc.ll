; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/jpgicc/extr_iccjpeg.c_marker_is_icc.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/jpgicc/extr_iccjpeg.c_marker_is_icc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32* }

@ICC_MARKER = common dso_local global i64 0, align 8
@ICC_OVERHEAD_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @marker_is_icc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @marker_is_icc(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @ICC_MARKER, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %110

8:                                                ; preds = %1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ICC_OVERHEAD_LEN, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %110

14:                                               ; preds = %8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @GETJOCTET(i32 %19)
  %21 = icmp eq i32 %20, 73
  br i1 %21, label %22, label %110

22:                                               ; preds = %14
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @GETJOCTET(i32 %27)
  %29 = icmp eq i32 %28, 67
  br i1 %29, label %30, label %110

30:                                               ; preds = %22
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @GETJOCTET(i32 %35)
  %37 = icmp eq i32 %36, 67
  br i1 %37, label %38, label %110

38:                                               ; preds = %30
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @GETJOCTET(i32 %43)
  %45 = icmp eq i32 %44, 95
  br i1 %45, label %46, label %110

46:                                               ; preds = %38
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 4
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @GETJOCTET(i32 %51)
  %53 = icmp eq i32 %52, 80
  br i1 %53, label %54, label %110

54:                                               ; preds = %46
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 5
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @GETJOCTET(i32 %59)
  %61 = icmp eq i32 %60, 82
  br i1 %61, label %62, label %110

62:                                               ; preds = %54
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 6
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @GETJOCTET(i32 %67)
  %69 = icmp eq i32 %68, 79
  br i1 %69, label %70, label %110

70:                                               ; preds = %62
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 7
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @GETJOCTET(i32 %75)
  %77 = icmp eq i32 %76, 70
  br i1 %77, label %78, label %110

78:                                               ; preds = %70
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 8
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @GETJOCTET(i32 %83)
  %85 = icmp eq i32 %84, 73
  br i1 %85, label %86, label %110

86:                                               ; preds = %78
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 9
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @GETJOCTET(i32 %91)
  %93 = icmp eq i32 %92, 76
  br i1 %93, label %94, label %110

94:                                               ; preds = %86
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 10
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @GETJOCTET(i32 %99)
  %101 = icmp eq i32 %100, 69
  br i1 %101, label %102, label %110

102:                                              ; preds = %94
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 11
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @GETJOCTET(i32 %107)
  %109 = icmp eq i32 %108, 0
  br label %110

110:                                              ; preds = %102, %94, %86, %78, %70, %62, %54, %46, %38, %30, %22, %14, %8, %1
  %111 = phi i1 [ false, %94 ], [ false, %86 ], [ false, %78 ], [ false, %70 ], [ false, %62 ], [ false, %54 ], [ false, %46 ], [ false, %38 ], [ false, %30 ], [ false, %22 ], [ false, %14 ], [ false, %8 ], [ false, %1 ], [ %109, %102 ]
  %112 = zext i1 %111 to i32
  ret i32 %112
}

declare dso_local i32 @GETJOCTET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
