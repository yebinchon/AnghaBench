; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_hypertable_restrict_info.c_gather_restriction_dimension_vectors.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_hypertable_restrict_info.c_gather_restriction_dimension_vectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32** }
%struct.TYPE_7__ = type { i64 }

@NIL = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__*)* @gather_restriction_dimension_vectors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @gather_restriction_dimension_vectors(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %8 = load i32*, i32** @NIL, align 8
  store i32* %8, i32** %5, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %45, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %48

15:                                               ; preds = %9
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i32**, i32*** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32*, i32** %18, i64 %20
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %6, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = icmp ne i32* null, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @Assert(i32 %25)
  %27 = load i32*, i32** %6, align 8
  %28 = call %struct.TYPE_7__* @dimension_restrict_info_slices(i32* %27)
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %7, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sge i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @Assert(i32 %33)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %15
  %40 = load i32*, i32** @NIL, align 8
  store i32* %40, i32** %2, align 8
  br label %58

41:                                               ; preds = %15
  %42 = load i32*, i32** %5, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %44 = call i32* @lappend(i32* %42, %struct.TYPE_7__* %43)
  store i32* %44, i32** %5, align 8
  br label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %9

48:                                               ; preds = %9
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @list_length(i32* %49)
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %50, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @Assert(i32 %55)
  %57 = load i32*, i32** %5, align 8
  store i32* %57, i32** %2, align 8
  br label %58

58:                                               ; preds = %48, %39
  %59 = load i32*, i32** %2, align 8
  ret i32* %59
}

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_7__* @dimension_restrict_info_slices(i32*) #1

declare dso_local i32* @lappend(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @list_length(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
