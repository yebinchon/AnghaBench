; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_heap.c_heap_flags_from_global_flag.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_heap.c_heap_flags_from_global_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FLG_HEAP_ENABLE_TAIL_CHECK = common dso_local global i32 0, align 4
@HEAP_TAIL_CHECKING_ENABLED = common dso_local global i32 0, align 4
@FLG_HEAP_ENABLE_FREE_CHECK = common dso_local global i32 0, align 4
@HEAP_FREE_CHECKING_ENABLED = common dso_local global i32 0, align 4
@FLG_HEAP_VALIDATE_PARAMETERS = common dso_local global i32 0, align 4
@HEAP_VALIDATE_PARAMS = common dso_local global i32 0, align 4
@HEAP_VALIDATE = common dso_local global i32 0, align 4
@FLG_HEAP_VALIDATE_ALL = common dso_local global i32 0, align 4
@HEAP_VALIDATE_ALL = common dso_local global i32 0, align 4
@FLG_HEAP_DISABLE_COALESCING = common dso_local global i32 0, align 4
@HEAP_DISABLE_COALESCE_ON_FREE = common dso_local global i32 0, align 4
@FLG_HEAP_PAGE_ALLOCS = common dso_local global i32 0, align 4
@HEAP_PAGE_ALLOCS = common dso_local global i32 0, align 4
@HEAP_GROWABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @heap_flags_from_global_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @heap_flags_from_global_flag(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @FLG_HEAP_ENABLE_TAIL_CHECK, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @HEAP_TAIL_CHECKING_ENABLED, align 4
  %10 = load i32, i32* %3, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %8, %1
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @FLG_HEAP_ENABLE_FREE_CHECK, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i32, i32* @HEAP_FREE_CHECKING_ENABLED, align 4
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %17, %12
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @FLG_HEAP_VALIDATE_PARAMETERS, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load i32, i32* @HEAP_VALIDATE_PARAMS, align 4
  %28 = load i32, i32* @HEAP_VALIDATE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @HEAP_TAIL_CHECKING_ENABLED, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @HEAP_FREE_CHECKING_ENABLED, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %3, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %26, %21
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @FLG_HEAP_VALIDATE_ALL, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load i32, i32* @HEAP_VALIDATE_ALL, align 4
  %43 = load i32, i32* @HEAP_VALIDATE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @HEAP_TAIL_CHECKING_ENABLED, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @HEAP_FREE_CHECKING_ENABLED, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %3, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %41, %36
  %52 = load i32, i32* %2, align 4
  %53 = load i32, i32* @FLG_HEAP_DISABLE_COALESCING, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* @HEAP_DISABLE_COALESCE_ON_FREE, align 4
  %58 = load i32, i32* %3, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %56, %51
  %61 = load i32, i32* %2, align 4
  %62 = load i32, i32* @FLG_HEAP_PAGE_ALLOCS, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load i32, i32* @HEAP_PAGE_ALLOCS, align 4
  %67 = load i32, i32* @HEAP_GROWABLE, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* %3, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %65, %60
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
