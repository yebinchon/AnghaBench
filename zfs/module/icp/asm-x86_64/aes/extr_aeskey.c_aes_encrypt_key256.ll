; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/asm-x86_64/aes/extr_aeskey.c_aes_encrypt_key256.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/asm-x86_64/aes/extr_aeskey.c_aes_encrypt_key256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @aes_encrypt_key256 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aes_encrypt_key256(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [8 x i32], align 16
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @word_in(i8* %7, i32 0)
  %9 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  store i32 %8, i32* %9, align 16
  %10 = load i32*, i32** %4, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  store i32 %8, i32* %11, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @word_in(i8* %12, i32 1)
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 1
  store i32 %13, i32* %14, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 %13, i32* %16, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @word_in(i8* %17, i32 2)
  %19 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 2
  store i32 %18, i32* %19, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  store i32 %18, i32* %21, align 4
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @word_in(i8* %22, i32 3)
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3
  store i32 %23, i32* %24, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 3
  store i32 %23, i32* %26, align 4
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @word_in(i8* %27, i32 4)
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 4
  store i32 %28, i32* %29, align 16
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 4
  store i32 %28, i32* %31, align 4
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @word_in(i8* %32, i32 5)
  %34 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 5
  store i32 %33, i32* %34, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 5
  store i32 %33, i32* %36, align 4
  %37 = load i8*, i8** %3, align 8
  %38 = call i32 @word_in(i8* %37, i32 6)
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 6
  store i32 %38, i32* %39, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 6
  store i32 %38, i32* %41, align 4
  %42 = load i8*, i8** %3, align 8
  %43 = call i32 @word_in(i8* %42, i32 7)
  %44 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 7
  store i32 %43, i32* %44, align 4
  %45 = load i32*, i32** %4, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 7
  store i32 %43, i32* %46, align 4
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %54, %2
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 6
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @ke8(i32* %51, i32 %52)
  br label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %47

57:                                               ; preds = %47
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @kef8(i32* %58, i32 6)
  ret void
}

declare dso_local i32 @word_in(i8*, i32) #1

declare dso_local i32 @ke8(i32*, i32) #1

declare dso_local i32 @kef8(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
