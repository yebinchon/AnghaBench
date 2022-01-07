; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_opj_decompress.c_parse_DA_values.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_opj_decompress.c_parse_DA_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.parse_DA_values.delims = private unnamed_addr constant [2 x i8] c",\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_DA_values(i8* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [4 x i32], align 16
  %14 = alloca [2 x i8], align 1
  %15 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %16 = bitcast [2 x i8]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %16, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.parse_DA_values.delims, i32 0, i32 0), i64 2, i1 false)
  store i8* null, i8** %15, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = getelementptr inbounds [2 x i8], [2 x i8]* %14, i64 0, i64 0
  %19 = call i8* @strtok(i8* %17, i8* %18)
  store i8* %19, i8** %15, align 8
  br label %20

20:                                               ; preds = %28, %5
  %21 = load i8*, i8** %15, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* %12, align 4
  %25 = icmp slt i32 %24, 4
  br label %26

26:                                               ; preds = %23, %20
  %27 = phi i1 [ false, %20 ], [ %25, %23 ]
  br i1 %27, label %28, label %38

28:                                               ; preds = %26
  %29 = load i8*, i8** %15, align 8
  %30 = call i32 @atoi(i8* %29)
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %32
  store i32 %30, i32* %33, align 4
  %34 = getelementptr inbounds [2 x i8], [2 x i8]* %14, i64 0, i64 0
  %35 = call i8* @strtok(i8* null, i8* %34)
  store i8* %35, i8** %15, align 8
  %36 = load i32, i32* %12, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %12, align 4
  br label %20

38:                                               ; preds = %26
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 4
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %42, i32* %6, align 4
  br label %57

43:                                               ; preds = %38
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %45 = load i32, i32* %44, align 16
  %46 = load i32*, i32** %8, align 8
  store i32 %45, i32* %46, align 4
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %9, align 8
  store i32 %48, i32* %49, align 4
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32*, i32** %10, align 8
  store i32 %51, i32* %52, align 4
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 3
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %11, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %43, %41
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @strtok(i8*, i8*) #2

declare dso_local i32 @atoi(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
