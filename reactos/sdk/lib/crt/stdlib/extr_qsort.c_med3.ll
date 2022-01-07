; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/stdlib/extr_qsort.c_med3.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/stdlib/extr_qsort.c_med3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8*, i32 (i8*, i8*)*)* @med3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @med3(i8* %0, i8* %1, i8* %2, i32 (i8*, i8*)* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32 (i8*, i8*)*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 (i8*, i8*)* %3, i32 (i8*, i8*)** %8, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i64 @CMP(i8* %9, i8* %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %4
  %14 = load i8*, i8** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i64 @CMP(i8* %14, i8* %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i8*, i8** %6, align 8
  br label %31

20:                                               ; preds = %13
  %21 = load i8*, i8** %5, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @CMP(i8* %21, i8* %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i8*, i8** %7, align 8
  br label %29

27:                                               ; preds = %20
  %28 = load i8*, i8** %5, align 8
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i8* [ %26, %25 ], [ %28, %27 ]
  br label %31

31:                                               ; preds = %29, %18
  %32 = phi i8* [ %19, %18 ], [ %30, %29 ]
  br label %53

33:                                               ; preds = %4
  %34 = load i8*, i8** %6, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = call i64 @CMP(i8* %34, i8* %35)
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i8*, i8** %6, align 8
  br label %51

40:                                               ; preds = %33
  %41 = load i8*, i8** %5, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = call i64 @CMP(i8* %41, i8* %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i8*, i8** %5, align 8
  br label %49

47:                                               ; preds = %40
  %48 = load i8*, i8** %7, align 8
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i8* [ %46, %45 ], [ %48, %47 ]
  br label %51

51:                                               ; preds = %49, %38
  %52 = phi i8* [ %39, %38 ], [ %50, %49 ]
  br label %53

53:                                               ; preds = %51, %31
  %54 = phi i8* [ %32, %31 ], [ %52, %51 ]
  ret i8* %54
}

declare dso_local i64 @CMP(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
