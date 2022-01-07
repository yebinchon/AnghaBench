; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-cred.c_cr_groups_search.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-cred.c_cr_groups_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.group_info*, i32)* @cr_groups_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cr_groups_search(%struct.group_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.group_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.group_info* %0, %struct.group_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.group_info*, %struct.group_info** %4, align 8
  %11 = icmp ne %struct.group_info* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %47

13:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %14 = load %struct.group_info*, %struct.group_info** %4, align 8
  %15 = getelementptr inbounds %struct.group_info, %struct.group_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %45, %13
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %46

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = add i32 %22, %23
  %25 = udiv i32 %24, 2
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @KGID_TO_SGID(i32 %26)
  %28 = load %struct.group_info*, %struct.group_info** %4, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @GROUP_AT(%struct.group_info* %28, i32 %29)
  %31 = call i32 @KGID_TO_SGID(i32 %30)
  %32 = sub nsw i32 %27, %31
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %21
  %36 = load i32, i32* %8, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %45

38:                                               ; preds = %21
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %7, align 4
  br label %44

43:                                               ; preds = %38
  store i32 1, i32* %3, align 4
  br label %47

44:                                               ; preds = %41
  br label %45

45:                                               ; preds = %44, %35
  br label %17

46:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %43, %12
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @KGID_TO_SGID(i32) #1

declare dso_local i32 @GROUP_AT(%struct.group_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
