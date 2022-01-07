; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_fileio.c_safe_fgetc.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_fileio.c_safe_fgetc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@EOF = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @safe_fgetc(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @assert(i32* %7)
  store i64 0, i64* @errno, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @fgetc(i32* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @EOF, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @ferror(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* @EIO, align 4
  %20 = call i32 @errno_or_else(i32 %19)
  store i32 %20, i32* %3, align 4
  br label %35

21:                                               ; preds = %14
  %22 = load i8*, i8** %5, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i8*, i8** %5, align 8
  store i8 0, i8* %25, align 1
  br label %26

26:                                               ; preds = %24, %21
  store i32 0, i32* %3, align 4
  br label %35

27:                                               ; preds = %2
  %28 = load i8*, i8** %5, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  %32 = trunc i32 %31 to i8
  %33 = load i8*, i8** %5, align 8
  store i8 %32, i8* %33, align 1
  br label %34

34:                                               ; preds = %30, %27
  store i32 1, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %26, %18
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @fgetc(i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @errno_or_else(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
