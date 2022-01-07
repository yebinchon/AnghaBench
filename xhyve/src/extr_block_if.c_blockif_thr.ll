; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_block_if.c_blockif_thr.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_block_if.c_blockif_thr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blockif_ctxt = type { i32, i32, i64, i64 }
%struct.blockif_elem = type { i32 }

@MAXPHYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @blockif_thr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @blockif_thr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.blockif_ctxt*, align 8
  %4 = alloca %struct.blockif_elem*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.blockif_ctxt*
  store %struct.blockif_ctxt* %8, %struct.blockif_ctxt** %3, align 8
  %9 = load %struct.blockif_ctxt*, %struct.blockif_ctxt** %3, align 8
  %10 = getelementptr inbounds %struct.blockif_ctxt, %struct.blockif_ctxt* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @MAXPHYS, align 4
  %15 = call i32* @malloc(i32 %14)
  store i32* %15, i32** %6, align 8
  br label %17

16:                                               ; preds = %1
  store i32* null, i32** %6, align 8
  br label %17

17:                                               ; preds = %16, %13
  %18 = call i32 (...) @pthread_self()
  store i32 %18, i32* %5, align 4
  %19 = load %struct.blockif_ctxt*, %struct.blockif_ctxt** %3, align 8
  %20 = getelementptr inbounds %struct.blockif_ctxt, %struct.blockif_ctxt* %19, i32 0, i32 0
  %21 = call i32 @pthread_mutex_lock(i32* %20)
  br label %22

22:                                               ; preds = %48, %17
  br label %23

23:                                               ; preds = %28, %22
  %24 = load %struct.blockif_ctxt*, %struct.blockif_ctxt** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @blockif_dequeue(%struct.blockif_ctxt* %24, i32 %25, %struct.blockif_elem** %4)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %23
  %29 = load %struct.blockif_ctxt*, %struct.blockif_ctxt** %3, align 8
  %30 = getelementptr inbounds %struct.blockif_ctxt, %struct.blockif_ctxt* %29, i32 0, i32 0
  %31 = call i32 @pthread_mutex_unlock(i32* %30)
  %32 = load %struct.blockif_ctxt*, %struct.blockif_ctxt** %3, align 8
  %33 = load %struct.blockif_elem*, %struct.blockif_elem** %4, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @blockif_proc(%struct.blockif_ctxt* %32, %struct.blockif_elem* %33, i32* %34)
  %36 = load %struct.blockif_ctxt*, %struct.blockif_ctxt** %3, align 8
  %37 = getelementptr inbounds %struct.blockif_ctxt, %struct.blockif_ctxt* %36, i32 0, i32 0
  %38 = call i32 @pthread_mutex_lock(i32* %37)
  %39 = load %struct.blockif_ctxt*, %struct.blockif_ctxt** %3, align 8
  %40 = load %struct.blockif_elem*, %struct.blockif_elem** %4, align 8
  %41 = call i32 @blockif_complete(%struct.blockif_ctxt* %39, %struct.blockif_elem* %40)
  br label %23

42:                                               ; preds = %23
  %43 = load %struct.blockif_ctxt*, %struct.blockif_ctxt** %3, align 8
  %44 = getelementptr inbounds %struct.blockif_ctxt, %struct.blockif_ctxt* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %54

48:                                               ; preds = %42
  %49 = load %struct.blockif_ctxt*, %struct.blockif_ctxt** %3, align 8
  %50 = getelementptr inbounds %struct.blockif_ctxt, %struct.blockif_ctxt* %49, i32 0, i32 1
  %51 = load %struct.blockif_ctxt*, %struct.blockif_ctxt** %3, align 8
  %52 = getelementptr inbounds %struct.blockif_ctxt, %struct.blockif_ctxt* %51, i32 0, i32 0
  %53 = call i32 @pthread_cond_wait(i32* %50, i32* %52)
  br label %22

54:                                               ; preds = %47
  %55 = load %struct.blockif_ctxt*, %struct.blockif_ctxt** %3, align 8
  %56 = getelementptr inbounds %struct.blockif_ctxt, %struct.blockif_ctxt* %55, i32 0, i32 0
  %57 = call i32 @pthread_mutex_unlock(i32* %56)
  %58 = load i32*, i32** %6, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @free(i32* %61)
  br label %63

63:                                               ; preds = %60, %54
  %64 = call i32 @pthread_exit(i32* null)
  ret i8* null
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @pthread_self(...) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @blockif_dequeue(%struct.blockif_ctxt*, i32, %struct.blockif_elem**) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @blockif_proc(%struct.blockif_ctxt*, %struct.blockif_elem*, i32*) #1

declare dso_local i32 @blockif_complete(%struct.blockif_ctxt*, %struct.blockif_elem*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @pthread_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
