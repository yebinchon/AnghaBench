; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dtv/extr_en50221.c_CopyDescriptors.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dtv/extr_en50221.c_CopyDescriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, i32*, i32*)* @CopyDescriptors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @CopyDescriptors(i32* %0, i64 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i64 0, i64* %9, align 8
  br label %12

12:                                               ; preds = %50, %4
  %13 = load i64, i64* %6, align 8
  %14 = icmp ugt i64 %13, 0
  br i1 %14, label %15, label %61

15:                                               ; preds = %12
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 9
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  %27 = call i32 @GetWBE(i32* %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %11, align 4
  %30 = call i64 @CheckSystemID(i32* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %15
  %33 = load i32*, i32** %8, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load i32*, i32** %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = add i64 %41, 2
  %43 = call i32 @memcpy(i32* %38, i32* %39, i64 %42)
  br label %44

44:                                               ; preds = %35, %32
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 2
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* %9, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %9, align 8
  br label %50

50:                                               ; preds = %44, %15
  %51 = load i64, i64* %6, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = sub i64 %51, %53
  %55 = sub i64 %54, 2
  store i64 %55, i64* %6, align 8
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 2
  %58 = load i32*, i32** %5, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32* %60, i32** %5, align 8
  br label %12

61:                                               ; preds = %12
  %62 = load i64, i64* %9, align 8
  ret i64 %62
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @GetWBE(i32*) #1

declare dso_local i64 @CheckSystemID(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
