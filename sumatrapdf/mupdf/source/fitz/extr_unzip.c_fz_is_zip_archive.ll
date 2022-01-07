; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_unzip.c_fz_is_zip_archive.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_unzip.c_fz_is_zip_archive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.fz_is_zip_archive.signature = private unnamed_addr constant [4 x i8] c"PK\03\04", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fz_is_zip_archive(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [4 x i8], align 1
  %7 = alloca [4 x i8], align 1
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = bitcast [4 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.fz_is_zip_archive.signature, i32 0, i32 0), i64 4, i1 false)
  %10 = load i32*, i32** %4, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @fz_seek(i32* %10, i32* %11, i32 0, i32 0)
  %13 = load i32*, i32** %4, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %16 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %17 = call i64 @nelem(i8* %16)
  %18 = call i64 @fz_read(i32* %13, i32* %14, i8* %15, i64 %17)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %21 = call i64 @nelem(i8* %20)
  %22 = icmp ne i64 %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

24:                                               ; preds = %2
  %25 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %26 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %27 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %28 = call i64 @nelem(i8* %27)
  %29 = call i64 @memcmp(i8* %25, i8* %26, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %33

32:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %31, %23
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @fz_seek(i32*, i32*, i32, i32) #2

declare dso_local i64 @fz_read(i32*, i32*, i8*, i64) #2

declare dso_local i64 @nelem(i8*) #2

declare dso_local i64 @memcmp(i8*, i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
