; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_j2k.c_opj_j2k_set_threads.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_j2k.c_opj_j2k_set_threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@INT_MAX = common dso_local global i64 0, align 8
@OPJ_FALSE = common dso_local global i32 0, align 4
@OPJ_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opj_j2k_set_threads(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = call i64 (...) @opj_has_thread_support()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %38

8:                                                ; preds = %2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @opj_thread_pool_destroy(i32* %11)
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32* null, i32** %14, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @INT_MAX, align 8
  %17 = icmp sle i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %8
  %19 = load i64, i64* %5, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i8* @opj_thread_pool_create(i32 %20)
  %22 = bitcast i8* %21 to i32*
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32* %22, i32** %24, align 8
  br label %25

25:                                               ; preds = %18, %8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = call i8* @opj_thread_pool_create(i32 0)
  %32 = bitcast i8* %31 to i32*
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32* %32, i32** %34, align 8
  %35 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %35, i32* %3, align 4
  br label %40

36:                                               ; preds = %25
  %37 = load i32, i32* @OPJ_TRUE, align 4
  store i32 %37, i32* %3, align 4
  br label %40

38:                                               ; preds = %2
  %39 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %36, %30
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @opj_has_thread_support(...) #1

declare dso_local i32 @opj_thread_pool_destroy(i32*) #1

declare dso_local i8* @opj_thread_pool_create(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
