; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_agg_bookend.c_bookend_sfunc.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_agg_bookend.c_bookend_sfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_13__*, i32, i32, i8*, i32)* @bookend_sfunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bookend_sfunc(i32 %0, %struct.TYPE_13__* %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__, align 4
  %9 = alloca %struct.TYPE_12__, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  store i32 %2, i32* %16, align 4
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  store i32 %3, i32* %17, align 4
  store i32 %0, i32* %10, align 4
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = call %struct.TYPE_11__* @transcache_get(i32 %18)
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %15, align 8
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @MemoryContextSwitchTo(i32 %20)
  store i32 %21, i32* %14, align 4
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %23 = icmp eq %struct.TYPE_13__* %22, null
  br i1 %23, label %24, label %42

24:                                               ; preds = %6
  %25 = load i32, i32* %10, align 4
  %26 = call i64 @MemoryContextAlloc(i32 %25, i32 8)
  %27 = inttoptr i64 %26 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %27, %struct.TYPE_13__** %11, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @typeinfocache_polydatumcopy(i32* %29, i32 %33, i32* %31)
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @typeinfocache_polydatumcopy(i32* %36, i32 %40, i32* %38)
  br label %74

42:                                               ; preds = %6
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %73, label %46

46:                                               ; preds = %42
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 2
  %49 = load i32, i32* %13, align 4
  %50 = load i8*, i8** %12, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @cmpfunccache_cmp(i32* %48, i32 %49, i8* %50, i32 %55, i32 %53)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %46
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @typeinfocache_polydatumcopy(i32* %60, i32 %64, i32* %62)
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @typeinfocache_polydatumcopy(i32* %67, i32 %71, i32* %69)
  br label %73

73:                                               ; preds = %58, %46, %42
  br label %74

74:                                               ; preds = %73, %24
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @MemoryContextSwitchTo(i32 %75)
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %78 = call i32 @PG_RETURN_POINTER(%struct.TYPE_13__* %77)
  %79 = load i32, i32* %7, align 4
  ret i32 %79
}

declare dso_local %struct.TYPE_11__* @transcache_get(i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i64 @MemoryContextAlloc(i32, i32) #1

declare dso_local i32 @typeinfocache_polydatumcopy(i32*, i32, i32*) #1

declare dso_local i64 @cmpfunccache_cmp(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @PG_RETURN_POINTER(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
