; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_compress.c_decompress_startswith.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_compress.c_decompress_startswith.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OBJECT_COMPRESSED_XZ = common dso_local global i32 0, align 4
@OBJECT_COMPRESSED_LZ4 = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decompress_startswith(i32 %0, i8* %1, i32 %2, i8** %3, i64* %4, i8* %5, i64 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8** %3, i8*** %13, align 8
  store i64* %4, i64** %14, align 8
  store i8* %5, i8** %15, align 8
  store i64 %6, i64* %16, align 8
  store i32 %7, i32* %17, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @OBJECT_COMPRESSED_XZ, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %8
  %22 = load i8*, i8** %11, align 8
  %23 = load i32, i32* %12, align 4
  %24 = load i8**, i8*** %13, align 8
  %25 = load i64*, i64** %14, align 8
  %26 = load i8*, i8** %15, align 8
  %27 = load i64, i64* %16, align 8
  %28 = load i32, i32* %17, align 4
  %29 = call i32 @decompress_startswith_xz(i8* %22, i32 %23, i8** %24, i64* %25, i8* %26, i64 %27, i32 %28)
  store i32 %29, i32* %9, align 4
  br label %46

30:                                               ; preds = %8
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @OBJECT_COMPRESSED_LZ4, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load i8*, i8** %11, align 8
  %36 = load i32, i32* %12, align 4
  %37 = load i8**, i8*** %13, align 8
  %38 = load i64*, i64** %14, align 8
  %39 = load i8*, i8** %15, align 8
  %40 = load i64, i64* %16, align 8
  %41 = load i32, i32* %17, align 4
  %42 = call i32 @decompress_startswith_lz4(i8* %35, i32 %36, i8** %37, i64* %38, i8* %39, i64 %40, i32 %41)
  store i32 %42, i32* %9, align 4
  br label %46

43:                                               ; preds = %30
  %44 = load i32, i32* @EBADMSG, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %43, %34, %21
  %47 = load i32, i32* %9, align 4
  ret i32 %47
}

declare dso_local i32 @decompress_startswith_xz(i8*, i32, i8**, i64*, i8*, i64, i32) #1

declare dso_local i32 @decompress_startswith_lz4(i8*, i32, i8**, i64*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
