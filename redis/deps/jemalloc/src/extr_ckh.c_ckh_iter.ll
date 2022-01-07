; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_ckh.c_ckh_iter.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_ckh.c_ckh_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32* }

@LG_CKH_BUCKET_CELLS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ckh_iter(%struct.TYPE_5__* %0, i64* %1, i8** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i64* %1, i64** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load i64*, i64** %7, align 8
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %10, align 8
  %14 = call i64 @ZU(i32 1)
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @LG_CKH_BUCKET_CELLS, align 8
  %19 = add i64 %17, %18
  %20 = shl i64 %14, %19
  store i64 %20, i64* %11, align 8
  br label %21

21:                                               ; preds = %65, %4
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* %11, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %68

25:                                               ; preds = %21
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i64, i64* %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %64

34:                                               ; preds = %25
  %35 = load i8**, i8*** %8, align 8
  %36 = icmp ne i8** %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i64, i64* %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = bitcast i32* %44 to i8*
  %46 = load i8**, i8*** %8, align 8
  store i8* %45, i8** %46, align 8
  br label %47

47:                                               ; preds = %37, %34
  %48 = load i8**, i8*** %9, align 8
  %49 = icmp ne i8** %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i64, i64* %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = load i8**, i8*** %9, align 8
  store i8* %58, i8** %59, align 8
  br label %60

60:                                               ; preds = %50, %47
  %61 = load i64, i64* %10, align 8
  %62 = add i64 %61, 1
  %63 = load i64*, i64** %7, align 8
  store i64 %62, i64* %63, align 8
  store i32 0, i32* %5, align 4
  br label %69

64:                                               ; preds = %25
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %10, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %10, align 8
  br label %21

68:                                               ; preds = %21
  store i32 1, i32* %5, align 4
  br label %69

69:                                               ; preds = %68, %60
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i64 @ZU(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
