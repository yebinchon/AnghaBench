; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-crypt.c_hmac_md5.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-crypt.c_hmac_md5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @hmac_md5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hmac_md5(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [16 x i32], align 16
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %41, %3
  %11 = load i32, i32* %9, align 4
  %12 = icmp slt i32 %11, 12
  br i1 %12, label %13, label %44

13:                                               ; preds = %10
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 %18
  store i32 %16, i32* %19, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %9, align 4
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 %25
  store i32 %22, i32* %26, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 2
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 %32
  store i32 %29, i32* %33, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 3
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 %39
  store i32 %36, i32* %40, align 4
  br label %41

41:                                               ; preds = %13
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 4
  store i32 %43, i32* %9, align 4
  br label %10

44:                                               ; preds = %10
  %45 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 12
  store i32 128, i32* %45, align 16
  %46 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 13
  store i32 0, i32* %46, align 4
  %47 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 14
  store i32 384, i32* %47, align 8
  %48 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 15
  store i32 0, i32* %48, align 4
  %49 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %51 = call i32 @digest_md5(i32* %49, i32* %50)
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %53 = load i32, i32* %52, align 16
  %54 = add i32 %53, 1732584193
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %56 = load i32, i32* %55, align 8
  %57 = add i32 %56, -1732584194
  %58 = xor i32 %54, %57
  %59 = load i32*, i32** %6, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 %58, i32* %60, align 4
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = add i32 %62, -271733879
  %64 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  %65 = load i32, i32* %64, align 4
  %66 = add i32 %65, 271733878
  %67 = xor i32 %63, %66
  %68 = load i32*, i32** %6, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  store i32 %67, i32* %69, align 4
  ret void
}

declare dso_local i32 @digest_md5(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
