; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_acl-util.c_calc_acl_mask_if_needed.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_acl-util.c_calc_acl_mask_if_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACL_FIRST_ENTRY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ACL_MASK = common dso_local global i64 0, align 8
@ACL_USER = common dso_local global i32 0, align 4
@ACL_GROUP = common dso_local global i32 0, align 4
@ACL_NEXT_ENTRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @calc_acl_mask_if_needed(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %6, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @assert(i32* %8)
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @ACL_FIRST_ENTRY, align 4
  %13 = call i32 @acl_get_entry(i32 %11, i32 %12, i32* %4)
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %37, %1
  %15 = load i32, i32* %5, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %14
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @acl_get_tag_type(i32 %18, i64* %7)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @errno, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %60

24:                                               ; preds = %17
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @ACL_MASK, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %60

29:                                               ; preds = %24
  %30 = load i64, i64* %7, align 8
  %31 = load i32, i32* @ACL_USER, align 4
  %32 = load i32, i32* @ACL_GROUP, align 4
  %33 = call i64 @IN_SET(i64 %30, i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 1, i32* %6, align 4
  br label %36

36:                                               ; preds = %35, %29
  br label %37

37:                                               ; preds = %36
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ACL_NEXT_ENTRY, align 4
  %41 = call i32 @acl_get_entry(i32 %39, i32 %40, i32* %4)
  store i32 %41, i32* %5, align 4
  br label %14

42:                                               ; preds = %14
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* @errno, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %60

48:                                               ; preds = %42
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load i32*, i32** %3, align 8
  %53 = call i64 @acl_calc_mask(i32* %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* @errno, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %60

58:                                               ; preds = %51, %48
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %55, %45, %28, %21
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @acl_get_entry(i32, i32, i32*) #1

declare dso_local i64 @acl_get_tag_type(i32, i64*) #1

declare dso_local i64 @IN_SET(i64, i32, i32) #1

declare dso_local i64 @acl_calc_mask(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
