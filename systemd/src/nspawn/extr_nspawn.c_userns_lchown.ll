; ModuleID = '/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn.c_userns_lchown.c'
source_filename = "/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn.c_userns_lchown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arg_userns_mode = common dso_local global i64 0, align 8
@USER_NAMESPACE_NO = common dso_local global i64 0, align 8
@UID_INVALID = common dso_local global i64 0, align 8
@GID_INVALID = common dso_local global i64 0, align 8
@arg_uid_shift = common dso_local global i64 0, align 8
@arg_uid_range = common dso_local global i64 0, align 8
@EOVERFLOW = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64)* @userns_lchown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @userns_lchown(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 @assert(i8* %8)
  %10 = load i64, i64* @arg_userns_mode, align 8
  %11 = load i64, i64* @USER_NAMESPACE_NO, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %75

14:                                               ; preds = %3
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @UID_INVALID, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @GID_INVALID, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %75

23:                                               ; preds = %18, %14
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @UID_INVALID, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %23
  %28 = load i64, i64* @arg_uid_shift, align 8
  %29 = load i64, i64* %6, align 8
  %30 = add nsw i64 %29, %28
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @arg_uid_shift, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %27
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @arg_uid_shift, align 8
  %37 = load i64, i64* @arg_uid_range, align 8
  %38 = add nsw i64 %36, %37
  %39 = icmp sge i64 %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34, %27
  %41 = load i32, i32* @EOVERFLOW, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %75

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43, %23
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* @GID_INVALID, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %65

48:                                               ; preds = %44
  %49 = load i64, i64* @arg_uid_shift, align 8
  %50 = load i64, i64* %7, align 8
  %51 = add nsw i64 %50, %49
  store i64 %51, i64* %7, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* @arg_uid_shift, align 8
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %61, label %55

55:                                               ; preds = %48
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* @arg_uid_shift, align 8
  %58 = load i64, i64* @arg_uid_range, align 8
  %59 = add nsw i64 %57, %58
  %60 = icmp sge i64 %56, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55, %48
  %62 = load i32, i32* @EOVERFLOW, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %75

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64, %44
  %66 = load i8*, i8** %5, align 8
  %67 = load i64, i64* %6, align 8
  %68 = load i64, i64* %7, align 8
  %69 = call i64 @lchown(i8* %66, i64 %67, i64 %68)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32, i32* @errno, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %75

74:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %74, %71, %61, %40, %22, %13
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @lchown(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
