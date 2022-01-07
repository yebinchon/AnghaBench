; ModuleID = '/home/carl/AnghaBench/streem/src/extr_sort.c_ary_sortby.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_sort.c_ary_sortby.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sortby_value = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"av\00", align 1
@STRM_NG = common dso_local global i32 0, align 4
@sortby_cmp = common dso_local global i32 0, align 4
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*)* @ary_sortby to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ary_sortby(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.sortby_value*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @strm_get_args(i32* %16, i32 %17, i32* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32** %11, i32* %12, i32* %13)
  %20 = load i32, i32* %12, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 8, %21
  %23 = trunc i64 %22 to i32
  %24 = call %struct.sortby_value* @malloc(i32 %23)
  store %struct.sortby_value* %24, %struct.sortby_value** %10, align 8
  %25 = load %struct.sortby_value*, %struct.sortby_value** %10, align 8
  %26 = icmp ne %struct.sortby_value* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* @STRM_NG, align 4
  store i32 %28, i32* %5, align 4
  br label %101

29:                                               ; preds = %4
  store i32 0, i32* %15, align 4
  br label %30

30:                                               ; preds = %64, %29
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %67

34:                                               ; preds = %30
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* %15, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sortby_value*, %struct.sortby_value** %10, align 8
  %41 = load i32, i32* %15, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.sortby_value, %struct.sortby_value* %40, i64 %42
  %44 = getelementptr inbounds %struct.sortby_value, %struct.sortby_value* %43, i32 0, i32 0
  store i32 %39, i32* %44, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %13, align 4
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %15, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load %struct.sortby_value*, %struct.sortby_value** %10, align 8
  %52 = load i32, i32* %15, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.sortby_value, %struct.sortby_value* %51, i64 %53
  %55 = getelementptr inbounds %struct.sortby_value, %struct.sortby_value* %54, i32 0, i32 1
  %56 = call i32 @strm_funcall(i32* %45, i32 %46, i32 1, i32* %50, i32* %55)
  %57 = load i32, i32* @STRM_NG, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %34
  %60 = load %struct.sortby_value*, %struct.sortby_value** %10, align 8
  %61 = call i32 @free(%struct.sortby_value* %60)
  %62 = load i32, i32* @STRM_NG, align 4
  store i32 %62, i32* %5, align 4
  br label %101

63:                                               ; preds = %34
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %15, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %15, align 4
  br label %30

67:                                               ; preds = %30
  %68 = load %struct.sortby_value*, %struct.sortby_value** %10, align 8
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @sortby_cmp, align 4
  %71 = call i32 @qsort(%struct.sortby_value* %68, i32 %69, i32 8, i32 %70)
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @strm_ary_new(i32* null, i32 %72)
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = call i32* @strm_ary_ptr(i32 %74)
  store i32* %75, i32** %11, align 8
  store i32 0, i32* %15, align 4
  br label %76

76:                                               ; preds = %91, %67
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %94

80:                                               ; preds = %76
  %81 = load %struct.sortby_value*, %struct.sortby_value** %10, align 8
  %82 = load i32, i32* %15, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.sortby_value, %struct.sortby_value* %81, i64 %83
  %85 = getelementptr inbounds %struct.sortby_value, %struct.sortby_value* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %11, align 8
  %88 = load i32, i32* %15, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 %86, i32* %90, align 4
  br label %91

91:                                               ; preds = %80
  %92 = load i32, i32* %15, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %15, align 4
  br label %76

94:                                               ; preds = %76
  %95 = load %struct.sortby_value*, %struct.sortby_value** %10, align 8
  %96 = call i32 @free(%struct.sortby_value* %95)
  %97 = load i32, i32* %14, align 4
  %98 = call i32 @strm_ary_value(i32 %97)
  %99 = load i32*, i32** %9, align 8
  store i32 %98, i32* %99, align 4
  %100 = load i32, i32* @STRM_OK, align 4
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %94, %59, %27
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i32 @strm_get_args(i32*, i32, i32*, i8*, i32**, i32*, i32*) #1

declare dso_local %struct.sortby_value* @malloc(i32) #1

declare dso_local i32 @strm_funcall(i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @free(%struct.sortby_value*) #1

declare dso_local i32 @qsort(%struct.sortby_value*, i32, i32, i32) #1

declare dso_local i32 @strm_ary_new(i32*, i32) #1

declare dso_local i32* @strm_ary_ptr(i32) #1

declare dso_local i32 @strm_ary_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
