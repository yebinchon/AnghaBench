; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_webp_enc.c_MapConfigToTools.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_webp_enc.c_MapConfigToTools.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i64, i64, i32, i32 }

@RD_OPT_TRELLIS_ALL = common dso_local global i64 0, align 8
@RD_OPT_TRELLIS = common dso_local global i64 0, align 8
@RD_OPT_BASIC = common dso_local global i64 0, align 8
@RD_OPT_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @MapConfigToTools to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MapConfigToTools(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 10
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %3, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 100, %14
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* %4, align 4
  %20 = icmp sge i32 %19, 6
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i64, i64* @RD_OPT_TRELLIS_ALL, align 8
  br label %39

23:                                               ; preds = %1
  %24 = load i32, i32* %4, align 4
  %25 = icmp sge i32 %24, 5
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i64, i64* @RD_OPT_TRELLIS, align 8
  br label %37

28:                                               ; preds = %23
  %29 = load i32, i32* %4, align 4
  %30 = icmp sge i32 %29, 3
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i64, i64* @RD_OPT_BASIC, align 8
  br label %35

33:                                               ; preds = %28
  %34 = load i64, i64* @RD_OPT_NONE, align 8
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i64 [ %32, %31 ], [ %34, %33 ]
  br label %37

37:                                               ; preds = %35, %26
  %38 = phi i64 [ %27, %26 ], [ %36, %35 ]
  br label %39

39:                                               ; preds = %37, %21
  %40 = phi i64 [ %22, %21 ], [ %38, %37 ]
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = mul nsw i32 %43, %44
  %46 = mul nsw i32 65536, %45
  %47 = sdiv i32 %46, 10000
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %52, %55
  %57 = sdiv i32 1069547520, %56
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 9
  store i32 %62, i32* %64, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %39
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %72, 0
  br label %74

74:                                               ; preds = %69, %39
  %75 = phi i1 [ true, %39 ], [ %73, %69 ]
  %76 = zext i1 %75 to i32
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 6
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %100, label %83

83:                                               ; preds = %74
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @RD_OPT_BASIC, align 8
  %88 = icmp sge i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 7
  store i32 %89, i32* %91, align 4
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %83
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 8
  store i32 1, i32* %98, align 8
  br label %99

99:                                               ; preds = %96, %83
  br label %100

100:                                              ; preds = %99, %74
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
