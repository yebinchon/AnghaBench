; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_acl-util.c_acl_find_uid.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_acl-util.c_acl_find_uid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACL_FIRST_ENTRY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ACL_USER = common dso_local global i64 0, align 8
@ACL_NEXT_ENTRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acl_find_uid(i32* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @assert(i32* %13)
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @assert(i32* %15)
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* @ACL_FIRST_ENTRY, align 4
  %19 = call i32 @acl_get_entry(i32* %17, i32 %18, i32* %8)
  store i32 %19, i32* %9, align 4
  br label %20

20:                                               ; preds = %57, %3
  %21 = load i32, i32* %9, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %61

23:                                               ; preds = %20
  %24 = load i32, i32* %8, align 4
  %25 = call i64 @acl_get_tag_type(i32 %24, i64* %10)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @errno, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %68

30:                                               ; preds = %23
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* @ACL_USER, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %57

35:                                               ; preds = %30
  %36 = load i32, i32* %8, align 4
  %37 = call i64* @acl_get_qualifier(i32 %36)
  store i64* %37, i64** %11, align 8
  %38 = load i64*, i64** %11, align 8
  %39 = icmp ne i64* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @errno, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %68

43:                                               ; preds = %35
  %44 = load i64*, i64** %11, align 8
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %12, align 4
  %49 = load i64*, i64** %11, align 8
  %50 = call i32 @acl_free(i64* %49)
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %43
  %54 = load i32, i32* %8, align 4
  %55 = load i32*, i32** %7, align 8
  store i32 %54, i32* %55, align 4
  store i32 1, i32* %4, align 4
  br label %68

56:                                               ; preds = %43
  br label %57

57:                                               ; preds = %56, %34
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* @ACL_NEXT_ENTRY, align 4
  %60 = call i32 @acl_get_entry(i32* %58, i32 %59, i32* %8)
  store i32 %60, i32* %9, align 4
  br label %20

61:                                               ; preds = %20
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* @errno, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %68

67:                                               ; preds = %61
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %64, %53, %40, %27
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @acl_get_entry(i32*, i32, i32*) #1

declare dso_local i64 @acl_get_tag_type(i32, i64*) #1

declare dso_local i64* @acl_get_qualifier(i32) #1

declare dso_local i32 @acl_free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
