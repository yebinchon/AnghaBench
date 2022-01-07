; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/zip/extr_parse-zip.c_zip_find_next_local_file_entry.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/zip/extr_parse-zip.c_zip_find_next_local_file_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEEK_SET = common dso_local global i32 0, align 4
@ZIP_LOCAL_ENTRY_FIXED_SIZE = common dso_local global i32 0, align 4
@SIG_LOCAL_FILE_HEADER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zip_find_next_local_file_entry(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [512 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @SEEK_SET, align 4
  %12 = call i32 @ar_seek(i32* %9, i32 %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %66

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds [512 x i32], [512 x i32]* %6, i64 0, i64 0
  %18 = call i64 @ar_read(i32* %16, i32* %17, i32 2048)
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %46, %15
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @ZIP_LOCAL_ENTRY_FIXED_SIZE, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %65

24:                                               ; preds = %20
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %43, %24
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %7, align 4
  %28 = sub nsw i32 %27, 4
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %25
  %31 = getelementptr inbounds [512 x i32], [512 x i32]* %6, i64 0, i64 0
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = call i64 @uint32le(i32* %34)
  %36 = load i64, i64* @SIG_LOCAL_FILE_HEADER, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %39, %40
  store i32 %41, i32* %3, align 4
  br label %66

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %25

46:                                               ; preds = %25
  %47 = getelementptr inbounds [512 x i32], [512 x i32]* %6, i64 0, i64 0
  %48 = getelementptr inbounds [512 x i32], [512 x i32]* %6, i64 0, i64 0
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = getelementptr inbounds i32, i32* %51, i64 -4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @memmove(i32* %47, i32* %52, i32 %53)
  %55 = load i32, i32* %7, align 4
  %56 = sub nsw i32 %55, 4
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %5, align 4
  %59 = load i32*, i32** %4, align 8
  %60 = getelementptr inbounds [512 x i32], [512 x i32]* %6, i64 0, i64 0
  %61 = getelementptr inbounds i32, i32* %60, i64 4
  %62 = call i64 @ar_read(i32* %59, i32* %61, i32 2044)
  %63 = trunc i64 %62 to i32
  %64 = add nsw i32 %63, 4
  store i32 %64, i32* %7, align 4
  br label %20

65:                                               ; preds = %20
  store i32 -1, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %38, %14
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @ar_seek(i32*, i32, i32) #1

declare dso_local i64 @ar_read(i32*, i32*, i32) #1

declare dso_local i64 @uint32le(i32*) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
