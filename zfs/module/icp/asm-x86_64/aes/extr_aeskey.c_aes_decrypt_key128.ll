; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/asm-x86_64/aes/extr_aeskey.c_aes_decrypt_key128.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/asm-x86_64/aes/extr_aeskey.c_aes_decrypt_key128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_AES_NB = common dso_local global i32 0, align 4
@d_vars = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @aes_decrypt_key128 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aes_decrypt_key128(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [5 x i32], align 16
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @word_in(i8* %7, i32 0)
  %9 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  store i32 %8, i32* %9, align 16
  %10 = load i32*, i32** %4, align 8
  %11 = call i64 @v(i32 40, i32 0)
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  store i32 %8, i32* %12, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @word_in(i8* %13, i32 1)
  %15 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 1
  store i32 %14, i32* %15, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = call i64 @v(i32 40, i32 1)
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  store i32 %14, i32* %18, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @word_in(i8* %19, i32 2)
  %21 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 2
  store i32 %20, i32* %21, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i64 @v(i32 40, i32 2)
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  store i32 %20, i32* %24, align 4
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @word_in(i8* %25, i32 3)
  %27 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 3
  store i32 %26, i32* %27, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = call i64 @v(i32 40, i32 3)
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32 %26, i32* %30, align 4
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %38, %2
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 10
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @k4e(i32* %35, i32 %36)
  br label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %31

41:                                               ; preds = %31
  ret void
}

declare dso_local i32 @word_in(i8*, i32) #1

declare dso_local i64 @v(i32, i32) #1

declare dso_local i32 @k4e(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
