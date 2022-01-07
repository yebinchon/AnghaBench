; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_bluray.c_writeTsPacketWDiscontinuity.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_bluray.c_writeTsPacketWDiscontinuity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32)* @writeTsPacketWDiscontinuity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @writeTsPacketWDiscontinuity(i32* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [25 x i32], align 16
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = getelementptr inbounds [25 x i32], [25 x i32]* %9, i64 0, i64 0
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  store i32 71, i32* %14, align 4
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, 7936
  %18 = ashr i32 %17, 8
  %19 = or i32 64, %18
  store i32 %19, i32* %15, align 4
  %20 = getelementptr inbounds i32, i32* %15, i64 1
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, 255
  store i32 %22, i32* %20, align 4
  %23 = getelementptr inbounds i32, i32* %20, i64 1
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 48, i32 32
  store i32 %27, i32* %23, align 4
  %28 = getelementptr inbounds i32, i32* %23, i64 1
  %29 = load i32, i32* %8, align 4
  %30 = sub nsw i32 183, %29
  store i32 %30, i32* %28, align 4
  %31 = getelementptr inbounds i32, i32* %28, i64 1
  store i32 130, i32* %31, align 4
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  store i32 14, i32* %32, align 4
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 86, i32* %33, align 4
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  store i32 76, i32* %34, align 4
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  store i32 67, i32* %35, align 4
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  store i32 95, i32* %36, align 4
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  store i32 68, i32* %37, align 4
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  store i32 73, i32* %38, align 4
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  store i32 83, i32* %39, align 4
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  store i32 67, i32* %40, align 4
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  store i32 79, i32* %41, align 4
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  store i32 78, i32* %42, align 4
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 84, i32* %43, align 4
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  store i32 73, i32* %44, align 4
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  store i32 78, i32* %45, align 4
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  store i32 85, i32* %46, align 4
  %47 = load i32*, i32** %5, align 8
  %48 = getelementptr inbounds [25 x i32], [25 x i32]* %9, i64 0, i64 0
  %49 = call i32 @memcpy(i32* %47, i32* %48, i32 100)
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 100
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = sub i64 92, %53
  %55 = trunc i64 %54 to i32
  %56 = call i32 @memset(i32* %51, i32 255, i32 %55)
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %4
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sub nsw i32 192, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @memcpy(i32* %64, i32* %65, i32 %66)
  br label %68

68:                                               ; preds = %59, %4
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
