; ModuleID = '/home/carl/AnghaBench/zstd/tests/extr_decodecorpus.c_RAND_buffer.c'
source_filename = "/home/carl/AnghaBench/zstd/tests/extr_decodecorpus.c_RAND_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i64)* @RAND_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RAND_buffer(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %8, align 8
  store i64 0, i64* %7, align 8
  br label %11

11:                                               ; preds = %23, %3
  %12 = load i64, i64* %7, align 8
  %13 = add i64 %12, 4
  %14 = load i64, i64* %6, align 8
  %15 = icmp ule i64 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = load i32*, i32** %8, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @RAND(i32* %20)
  %22 = call i32 @MEM_writeLE32(i32* %19, i32 %21)
  br label %23

23:                                               ; preds = %16
  %24 = load i64, i64* %7, align 8
  %25 = add i64 %24, 4
  store i64 %25, i64* %7, align 8
  br label %11

26:                                               ; preds = %11
  br label %27

27:                                               ; preds = %38, %26
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @RAND(i32* %32)
  %34 = and i32 %33, 255
  %35 = load i32*, i32** %8, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32 %34, i32* %37, align 4
  br label %38

38:                                               ; preds = %31
  %39 = load i64, i64* %7, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %7, align 8
  br label %27

41:                                               ; preds = %27
  ret void
}

declare dso_local i32 @MEM_writeLE32(i32*, i32) #1

declare dso_local i32 @RAND(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
