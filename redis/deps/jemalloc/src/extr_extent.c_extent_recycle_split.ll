; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_extent.c_extent_recycle_split.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_extent.c_extent_recycle_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@extent_split_interior_ok = common dso_local global i64 0, align 8
@extent_split_interior_error = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32**, i32*, i32*, i8*, i64, i64, i64, i32, i32, i32*, i32)* @extent_recycle_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @extent_recycle_split(i32* %0, i32* %1, i32** %2, i32* %3, i32* %4, i8* %5, i64 %6, i64 %7, i64 %8, i32 %9, i32 %10, i32* %11, i32 %12) #0 {
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32**, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i8*, align 8
  store i32* %0, i32** %15, align 8
  store i32* %1, i32** %16, align 8
  store i32** %2, i32*** %17, align 8
  store i32* %3, i32** %18, align 8
  store i32* %4, i32** %19, align 8
  store i8* %5, i8** %20, align 8
  store i64 %6, i64* %21, align 8
  store i64 %7, i64* %22, align 8
  store i64 %8, i64* %23, align 8
  store i32 %9, i32* %24, align 4
  store i32 %10, i32* %25, align 4
  store i32* %11, i32** %26, align 8
  store i32 %12, i32* %27, align 4
  %34 = load i32*, i32** %15, align 8
  %35 = load i32*, i32** %16, align 8
  %36 = load i32**, i32*** %17, align 8
  %37 = load i32*, i32** %18, align 8
  %38 = load i8*, i8** %20, align 8
  %39 = load i64, i64* %21, align 8
  %40 = load i64, i64* %22, align 8
  %41 = load i64, i64* %23, align 8
  %42 = load i32, i32* %24, align 4
  %43 = load i32, i32* %25, align 4
  %44 = load i32, i32* %27, align 4
  %45 = call i64 @extent_split_interior(i32* %34, i32* %35, i32** %36, i32* %37, i32** %26, i32** %28, i32** %29, i32** %30, i32** %31, i8* %38, i64 %39, i64 %40, i64 %41, i32 %42, i32 %43, i32 %44)
  store i64 %45, i64* %32, align 8
  %46 = load i64, i64* %32, align 8
  %47 = load i64, i64* @extent_split_interior_ok, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %69

49:                                               ; preds = %13
  %50 = load i32*, i32** %28, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load i32*, i32** %15, align 8
  %54 = load i32*, i32** %16, align 8
  %55 = load i32*, i32** %19, align 8
  %56 = load i32*, i32** %28, align 8
  %57 = call i32 @extent_deactivate(i32* %53, i32* %54, i32* %55, i32* %56)
  br label %58

58:                                               ; preds = %52, %49
  %59 = load i32*, i32** %29, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load i32*, i32** %15, align 8
  %63 = load i32*, i32** %16, align 8
  %64 = load i32*, i32** %19, align 8
  %65 = load i32*, i32** %29, align 8
  %66 = call i32 @extent_deactivate(i32* %62, i32* %63, i32* %64, i32* %65)
  br label %67

67:                                               ; preds = %61, %58
  %68 = load i32*, i32** %26, align 8
  store i32* %68, i32** %14, align 8
  br label %105

69:                                               ; preds = %13
  %70 = load i64, i64* %32, align 8
  %71 = load i64, i64* @extent_split_interior_error, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load i32*, i32** %31, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %69
  %78 = load i32*, i32** %15, align 8
  %79 = load i32*, i32** %31, align 8
  %80 = call i32 @extent_deregister(i32* %78, i32* %79)
  br label %81

81:                                               ; preds = %77, %69
  %82 = load i32*, i32** %30, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %104

84:                                               ; preds = %81
  %85 = load i32*, i32** %30, align 8
  %86 = call i8* @extent_base_get(i32* %85)
  store i8* %86, i8** %33, align 8
  %87 = load i32*, i32** %15, align 8
  %88 = load i32*, i32** %30, align 8
  %89 = call i32 @extent_deregister_no_gdump_sub(i32* %87, i32* %88)
  %90 = load i32*, i32** %15, align 8
  %91 = load i32*, i32** %16, align 8
  %92 = load i32**, i32*** %17, align 8
  %93 = load i32*, i32** %19, align 8
  %94 = load i32*, i32** %30, align 8
  %95 = load i32, i32* %27, align 4
  %96 = call i32 @extents_leak(i32* %90, i32* %91, i32** %92, i32* %93, i32* %94, i32 %95)
  %97 = load i32*, i32** %15, align 8
  %98 = load i32*, i32** %18, align 8
  %99 = load i8*, i8** %33, align 8
  %100 = call i32* @extent_lock_from_addr(i32* %97, i32* %98, i8* %99)
  %101 = icmp eq i32* %100, null
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  br label %104

104:                                              ; preds = %84, %81
  store i32* null, i32** %14, align 8
  br label %105

105:                                              ; preds = %104, %67
  %106 = load i32*, i32** %14, align 8
  ret i32* %106
}

declare dso_local i64 @extent_split_interior(i32*, i32*, i32**, i32*, i32**, i32**, i32**, i32**, i32**, i8*, i64, i64, i64, i32, i32, i32) #1

declare dso_local i32 @extent_deactivate(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @extent_deregister(i32*, i32*) #1

declare dso_local i8* @extent_base_get(i32*) #1

declare dso_local i32 @extent_deregister_no_gdump_sub(i32*, i32*) #1

declare dso_local i32 @extents_leak(i32*, i32*, i32**, i32*, i32*, i32) #1

declare dso_local i32* @extent_lock_from_addr(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
