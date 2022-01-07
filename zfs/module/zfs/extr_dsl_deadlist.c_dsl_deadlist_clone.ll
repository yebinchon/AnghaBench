; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_deadlist.c_dsl_deadlist_clone.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_deadlist.c_dsl_deadlist_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i64 }
%struct.TYPE_9__ = type { i64 }

@SPA_OLD_MAXBLOCKSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dsl_deadlist_clone(%struct.TYPE_8__* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %9, align 8
  %17 = call i64 @dsl_deadlist_alloc(i32 %15, i32* %16)
  store i64 %17, i64* %11, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @dsl_deadlist_regenerate(i32 %25, i64 %26, i64 %27, i32* %28)
  %30 = load i64, i64* %11, align 8
  store i64 %30, i64* %5, align 8
  br label %78

31:                                               ; preds = %4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = call i32 @mutex_enter(i32* %33)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %36 = call i32 @dsl_deadlist_load_tree(%struct.TYPE_8__* %35)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = call %struct.TYPE_9__* @avl_first(i32* %38)
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %10, align 8
  br label %40

40:                                               ; preds = %68, %31
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %42 = icmp ne %struct.TYPE_9__* %41, null
  br i1 %42, label %43, label %73

43:                                               ; preds = %40
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %7, align 8
  %48 = icmp sge i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %73

50:                                               ; preds = %43
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @SPA_OLD_MAXBLOCKSIZE, align 4
  %55 = load i32*, i32** %9, align 8
  %56 = call i64 @bpobj_alloc_empty(i32 %53, i32 %54, i32* %55)
  store i64 %56, i64* %12, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i64, i64* %11, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %12, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = call i32 @zap_add_int_key(i32 %59, i64 %60, i64 %63, i64 %64, i32* %65)
  %67 = call i32 @VERIFY0(i32 %66)
  br label %68

68:                                               ; preds = %50
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %72 = call %struct.TYPE_9__* @AVL_NEXT(i32* %70, %struct.TYPE_9__* %71)
  store %struct.TYPE_9__* %72, %struct.TYPE_9__** %10, align 8
  br label %40

73:                                               ; preds = %49, %40
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = call i32 @mutex_exit(i32* %75)
  %77 = load i64, i64* %11, align 8
  store i64 %77, i64* %5, align 8
  br label %78

78:                                               ; preds = %73, %22
  %79 = load i64, i64* %5, align 8
  ret i64 %79
}

declare dso_local i64 @dsl_deadlist_alloc(i32, i32*) #1

declare dso_local i32 @dsl_deadlist_regenerate(i32, i64, i64, i32*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @dsl_deadlist_load_tree(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_9__* @avl_first(i32*) #1

declare dso_local i64 @bpobj_alloc_empty(i32, i32, i32*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @zap_add_int_key(i32, i64, i64, i64, i32*) #1

declare dso_local %struct.TYPE_9__* @AVL_NEXT(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
