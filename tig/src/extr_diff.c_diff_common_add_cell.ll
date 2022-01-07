; ModuleID = '/home/carl/AnghaBench/tig/src/extr_diff.c_diff_common_add_cell.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_diff.c_diff_common_add_cell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_stat_context = type { i64, i32, %struct.TYPE_2__*, i32, i32, i64 }
%struct.TYPE_2__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.diff_stat_context*, i64, i32)* @diff_common_add_cell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diff_common_add_cell(%struct.diff_stat_context* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.diff_stat_context*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.diff_stat_context* %0, %struct.diff_stat_context** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.diff_stat_context*, %struct.diff_stat_context** %5, align 8
  %9 = getelementptr inbounds %struct.diff_stat_context, %struct.diff_stat_context* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = call i64 @ARRAY_SIZE(%struct.TYPE_2__* %10)
  %12 = load %struct.diff_stat_context*, %struct.diff_stat_context** %5, align 8
  %13 = getelementptr inbounds %struct.diff_stat_context, %struct.diff_stat_context* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ugt i64 %11, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = load i64, i64* %6, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 1, i32* %4, align 4
  br label %64

24:                                               ; preds = %20, %3
  %25 = load %struct.diff_stat_context*, %struct.diff_stat_context** %5, align 8
  %26 = getelementptr inbounds %struct.diff_stat_context, %struct.diff_stat_context* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load %struct.diff_stat_context*, %struct.diff_stat_context** %5, align 8
  %31 = getelementptr inbounds %struct.diff_stat_context, %struct.diff_stat_context* %30, i32 0, i32 4
  %32 = load %struct.diff_stat_context*, %struct.diff_stat_context** %5, align 8
  %33 = getelementptr inbounds %struct.diff_stat_context, %struct.diff_stat_context* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @argv_appendn(i32* %31, i32 %34, i64 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %64

39:                                               ; preds = %29, %24
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.diff_stat_context*, %struct.diff_stat_context** %5, align 8
  %42 = getelementptr inbounds %struct.diff_stat_context, %struct.diff_stat_context* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load %struct.diff_stat_context*, %struct.diff_stat_context** %5, align 8
  %45 = getelementptr inbounds %struct.diff_stat_context, %struct.diff_stat_context* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i64 %40, i64* %48, align 8
  %49 = load %struct.diff_stat_context*, %struct.diff_stat_context** %5, align 8
  %50 = getelementptr inbounds %struct.diff_stat_context, %struct.diff_stat_context* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.diff_stat_context*, %struct.diff_stat_context** %5, align 8
  %53 = getelementptr inbounds %struct.diff_stat_context, %struct.diff_stat_context* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load %struct.diff_stat_context*, %struct.diff_stat_context** %5, align 8
  %56 = getelementptr inbounds %struct.diff_stat_context, %struct.diff_stat_context* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store i32 %51, i32* %59, align 8
  %60 = load %struct.diff_stat_context*, %struct.diff_stat_context** %5, align 8
  %61 = getelementptr inbounds %struct.diff_stat_context, %struct.diff_stat_context* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %61, align 8
  store i32 1, i32* %4, align 4
  br label %64

64:                                               ; preds = %39, %38, %23
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_2__*) #1

declare dso_local i32 @argv_appendn(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
