; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/pshinter/extr_pshrec.c_ps_dimension_add_counter.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/pshinter/extr_pshrec.c_ps_dimension_add_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }

@FT_Err_Ok = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__*, i64, i64, i64, i32)* @ps_dimension_add_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ps_dimension_add_counter(%struct.TYPE_4__* %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i64, i64* @FT_Err_Ok, align 8
  store i64 %14, i64* %11, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %12, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %13, align 4
  br label %23

23:                                               ; preds = %43, %5
  %24 = load i64, i64* %12, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %23
  %27 = load i32, i32* %13, align 4
  %28 = load i64, i64* %7, align 8
  %29 = call i64 @ps_mask_test_bit(i32 %27, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %13, align 4
  %33 = load i64, i64* %8, align 8
  %34 = call i64 @ps_mask_test_bit(i32 %32, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %13, align 4
  %38 = load i64, i64* %9, align 8
  %39 = call i64 @ps_mask_test_bit(i32 %37, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36, %31, %26
  br label %48

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %12, align 8
  %45 = add nsw i64 %44, -1
  store i64 %45, i64* %12, align 8
  %46 = load i32, i32* %13, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %13, align 4
  br label %23

48:                                               ; preds = %41, %23
  %49 = load i64, i64* %12, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %10, align 4
  %55 = call i64 @ps_mask_table_alloc(%struct.TYPE_5__* %53, i32 %54, i32* %13)
  store i64 %55, i64* %11, align 8
  %56 = load i64, i64* %11, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %97

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59, %48
  %61 = load i64, i64* %7, align 8
  %62 = icmp sge i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %60
  %64 = load i32, i32* %13, align 4
  %65 = load i64, i64* %7, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i64 @ps_mask_set_bit(i32 %64, i64 %65, i32 %66)
  store i64 %67, i64* %11, align 8
  %68 = load i64, i64* %11, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %97

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %71, %60
  %73 = load i64, i64* %8, align 8
  %74 = icmp sge i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load i32, i32* %13, align 4
  %77 = load i64, i64* %8, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i64 @ps_mask_set_bit(i32 %76, i64 %77, i32 %78)
  store i64 %79, i64* %11, align 8
  %80 = load i64, i64* %11, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %97

83:                                               ; preds = %75
  br label %84

84:                                               ; preds = %83, %72
  %85 = load i64, i64* %9, align 8
  %86 = icmp sge i64 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %84
  %88 = load i32, i32* %13, align 4
  %89 = load i64, i64* %9, align 8
  %90 = load i32, i32* %10, align 4
  %91 = call i64 @ps_mask_set_bit(i32 %88, i64 %89, i32 %90)
  store i64 %91, i64* %11, align 8
  %92 = load i64, i64* %11, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  br label %97

95:                                               ; preds = %87
  br label %96

96:                                               ; preds = %95, %84
  br label %97

97:                                               ; preds = %96, %94, %82, %70, %58
  %98 = load i64, i64* %11, align 8
  ret i64 %98
}

declare dso_local i64 @ps_mask_test_bit(i32, i64) #1

declare dso_local i64 @ps_mask_table_alloc(%struct.TYPE_5__*, i32, i32*) #1

declare dso_local i64 @ps_mask_set_bit(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
