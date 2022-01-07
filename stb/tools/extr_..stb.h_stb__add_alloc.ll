; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb__add_alloc.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb__add_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i8*, i32* }

@stb__alloc_count = common dso_local global i64 0, align 8
@stb__alloc_limit = common dso_local global i64 0, align 8
@stb__alloc_mask = common dso_local global i32 0, align 4
@stb__allocations = common dso_local global %struct.TYPE_2__* null, align 8
@STB_DEL = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i8*, i32)* @stb__add_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stb__add_alloc(i8* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i64, i64* @stb__alloc_count, align 8
  %13 = load i64, i64* @stb__alloc_limit, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = call i32 (...) @stb__grow_alloc()
  br label %17

17:                                               ; preds = %15, %4
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @stb_hashptr(i8* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @stb__alloc_mask, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %10, align 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stb__allocations, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = load i32*, i32** @STB_DEL, align 8
  %30 = icmp ugt i32* %28, %29
  br i1 %30, label %31, label %51

31:                                               ; preds = %17
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @stb_rehash(i32 %32)
  %34 = or i32 %33, 1
  store i32 %34, i32* %11, align 4
  br label %35

35:                                               ; preds = %41, %31
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = add nsw i32 %36, %37
  %39 = load i32, i32* @stb__alloc_mask, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %35
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stb__allocations, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = load i32*, i32** @STB_DEL, align 8
  %49 = icmp ugt i32* %47, %48
  br i1 %49, label %35, label %50

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50, %17
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stb__allocations, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %68, label %59

59:                                               ; preds = %51
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stb__allocations, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = load i32*, i32** @STB_DEL, align 8
  %67 = icmp eq i32* %65, %66
  br label %68

68:                                               ; preds = %59, %51
  %69 = phi i1 [ true, %51 ], [ %67, %59 ]
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load i8*, i8** %5, align 8
  %73 = bitcast i8* %72 to i32*
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stb__allocations, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 3
  store i32* %73, i32** %78, align 8
  %79 = load i64, i64* %6, align 8
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stb__allocations, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i64 %79, i64* %84, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stb__allocations, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  store i32 %85, i32* %90, align 8
  %91 = load i8*, i8** %7, align 8
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stb__allocations, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 2
  store i8* %91, i8** %96, align 8
  %97 = load i64, i64* @stb__alloc_count, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* @stb__alloc_count, align 8
  ret void
}

declare dso_local i32 @stb__grow_alloc(...) #1

declare dso_local i32 @stb_hashptr(i8*) #1

declare dso_local i32 @stb_rehash(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
