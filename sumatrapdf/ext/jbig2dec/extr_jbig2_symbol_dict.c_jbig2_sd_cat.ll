; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_symbol_dict.c_jbig2_sd_cat.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_symbol_dict.c_jbig2_sd_cat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32* }

@JBIG2_SEVERITY_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"failed to allocate new symbol dictionary\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @jbig2_sd_cat(i32* %0, i64 %1, %struct.TYPE_5__** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_5__** %2, %struct.TYPE_5__*** %6, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %11, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %7, align 8
  br label %12

12:                                               ; preds = %25, %3
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %17, i64 %18
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %10, align 8
  %24 = add i64 %23, %22
  store i64 %24, i64* %10, align 8
  br label %25

25:                                               ; preds = %16
  %26 = load i64, i64* %7, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %7, align 8
  br label %12

28:                                               ; preds = %12
  %29 = load i32*, i32** %4, align 8
  %30 = load i64, i64* %10, align 8
  %31 = call %struct.TYPE_5__* @jbig2_sd_new(i32* %29, i64 %30)
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %11, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %33 = icmp ne %struct.TYPE_5__* %32, null
  br i1 %33, label %34, label %75

34:                                               ; preds = %28
  store i64 0, i64* %9, align 8
  store i64 0, i64* %7, align 8
  br label %35

35:                                               ; preds = %71, %34
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %5, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %74

39:                                               ; preds = %35
  store i64 0, i64* %8, align 8
  br label %40

40:                                               ; preds = %67, %39
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %42, i64 %43
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ult i64 %41, %47
  br i1 %48, label %49, label %70

49:                                               ; preds = %40
  %50 = load i32*, i32** %4, align 8
  %51 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %52 = load i64, i64* %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %51, i64 %52
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @jbig2_image_reference(i32* %50, i32 %59)
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* %9, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %9, align 8
  %66 = getelementptr inbounds i32, i32* %63, i64 %64
  store i32 %60, i32* %66, align 4
  br label %67

67:                                               ; preds = %49
  %68 = load i64, i64* %8, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %8, align 8
  br label %40

70:                                               ; preds = %40
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %7, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %7, align 8
  br label %35

74:                                               ; preds = %35
  br label %79

75:                                               ; preds = %28
  %76 = load i32*, i32** %4, align 8
  %77 = load i32, i32* @JBIG2_SEVERITY_WARNING, align 4
  %78 = call i32 @jbig2_error(i32* %76, i32 %77, i32 -1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %79

79:                                               ; preds = %75, %74
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  ret %struct.TYPE_5__* %80
}

declare dso_local %struct.TYPE_5__* @jbig2_sd_new(i32*, i64) #1

declare dso_local i32 @jbig2_image_reference(i32*, i32) #1

declare dso_local i32 @jbig2_error(i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
