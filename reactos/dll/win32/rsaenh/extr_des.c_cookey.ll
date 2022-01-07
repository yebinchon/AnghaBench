; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_des.c_cookey.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_des.c_cookey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @cookey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cookey(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [32 x i32], align 16
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  store i32* %9, i32** %5, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %91, %2
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 16
  br i1 %12, label %13, label %96

13:                                               ; preds = %10
  %14 = load i32*, i32** %3, align 8
  %15 = getelementptr inbounds i32, i32* %14, i32 1
  store i32* %15, i32** %3, align 8
  store i32* %14, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = and i64 %18, 16515072
  %20 = shl i64 %19, 6
  %21 = trunc i64 %20 to i32
  %22 = load i32*, i32** %5, align 8
  store i32 %21, i32* %22, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = and i64 %25, 4032
  %27 = shl i64 %26, 10
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = or i64 %30, %27
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %28, align 4
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = and i64 %35, 16515072
  %37 = ashr i64 %36, 10
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = or i64 %40, %37
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %38, align 4
  %43 = load i32*, i32** %3, align 8
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = and i64 %45, 4032
  %47 = ashr i64 %46, 6
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %5, align 8
  %50 = load i32, i32* %48, align 4
  %51 = sext i32 %50 to i64
  %52 = or i64 %51, %47
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %48, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = and i64 %56, 258048
  %58 = shl i64 %57, 12
  %59 = trunc i64 %58 to i32
  %60 = load i32*, i32** %5, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = and i64 %63, 63
  %65 = shl i64 %64, 16
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = or i64 %68, %65
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %66, align 4
  %71 = load i32*, i32** %3, align 8
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = and i64 %73, 258048
  %75 = ashr i64 %74, 4
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = or i64 %78, %75
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %76, align 4
  %81 = load i32*, i32** %3, align 8
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = and i64 %83, 63
  %85 = load i32*, i32** %5, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %5, align 8
  %87 = load i32, i32* %85, align 4
  %88 = sext i32 %87 to i64
  %89 = or i64 %88, %84
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %85, align 4
  br label %91

91:                                               ; preds = %13
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  %94 = load i32*, i32** %3, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %3, align 8
  br label %10

96:                                               ; preds = %10
  %97 = load i32*, i32** %4, align 8
  %98 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %99 = call i32 @memcpy(i32* %97, i32* %98, i32 128)
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
