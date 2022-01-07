; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_ddt.c_ddt_class_contains.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_ddt.c_ddt_class_contains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32** }
%struct.TYPE_8__ = type { i32 }

@B_FALSE = common dso_local global i32 0, align 4
@DDT_CLASS_UNIQUE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@ddt_entry_cache = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@DDT_TYPES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ddt_class_contains(%struct.TYPE_7__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @BP_GET_DEDUP(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @B_FALSE, align 4
  store i32 %16, i32* %4, align 4
  br label %72

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @DDT_CLASS_UNIQUE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @B_TRUE, align 4
  store i32 %22, i32* %4, align 4
  br label %72

23:                                               ; preds = %17
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32**, i32*** %25, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i64 @BP_GET_CHECKSUM(i32* %27)
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %8, align 8
  %31 = load i32, i32* @ddt_entry_cache, align 4
  %32 = load i32, i32* @KM_SLEEP, align 4
  %33 = call %struct.TYPE_8__* @kmem_cache_alloc(i32 %31, i32 %32)
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %9, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @ddt_key_fill(i32* %35, i32* %36)
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %64, %23
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @DDT_TYPES, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %67

42:                                               ; preds = %38
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %60, %42
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ule i32 %44, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %43
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %52 = call i64 @ddt_object_lookup(i32* %48, i32 %49, i32 %50, %struct.TYPE_8__* %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load i32, i32* @ddt_entry_cache, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %57 = call i32 @kmem_cache_free(i32 %55, %struct.TYPE_8__* %56)
  %58 = load i32, i32* @B_TRUE, align 4
  store i32 %58, i32* %4, align 4
  br label %72

59:                                               ; preds = %47
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %11, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %11, align 4
  br label %43

63:                                               ; preds = %43
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %10, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %38

67:                                               ; preds = %38
  %68 = load i32, i32* @ddt_entry_cache, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %70 = call i32 @kmem_cache_free(i32 %68, %struct.TYPE_8__* %69)
  %71 = load i32, i32* @B_FALSE, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %67, %54, %21, %15
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @BP_GET_DEDUP(i32*) #1

declare dso_local i64 @BP_GET_CHECKSUM(i32*) #1

declare dso_local %struct.TYPE_8__* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @ddt_key_fill(i32*, i32*) #1

declare dso_local i64 @ddt_object_lookup(i32*, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
