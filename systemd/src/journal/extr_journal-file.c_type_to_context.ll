; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_journal-file.c_type_to_context.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_journal-file.c_type_to_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_OBJECT_TYPE_MAX = common dso_local global i64 0, align 8
@MMAP_CACHE_MAX_CONTEXTS = common dso_local global i64 0, align 8
@CONTEXT_HEADER = common dso_local global i64 0, align 8
@OBJECT_UNUSED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @type_to_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @type_to_context(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* @_OBJECT_TYPE_MAX, align 8
  %4 = load i64, i64* @MMAP_CACHE_MAX_CONTEXTS, align 8
  %5 = icmp sle i64 %3, %4
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert_cc(i32 %6)
  %8 = load i64, i64* @CONTEXT_HEADER, align 8
  %9 = load i64, i64* @MMAP_CACHE_MAX_CONTEXTS, align 8
  %10 = icmp slt i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert_cc(i32 %11)
  %13 = load i64, i64* %2, align 8
  %14 = load i64, i64* @OBJECT_UNUSED, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load i64, i64* %2, align 8
  %18 = load i64, i64* @_OBJECT_TYPE_MAX, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i64, i64* %2, align 8
  br label %23

22:                                               ; preds = %16, %1
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i64 [ %21, %20 ], [ 0, %22 ]
  %25 = trunc i64 %24 to i32
  ret i32 %25
}

declare dso_local i32 @assert_cc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
