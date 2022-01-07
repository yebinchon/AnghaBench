; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_query.c_execute_view.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_query.c_execute_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32*, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 (%struct.TYPE_4__*, i32)* }

@S_OK = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @execute_view(%struct.view* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.view*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.view* %0, %struct.view** %3, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.view*, %struct.view** %3, align 8
  %12 = getelementptr inbounds %struct.view, %struct.view* %11, i32 0, i32 3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @S_OK, align 4
  store i32 %16, i32* %2, align 4
  br label %132

17:                                               ; preds = %1
  %18 = load %struct.view*, %struct.view** %3, align 8
  %19 = getelementptr inbounds %struct.view, %struct.view* %18, i32 0, i32 3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %21, align 8
  %23 = icmp ne i32 (%struct.TYPE_4__*, i32)* %22, null
  br i1 %23, label %24, label %41

24:                                               ; preds = %17
  %25 = load %struct.view*, %struct.view** %3, align 8
  %26 = getelementptr inbounds %struct.view, %struct.view* %25, i32 0, i32 3
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = call i32 @clear_table(%struct.TYPE_4__* %27)
  %29 = load %struct.view*, %struct.view** %3, align 8
  %30 = getelementptr inbounds %struct.view, %struct.view* %29, i32 0, i32 3
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %32, align 8
  %34 = load %struct.view*, %struct.view** %3, align 8
  %35 = getelementptr inbounds %struct.view, %struct.view* %34, i32 0, i32 3
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load %struct.view*, %struct.view** %3, align 8
  %38 = getelementptr inbounds %struct.view, %struct.view* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 %33(%struct.TYPE_4__* %36, i32 %39)
  br label %41

41:                                               ; preds = %24, %17
  %42 = load %struct.view*, %struct.view** %3, align 8
  %43 = getelementptr inbounds %struct.view, %struct.view* %42, i32 0, i32 3
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* @S_OK, align 4
  store i32 %49, i32* %2, align 4
  br label %132

50:                                               ; preds = %41
  %51 = load %struct.view*, %struct.view** %3, align 8
  %52 = getelementptr inbounds %struct.view, %struct.view* %51, i32 0, i32 3
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @min(i32 %55, i32 16)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 4
  %60 = trunc i64 %59 to i32
  %61 = call i32* @heap_alloc(i32 %60)
  %62 = load %struct.view*, %struct.view** %3, align 8
  %63 = getelementptr inbounds %struct.view, %struct.view* %62, i32 0, i32 0
  store i32* %61, i32** %63, align 8
  %64 = icmp ne i32* %61, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %50
  %66 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %66, i32* %2, align 4
  br label %132

67:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %124, %67
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.view*, %struct.view** %3, align 8
  %71 = getelementptr inbounds %struct.view, %struct.view* %70, i32 0, i32 3
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %69, %74
  br i1 %75, label %76, label %127

76:                                               ; preds = %68
  store i64 0, i64* %8, align 8
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp sge i32 %77, %78
  br i1 %79, label %80, label %98

80:                                               ; preds = %76
  %81 = load i32, i32* %6, align 4
  %82 = mul nsw i32 %81, 2
  store i32 %82, i32* %6, align 4
  %83 = load %struct.view*, %struct.view** %3, align 8
  %84 = getelementptr inbounds %struct.view, %struct.view* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = mul i64 %87, 4
  %89 = trunc i64 %88 to i32
  %90 = call i32* @heap_realloc(i32* %85, i32 %89)
  store i32* %90, i32** %10, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %80
  %93 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %93, i32* %2, align 4
  br label %132

94:                                               ; preds = %80
  %95 = load i32*, i32** %10, align 8
  %96 = load %struct.view*, %struct.view** %3, align 8
  %97 = getelementptr inbounds %struct.view, %struct.view* %96, i32 0, i32 0
  store i32* %95, i32** %97, align 8
  br label %98

98:                                               ; preds = %94, %76
  %99 = load %struct.view*, %struct.view** %3, align 8
  %100 = getelementptr inbounds %struct.view, %struct.view* %99, i32 0, i32 3
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = load i32, i32* %4, align 4
  %103 = load %struct.view*, %struct.view** %3, align 8
  %104 = getelementptr inbounds %struct.view, %struct.view* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @eval_cond(%struct.TYPE_4__* %101, i32 %102, i32 %105, i64* %8, i32* %9)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* @S_OK, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %98
  %110 = load i32, i32* %7, align 4
  store i32 %110, i32* %2, align 4
  br label %132

111:                                              ; preds = %98
  %112 = load i64, i64* %8, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %111
  %115 = load i32, i32* %4, align 4
  %116 = load %struct.view*, %struct.view** %3, align 8
  %117 = getelementptr inbounds %struct.view, %struct.view* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %5, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %5, align 4
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i32, i32* %118, i64 %121
  store i32 %115, i32* %122, align 4
  br label %123

123:                                              ; preds = %114, %111
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %4, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %4, align 4
  br label %68

127:                                              ; preds = %68
  %128 = load i32, i32* %5, align 4
  %129 = load %struct.view*, %struct.view** %3, align 8
  %130 = getelementptr inbounds %struct.view, %struct.view* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 8
  %131 = load i32, i32* @S_OK, align 4
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %127, %109, %92, %65, %48, %15
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i32 @clear_table(%struct.TYPE_4__*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32* @heap_alloc(i32) #1

declare dso_local i32* @heap_realloc(i32*, i32) #1

declare dso_local i32 @eval_cond(%struct.TYPE_4__*, i32, i32, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
