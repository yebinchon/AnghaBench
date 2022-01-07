; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_strv.c_strv_reverse.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_strv.c_strv_reverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @strv_reverse(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8** %0, i8*** %3, align 8
  %6 = load i8**, i8*** %3, align 8
  %7 = call i64 @strv_length(i8** %6)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp ule i64 %8, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i8**, i8*** %3, align 8
  store i8** %11, i8*** %2, align 8
  br label %36

12:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  br label %13

13:                                               ; preds = %31, %12
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* %4, align 8
  %16 = udiv i64 %15, 2
  %17 = icmp ult i64 %14, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %13
  %19 = load i8**, i8*** %3, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds i8*, i8** %19, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = load i8**, i8*** %3, align 8
  %24 = load i64, i64* %4, align 8
  %25 = sub i64 %24, 1
  %26 = load i64, i64* %5, align 8
  %27 = sub i64 %25, %26
  %28 = getelementptr inbounds i8*, i8** %23, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @SWAP_TWO(i8* %22, i8* %29)
  br label %31

31:                                               ; preds = %18
  %32 = load i64, i64* %5, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %5, align 8
  br label %13

34:                                               ; preds = %13
  %35 = load i8**, i8*** %3, align 8
  store i8** %35, i8*** %2, align 8
  br label %36

36:                                               ; preds = %34, %10
  %37 = load i8**, i8*** %2, align 8
  ret i8** %37
}

declare dso_local i64 @strv_length(i8**) #1

declare dso_local i32 @SWAP_TWO(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
