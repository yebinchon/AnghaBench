; ModuleID = '/home/carl/AnghaBench/streem/src/extr_sort.c_iter_sortby.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_sort.c_iter_sortby.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.sortby_data* }
%struct.sortby_data = type { i32, i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@STRM_NG = common dso_local global i64 0, align 8
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32)* @iter_sortby to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iter_sortby(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sortby_data*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.sortby_data*, %struct.sortby_data** %8, align 8
  store %struct.sortby_data* %9, %struct.sortby_data** %6, align 8
  %10 = load %struct.sortby_data*, %struct.sortby_data** %6, align 8
  %11 = getelementptr inbounds %struct.sortby_data, %struct.sortby_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.sortby_data*, %struct.sortby_data** %6, align 8
  %14 = getelementptr inbounds %struct.sortby_data, %struct.sortby_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp sge i32 %12, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %2
  %18 = load %struct.sortby_data*, %struct.sortby_data** %6, align 8
  %19 = getelementptr inbounds %struct.sortby_data, %struct.sortby_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %20, 2
  store i32 %21, i32* %19, align 4
  %22 = load %struct.sortby_data*, %struct.sortby_data** %6, align 8
  %23 = getelementptr inbounds %struct.sortby_data, %struct.sortby_data* %22, i32 0, i32 2
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = load %struct.sortby_data*, %struct.sortby_data** %6, align 8
  %26 = getelementptr inbounds %struct.sortby_data, %struct.sortby_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 4, %28
  %30 = trunc i64 %29 to i32
  %31 = call %struct.TYPE_6__* @realloc(%struct.TYPE_6__* %24, i32 %30)
  %32 = load %struct.sortby_data*, %struct.sortby_data** %6, align 8
  %33 = getelementptr inbounds %struct.sortby_data, %struct.sortby_data* %32, i32 0, i32 2
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %33, align 8
  br label %34

34:                                               ; preds = %17, %2
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.sortby_data*, %struct.sortby_data** %6, align 8
  %37 = getelementptr inbounds %struct.sortby_data, %struct.sortby_data* %36, i32 0, i32 2
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = load %struct.sortby_data*, %struct.sortby_data** %6, align 8
  %40 = getelementptr inbounds %struct.sortby_data, %struct.sortby_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  store i32 %35, i32* %44, align 4
  %45 = load %struct.sortby_data*, %struct.sortby_data** %6, align 8
  %46 = getelementptr inbounds %struct.sortby_data, %struct.sortby_data* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.sortby_data*, %struct.sortby_data** %6, align 8
  %49 = getelementptr inbounds %struct.sortby_data, %struct.sortby_data* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.sortby_data*, %struct.sortby_data** %6, align 8
  %52 = getelementptr inbounds %struct.sortby_data, %struct.sortby_data* %51, i32 0, i32 2
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load %struct.sortby_data*, %struct.sortby_data** %6, align 8
  %55 = getelementptr inbounds %struct.sortby_data, %struct.sortby_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = call i64 @strm_funcall(i32 %47, i32 %50, i32 1, i32* %5, i32* %59)
  %61 = load i64, i64* @STRM_NG, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %34
  %64 = load i64, i64* @STRM_NG, align 8
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %3, align 4
  br label %72

66:                                               ; preds = %34
  %67 = load %struct.sortby_data*, %struct.sortby_data** %6, align 8
  %68 = getelementptr inbounds %struct.sortby_data, %struct.sortby_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 8
  %71 = load i32, i32* @STRM_OK, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %66, %63
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.TYPE_6__* @realloc(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @strm_funcall(i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
