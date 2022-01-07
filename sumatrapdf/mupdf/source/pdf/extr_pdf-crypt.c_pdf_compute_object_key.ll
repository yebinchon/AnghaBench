; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-crypt.c_pdf_compute_object_key.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-crypt.c_pdf_compute_object_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i8* }
%struct.TYPE_5__ = type { i64 }

@PDF_CRYPT_AESV3 = common dso_local global i64 0, align 8
@PDF_CRYPT_AESV2 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"sAlT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_5__*, i32, i32, i8*, i32)* @pdf_compute_object_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdf_compute_object_key(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [5 x i8], align 1
  %16 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sdiv i32 %19, 8
  store i32 %20, i32* %16, align 4
  %21 = load i32, i32* %16, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = load i32, i32* %13, align 4
  store i32 %25, i32* %16, align 4
  br label %26

26:                                               ; preds = %24, %6
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PDF_CRYPT_AESV3, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %31, %26
  %38 = load i8*, i8** %12, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* %16, align 4
  %43 = call i32 @memcpy(i8* %38, i8* %41, i32 %42)
  %44 = load i32, i32* %16, align 4
  store i32 %44, i32* %7, align 4
  br label %94

45:                                               ; preds = %31
  %46 = call i32 @fz_md5_init(i32* %14)
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* %16, align 4
  %51 = call i32 @fz_md5_update(i32* %14, i8* %49, i32 %50)
  %52 = load i32, i32* %10, align 4
  %53 = and i32 %52, 255
  %54 = trunc i32 %53 to i8
  %55 = getelementptr inbounds [5 x i8], [5 x i8]* %15, i64 0, i64 0
  store i8 %54, i8* %55, align 1
  %56 = load i32, i32* %10, align 4
  %57 = ashr i32 %56, 8
  %58 = and i32 %57, 255
  %59 = trunc i32 %58 to i8
  %60 = getelementptr inbounds [5 x i8], [5 x i8]* %15, i64 0, i64 1
  store i8 %59, i8* %60, align 1
  %61 = load i32, i32* %10, align 4
  %62 = ashr i32 %61, 16
  %63 = and i32 %62, 255
  %64 = trunc i32 %63 to i8
  %65 = getelementptr inbounds [5 x i8], [5 x i8]* %15, i64 0, i64 2
  store i8 %64, i8* %65, align 1
  %66 = load i32, i32* %11, align 4
  %67 = and i32 %66, 255
  %68 = trunc i32 %67 to i8
  %69 = getelementptr inbounds [5 x i8], [5 x i8]* %15, i64 0, i64 3
  store i8 %68, i8* %69, align 1
  %70 = load i32, i32* %11, align 4
  %71 = ashr i32 %70, 8
  %72 = and i32 %71, 255
  %73 = trunc i32 %72 to i8
  %74 = getelementptr inbounds [5 x i8], [5 x i8]* %15, i64 0, i64 4
  store i8 %73, i8* %74, align 1
  %75 = getelementptr inbounds [5 x i8], [5 x i8]* %15, i64 0, i64 0
  %76 = call i32 @fz_md5_update(i32* %14, i8* %75, i32 5)
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @PDF_CRYPT_AESV2, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %45
  %83 = call i32 @fz_md5_update(i32* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  br label %84

84:                                               ; preds = %82, %45
  %85 = load i8*, i8** %12, align 8
  %86 = call i32 @fz_md5_final(i32* %14, i8* %85)
  %87 = load i32, i32* %16, align 4
  %88 = add nsw i32 %87, 5
  %89 = icmp sgt i32 %88, 16
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  store i32 16, i32* %7, align 4
  br label %94

91:                                               ; preds = %84
  %92 = load i32, i32* %16, align 4
  %93 = add nsw i32 %92, 5
  store i32 %93, i32* %7, align 4
  br label %94

94:                                               ; preds = %91, %90, %37
  %95 = load i32, i32* %7, align 4
  ret i32 %95
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @fz_md5_init(i32*) #1

declare dso_local i32 @fz_md5_update(i32*, i8*, i32) #1

declare dso_local i32 @fz_md5_final(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
