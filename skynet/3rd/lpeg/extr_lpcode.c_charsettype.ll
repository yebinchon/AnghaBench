; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lpcode.c_charsettype.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lpcode.c_charsettype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CHARSETSIZE = common dso_local global i32 0, align 4
@ISet = common dso_local global i32 0, align 4
@BITSPERCHAR = common dso_local global i32 0, align 4
@IFail = common dso_local global i32 0, align 4
@IChar = common dso_local global i32 0, align 4
@IAny = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @charsettype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @charsettype(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %66, %2
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @CHARSETSIZE, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %69

15:                                               ; preds = %11
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %15
  %24 = load i32, i32* %6, align 4
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @ISet, align 4
  store i32 %27, i32* %3, align 4
  br label %121

28:                                               ; preds = %23
  br label %65

29:                                               ; preds = %15
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, 255
  br i1 %31, label %32, label %45

32:                                               ; preds = %29
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @BITSPERCHAR, align 4
  %36 = mul nsw i32 %34, %35
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @ISet, align 4
  store i32 %39, i32* %3, align 4
  br label %121

40:                                               ; preds = %32
  %41 = load i32, i32* @BITSPERCHAR, align 4
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %40
  br label %64

45:                                               ; preds = %29
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = sub nsw i32 %47, 1
  %49 = and i32 %46, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %45
  %52 = load i32, i32* %6, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* @ISet, align 4
  store i32 %55, i32* %3, align 4
  br label %121

56:                                               ; preds = %51
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %56
  br label %63

61:                                               ; preds = %45
  %62 = load i32, i32* @ISet, align 4
  store i32 %62, i32* %3, align 4
  br label %121

63:                                               ; preds = %60
  br label %64

64:                                               ; preds = %63, %44
  br label %65

65:                                               ; preds = %64, %28
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %11

69:                                               ; preds = %11
  %70 = load i32, i32* %6, align 4
  switch i32 %70, label %112 [
    i32 0, label %71
    i32 1, label %73
  ]

71:                                               ; preds = %69
  %72 = load i32, i32* @IFail, align 4
  store i32 %72, i32* %3, align 4
  br label %121

73:                                               ; preds = %69
  %74 = load i32*, i32** %4, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @BITSPERCHAR, align 4
  %81 = mul nsw i32 %79, %80
  %82 = load i32*, i32** %5, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* %10, align 4
  %84 = and i32 %83, 240
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %73
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 4
  store i32 %89, i32* %87, align 4
  %90 = load i32, i32* %10, align 4
  %91 = ashr i32 %90, 4
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %86, %73
  %93 = load i32, i32* %10, align 4
  %94 = and i32 %93, 12
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %92
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 2
  store i32 %99, i32* %97, align 4
  %100 = load i32, i32* %10, align 4
  %101 = ashr i32 %100, 2
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %96, %92
  %103 = load i32, i32* %10, align 4
  %104 = and i32 %103, 2
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load i32*, i32** %5, align 8
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %106, %102
  %111 = load i32, i32* @IChar, align 4
  store i32 %111, i32* %3, align 4
  br label %121

112:                                              ; preds = %69
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @CHARSETSIZE, align 4
  %115 = load i32, i32* @BITSPERCHAR, align 4
  %116 = mul nsw i32 %114, %115
  %117 = icmp eq i32 %113, %116
  %118 = zext i1 %117 to i32
  %119 = call i32 @assert(i32 %118)
  %120 = load i32, i32* @IAny, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %112, %110, %71, %61, %54, %38, %26
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
