; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/cdmake/extr_cdmake.c_edit_with_commas.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/cdmake/extr_cdmake.c_edit_with_commas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@edit_with_commas.s = internal global [14 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i64)* @edit_with_commas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @edit_with_commas(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  store i32 13, i32* %5, align 4
  br label %6

6:                                                ; preds = %24, %2
  %7 = load i32, i32* %5, align 4
  %8 = urem i32 %7, 4
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = load i32, i32* %5, align 4
  %12 = add i32 %11, -1
  store i32 %12, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [14 x i8], [14 x i8]* @edit_with_commas.s, i64 0, i64 %13
  store i8 44, i8* %14, align 1
  br label %15

15:                                               ; preds = %10, %6
  %16 = load i32, i32* %3, align 4
  %17 = srem i32 %16, 10
  %18 = add nsw i32 %17, 48
  %19 = trunc i32 %18 to i8
  %20 = load i32, i32* %5, align 4
  %21 = add i32 %20, -1
  store i32 %21, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds [14 x i8], [14 x i8]* @edit_with_commas.s, i64 0, i64 %22
  store i8 %19, i8* %23, align 1
  br label %24

24:                                               ; preds = %15
  %25 = load i32, i32* %3, align 4
  %26 = sdiv i32 %25, 10
  store i32 %26, i32* %3, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %6, label %28

28:                                               ; preds = %24
  %29 = load i64, i64* %4, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  br label %32

32:                                               ; preds = %35, %31
  %33 = load i32, i32* %5, align 4
  %34 = icmp ugt i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32, i32* %5, align 4
  %37 = add i32 %36, -1
  store i32 %37, i32* %5, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds [14 x i8], [14 x i8]* @edit_with_commas.s, i64 0, i64 %38
  store i8 32, i8* %39, align 1
  br label %32

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40, %28
  %42 = load i32, i32* %5, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @edit_with_commas.s, i64 0, i64 0), i64 %43
  ret i8* %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
