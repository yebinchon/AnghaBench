; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/lsasrv/extr_utils.c_LsapLoadString.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/lsasrv/extr_utils.c_LsapLoadString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RT_STRING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LsapLoadString(i32 %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @LOWORD(i32 %16)
  %18 = ashr i32 %17, 4
  %19 = add nsw i32 %18, 1
  %20 = call i32 @MAKEINTRESOURCEW(i32 %19)
  %21 = load i64, i64* @RT_STRING, align 8
  %22 = inttoptr i64 %21 to i64*
  %23 = call i32 @FindResourceW(i32 %15, i32 %20, i64* %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %82

27:                                               ; preds = %4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @LoadResource(i32 %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %82

34:                                               ; preds = %27
  %35 = load i32, i32* %10, align 4
  %36 = call i64* @LockResource(i32 %35)
  store i64* %36, i64** %12, align 8
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, 15
  store i32 %38, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %39

39:                                               ; preds = %49, %34
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load i64*, i64** %12, align 8
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 1
  %47 = load i64*, i64** %12, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 %46
  store i64* %48, i64** %12, align 8
  br label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %14, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %14, align 4
  br label %39

52:                                               ; preds = %39
  %53 = load i32, i32* %9, align 4
  %54 = sub nsw i32 %53, 1
  %55 = load i64*, i64** %12, align 8
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @min(i32 %54, i64 %56)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %52
  %61 = load i64*, i64** %8, align 8
  %62 = load i64*, i64** %12, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 1
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = mul i64 %65, 8
  %67 = trunc i64 %66 to i32
  %68 = call i32 @memcpy(i64* %61, i64* %63, i32 %67)
  %69 = load i64*, i64** %8, align 8
  %70 = load i32, i32* %14, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  store i64 0, i64* %72, align 8
  br label %80

73:                                               ; preds = %52
  %74 = load i32, i32* %9, align 4
  %75 = icmp sgt i32 %74, 1
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i64*, i64** %8, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 0
  store i64 0, i64* %78, align 8
  store i32 0, i32* %5, align 4
  br label %82

79:                                               ; preds = %73
  br label %80

80:                                               ; preds = %79, %60
  %81 = load i32, i32* %14, align 4
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %80, %76, %33, %26
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @FindResourceW(i32, i32, i64*) #1

declare dso_local i32 @MAKEINTRESOURCEW(i32) #1

declare dso_local i32 @LOWORD(i32) #1

declare dso_local i32 @LoadResource(i32, i32) #1

declare dso_local i64* @LockResource(i32) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
