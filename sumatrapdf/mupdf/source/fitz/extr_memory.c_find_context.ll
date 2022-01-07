; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_memory.c_find_context.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_memory.c_find_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 (i32, i32)*, i32 (i32, i32)* }

@FZ_LOCK_DEBUG_CONTEXT_MAX = common dso_local global i32 0, align 4
@fz_lock_debug_contexts = common dso_local global %struct.TYPE_6__** null, align 8
@FZ_LOCK_ALLOC = common dso_local global i32 0, align 4
@dump_lock_times = common dso_local global i32 0, align 4
@fz_debug_locking_inited = common dso_local global i32 0, align 4
@fz_lock_program_start = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @find_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_context(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %67, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @FZ_LOCK_DEBUG_CONTEXT_MAX, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %70

10:                                               ; preds = %6
  %11 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @fz_lock_debug_contexts, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %11, i64 %13
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = icmp eq %struct.TYPE_6__* %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %71

20:                                               ; preds = %10
  %21 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @fz_lock_debug_contexts, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %21, i64 %23
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = icmp eq %struct.TYPE_6__* %25, null
  br i1 %26, label %27, label %66

27:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load i32 (i32, i32)*, i32 (i32, i32)** %30, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @FZ_LOCK_ALLOC, align 4
  %37 = call i32 %31(i32 %35, i32 %36)
  %38 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @fz_lock_debug_contexts, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %38, i64 %40
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = icmp eq %struct.TYPE_6__* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %27
  store i32 1, i32* %5, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %46 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @fz_lock_debug_contexts, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %46, i64 %48
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %49, align 8
  br label %50

50:                                               ; preds = %44, %27
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32 (i32, i32)*, i32 (i32, i32)** %53, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @FZ_LOCK_ALLOC, align 4
  %60 = call i32 %54(i32 %58, i32 %59)
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %50
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %71

65:                                               ; preds = %50
  br label %66

66:                                               ; preds = %65, %20
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %4, align 4
  br label %6

70:                                               ; preds = %6
  store i32 -1, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %63, %18
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
