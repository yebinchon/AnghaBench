; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_resolver.c_ngx_resolver_rbtree_insert_value.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_resolver.c_ngx_resolver_rbtree_insert_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*)* @ngx_resolver_rbtree_insert_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_resolver_rbtree_insert_value(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_10__**, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %6, align 8
  br label %10

10:                                               ; preds = %66, %3
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  store %struct.TYPE_10__** %20, %struct.TYPE_10__*** %7, align 8
  br label %60

21:                                               ; preds = %10
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %24, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  store %struct.TYPE_10__** %31, %struct.TYPE_10__*** %7, align 8
  br label %59

32:                                               ; preds = %21
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %34 = call %struct.TYPE_9__* @ngx_resolver_node(%struct.TYPE_10__* %33)
  store %struct.TYPE_9__* %34, %struct.TYPE_9__** %8, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = call %struct.TYPE_9__* @ngx_resolver_node(%struct.TYPE_10__* %35)
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %9, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @ngx_memn2cmp(i32 %39, i32 %42, i32 %45, i32 %48)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %32
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 2
  br label %57

54:                                               ; preds = %32
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  br label %57

57:                                               ; preds = %54, %51
  %58 = phi %struct.TYPE_10__** [ %53, %51 ], [ %56, %54 ]
  store %struct.TYPE_10__** %58, %struct.TYPE_10__*** %7, align 8
  br label %59

59:                                               ; preds = %57, %29
  br label %60

60:                                               ; preds = %59, %18
  %61 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %64 = icmp eq %struct.TYPE_10__* %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %69

66:                                               ; preds = %60
  %67 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  store %struct.TYPE_10__* %68, %struct.TYPE_10__** %4, align 8
  br label %10

69:                                               ; preds = %65
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %71 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  store %struct.TYPE_10__* %70, %struct.TYPE_10__** %71, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 3
  store %struct.TYPE_10__* %72, %struct.TYPE_10__** %74, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 2
  store %struct.TYPE_10__* %75, %struct.TYPE_10__** %77, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  store %struct.TYPE_10__* %78, %struct.TYPE_10__** %80, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %82 = call i32 @ngx_rbt_red(%struct.TYPE_10__* %81)
  ret void
}

declare dso_local %struct.TYPE_9__* @ngx_resolver_node(%struct.TYPE_10__*) #1

declare dso_local i64 @ngx_memn2cmp(i32, i32, i32, i32) #1

declare dso_local i32 @ngx_rbt_red(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
