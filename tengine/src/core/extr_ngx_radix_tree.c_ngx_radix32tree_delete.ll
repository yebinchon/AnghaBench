; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_radix_tree.c_ngx_radix32tree_delete.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_radix_tree.c_ngx_radix32tree_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, %struct.TYPE_5__*, %struct.TYPE_5__*, %struct.TYPE_5__* }

@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_RADIX_NO_VALUE = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_radix32tree_delete(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 -2147483648, i32* %8, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %9, align 8
  br label %13

13:                                               ; preds = %36, %3
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %16, %13
  %22 = phi i1 [ false, %13 ], [ %20, %16 ]
  br i1 %22, label %23, label %39

23:                                               ; preds = %21
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %8, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %9, align 8
  br label %36

32:                                               ; preds = %23
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  store %struct.TYPE_5__* %35, %struct.TYPE_5__** %9, align 8
  br label %36

36:                                               ; preds = %32, %28
  %37 = load i32, i32* %8, align 4
  %38 = ashr i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %13

39:                                               ; preds = %21
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %41 = icmp eq %struct.TYPE_5__* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @NGX_ERROR, align 4
  store i32 %43, i32* %4, align 4
  br label %124

44:                                               ; preds = %39
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = icmp ne %struct.TYPE_5__* %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = icmp ne %struct.TYPE_5__* %52, null
  br i1 %53, label %54, label %67

54:                                               ; preds = %49, %44
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @NGX_RADIX_NO_VALUE, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load i64, i64* @NGX_RADIX_NO_VALUE, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load i32, i32* @NGX_OK, align 4
  store i32 %64, i32* %4, align 4
  br label %124

65:                                               ; preds = %54
  %66 = load i32, i32* @NGX_ERROR, align 4
  store i32 %66, i32* %4, align 4
  br label %124

67:                                               ; preds = %49
  br label %68

68:                                               ; preds = %121, %67
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 3
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %75 = icmp eq %struct.TYPE_5__* %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %68
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 3
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %80, align 8
  br label %86

81:                                               ; preds = %68
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %85, align 8
  br label %86

86:                                               ; preds = %81, %76
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 3
  store %struct.TYPE_5__* %89, %struct.TYPE_5__** %91, align 8
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  store %struct.TYPE_5__* %92, %struct.TYPE_5__** %94, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  store %struct.TYPE_5__* %97, %struct.TYPE_5__** %9, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 3
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = icmp ne %struct.TYPE_5__* %100, null
  br i1 %101, label %107, label %102

102:                                              ; preds = %86
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = icmp ne %struct.TYPE_5__* %105, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %102, %86
  br label %122

108:                                              ; preds = %102
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @NGX_RADIX_NO_VALUE, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %122

115:                                              ; preds = %108
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = icmp eq %struct.TYPE_5__* %118, null
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  br label %122

121:                                              ; preds = %115
  br label %68

122:                                              ; preds = %120, %114, %107
  %123 = load i32, i32* @NGX_OK, align 4
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %122, %65, %60, %42
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
