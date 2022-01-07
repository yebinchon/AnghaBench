; ModuleID = '/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-mount.c_setup_volatile_mode.c'
source_filename = "/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-mount.c_setup_volatile_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_volatile_mode(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %14 = load i32, i32* %9, align 4
  switch i32 %14, label %36 [
    i32 128, label %15
    i32 129, label %22
    i32 130, label %29
  ]

15:                                               ; preds = %6
  %16 = load i8*, i8** %8, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %12, align 4
  %20 = load i8*, i8** %13, align 8
  %21 = call i32 @setup_volatile_yes(i8* %16, i32 %17, i32 %18, i32 %19, i8* %20)
  store i32 %21, i32* %7, align 4
  br label %37

22:                                               ; preds = %6
  %23 = load i8*, i8** %8, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i8*, i8** %13, align 8
  %28 = call i32 @setup_volatile_state(i8* %23, i32 %24, i32 %25, i32 %26, i8* %27)
  store i32 %28, i32* %7, align 4
  br label %37

29:                                               ; preds = %6
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i8*, i8** %13, align 8
  %35 = call i32 @setup_volatile_overlay(i8* %30, i32 %31, i32 %32, i32 %33, i8* %34)
  store i32 %35, i32* %7, align 4
  br label %37

36:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %36, %29, %22, %15
  %38 = load i32, i32* %7, align 4
  ret i32 %38
}

declare dso_local i32 @setup_volatile_yes(i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @setup_volatile_state(i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @setup_volatile_overlay(i8*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
