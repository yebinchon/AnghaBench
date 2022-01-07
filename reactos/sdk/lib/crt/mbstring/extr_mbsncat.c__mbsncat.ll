; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/mbstring/extr_mbsncat.c__mbsncat.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/mbstring/extr_mbsncat.c__mbsncat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_mbsncat(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %4, align 8
  store i8* %9, i8** %8, align 8
  br label %10

10:                                               ; preds = %14, %3
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @_mbsnextc(i8* %11)
  store i32 %12, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i8*, i8** %4, align 8
  %16 = call i8* @_mbsinc(i8* %15)
  store i8* %16, i8** %4, align 8
  br label %10

17:                                               ; preds = %10
  br label %18

18:                                               ; preds = %28, %17
  %19 = load i64, i64* %6, align 8
  %20 = add i64 %19, -1
  store i64 %20, i64* %6, align 8
  %21 = icmp ugt i64 %19, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @_mbsnextc(i8* %23)
  store i32 %24, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi i1 [ false, %18 ], [ %25, %22 ]
  br i1 %27, label %28, label %36

28:                                               ; preds = %26
  %29 = load i8*, i8** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @_mbset(i8* %29, i32 %30)
  %32 = load i8*, i8** %4, align 8
  %33 = call i8* @_mbsinc(i8* %32)
  store i8* %33, i8** %4, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i8* @_mbsinc(i8* %34)
  store i8* %35, i8** %5, align 8
  br label %18

36:                                               ; preds = %26
  %37 = load i8*, i8** %4, align 8
  store i8 0, i8* %37, align 1
  %38 = load i8*, i8** %8, align 8
  ret i8* %38
}

declare dso_local i32 @_mbsnextc(i8*) #1

declare dso_local i8* @_mbsinc(i8*) #1

declare dso_local i32 @_mbset(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
