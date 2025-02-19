; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.4/src/extr_lutf8lib.c_utf8_decode.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.4/src/extr_lutf8lib.c_utf8_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@utf8_decode.limits = internal constant [4 x i32] [i32 255, i32 127, i32 2047, i32 65535], align 16
@MAXUNICODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32*)* @utf8_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @utf8_decode(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  store i32 %15, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ult i32 %16, 128
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %8, align 4
  br label %72

20:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %37, %20
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, 64
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %21
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %26, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = and i32 %33, 192
  %35 = icmp ne i32 %34, 128
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  store i8* null, i8** %3, align 8
  br label %81

37:                                               ; preds = %25
  %38 = load i32, i32* %8, align 4
  %39 = shl i32 %38, 6
  %40 = load i32, i32* %10, align 4
  %41 = and i32 %40, 63
  %42 = or i32 %39, %41
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %7, align 4
  %44 = shl i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %21

45:                                               ; preds = %21
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %46, 127
  %48 = load i32, i32* %9, align 4
  %49 = mul nsw i32 %48, 5
  %50 = shl i32 %47, %49
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp sgt i32 %53, 3
  br i1 %54, label %66, label %55

55:                                               ; preds = %45
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @MAXUNICODE, align 4
  %58 = icmp ugt i32 %56, %57
  br i1 %58, label %66, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* @utf8_decode.limits, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = icmp ule i32 %60, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %59, %55, %45
  store i8* null, i8** %3, align 8
  br label %81

67:                                               ; preds = %59
  %68 = load i32, i32* %9, align 4
  %69 = load i8*, i8** %6, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  store i8* %71, i8** %6, align 8
  br label %72

72:                                               ; preds = %67, %18
  %73 = load i32*, i32** %5, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* %8, align 4
  %77 = load i32*, i32** %5, align 8
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %75, %72
  %79 = load i8*, i8** %6, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  store i8* %80, i8** %3, align 8
  br label %81

81:                                               ; preds = %78, %66, %36
  %82 = load i8*, i8** %3, align 8
  ret i8* %82
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
