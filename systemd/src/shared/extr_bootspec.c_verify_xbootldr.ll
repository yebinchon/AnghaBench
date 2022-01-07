; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_bootspec.c_verify_xbootldr.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_bootspec.c_verify_xbootldr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"SYSTEMD_RELAX_XBOOTLDR_CHECKS\00", align 1
@SD_ID128_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32*)* @verify_xbootldr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_xbootldr(i8* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @assert(i8* %13)
  %15 = call i64 @getenv_bool(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %16 = icmp sgt i64 %15, 0
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %10, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @verify_fsroot_dir(i8* %18, i32 %19, i32 %20, i32* %11)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %5, align 4
  br label %53

26:                                               ; preds = %4
  %27 = call i64 (...) @detect_container()
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %26
  br label %46

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @verify_xbootldr_udev(i32 %37, i32 %38, i32* %39)
  store i32 %40, i32* %5, align 4
  br label %53

41:                                               ; preds = %33
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @verify_xbootldr_blkid(i32 %42, i32 %43, i32* %44)
  store i32 %45, i32* %5, align 4
  br label %53

46:                                               ; preds = %32
  %47 = load i32*, i32** %9, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* @SD_ID128_NULL, align 4
  %51 = load i32*, i32** %9, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %46
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %41, %36, %24
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @getenv_bool(i8*) #1

declare dso_local i32 @verify_fsroot_dir(i8*, i32, i32, i32*) #1

declare dso_local i64 @detect_container(...) #1

declare dso_local i32 @verify_xbootldr_udev(i32, i32, i32*) #1

declare dso_local i32 @verify_xbootldr_blkid(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
