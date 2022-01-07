; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_..packetizerstartcode_helper.h_startcode_FindAnnexB_Bits.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_..packetizerstartcode_helper.h_startcode_FindAnnexB_Bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @startcode_FindAnnexB_Bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @startcode_FindAnnexB_Bits(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 4
  %10 = load i32*, i32** %4, align 8
  %11 = ptrtoint i32* %10 to i64
  %12 = and i64 %11, 3
  %13 = sub i64 0, %12
  %14 = getelementptr inbounds i32, i32* %9, i64 %13
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 -3
  store i32* %16, i32** %5, align 8
  br label %17

17:                                               ; preds = %45, %2
  %18 = load i32*, i32** %4, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = icmp ult i32* %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32*, i32** %4, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = icmp ule i32* %22, %23
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi i1 [ false, %17 ], [ %24, %21 ]
  br i1 %26, label %27, label %48

27:                                               ; preds = %25
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = load i32*, i32** %4, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32*, i32** %4, align 8
  store i32* %43, i32** %3, align 8
  br label %101

44:                                               ; preds = %37, %32, %27
  br label %45

45:                                               ; preds = %44
  %46 = load i32*, i32** %4, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %4, align 8
  br label %17

48:                                               ; preds = %25
  %49 = load i32*, i32** %5, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 -3
  store i32* %50, i32** %5, align 8
  br label %51

51:                                               ; preds = %69, %48
  %52 = load i32*, i32** %4, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = icmp ult i32* %52, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %51
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = sub nsw i32 %58, 16843009
  %60 = load i32, i32* %7, align 4
  %61 = xor i32 %60, -1
  %62 = and i32 %59, %61
  %63 = and i32 %62, -2139062144
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %55
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @TRY_MATCH(i32* %66, i32 0)
  br label %68

68:                                               ; preds = %65, %55
  br label %69

69:                                               ; preds = %68
  %70 = load i32*, i32** %4, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 4
  store i32* %71, i32** %4, align 8
  br label %51

72:                                               ; preds = %51
  %73 = load i32*, i32** %5, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 3
  store i32* %74, i32** %5, align 8
  br label %75

75:                                               ; preds = %97, %72
  %76 = load i32*, i32** %4, align 8
  %77 = load i32*, i32** %5, align 8
  %78 = icmp ule i32* %76, %77
  br i1 %78, label %79, label %100

79:                                               ; preds = %75
  %80 = load i32*, i32** %4, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %79
  %85 = load i32*, i32** %4, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %84
  %90 = load i32*, i32** %4, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 2
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i32*, i32** %4, align 8
  store i32* %95, i32** %3, align 8
  br label %101

96:                                               ; preds = %89, %84, %79
  br label %97

97:                                               ; preds = %96
  %98 = load i32*, i32** %4, align 8
  %99 = getelementptr inbounds i32, i32* %98, i32 1
  store i32* %99, i32** %4, align 8
  br label %75

100:                                              ; preds = %75
  store i32* null, i32** %3, align 8
  br label %101

101:                                              ; preds = %100, %94, %42
  %102 = load i32*, i32** %3, align 8
  ret i32* %102
}

declare dso_local i32 @TRY_MATCH(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
