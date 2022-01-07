; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_manager.c_manager_deserialize_uid_refs_one_internal.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_manager.c_manager_deserialize_uid_refs_one_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [44 x i8] c"Unable to parse UID reference serialization\00", align 1
@trivial_hash_ops = common dso_local global i32 0, align 4
@DESTROY_IPC_FLAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to add UID reference entry: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32**, i8*)* @manager_deserialize_uid_refs_one_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @manager_deserialize_uid_refs_one_internal(i8* %0, i32** %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @assert(i8* %10)
  %12 = load i32**, i32*** %5, align 8
  %13 = bitcast i32** %12 to i8*
  %14 = call i32 @assert(i8* %13)
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @assert(i8* %15)
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @parse_uid(i8* %17, i64* %7)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i64, i64* %7, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %3
  %25 = call i32 @log_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %61

26:                                               ; preds = %21
  %27 = load i32**, i32*** %5, align 8
  %28 = call i32 @hashmap_ensure_allocated(i32** %27, i32* @trivial_hash_ops)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = call i32 (...) @log_oom()
  br label %61

33:                                               ; preds = %26
  %34 = load i32**, i32*** %5, align 8
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @UID_TO_PTR(i64 %36)
  %38 = call i32 @hashmap_get(i32* %35, i32 %37)
  %39 = call i32 @PTR_TO_UINT32(i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @DESTROY_IPC_FLAG, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  br label %61

45:                                               ; preds = %33
  %46 = load i32, i32* @DESTROY_IPC_FLAG, align 4
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %8, align 4
  %49 = load i32**, i32*** %5, align 8
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @UID_TO_PTR(i64 %51)
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @UINT32_TO_PTR(i32 %53)
  %55 = call i32 @hashmap_replace(i32* %50, i32 %52, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %45
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @log_debug_errno(i32 %59, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %24, %31, %44, %58, %45
  ret void
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @parse_uid(i8*, i64*) #1

declare dso_local i32 @log_debug(i8*) #1

declare dso_local i32 @hashmap_ensure_allocated(i32**, i32*) #1

declare dso_local i32 @log_oom(...) #1

declare dso_local i32 @PTR_TO_UINT32(i32) #1

declare dso_local i32 @hashmap_get(i32*, i32) #1

declare dso_local i32 @UID_TO_PTR(i64) #1

declare dso_local i32 @hashmap_replace(i32*, i32, i32) #1

declare dso_local i32 @UINT32_TO_PTR(i32) #1

declare dso_local i32 @log_debug_errno(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
