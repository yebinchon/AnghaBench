; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_cond.tab.c_compare_int.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_cond.tab.c_compare_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"invalid integer operator\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @compare_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_int(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %61 [
    i32 131, label %9
    i32 136, label %9
    i32 141, label %14
    i32 138, label %14
    i32 143, label %19
    i32 140, label %19
    i32 130, label %24
    i32 135, label %24
    i32 142, label %29
    i32 139, label %29
    i32 133, label %34
    i32 137, label %34
    i32 128, label %39
    i32 134, label %39
    i32 129, label %46
    i32 132, label %53
  ]

9:                                                ; preds = %3, %3
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %10, %11
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %4, align 4
  br label %63

14:                                               ; preds = %3, %3
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp sgt i32 %15, %16
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %4, align 4
  br label %63

19:                                               ; preds = %3, %3
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %4, align 4
  br label %63

24:                                               ; preds = %3, %3
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %25, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %4, align 4
  br label %63

29:                                               ; preds = %3, %3
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp sge i32 %30, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %4, align 4
  br label %63

34:                                               ; preds = %3, %3
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp sle i32 %35, %36
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %4, align 4
  br label %63

39:                                               ; preds = %3, %3
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 1, i32 0
  store i32 %45, i32* %4, align 4
  br label %63

46:                                               ; preds = %3
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, 65535
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 1, i32 0
  store i32 %52, i32* %4, align 4
  br label %63

53:                                               ; preds = %3
  %54 = load i32, i32* %5, align 4
  %55 = ashr i32 %54, 16
  %56 = and i32 %55, 65535
  %57 = load i32, i32* %7, align 4
  %58 = icmp eq i32 %56, %57
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 1, i32 0
  store i32 %60, i32* %4, align 4
  br label %63

61:                                               ; preds = %3
  %62 = call i32 @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %61, %53, %46, %39, %34, %29, %24, %19, %14, %9
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
