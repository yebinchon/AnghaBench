; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_ckh.c_ckh_grow.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_ckh.c_ckh_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32 }

@LG_CKH_BUCKET_CELLS = common dso_local global i32 0, align 4
@CACHELINE = common dso_local global i32 0, align 4
@LARGE_MAXCLASS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*)* @ckh_grow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ckh_grow(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %8, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @LG_CKH_BUCKET_CELLS, align 4
  %18 = add i32 %16, %17
  store i32 %18, i32* %9, align 4
  br label %19

19:                                               ; preds = %2, %74
  %20 = load i32, i32* %9, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = zext i32 %22 to i64
  %24 = shl i64 4, %23
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @CACHELINE, align 4
  %27 = call i64 @sz_sa2u(i32 %25, i32 %26)
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %10, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %19
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* @LARGE_MAXCLASS, align 8
  %33 = icmp ugt i64 %31, %32
  br label %34

34:                                               ; preds = %30, %19
  %35 = phi i1 [ true, %19 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 1, i32* %5, align 4
  br label %88

40:                                               ; preds = %34
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @tsd_tsdn(i32* %41)
  %43 = load i64, i64* %10, align 8
  %44 = load i32, i32* @CACHELINE, align 4
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @arena_ichoose(i32* %45, i32* null)
  %47 = call i64 @ipallocztm(i32 %42, i64 %43, i32 %44, i32 1, i32* null, i32 1, i32 %46)
  %48 = inttoptr i64 %47 to i32*
  store i32* %48, i32** %6, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  store i32 1, i32* %5, align 4
  br label %88

52:                                               ; preds = %40
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %7, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  store i32* %56, i32** %58, align 8
  %59 = load i32*, i32** %7, align 8
  store i32* %59, i32** %6, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @LG_CKH_BUCKET_CELLS, align 4
  %62 = sub i32 %60, %61
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 @ckh_rebuild(%struct.TYPE_4__* %65, i32* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %52
  %70 = load i32*, i32** %3, align 8
  %71 = call i32 @tsd_tsdn(i32* %70)
  %72 = load i32*, i32** %6, align 8
  %73 = call i32 @idalloctm(i32 %71, i32* %72, i32* null, i32* null, i32 1, i32 1)
  br label %87

74:                                               ; preds = %52
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 @tsd_tsdn(i32* %75)
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @idalloctm(i32 %76, i32* %79, i32* null, i32* null, i32 1, i32 1)
  %81 = load i32*, i32** %6, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  store i32* %81, i32** %83, align 8
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  br label %19

87:                                               ; preds = %69
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %87, %51, %39
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i64 @sz_sa2u(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ipallocztm(i32, i64, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @tsd_tsdn(i32*) #1

declare dso_local i32 @arena_ichoose(i32*, i32*) #1

declare dso_local i32 @ckh_rebuild(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @idalloctm(i32, i32*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
