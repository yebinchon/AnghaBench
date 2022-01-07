; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_writer.c_ME_StreamOutHexData.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_writer.c_ME_StreamOutHexData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HEX_BYTES_PER_LINE = common dso_local global i32 0, align 4
@ME_StreamOutHexData.hex = internal constant [17 x i8] c"0123456789abcdef\00", align 16
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @ME_StreamOutHexData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ME_StreamOutHexData(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @HEX_BYTES_PER_LINE, align 4
  %14 = mul nsw i32 %13, 2
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  br label %19

19:                                               ; preds = %71, %3
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %75

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @HEX_BYTES_PER_LINE, align 4
  %25 = call i32 @min(i32 %23, i32 %24)
  store i32 %25, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %55, %22
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %58

30:                                               ; preds = %26
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 4
  %34 = and i32 %33, 15
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [17 x i8], [17 x i8]* @ME_StreamOutHexData.hex, i64 0, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = load i32, i32* %11, align 4
  %39 = mul nsw i32 %38, 2
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %18, i64 %40
  store i8 %37, i8* %41, align 1
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 15
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [17 x i8], [17 x i8]* @ME_StreamOutHexData.hex, i64 0, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = load i32, i32* %11, align 4
  %49 = mul nsw i32 %48, 2
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %18, i64 %51
  store i8 %47, i8* %52, align 1
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %6, align 8
  br label %55

55:                                               ; preds = %30
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %11, align 4
  br label %26

58:                                               ; preds = %26
  %59 = load i32, i32* %10, align 4
  %60 = mul nsw i32 %59, 2
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %18, i64 %61
  store i8 10, i8* %62, align 1
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %10, align 4
  %65 = mul nsw i32 %64, 2
  %66 = add nsw i32 %65, 1
  %67 = call i32 @ME_StreamOutMove(i32* %63, i8* %18, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %58
  %70 = load i32, i32* @FALSE, align 4
  store i32 %70, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %77

71:                                               ; preds = %58
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %7, align 4
  %74 = sub nsw i32 %73, %72
  store i32 %74, i32* %7, align 4
  br label %19

75:                                               ; preds = %19
  %76 = load i32, i32* @TRUE, align 4
  store i32 %76, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %77

77:                                               ; preds = %75, %69
  %78 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %78)
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @min(i32, i32) #2

declare dso_local i32 @ME_StreamOutMove(i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
