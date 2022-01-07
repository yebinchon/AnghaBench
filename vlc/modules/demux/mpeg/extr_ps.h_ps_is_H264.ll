; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ps.h_ps_is_H264.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ps.h_ps_is_H264.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.ps_is_H264.startcode = private unnamed_addr constant [3 x i32] [i32 0, i32 0, i32 1], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @ps_is_H264 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps_is_H264(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [3 x i32], align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = bitcast [3 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast ([3 x i32]* @__const.ps_is_H264.startcode to i8*), i64 12, i1 false)
  store i32 0, i32* %7, align 4
  %9 = load i64, i64* %5, align 8
  %10 = icmp ult i64 %9, 9
  br i1 %10, label %22, label %11

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %14 = call i32 @memcmp(i32* %12, i32* %13, i32 3)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %11
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %20 = call i32 @memcmp(i32* %18, i32* %19, i32 3)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16, %2
  store i32 0, i32* %3, align 4
  br label %89

23:                                               ; preds = %16, %11
  br label %24

24:                                               ; preds = %83, %23
  %25 = load i64, i64* %5, align 8
  %26 = icmp ugt i64 %25, 5
  br i1 %26, label %27, label %88

27:                                               ; preds = %24
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %30 = call i32 @memcmp(i32* %28, i32* %29, i32 3)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %83, label %32

32:                                               ; preds = %27
  %33 = load i32*, i32** %4, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 103
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* %7, align 4
  %39 = xor i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %82

40:                                               ; preds = %32
  %41 = load i32*, i32** %4, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 3
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 104
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* %7, align 4
  %47 = xor i32 %46, 2
  store i32 %47, i32* %7, align 4
  br label %81

48:                                               ; preds = %40
  %49 = load i32*, i32** %4, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 3
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 128
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %89

55:                                               ; preds = %48
  %56 = load i32*, i32** %4, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 3
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 31
  %60 = icmp sgt i32 %59, 23
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = load i32*, i32** %4, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 3
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 31
  %66 = icmp slt i32 %65, 1
  br i1 %66, label %67, label %68

67:                                               ; preds = %61, %55
  store i32 0, i32* %3, align 4
  br label %89

68:                                               ; preds = %61
  %69 = load i32*, i32** %4, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 3
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 31
  %73 = icmp slt i32 %72, 6
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i32, i32* %7, align 4
  %76 = icmp eq i32 %75, 3
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %3, align 4
  br label %89

78:                                               ; preds = %68
  br label %79

79:                                               ; preds = %78
  br label %80

80:                                               ; preds = %79
  br label %81

81:                                               ; preds = %80, %45
  br label %82

82:                                               ; preds = %81, %37
  br label %83

83:                                               ; preds = %82, %27
  %84 = load i32*, i32** %4, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %4, align 8
  %86 = load i64, i64* %5, align 8
  %87 = add i64 %86, -1
  store i64 %87, i64* %5, align 8
  br label %24

88:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %74, %67, %54, %22
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
