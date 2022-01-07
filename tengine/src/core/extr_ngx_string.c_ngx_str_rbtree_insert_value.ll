; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_string.c_ngx_str_rbtree_insert_value.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_string.c_ngx_str_rbtree_insert_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_str_rbtree_insert_value(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_10__**, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %6, align 8
  br label %10

10:                                               ; preds = %96, %3
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = bitcast %struct.TYPE_10__* %11 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %7, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = bitcast %struct.TYPE_10__* %13 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %8, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %10
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 2
  br label %36

33:                                               ; preds = %22
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  br label %36

36:                                               ; preds = %33, %30
  %37 = phi %struct.TYPE_10__** [ %32, %30 ], [ %35, %33 ]
  store %struct.TYPE_10__** %37, %struct.TYPE_10__*** %9, align 8
  br label %90

38:                                               ; preds = %10
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %42, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %38
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp slt i64 %52, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %48
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 2
  br label %64

61:                                               ; preds = %48
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  br label %64

64:                                               ; preds = %61, %58
  %65 = phi %struct.TYPE_10__** [ %60, %58 ], [ %63, %61 ]
  store %struct.TYPE_10__** %65, %struct.TYPE_10__*** %9, align 8
  br label %89

66:                                               ; preds = %38
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @ngx_memcmp(i32 %70, i32 %74, i64 %78)
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %66
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 2
  br label %87

84:                                               ; preds = %66
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  br label %87

87:                                               ; preds = %84, %81
  %88 = phi %struct.TYPE_10__** [ %83, %81 ], [ %86, %84 ]
  store %struct.TYPE_10__** %88, %struct.TYPE_10__*** %9, align 8
  br label %89

89:                                               ; preds = %87, %64
  br label %90

90:                                               ; preds = %89, %36
  %91 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %94 = icmp eq %struct.TYPE_10__* %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %99

96:                                               ; preds = %90
  %97 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  store %struct.TYPE_10__* %98, %struct.TYPE_10__** %4, align 8
  br label %10

99:                                               ; preds = %95
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %101 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  store %struct.TYPE_10__* %100, %struct.TYPE_10__** %101, align 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 3
  store %struct.TYPE_10__* %102, %struct.TYPE_10__** %104, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 2
  store %struct.TYPE_10__* %105, %struct.TYPE_10__** %107, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  store %struct.TYPE_10__* %108, %struct.TYPE_10__** %110, align 8
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %112 = call i32 @ngx_rbt_red(%struct.TYPE_10__* %111)
  ret void
}

declare dso_local i64 @ngx_memcmp(i32, i32, i64) #1

declare dso_local i32 @ngx_rbt_red(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
