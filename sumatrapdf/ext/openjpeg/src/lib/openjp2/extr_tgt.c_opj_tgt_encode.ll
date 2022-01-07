; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_tgt.c_opj_tgt_encode.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_tgt.c_opj_tgt_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, i32, %struct.TYPE_5__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @opj_tgt_encode(i32* %0, %struct.TYPE_4__* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [31 x %struct.TYPE_5__*], align 16
  %10 = alloca %struct.TYPE_5__**, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = getelementptr inbounds [31 x %struct.TYPE_5__*], [31 x %struct.TYPE_5__*]* %9, i64 0, i64 0
  store %struct.TYPE_5__** %13, %struct.TYPE_5__*** %10, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = load i64, i64* %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i64 %17
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %11, align 8
  br label %19

19:                                               ; preds = %24, %4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = icmp ne %struct.TYPE_5__* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %26 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %26, i32 1
  store %struct.TYPE_5__** %27, %struct.TYPE_5__*** %10, align 8
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %26, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %11, align 8
  br label %19

31:                                               ; preds = %19
  store i64 0, i64* %12, align 8
  br label %32

32:                                               ; preds = %81, %31
  %33 = load i64, i64* %12, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %33, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i64, i64* %12, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  br label %46

42:                                               ; preds = %32
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %12, align 8
  br label %46

46:                                               ; preds = %42, %38
  br label %47

47:                                               ; preds = %68, %46
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* %8, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %47
  %52 = load i64, i64* %12, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp sge i64 %52, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %51
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @opj_bio_write(i32* %63, i32 1, i32 1)
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  store i32 1, i32* %66, align 8
  br label %67

67:                                               ; preds = %62, %57
  br label %73

68:                                               ; preds = %51
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @opj_bio_write(i32* %69, i32 0, i32 1)
  %71 = load i64, i64* %12, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %12, align 8
  br label %47

73:                                               ; preds = %67, %47
  %74 = load i64, i64* %12, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %10, align 8
  %78 = getelementptr inbounds [31 x %struct.TYPE_5__*], [31 x %struct.TYPE_5__*]* %9, i64 0, i64 0
  %79 = icmp eq %struct.TYPE_5__** %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %85

81:                                               ; preds = %73
  %82 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %82, i32 -1
  store %struct.TYPE_5__** %83, %struct.TYPE_5__*** %10, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  store %struct.TYPE_5__* %84, %struct.TYPE_5__** %11, align 8
  br label %32

85:                                               ; preds = %80
  ret void
}

declare dso_local i32 @opj_bio_write(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
