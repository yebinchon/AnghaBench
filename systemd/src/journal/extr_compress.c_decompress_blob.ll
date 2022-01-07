; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_compress.c_decompress_blob.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_compress.c_decompress_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OBJECT_COMPRESSED_XZ = common dso_local global i32 0, align 4
@OBJECT_COMPRESSED_LZ4 = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decompress_blob(i32 %0, i8* %1, i32 %2, i8** %3, i64* %4, i64* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %9, align 4
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8** %3, i8*** %12, align 8
  store i64* %4, i64** %13, align 8
  store i64* %5, i64** %14, align 8
  store i64 %6, i64* %15, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @OBJECT_COMPRESSED_XZ, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %7
  %20 = load i8*, i8** %10, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load i8**, i8*** %12, align 8
  %23 = load i64*, i64** %13, align 8
  %24 = load i64*, i64** %14, align 8
  %25 = load i64, i64* %15, align 8
  %26 = call i32 @decompress_blob_xz(i8* %20, i32 %21, i8** %22, i64* %23, i64* %24, i64 %25)
  store i32 %26, i32* %8, align 4
  br label %42

27:                                               ; preds = %7
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @OBJECT_COMPRESSED_LZ4, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load i8*, i8** %10, align 8
  %33 = load i32, i32* %11, align 4
  %34 = load i8**, i8*** %12, align 8
  %35 = load i64*, i64** %13, align 8
  %36 = load i64*, i64** %14, align 8
  %37 = load i64, i64* %15, align 8
  %38 = call i32 @decompress_blob_lz4(i8* %32, i32 %33, i8** %34, i64* %35, i64* %36, i64 %37)
  store i32 %38, i32* %8, align 4
  br label %42

39:                                               ; preds = %27
  %40 = load i32, i32* @EBADMSG, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %39, %31, %19
  %43 = load i32, i32* %8, align 4
  ret i32 %43
}

declare dso_local i32 @decompress_blob_xz(i8*, i32, i8**, i64*, i64*, i64) #1

declare dso_local i32 @decompress_blob_lz4(i8*, i32, i8**, i64*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
