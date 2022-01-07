; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_outliterals.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_outliterals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stb__out = common dso_local global i64 0, align 8
@stb__outfile = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @outliterals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @outliterals(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %5

5:                                                ; preds = %8, %2
  %6 = load i32, i32* %4, align 4
  %7 = icmp sgt i32 %6, 65536
  br i1 %7, label %8, label %14

8:                                                ; preds = %5
  %9 = load i32*, i32** %3, align 8
  call void @outliterals(i32* %9, i32 65536)
  %10 = load i32*, i32** %3, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 65536
  store i32* %11, i32** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sub nsw i32 %12, 65536
  store i32 %13, i32* %4, align 4
  br label %5

14:                                               ; preds = %5
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %44

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = icmp sle i32 %19, 32
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 32, %23
  %25 = sub nsw i64 %24, 1
  %26 = call i32 @stb_out(i64 %25)
  br label %43

27:                                               ; preds = %18
  %28 = load i32, i32* %4, align 4
  %29 = icmp sle i32 %28, 2048
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 2048, %32
  %34 = sub nsw i64 %33, 1
  %35 = call i32 @stb_out2(i64 %34)
  br label %42

36:                                               ; preds = %27
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 458752, %38
  %40 = sub nsw i64 %39, 1
  %41 = call i32 @stb_out3(i64 %40)
  br label %42

42:                                               ; preds = %36, %30
  br label %43

43:                                               ; preds = %42, %21
  br label %44

44:                                               ; preds = %43, %17
  %45 = load i64, i64* @stb__out, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load i64, i64* @stb__out, align 8
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @memcpy(i64 %48, i32* %49, i32 %50)
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* @stb__out, align 8
  %55 = add nsw i64 %54, %53
  store i64 %55, i64* @stb__out, align 8
  br label %61

56:                                               ; preds = %44
  %57 = load i32*, i32** %3, align 8
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @stb__outfile, align 4
  %60 = call i32 @fwrite(i32* %57, i32 1, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %56, %47
  ret void
}

declare dso_local i32 @stb_out(i64) #1

declare dso_local i32 @stb_out2(i64) #1

declare dso_local i32 @stb_out3(i64) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @fwrite(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
