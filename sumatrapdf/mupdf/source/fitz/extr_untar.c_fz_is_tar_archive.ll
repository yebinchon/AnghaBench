; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_untar.c_fz_is_tar_archive.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_untar.c_fz_is_tar_archive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.fz_is_tar_archive.gnusignature = private unnamed_addr constant [6 x i8] c"ustar ", align 1
@__const.fz_is_tar_archive.paxsignature = private unnamed_addr constant [6 x i8] c"ustar\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fz_is_tar_archive(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [6 x i8], align 1
  %7 = alloca [6 x i8], align 1
  %8 = alloca [6 x i8], align 1
  %9 = alloca [6 x i8], align 1
  %10 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = bitcast [6 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.fz_is_tar_archive.gnusignature, i32 0, i32 0), i64 6, i1 false)
  %12 = bitcast [6 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.fz_is_tar_archive.paxsignature, i32 0, i32 0), i64 6, i1 false)
  %13 = bitcast [6 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %13, i8 0, i64 6, i1 false)
  %14 = load i32*, i32** %4, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @fz_seek(i32* %14, i32* %15, i32 257, i32 0)
  %17 = load i32*, i32** %4, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i64 0, i64 0
  %20 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i64 0, i64 0
  %21 = call i64 @nelem(i8* %20)
  %22 = call i64 @fz_read(i32* %17, i32* %18, i8* %19, i64 %21)
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %10, align 8
  %24 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i64 0, i64 0
  %25 = call i64 @nelem(i8* %24)
  %26 = icmp ne i64 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %53

28:                                               ; preds = %2
  %29 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i64 0, i64 0
  %30 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 0
  %31 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 0
  %32 = call i64 @nelem(i8* %31)
  %33 = call i32 @memcmp(i8* %29, i8* %30, i64 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %53

36:                                               ; preds = %28
  %37 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i64 0, i64 0
  %38 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %39 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %40 = call i64 @nelem(i8* %39)
  %41 = call i32 @memcmp(i8* %37, i8* %38, i64 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %53

44:                                               ; preds = %36
  %45 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i64 0, i64 0
  %46 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %47 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %48 = call i64 @nelem(i8* %47)
  %49 = call i32 @memcmp(i8* %45, i8* %46, i64 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %44
  store i32 1, i32* %3, align 4
  br label %53

52:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %51, %43, %35, %27
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @fz_seek(i32*, i32*, i32, i32) #2

declare dso_local i64 @fz_read(i32*, i32*, i8*, i64) #2

declare dso_local i64 @nelem(i8*) #2

declare dso_local i32 @memcmp(i8*, i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
