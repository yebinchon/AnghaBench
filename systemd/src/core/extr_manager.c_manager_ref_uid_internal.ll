; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_manager.c_manager_ref_uid_internal.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_manager.c_manager_ref_uid_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UID_INVALID = common dso_local global i64 0, align 8
@GID_INVALID = common dso_local global i64 0, align 8
@trivial_hash_ops = common dso_local global i32 0, align 4
@DESTROY_IPC_FLAG = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32**, i64, i32)* @manager_ref_uid_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @manager_ref_uid_internal(i32** %0, i32** %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32**, i32*** %6, align 8
  %14 = call i32 @assert(i32** %13)
  %15 = load i32**, i32*** %7, align 8
  %16 = call i32 @assert(i32** %15)
  %17 = load i64, i64* %8, align 8
  %18 = call i32** @uid_is_valid(i64 %17)
  %19 = call i32 @assert(i32** %18)
  %20 = call i32 @assert_cc(i32 0)
  %21 = load i64, i64* @UID_INVALID, align 8
  %22 = load i64, i64* @GID_INVALID, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert_cc(i32 %24)
  %26 = load i64, i64* %8, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %77

29:                                               ; preds = %4
  %30 = load i32**, i32*** %7, align 8
  %31 = call i32 @hashmap_ensure_allocated(i32** %30, i32* @trivial_hash_ops)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %5, align 4
  br label %77

36:                                               ; preds = %29
  %37 = load i32**, i32*** %7, align 8
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @UID_TO_PTR(i64 %39)
  %41 = call i32 @hashmap_get(i32* %38, i32 %40)
  %42 = call i32 @PTR_TO_UINT32(i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @DESTROY_IPC_FLAG, align 4
  %45 = xor i32 %44, -1
  %46 = and i32 %43, %45
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @DESTROY_IPC_FLAG, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %36
  %54 = load i32, i32* @EOVERFLOW, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %77

56:                                               ; preds = %36
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @DESTROY_IPC_FLAG, align 4
  %60 = and i32 %58, %59
  %61 = or i32 %57, %60
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i32, i32* @DESTROY_IPC_FLAG, align 4
  br label %67

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %66, %64
  %68 = phi i32 [ %65, %64 ], [ 0, %66 ]
  %69 = or i32 %61, %68
  store i32 %69, i32* %10, align 4
  %70 = load i32**, i32*** %7, align 8
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* %8, align 8
  %73 = call i32 @UID_TO_PTR(i64 %72)
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @UINT32_TO_PTR(i32 %74)
  %76 = call i32 @hashmap_replace(i32* %71, i32 %73, i32 %75)
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %67, %53, %34, %28
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @assert(i32**) #1

declare dso_local i32** @uid_is_valid(i64) #1

declare dso_local i32 @assert_cc(i32) #1

declare dso_local i32 @hashmap_ensure_allocated(i32**, i32*) #1

declare dso_local i32 @PTR_TO_UINT32(i32) #1

declare dso_local i32 @hashmap_get(i32*, i32) #1

declare dso_local i32 @UID_TO_PTR(i64) #1

declare dso_local i32 @hashmap_replace(i32*, i32, i32) #1

declare dso_local i32 @UINT32_TO_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
