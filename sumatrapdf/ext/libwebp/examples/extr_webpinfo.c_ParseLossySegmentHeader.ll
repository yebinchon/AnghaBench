; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_webpinfo.c_ParseLossySegmentHeader.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_webpinfo.c_ParseLossySegmentHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"  Use segment:      %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"  Update map:       %d\0A  Update data:      %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"  Absolute delta:   %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"  Quantizer:        %d %d %d %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"  Filter strength:  %d %d %d %d\0A\00", align 1
@__const.ParseLossySegmentHeader.prob_segment = private unnamed_addr constant [3 x i32] [i32 255, i32 255, i32 255], align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"  Prob segment:     %d %d %d\0A\00", align 1
@WEBP_INFO_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64, i32*)* @ParseLossySegmentHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseLossySegmentHeader(i32* %0, i32* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [4 x i32], align 16
  %15 = alloca [4 x i32], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [3 x i32], align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @GET_BITS(i32 %21, i32 1)
  %23 = load i32, i32* %9, align 4
  %24 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %132

27:                                               ; preds = %4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @GET_BITS(i32 %28, i32 1)
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @GET_BITS(i32 %30, i32 1)
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %100

37:                                               ; preds = %27
  %38 = bitcast [4 x i32]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %38, i8 0, i64 16, i1 false)
  %39 = bitcast [4 x i32]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %39, i8 0, i64 16, i1 false)
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @GET_BITS(i32 %40, i32 1)
  %42 = load i32, i32* %13, align 4
  %43 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  store i32 0, i32* %12, align 4
  br label %44

44:                                               ; preds = %59, %37
  %45 = load i32, i32* %12, align 4
  %46 = icmp slt i32 %45, 4
  br i1 %46, label %47, label %62

47:                                               ; preds = %44
  %48 = load i32, i32* %16, align 4
  %49 = call i32 @GET_BITS(i32 %48, i32 1)
  %50 = load i32, i32* %16, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @GET_SIGNED_BITS(i32 %56, i32 7)
  br label %58

58:                                               ; preds = %52, %47
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %12, align 4
  br label %44

62:                                               ; preds = %44
  store i32 0, i32* %12, align 4
  br label %63

63:                                               ; preds = %78, %62
  %64 = load i32, i32* %12, align 4
  %65 = icmp slt i32 %64, 4
  br i1 %65, label %66, label %81

66:                                               ; preds = %63
  %67 = load i32, i32* %17, align 4
  %68 = call i32 @GET_BITS(i32 %67, i32 1)
  %69 = load i32, i32* %17, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @GET_SIGNED_BITS(i32 %75, i32 6)
  br label %77

77:                                               ; preds = %71, %66
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %12, align 4
  br label %63

81:                                               ; preds = %63
  %82 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %83 = load i32, i32* %82, align 16
  %84 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 2
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %83, i32 %85, i32 %87, i32 %89)
  %91 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %92 = load i32, i32* %91, align 16
  %93 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 2
  %96 = load i32, i32* %95, align 8
  %97 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 3
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %92, i32 %94, i32 %96, i32 %98)
  br label %100

100:                                              ; preds = %81, %27
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %131

103:                                              ; preds = %100
  %104 = bitcast [3 x i32]* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %104, i8* align 4 bitcast ([3 x i32]* @__const.ParseLossySegmentHeader.prob_segment to i8*), i64 12, i1 false)
  store i32 0, i32* %18, align 4
  br label %105

105:                                              ; preds = %120, %103
  %106 = load i32, i32* %18, align 4
  %107 = icmp slt i32 %106, 3
  br i1 %107, label %108, label %123

108:                                              ; preds = %105
  %109 = load i32, i32* %20, align 4
  %110 = call i32 @GET_BITS(i32 %109, i32 1)
  %111 = load i32, i32* %20, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %108
  %114 = load i32, i32* %18, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @GET_BITS(i32 %117, i32 8)
  br label %119

119:                                              ; preds = %113, %108
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %18, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %18, align 4
  br label %105

123:                                              ; preds = %105
  %124 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 1
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 2
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %125, i32 %127, i32 %129)
  br label %131

131:                                              ; preds = %123, %100
  br label %132

132:                                              ; preds = %131, %4
  %133 = load i32, i32* @WEBP_INFO_OK, align 4
  ret i32 %133
}

declare dso_local i32 @GET_BITS(i32, i32) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @GET_SIGNED_BITS(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
