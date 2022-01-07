; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_alloc-util.c_memdup_suffix0.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_alloc-util.c_memdup_suffix0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIZE_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @memdup_suffix0(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi i1 [ true, %2 ], [ %11, %9 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @SIZE_MAX, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @_unlikely_(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  store i8* null, i8** %3, align 8
  br label %37

23:                                               ; preds = %12
  %24 = load i64, i64* %5, align 8
  %25 = add i64 %24, 1
  %26 = call i8* @malloc(i64 %25)
  store i8* %26, i8** %6, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  store i8* null, i8** %3, align 8
  br label %37

30:                                               ; preds = %23
  %31 = load i8*, i8** %6, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i64 @mempcpy(i8* %31, i8* %32, i64 %33)
  %35 = inttoptr i64 %34 to i64*
  store i64 0, i64* %35, align 8
  %36 = load i8*, i8** %6, align 8
  store i8* %36, i8** %3, align 8
  br label %37

37:                                               ; preds = %30, %29, %22
  %38 = load i8*, i8** %3, align 8
  ret i8* %38
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @_unlikely_(i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @mempcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
