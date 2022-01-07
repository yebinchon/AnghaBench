; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_tree_enc.c_PutI4Mode.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_tree_enc.c_PutI4Mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@B_DC_PRED = common dso_local global i32 0, align 4
@B_TM_PRED = common dso_local global i32 0, align 4
@B_VE_PRED = common dso_local global i32 0, align 4
@B_LD_PRED = common dso_local global i32 0, align 4
@B_HE_PRED = common dso_local global i32 0, align 4
@B_RD_PRED = common dso_local global i32 0, align 4
@B_VL_PRED = common dso_local global i32 0, align 4
@B_HD_PRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*)* @PutI4Mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PutI4Mode(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @B_DC_PRED, align 4
  %10 = icmp ne i32 %8, %9
  %11 = zext i1 %10 to i32
  %12 = load i32*, i32** %6, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @VP8PutBit(i32* %7, i32 %11, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %109

17:                                               ; preds = %3
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @B_TM_PRED, align 4
  %21 = icmp ne i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @VP8PutBit(i32* %18, i32 %22, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %108

28:                                               ; preds = %17
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @B_VE_PRED, align 4
  %32 = icmp ne i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @VP8PutBit(i32* %29, i32 %33, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %107

39:                                               ; preds = %28
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @B_LD_PRED, align 4
  %43 = icmp sge i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 3
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @VP8PutBit(i32* %40, i32 %44, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %72, label %50

50:                                               ; preds = %39
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @B_HE_PRED, align 4
  %54 = icmp ne i32 %52, %53
  %55 = zext i1 %54 to i32
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 4
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @VP8PutBit(i32* %51, i32 %55, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %50
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @B_RD_PRED, align 4
  %65 = icmp ne i32 %63, %64
  %66 = zext i1 %65 to i32
  %67 = load i32*, i32** %6, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 5
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @VP8PutBit(i32* %62, i32 %66, i32 %69)
  br label %71

71:                                               ; preds = %61, %50
  br label %106

72:                                               ; preds = %39
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @B_LD_PRED, align 4
  %76 = icmp ne i32 %74, %75
  %77 = zext i1 %76 to i32
  %78 = load i32*, i32** %6, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 6
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @VP8PutBit(i32* %73, i32 %77, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %105

83:                                               ; preds = %72
  %84 = load i32*, i32** %4, align 8
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @B_VL_PRED, align 4
  %87 = icmp ne i32 %85, %86
  %88 = zext i1 %87 to i32
  %89 = load i32*, i32** %6, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 7
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @VP8PutBit(i32* %84, i32 %88, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %83
  %95 = load i32*, i32** %4, align 8
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @B_HD_PRED, align 4
  %98 = icmp ne i32 %96, %97
  %99 = zext i1 %98 to i32
  %100 = load i32*, i32** %6, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 8
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @VP8PutBit(i32* %95, i32 %99, i32 %102)
  br label %104

104:                                              ; preds = %94, %83
  br label %105

105:                                              ; preds = %104, %72
  br label %106

106:                                              ; preds = %105, %71
  br label %107

107:                                              ; preds = %106, %28
  br label %108

108:                                              ; preds = %107, %17
  br label %109

109:                                              ; preds = %108, %3
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i64 @VP8PutBit(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
