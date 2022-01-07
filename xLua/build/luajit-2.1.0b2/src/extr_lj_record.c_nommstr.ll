; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_record.c_nommstr.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_record.c_nommstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MM_FAST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @nommstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nommstr(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @tref_isstr(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %39

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @tref_isk(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @tref_ref(i32 %16)
  %18 = call i32 @IR(i32 %17)
  %19 = call i32* @ir_kstr(i32 %18)
  store i32* %19, i32** %6, align 8
  store i64 0, i64* %7, align 8
  br label %20

20:                                               ; preds = %33, %15
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @MM_FAST, align 8
  %23 = icmp sle i64 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @J2G(i32* %25)
  %27 = load i64, i64* %7, align 8
  %28 = call i32* @mmname_str(i32 %26, i64 %27)
  %29 = load i32*, i32** %6, align 8
  %30 = icmp eq i32* %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %40

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %7, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %7, align 8
  br label %20

36:                                               ; preds = %20
  br label %38

37:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %40

38:                                               ; preds = %36
  br label %39

39:                                               ; preds = %38, %2
  store i32 1, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %37, %31
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @tref_isstr(i32) #1

declare dso_local i64 @tref_isk(i32) #1

declare dso_local i32* @ir_kstr(i32) #1

declare dso_local i32 @IR(i32) #1

declare dso_local i32 @tref_ref(i32) #1

declare dso_local i32* @mmname_str(i32, i64) #1

declare dso_local i32 @J2G(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
