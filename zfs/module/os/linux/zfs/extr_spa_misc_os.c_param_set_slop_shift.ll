; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_spa_misc_os.c_param_set_slop_shift.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_spa_misc_os.c_param_set_slop_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @param_set_slop_shift(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @kstrtoul(i8* %8, i32 0, i64* %6)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @SET_ERROR(i32 %13)
  store i32 %14, i32* %3, align 4
  br label %35

15:                                               ; preds = %2
  %16 = load i64, i64* %6, align 8
  %17 = icmp ult i64 %16, 1
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i64, i64* %6, align 8
  %20 = icmp ugt i64 %19, 31
  br i1 %20, label %21, label %25

21:                                               ; preds = %18, %15
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  %24 = call i32 @SET_ERROR(i32 %23)
  store i32 %24, i32* %3, align 4
  br label %35

25:                                               ; preds = %18
  %26 = load i8*, i8** %4, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @param_set_int(i8* %26, i32* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @SET_ERROR(i32 %32)
  store i32 %33, i32* %3, align 4
  br label %35

34:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %31, %21, %12
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @param_set_int(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
