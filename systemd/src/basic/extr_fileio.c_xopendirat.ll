; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_fileio.c_xopendirat.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_fileio.c_xopendirat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_CREAT = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@O_DIRECTORY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xopendirat(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @O_CREAT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* @O_RDONLY, align 4
  %20 = load i32, i32* @O_NONBLOCK, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @O_DIRECTORY, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @O_CLOEXEC, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @openat(i32 %17, i8* %18, i32 %27, i32 0)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %42

32:                                               ; preds = %3
  %33 = load i32, i32* %8, align 4
  %34 = call i32* @fdopendir(i32 %33)
  store i32* %34, i32** %9, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @safe_close(i32 %38)
  store i32* null, i32** %4, align 8
  br label %42

40:                                               ; preds = %32
  %41 = load i32*, i32** %9, align 8
  store i32* %41, i32** %4, align 8
  br label %42

42:                                               ; preds = %40, %37, %31
  %43 = load i32*, i32** %4, align 8
  ret i32* %43
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @openat(i32, i8*, i32, i32) #1

declare dso_local i32* @fdopendir(i32) #1

declare dso_local i32 @safe_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
