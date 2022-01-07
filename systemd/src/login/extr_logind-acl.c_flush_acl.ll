; ModuleID = '/home/carl/AnghaBench/systemd/src/login/extr_logind-acl.c_flush_acl.c'
source_filename = "/home/carl/AnghaBench/systemd/src/login/extr_logind-acl.c_flush_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACL_FIRST_ENTRY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ACL_USER = common dso_local global i64 0, align 8
@ACL_NEXT_ENTRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @flush_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flush_acl(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @assert(i32 %8)
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @ACL_FIRST_ENTRY, align 4
  %12 = call i32 @acl_get_entry(i32 %10, i32 %11, i32* %4)
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %37, %1
  %14 = load i32, i32* %5, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %13
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @acl_get_tag_type(i32 %17, i64* %7)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @errno, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %49

23:                                               ; preds = %16
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @ACL_USER, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %37

28:                                               ; preds = %23
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i64 @acl_delete_entry(i32 %29, i32 %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @errno, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %49

36:                                               ; preds = %28
  store i32 1, i32* %6, align 4
  br label %37

37:                                               ; preds = %36, %27
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @ACL_NEXT_ENTRY, align 4
  %40 = call i32 @acl_get_entry(i32 %38, i32 %39, i32* %4)
  store i32 %40, i32* %5, align 4
  br label %13

41:                                               ; preds = %13
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* @errno, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %47, %44, %33, %20
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @acl_get_entry(i32, i32, i32*) #1

declare dso_local i64 @acl_get_tag_type(i32, i64*) #1

declare dso_local i64 @acl_delete_entry(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
