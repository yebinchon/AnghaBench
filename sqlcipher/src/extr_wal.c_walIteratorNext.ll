; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_wal.c_walIteratorNext.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_wal.c_walIteratorNext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, %struct.WalSegment* }
%struct.WalSegment = type { i64, i64, i32*, i64*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32*)* @walIteratorNext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @walIteratorNext(%struct.TYPE_3__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.WalSegment*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 -1, i32* %8, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ult i32 %15, -1
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %86, %3
  %24 = load i32, i32* %9, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %89

26:                                               ; preds = %23
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load %struct.WalSegment*, %struct.WalSegment** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.WalSegment, %struct.WalSegment* %29, i64 %31
  store %struct.WalSegment* %32, %struct.WalSegment** %10, align 8
  br label %33

33:                                               ; preds = %80, %26
  %34 = load %struct.WalSegment*, %struct.WalSegment** %10, align 8
  %35 = getelementptr inbounds %struct.WalSegment, %struct.WalSegment* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.WalSegment*, %struct.WalSegment** %10, align 8
  %38 = getelementptr inbounds %struct.WalSegment, %struct.WalSegment* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ult i64 %36, %39
  br i1 %40, label %41, label %85

41:                                               ; preds = %33
  %42 = load %struct.WalSegment*, %struct.WalSegment** %10, align 8
  %43 = getelementptr inbounds %struct.WalSegment, %struct.WalSegment* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.WalSegment*, %struct.WalSegment** %10, align 8
  %46 = getelementptr inbounds %struct.WalSegment, %struct.WalSegment* %45, i32 0, i32 3
  %47 = load i64*, i64** %46, align 8
  %48 = load %struct.WalSegment*, %struct.WalSegment** %10, align 8
  %49 = getelementptr inbounds %struct.WalSegment, %struct.WalSegment* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i64, i64* %47, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i32, i32* %44, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %80

58:                                               ; preds = %41
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %79

62:                                               ; preds = %58
  %63 = load i32, i32* %11, align 4
  store i32 %63, i32* %8, align 4
  %64 = load %struct.WalSegment*, %struct.WalSegment** %10, align 8
  %65 = getelementptr inbounds %struct.WalSegment, %struct.WalSegment* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = load %struct.WalSegment*, %struct.WalSegment** %10, align 8
  %69 = getelementptr inbounds %struct.WalSegment, %struct.WalSegment* %68, i32 0, i32 3
  %70 = load i64*, i64** %69, align 8
  %71 = load %struct.WalSegment*, %struct.WalSegment** %10, align 8
  %72 = getelementptr inbounds %struct.WalSegment, %struct.WalSegment* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i64, i64* %70, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = add i64 %67, %75
  %77 = trunc i64 %76 to i32
  %78 = load i32*, i32** %6, align 8
  store i32 %77, i32* %78, align 4
  br label %79

79:                                               ; preds = %62, %58
  br label %85

80:                                               ; preds = %41
  %81 = load %struct.WalSegment*, %struct.WalSegment** %10, align 8
  %82 = getelementptr inbounds %struct.WalSegment, %struct.WalSegment* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %82, align 8
  br label %33

85:                                               ; preds = %79, %33
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %9, align 4
  br label %23

89:                                               ; preds = %23
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load i32*, i32** %5, align 8
  store i32 %90, i32* %93, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp eq i32 %94, -1
  %96 = zext i1 %95 to i32
  ret i32 %96
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
