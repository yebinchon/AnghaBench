; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_ckh.c_ckh_shrink.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_ckh.c_ckh_shrink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32*, i32 }

@LG_CKH_BUCKET_CELLS = common dso_local global i32 0, align 4
@CACHELINE = common dso_local global i32 0, align 4
@LARGE_MAXCLASS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*)* @ckh_shrink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ckh_shrink(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %8, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @LG_CKH_BUCKET_CELLS, align 4
  %17 = add i32 %15, %16
  %18 = sub i32 %17, 1
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = zext i32 %19 to i64
  %21 = shl i64 4, %20
  %22 = trunc i64 %21 to i32
  %23 = load i32, i32* @CACHELINE, align 4
  %24 = call i64 @sz_sa2u(i32 %22, i32 %23)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %2
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @LARGE_MAXCLASS, align 8
  %30 = icmp ugt i64 %28, %29
  br label %31

31:                                               ; preds = %27, %2
  %32 = phi i1 [ true, %2 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %84

37:                                               ; preds = %31
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @tsd_tsdn(i32* %38)
  %40 = load i64, i64* %7, align 8
  %41 = load i32, i32* @CACHELINE, align 4
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @arena_ichoose(i32* %42, i32* null)
  %44 = call i64 @ipallocztm(i32 %39, i64 %40, i32 %41, i32 1, i32* null, i32 1, i32 %43)
  %45 = inttoptr i64 %44 to i32*
  store i32* %45, i32** %5, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %84

49:                                               ; preds = %37
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %6, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  store i32* %53, i32** %55, align 8
  %56 = load i32*, i32** %6, align 8
  store i32* %56, i32** %5, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @LG_CKH_BUCKET_CELLS, align 4
  %59 = sub i32 %57, %58
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @ckh_rebuild(%struct.TYPE_4__* %62, i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %49
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @tsd_tsdn(i32* %67)
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @idalloctm(i32 %68, i32* %69, i32* null, i32* null, i32 1, i32 1)
  br label %84

71:                                               ; preds = %49
  %72 = load i32*, i32** %3, align 8
  %73 = call i32 @tsd_tsdn(i32* %72)
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @idalloctm(i32 %73, i32* %76, i32* null, i32* null, i32 1, i32 1)
  %78 = load i32*, i32** %5, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  store i32* %78, i32** %80, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  br label %84

84:                                               ; preds = %71, %66, %48, %36
  ret void
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
