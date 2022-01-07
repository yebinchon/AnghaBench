; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_icy2utf8.c_is_utf8.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_icy2utf8.c_is_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @is_utf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_utf8(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to i32*
  store i32* %8, i32** %6, align 8
  br label %9

9:                                                ; preds = %81, %17, %1
  %10 = load i32*, i32** %6, align 8
  %11 = getelementptr inbounds i32, i32* %10, i32 1
  store i32* %11, i32** %6, align 8
  %12 = load i32, i32* %10, align 4
  store i32 %12, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %82

14:                                               ; preds = %9
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 128
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %9

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 194
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = icmp sgt i32 %22, 253
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %18
  store i32 0, i32* %2, align 4
  br label %83

25:                                               ; preds = %21
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, 194
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %32, 160
  br i1 %33, label %47, label %34

34:                                               ; preds = %29, %26
  %35 = load i32, i32* %4, align 4
  %36 = icmp eq i32 %35, 239
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 191
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %45, 189
  br i1 %46, label %47, label %48

47:                                               ; preds = %42, %29
  store i32 0, i32* %2, align 4
  br label %83

48:                                               ; preds = %42, %37, %34
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 224
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i64 1, i64* %5, align 8
  br label %68

52:                                               ; preds = %48
  %53 = load i32, i32* %4, align 4
  %54 = icmp slt i32 %53, 240
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i64 2, i64* %5, align 8
  br label %67

56:                                               ; preds = %52
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %57, 248
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i64 3, i64* %5, align 8
  br label %66

60:                                               ; preds = %56
  %61 = load i32, i32* %4, align 4
  %62 = icmp slt i32 %61, 252
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i64 4, i64* %5, align 8
  br label %65

64:                                               ; preds = %60
  store i64 5, i64* %5, align 8
  br label %65

65:                                               ; preds = %64, %63
  br label %66

66:                                               ; preds = %65, %59
  br label %67

67:                                               ; preds = %66, %55
  br label %68

68:                                               ; preds = %67, %51
  br label %69

69:                                               ; preds = %80, %68
  %70 = load i64, i64* %5, align 8
  %71 = add i64 %70, -1
  store i64 %71, i64* %5, align 8
  %72 = icmp ne i64 %70, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %69
  %74 = load i32*, i32** %6, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %6, align 8
  %76 = load i32, i32* %74, align 4
  %77 = and i32 %76, 192
  %78 = icmp ne i32 %77, 128
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  store i32 0, i32* %2, align 4
  br label %83

80:                                               ; preds = %73
  br label %69

81:                                               ; preds = %69
  br label %9

82:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %83

83:                                               ; preds = %82, %79, %47, %24
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
