; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_thread.c_opj_worker_thread_function.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_thread.c_opj_worker_thread_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.TYPE_7__ = type { i32, i32 (i32, i32*)* }

@OPJ_FALSE = common dso_local global i64 0, align 8
@OPJ_TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @opj_worker_thread_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opj_worker_thread_function(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i64, i64* @OPJ_FALSE, align 8
  store i64 %8, i64* %6, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %3, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %4, align 8
  %14 = call i32* (...) @opj_tls_new()
  store i32* %14, i32** %5, align 8
  br label %15

15:                                               ; preds = %40, %1
  %16 = load i64, i64* @OPJ_TRUE, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %15
  %19 = load i32*, i32** %4, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call %struct.TYPE_7__* @opj_thread_pool_get_next_job(i32* %19, %struct.TYPE_6__* %20, i64 %21)
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %7, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %24 = icmp eq %struct.TYPE_7__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %44

26:                                               ; preds = %18
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32 (i32, i32*)*, i32 (i32, i32*)** %28, align 8
  %30 = icmp ne i32 (i32, i32*)* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32 (i32, i32*)*, i32 (i32, i32*)** %33, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 %34(i32 %37, i32* %38)
  br label %40

40:                                               ; preds = %31, %26
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %42 = call i32 @opj_free(%struct.TYPE_7__* %41)
  %43 = load i64, i64* @OPJ_TRUE, align 8
  store i64 %43, i64* %6, align 8
  br label %15

44:                                               ; preds = %25, %15
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @opj_tls_destroy(i32* %45)
  ret void
}

declare dso_local i32* @opj_tls_new(...) #1

declare dso_local %struct.TYPE_7__* @opj_thread_pool_get_next_job(i32*, %struct.TYPE_6__*, i64) #1

declare dso_local i32 @opj_free(%struct.TYPE_7__*) #1

declare dso_local i32 @opj_tls_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
