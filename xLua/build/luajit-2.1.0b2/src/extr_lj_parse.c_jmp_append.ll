; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_parse.c_jmp_append.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_parse.c_jmp_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NO_JMP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64*, i64)* @jmp_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jmp_append(i32* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @NO_JMP, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %38

13:                                               ; preds = %3
  %14 = load i64*, i64** %5, align 8
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @NO_JMP, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i64, i64* %6, align 8
  %20 = load i64*, i64** %5, align 8
  store i64 %19, i64* %20, align 8
  br label %37

21:                                               ; preds = %13
  %22 = load i64*, i64** %5, align 8
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %7, align 8
  br label %24

24:                                               ; preds = %30, %21
  %25 = load i32*, i32** %4, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i64 @jmp_next(i32* %25, i64 %26)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* @NO_JMP, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i64, i64* %8, align 8
  store i64 %31, i64* %7, align 8
  br label %24

32:                                               ; preds = %24
  %33 = load i32*, i32** %4, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @jmp_patchins(i32* %33, i64 %34, i64 %35)
  br label %37

37:                                               ; preds = %32, %18
  br label %38

38:                                               ; preds = %12, %37
  ret void
}

declare dso_local i64 @jmp_next(i32*, i64) #1

declare dso_local i32 @jmp_patchins(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
