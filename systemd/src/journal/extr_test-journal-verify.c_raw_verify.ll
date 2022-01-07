; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_test-journal-verify.c_raw_verify.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_test-journal-verify.c_raw_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @raw_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw_verify(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i32, i32* @O_RDONLY, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  %12 = xor i1 %11, true
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @journal_file_open(i32 -1, i8* %8, i32 %9, i32 438, i32 1, i32 -1, i32 %14, i32* null, i32* null, i32* null, i32* null, i32** %6)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %27

20:                                               ; preds = %2
  %21 = load i32*, i32** %6, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @journal_file_verify(i32* %21, i8* %22, i32* null, i32* null, i32* null, i32 0)
  store i32 %23, i32* %7, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @journal_file_close(i32* %24)
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %20, %18
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @journal_file_open(i32, i8*, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32**) #1

declare dso_local i32 @journal_file_verify(i32*, i8*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @journal_file_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
