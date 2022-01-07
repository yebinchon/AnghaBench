; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-crypt.c_ldhsecret.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-crypt.c_ldhsecret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"Can't be 0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ldhsecret to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ldhsecret(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [2 x i64], align 16
  %5 = alloca [2 x i64], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 0
  %11 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  %12 = call i32 @read64(i32* %9, i64* %10, i64* %11)
  %13 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 0
  %14 = load i64, i64* %13, align 16
  %15 = trunc i64 %14 to i32
  %16 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 1
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = shl i32 %18, 32
  %20 = or i32 %15, %19
  store i32 %20, i32* %6, align 4
  %21 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  %22 = load i64, i64* %21, align 16
  %23 = trunc i64 %22 to i32
  %24 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 1
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = shl i32 %26, 32
  %28 = or i32 %23, %27
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %1
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31, %1
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @luaL_error(i32* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %36, i32* %2, align 4
  br label %44

37:                                               ; preds = %31
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @powmodp(i32 %38, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32*, i32** %3, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @push64(i32* %41, i32 %42)
  store i32 1, i32* %2, align 4
  br label %44

44:                                               ; preds = %37, %34
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @read64(i32*, i64*, i64*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @powmodp(i32, i32) #1

declare dso_local i32 @push64(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
