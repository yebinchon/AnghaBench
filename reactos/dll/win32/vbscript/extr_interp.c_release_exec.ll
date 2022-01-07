; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_interp.c_release_exec.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_interp.c_release_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64*, i64*, i64*, i32, i64*, %struct.TYPE_4__*, i64, i32, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @release_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_exec(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 8
  %6 = call i32 @VariantClear(i64* %5)
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 7
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @release_dynamic_vars(i32 %9)
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 6
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 6
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @IDispatch_Release(i64 %18)
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = load i64*, i64** %22, align 8
  %24 = icmp ne i64* %23, null
  br i1 %24, label %25, label %46

25:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %42, %25
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 5
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ult i32 %27, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %26
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = call i32 @VariantClear(i64* %40)
  br label %42

42:                                               ; preds = %34
  %43 = load i32, i32* %3, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %26

45:                                               ; preds = %26
  br label %46

46:                                               ; preds = %45, %20
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = icmp ne i64* %49, null
  br i1 %50, label %51, label %72

51:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %68, %51
  %53 = load i32, i32* %3, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 5
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ult i32 %53, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %52
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = call i32 @VariantClear(i64* %66)
  br label %68

68:                                               ; preds = %60
  %69 = load i32, i32* %3, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %3, align 4
  br label %52

71:                                               ; preds = %52
  br label %72

72:                                               ; preds = %71, %46
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 4
  %75 = load i64*, i64** %74, align 8
  %76 = icmp ne i64* %75, null
  br i1 %76, label %77, label %113

77:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %105, %77
  %79 = load i32, i32* %3, align 4
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 5
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp ult i32 %79, %84
  br i1 %85, label %86, label %108

86:                                               ; preds = %78
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 4
  %89 = load i64*, i64** %88, align 8
  %90 = load i32, i32* %3, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %86
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 4
  %98 = load i64*, i64** %97, align 8
  %99 = load i32, i32* %3, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @SafeArrayDestroy(i64 %102)
  br label %104

104:                                              ; preds = %95, %86
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %3, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %3, align 4
  br label %78

108:                                              ; preds = %78
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 4
  %111 = load i64*, i64** %110, align 8
  %112 = call i32 @heap_free(i64* %111)
  br label %113

113:                                              ; preds = %108, %72
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 3
  %116 = call i32 @heap_pool_free(i32* %115)
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 2
  %119 = load i64*, i64** %118, align 8
  %120 = call i32 @heap_free(i64* %119)
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  %123 = load i64*, i64** %122, align 8
  %124 = call i32 @heap_free(i64* %123)
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i64*, i64** %126, align 8
  %128 = call i32 @heap_free(i64* %127)
  ret void
}

declare dso_local i32 @VariantClear(i64*) #1

declare dso_local i32 @release_dynamic_vars(i32) #1

declare dso_local i32 @IDispatch_Release(i64) #1

declare dso_local i32 @SafeArrayDestroy(i64) #1

declare dso_local i32 @heap_free(i64*) #1

declare dso_local i32 @heap_pool_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
