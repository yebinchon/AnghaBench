; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_mudraw.c_bgprint_worker.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_mudraw.c_bgprint_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"BGPrint waiting\0A\00", align 1
@bgprint = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"BGPrint woken for pagenum %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"BGPrint completed page %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @bgprint_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bgprint_worker(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 4, i1 false)
  %7 = load i8*, i8** %2, align 8
  br label %8

8:                                                ; preds = %36, %1
  %9 = call i32 @DEBUG_THREADS(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @mu_wait_semaphore(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bgprint, i32 0, i32 8))
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bgprint, i32 0, i32 0), align 4
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to i8*
  %15 = call i32 @DEBUG_THREADS(i8* %14)
  %16 = load i32, i32* %4, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %8
  %19 = call i32 (...) @gettime()
  store i32 %19, i32* %5, align 4
  %20 = call i32 @memset(%struct.TYPE_5__* %3, i32 0, i32 4)
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bgprint, i32 0, i32 7), align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bgprint, i32 0, i32 6), align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bgprint, i32 0, i32 5), align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bgprint, i32 0, i32 4), align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bgprint, i32 0, i32 3), align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bgprint, i32 0, i32 2), align 4
  %29 = call i32 @dodrawpage(i32 %21, i32 %22, i32 %23, i32 %24, %struct.TYPE_5__* %3, i32 %25, i32 %26, i32 %27, i32 1, i32 %28)
  br label %30

30:                                               ; preds = %18, %8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 @DEBUG_THREADS(i8* %33)
  %35 = call i32 @mu_trigger_semaphore(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bgprint, i32 0, i32 1))
  br label %36

36:                                               ; preds = %30
  %37 = load i32, i32* %4, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %8, label %39

39:                                               ; preds = %36
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @DEBUG_THREADS(i8*) #2

declare dso_local i32 @mu_wait_semaphore(i32*) #2

declare dso_local i32 @gettime(...) #2

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #2

declare dso_local i32 @dodrawpage(i32, i32, i32, i32, %struct.TYPE_5__*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @mu_trigger_semaphore(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
