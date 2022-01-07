; ModuleID = '/home/carl/AnghaBench/systemd/src/boot/efi/extr_util.c_utf8_to_16.c'
source_filename = "/home/carl/AnghaBench/systemd/src/boot/efi/extr_util.c_utf8_to_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @utf8_to_16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utf8_to_16(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %11, 128
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %55

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 224
  %19 = icmp eq i32 %18, 192
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 2, i32* %7, align 4
  br label %54

21:                                               ; preds = %14
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 240
  %26 = icmp eq i32 %25, 224
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 3, i32* %7, align 4
  br label %53

28:                                               ; preds = %21
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 248
  %33 = icmp eq i32 %32, 240
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 4, i32* %7, align 4
  br label %52

35:                                               ; preds = %28
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 252
  %40 = icmp eq i32 %39, 248
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 5, i32* %7, align 4
  br label %51

42:                                               ; preds = %35
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 254
  %47 = icmp eq i32 %46, 252
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 6, i32* %7, align 4
  br label %50

49:                                               ; preds = %42
  store i32 -1, i32* %3, align 4
  br label %118

50:                                               ; preds = %48
  br label %51

51:                                               ; preds = %50, %41
  br label %52

52:                                               ; preds = %51, %34
  br label %53

53:                                               ; preds = %52, %27
  br label %54

54:                                               ; preds = %53, %20
  br label %55

55:                                               ; preds = %54, %13
  %56 = load i32, i32* %7, align 4
  switch i32 %56, label %86 [
    i32 1, label %57
    i32 2, label %61
    i32 3, label %66
    i32 4, label %71
    i32 5, label %76
    i32 6, label %81
  ]

57:                                               ; preds = %55
  %58 = load i32*, i32** %4, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %6, align 4
  br label %86

61:                                               ; preds = %55
  %62 = load i32*, i32** %4, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 31
  store i32 %65, i32* %6, align 4
  br label %86

66:                                               ; preds = %55
  %67 = load i32*, i32** %4, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 15
  store i32 %70, i32* %6, align 4
  br label %86

71:                                               ; preds = %55
  %72 = load i32*, i32** %4, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 7
  store i32 %75, i32* %6, align 4
  br label %86

76:                                               ; preds = %55
  %77 = load i32*, i32** %4, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 3
  store i32 %80, i32* %6, align 4
  br label %86

81:                                               ; preds = %55
  %82 = load i32*, i32** %4, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, 1
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %55, %81, %76, %71, %66, %61, %57
  store i32 1, i32* %8, align 4
  br label %87

87:                                               ; preds = %111, %86
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %114

91:                                               ; preds = %87
  %92 = load i32*, i32** %4, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 192
  %98 = icmp ne i32 %97, 128
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  store i32 -1, i32* %3, align 4
  br label %118

100:                                              ; preds = %91
  %101 = load i32, i32* %6, align 4
  %102 = shl i32 %101, 6
  store i32 %102, i32* %6, align 4
  %103 = load i32*, i32** %4, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, 63
  %109 = load i32, i32* %6, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %100
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %8, align 4
  br label %87

114:                                              ; preds = %87
  %115 = load i32, i32* %6, align 4
  %116 = load i32*, i32** %5, align 8
  store i32 %115, i32* %116, align 4
  %117 = load i32, i32* %7, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %114, %99, %49
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
