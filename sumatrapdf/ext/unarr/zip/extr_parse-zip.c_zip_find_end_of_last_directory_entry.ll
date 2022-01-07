; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/zip/extr_parse-zip.c_zip_find_end_of_last_directory_entry.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/zip/extr_parse-zip.c_zip_find_end_of_last_directory_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_eocd64 = type { i64, i32 }

@ZIP_DIR_ENTRY_FIXED_SIZE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@SIG_CENTRAL_DIRECTORY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zip_find_end_of_last_directory_entry(i32* %0, %struct.zip_eocd64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.zip_eocd64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.zip_eocd64* %1, %struct.zip_eocd64** %5, align 8
  %10 = load i32, i32* @ZIP_DIR_ENTRY_FIXED_SIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.zip_eocd64*, %struct.zip_eocd64** %5, align 8
  %16 = getelementptr inbounds %struct.zip_eocd64, %struct.zip_eocd64* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @SEEK_SET, align 4
  %19 = call i32 @ar_seek(i32* %14, i32 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %64

22:                                               ; preds = %2
  store i64 0, i64* %8, align 8
  br label %23

23:                                               ; preds = %58, %22
  %24 = load i64, i64* %8, align 8
  %25 = load %struct.zip_eocd64*, %struct.zip_eocd64** %5, align 8
  %26 = getelementptr inbounds %struct.zip_eocd64, %struct.zip_eocd64* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %29, label %61

29:                                               ; preds = %23
  %30 = load i32*, i32** %4, align 8
  %31 = mul nuw i64 4, %11
  %32 = trunc i64 %31 to i32
  %33 = call i32 @ar_read(i32* %30, i32* %13, i32 %32)
  %34 = sext i32 %33 to i64
  %35 = mul nuw i64 4, %11
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %64

38:                                               ; preds = %29
  %39 = getelementptr inbounds i32, i32* %13, i64 0
  %40 = call i64 @uint32le(i32* %39)
  %41 = load i64, i64* @SIG_CENTRAL_DIRECTORY, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %64

44:                                               ; preds = %38
  %45 = load i32*, i32** %4, align 8
  %46 = getelementptr inbounds i32, i32* %13, i64 28
  %47 = call i64 @uint16le(i32* %46)
  %48 = getelementptr inbounds i32, i32* %13, i64 30
  %49 = call i64 @uint16le(i32* %48)
  %50 = add nsw i64 %47, %49
  %51 = getelementptr inbounds i32, i32* %13, i64 32
  %52 = call i64 @uint16le(i32* %51)
  %53 = add nsw i64 %50, %52
  %54 = call i32 @ar_skip(i32* %45, i64 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %44
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %64

57:                                               ; preds = %44
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %8, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %8, align 8
  br label %23

61:                                               ; preds = %23
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @ar_tell(i32* %62)
  store i32 %63, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %64

64:                                               ; preds = %61, %56, %43, %37, %21
  %65 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %65)
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ar_seek(i32*, i32, i32) #2

declare dso_local i32 @ar_read(i32*, i32*, i32) #2

declare dso_local i64 @uint32le(i32*) #2

declare dso_local i32 @ar_skip(i32*, i64) #2

declare dso_local i64 @uint16le(i32*) #2

declare dso_local i32 @ar_tell(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
