; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_resolver.c_ngx_resolver_cleanup_tree.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_resolver.c_ngx_resolver_cleanup_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_11__*, i64, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_11__*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_12__*)* @ngx_resolver_cleanup_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_resolver_cleanup_tree(i32* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  br label %8

8:                                                ; preds = %66, %2
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %11, %14
  br i1 %15, label %16, label %74

16:                                               ; preds = %8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @ngx_rbtree_min(i64 %19, i64 %22)
  %24 = call %struct.TYPE_10__* @ngx_resolver_node(i32 %23)
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %7, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 2
  %27 = call i32 @ngx_queue_remove(i32* %26)
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  store %struct.TYPE_11__* %30, %struct.TYPE_11__** %5, align 8
  br label %31

31:                                               ; preds = %64, %16
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %33 = icmp ne %struct.TYPE_11__* %32, null
  br i1 %33, label %34, label %66

34:                                               ; preds = %31
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  store %struct.TYPE_11__* %37, %struct.TYPE_11__** %6, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = icmp ne %struct.TYPE_11__* %40, null
  br i1 %41, label %42, label %60

42:                                               ; preds = %34
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = call i32 @ngx_del_timer(%struct.TYPE_11__* %52)
  br label %54

54:                                               ; preds = %49, %42
  %55 = load i32*, i32** %3, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = call i32 @ngx_resolver_free(i32* %55, %struct.TYPE_11__* %58)
  br label %60

60:                                               ; preds = %54, %34
  %61 = load i32*, i32** %3, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %63 = call i32 @ngx_resolver_free(i32* %61, %struct.TYPE_11__* %62)
  br label %64

64:                                               ; preds = %60
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %65, %struct.TYPE_11__** %5, align 8
  br label %31

66:                                               ; preds = %31
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = call i32 @ngx_rbtree_delete(%struct.TYPE_12__* %67, i32* %69)
  %71 = load i32*, i32** %3, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %73 = call i32 @ngx_resolver_free_node(i32* %71, %struct.TYPE_10__* %72)
  br label %8

74:                                               ; preds = %8
  ret void
}

declare dso_local %struct.TYPE_10__* @ngx_resolver_node(i32) #1

declare dso_local i32 @ngx_rbtree_min(i64, i64) #1

declare dso_local i32 @ngx_queue_remove(i32*) #1

declare dso_local i32 @ngx_del_timer(%struct.TYPE_11__*) #1

declare dso_local i32 @ngx_resolver_free(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @ngx_rbtree_delete(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @ngx_resolver_free_node(i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
