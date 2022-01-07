; ModuleID = '/home/carl/AnghaBench/streem/src/extr_sort.c_iter_median.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_sort.c_iter_median.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.sort_data* }
%struct.sort_data = type { i32, i32, i32*, i32 }

@STRM_NG = common dso_local global i64 0, align 8
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @iter_median to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iter_median(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sort_data*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.sort_data*, %struct.sort_data** %8, align 8
  store %struct.sort_data* %9, %struct.sort_data** %6, align 8
  %10 = load %struct.sort_data*, %struct.sort_data** %6, align 8
  %11 = getelementptr inbounds %struct.sort_data, %struct.sort_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.sort_data*, %struct.sort_data** %6, align 8
  %14 = getelementptr inbounds %struct.sort_data, %struct.sort_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp sge i32 %12, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %2
  %18 = load %struct.sort_data*, %struct.sort_data** %6, align 8
  %19 = getelementptr inbounds %struct.sort_data, %struct.sort_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %20, 2
  store i32 %21, i32* %19, align 4
  %22 = load %struct.sort_data*, %struct.sort_data** %6, align 8
  %23 = getelementptr inbounds %struct.sort_data, %struct.sort_data* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.sort_data*, %struct.sort_data** %6, align 8
  %26 = getelementptr inbounds %struct.sort_data, %struct.sort_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 4, %28
  %30 = trunc i64 %29 to i32
  %31 = call i32* @realloc(i32* %24, i32 %30)
  %32 = load %struct.sort_data*, %struct.sort_data** %6, align 8
  %33 = getelementptr inbounds %struct.sort_data, %struct.sort_data* %32, i32 0, i32 2
  store i32* %31, i32** %33, align 8
  br label %34

34:                                               ; preds = %17, %2
  %35 = load %struct.sort_data*, %struct.sort_data** %6, align 8
  %36 = getelementptr inbounds %struct.sort_data, %struct.sort_data* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @strm_nil_p(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %34
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.sort_data*, %struct.sort_data** %6, align 8
  %43 = getelementptr inbounds %struct.sort_data, %struct.sort_data* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.sort_data*, %struct.sort_data** %6, align 8
  %46 = getelementptr inbounds %struct.sort_data, %struct.sort_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i32, i32* %44, i64 %49
  store i32 %41, i32* %50, align 4
  br label %72

51:                                               ; preds = %34
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %53 = load %struct.sort_data*, %struct.sort_data** %6, align 8
  %54 = getelementptr inbounds %struct.sort_data, %struct.sort_data* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.sort_data*, %struct.sort_data** %6, align 8
  %57 = getelementptr inbounds %struct.sort_data, %struct.sort_data* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.sort_data*, %struct.sort_data** %6, align 8
  %60 = getelementptr inbounds %struct.sort_data, %struct.sort_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %58, i64 %63
  %65 = call i64 @strm_funcall(%struct.TYPE_4__* %52, i32 %55, i32 1, i32* %5, i32* %64)
  %66 = load i64, i64* @STRM_NG, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %51
  %69 = load i64, i64* @STRM_NG, align 8
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %3, align 4
  br label %74

71:                                               ; preds = %51
  br label %72

72:                                               ; preds = %71, %40
  %73 = load i32, i32* @STRM_OK, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %68
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32* @realloc(i32*, i32) #1

declare dso_local i64 @strm_nil_p(i32) #1

declare dso_local i64 @strm_funcall(%struct.TYPE_4__*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
