; ModuleID = '/home/carl/AnghaBench/systemd/src/boot/extr_bootctl.c_acquire_xbootldr.c'
source_filename = "/home/carl/AnghaBench/systemd/src/boot/extr_bootctl.c_acquire_xbootldr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arg_xbootldr_path = common dso_local global i32 0, align 4
@ENOKEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Didn't find an XBOOTLDR partition, using the ESP as $BOOT.\00", align 1
@SD_ID128_NULL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Using XBOOTLDR partition at %s as $BOOT.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @acquire_xbootldr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acquire_xbootldr(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* @arg_xbootldr_path, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @find_xbootldr_and_warn(i32 %8, i32 %9, i8** %6, i32* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @ENOKEY, align 4
  %14 = sub nsw i32 0, %13
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @log_debug_errno(i32 %17, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %19 = load i32*, i32** %5, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @SD_ID128_NULL, align 4
  %23 = load i32*, i32** %5, align 8
  store i32 %22, i32* %23, align 4
  br label %24

24:                                               ; preds = %21, %16
  %25 = load i32, i32* @arg_xbootldr_path, align 4
  %26 = call i32 @mfree(i32 %25)
  store i32 %26, i32* @arg_xbootldr_path, align 4
  store i32 0, i32* %3, align 4
  br label %38

27:                                               ; preds = %2
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %38

32:                                               ; preds = %27
  %33 = load i32, i32* @arg_xbootldr_path, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @free_and_replace(i32 %33, i8* %34)
  %36 = load i32, i32* @arg_xbootldr_path, align 4
  %37 = call i32 @log_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  store i32 1, i32* %3, align 4
  br label %38

38:                                               ; preds = %32, %30, %24
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @find_xbootldr_and_warn(i32, i32, i8**, i32*) #1

declare dso_local i32 @log_debug_errno(i32, i8*) #1

declare dso_local i32 @mfree(i32) #1

declare dso_local i32 @free_and_replace(i32, i8*) #1

declare dso_local i32 @log_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
