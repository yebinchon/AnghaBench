; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_EM_SetSel.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_EM_SetSel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32 }

@EF_AFTER_WRAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i64, i64, i64)* @EDIT_EM_SetSel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EDIT_EM_SetSel(%struct.TYPE_5__* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %9, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %10, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = call i64 @get_text_length(%struct.TYPE_5__* %18)
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp eq i64 %20, -1
  br i1 %21, label %22, label %29

22:                                               ; preds = %4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %6, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %7, align 8
  br label %36

29:                                               ; preds = %4
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* %11, align 8
  %32 = call i64 @min(i64 %30, i64 %31)
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* %11, align 8
  %35 = call i64 @min(i64 %33, i64 %34)
  store i64 %35, i64* %7, align 8
  br label %36

36:                                               ; preds = %29, %22
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load i64, i64* %8, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %36
  %46 = load i32, i32* @EF_AFTER_WRAP, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %58

51:                                               ; preds = %36
  %52 = load i32, i32* @EF_AFTER_WRAP, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %51, %45
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* %10, align 8
  %61 = call i32 @ORDER_UINT(i64 %59, i64 %60)
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* %9, align 8
  %64 = call i32 @ORDER_UINT(i64 %62, i64 %63)
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* %10, align 8
  %67 = call i32 @ORDER_UINT(i64 %65, i64 %66)
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* %7, align 8
  %70 = call i32 @ORDER_UINT(i64 %68, i64 %69)
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* %9, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %97

74:                                               ; preds = %58
  %75 = load i64, i64* %9, align 8
  %76 = load i64, i64* %7, align 8
  %77 = icmp sgt i64 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %74
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %80 = load i64, i64* %6, align 8
  %81 = load i64, i64* %7, align 8
  %82 = call i32 @EDIT_InvalidateText(%struct.TYPE_5__* %79, i64 %80, i64 %81)
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %84 = load i64, i64* %9, align 8
  %85 = load i64, i64* %10, align 8
  %86 = call i32 @EDIT_InvalidateText(%struct.TYPE_5__* %83, i64 %84, i64 %85)
  br label %96

87:                                               ; preds = %74
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* %9, align 8
  %91 = call i32 @EDIT_InvalidateText(%struct.TYPE_5__* %88, i64 %89, i64 %90)
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %93 = load i64, i64* %7, align 8
  %94 = load i64, i64* %10, align 8
  %95 = call i32 @EDIT_InvalidateText(%struct.TYPE_5__* %92, i64 %93, i64 %94)
  br label %96

96:                                               ; preds = %87, %78
  br label %102

97:                                               ; preds = %58
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %99 = load i64, i64* %6, align 8
  %100 = load i64, i64* %10, align 8
  %101 = call i32 @EDIT_InvalidateText(%struct.TYPE_5__* %98, i64 %99, i64 %100)
  br label %102

102:                                              ; preds = %97, %96
  ret void
}

declare dso_local i64 @get_text_length(%struct.TYPE_5__*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @ORDER_UINT(i64, i64) #1

declare dso_local i32 @EDIT_InvalidateText(%struct.TYPE_5__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
