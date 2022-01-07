; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_record.c_rec_mm_arith.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_record.c_rec_mm_arith.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, i64* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_13__ = type { i32, i64, i32, i32, i64, i64 }

@MM_concat = common dso_local global i64 0, align 8
@lj_cont_cat = common dso_local global i32 0, align 4
@lj_cont_ra = common dso_local global i32 0, align 4
@LJ_FR2 = common dso_local global i32 0, align 4
@MM_unm = common dso_local global i64 0, align 8
@LJ_TRERR_NOMM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_12__*, %struct.TYPE_13__*, i64)* @rec_mm_arith to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rec_mm_arith(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @MM_concat, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @lj_cont_cat, align 4
  br label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @lj_cont_ra, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  %20 = call i32 @rec_mm_prep(%struct.TYPE_12__* %10, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  store i64* %26, i64** %8, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32* %34, i32** %9, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = load i64*, i64** %8, align 8
  %39 = load i32, i32* @LJ_FR2, align 4
  %40 = add nsw i32 1, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %38, i64 %41
  store i64 %37, i64* %42, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** %8, align 8
  %47 = load i32, i32* @LJ_FR2, align 4
  %48 = add nsw i32 2, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %46, i64 %49
  store i64 %45, i64* %50, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* @LJ_FR2, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 3
  %61 = call i32 @copyTV(%struct.TYPE_11__* %53, i32* %58, i32* %60)
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  %67 = load i32, i32* @LJ_FR2, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 2
  %72 = call i32 @copyTV(%struct.TYPE_11__* %64, i32* %69, i32* %71)
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %75 = load i64, i64* %6, align 8
  %76 = call i64 @lj_record_mm_lookup(%struct.TYPE_12__* %73, %struct.TYPE_13__* %74, i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %107, label %78

78:                                               ; preds = %18
  %79 = load i64, i64* %6, align 8
  %80 = load i64, i64* @MM_unm, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %103

82:                                               ; preds = %78
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 5
  store i64 %85, i64* %87, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 2
  %95 = call i32 @copyTV(%struct.TYPE_11__* %90, i32* %92, i32* %94)
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %98 = load i64, i64* %6, align 8
  %99 = call i64 @lj_record_mm_lookup(%struct.TYPE_12__* %96, %struct.TYPE_13__* %97, i64 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %82
  br label %108

102:                                              ; preds = %82
  br label %103

103:                                              ; preds = %102, %78
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %105 = load i32, i32* @LJ_TRERR_NOMM, align 4
  %106 = call i32 @lj_trace_err(%struct.TYPE_12__* %104, i32 %105)
  br label %107

107:                                              ; preds = %103, %18
  br label %108

108:                                              ; preds = %107, %101
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64*, i64** %8, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 0
  store i64 %111, i64* %113, align 8
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %115, align 8
  %117 = load i32*, i32** %9, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  %121 = call i32 @copyTV(%struct.TYPE_11__* %116, i32* %118, i32* %120)
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @lj_record_call(%struct.TYPE_12__* %122, i32 %123, i32 2)
  ret i64 0
}

declare dso_local i32 @rec_mm_prep(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @copyTV(%struct.TYPE_11__*, i32*, i32*) #1

declare dso_local i64 @lj_record_mm_lookup(%struct.TYPE_12__*, %struct.TYPE_13__*, i64) #1

declare dso_local i32 @lj_trace_err(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @lj_record_call(%struct.TYPE_12__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
