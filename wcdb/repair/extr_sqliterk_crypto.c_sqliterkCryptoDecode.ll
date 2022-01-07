; ModuleID = '/home/carl/AnghaBench/wcdb/repair/extr_sqliterk_crypto.c_sqliterkCryptoDecode.c'
source_filename = "/home/carl/AnghaBench/wcdb/repair/extr_sqliterk_crypto.c_sqliterkCryptoDecode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"SQLite format 3\00", align 1
@CIPHER_READ_CTX = common dso_local global i32 0, align 4
@CIPHER_DECRYPT = common dso_local global i32 0, align 4
@SQLITERK_OK = common dso_local global i32 0, align 4
@SQLITERK_DAMAGED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to decode page %d: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqliterkCryptoDecode(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load i8*, i8** %7, align 8
  store i8* %13, i8** %10, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @sqlcipher_codec_ctx_get_pagesize(i32* %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = call i64 @sqlcipher_codec_ctx_get_data(i32* %16)
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** %12, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @sqlcipher_codec_key_derive(i32* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @SQLITE_OK, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %66

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  store i32 16, i32* %9, align 4
  %30 = load i8*, i8** %12, align 8
  %31 = call i32 (i8*, ...) @memcpy(i8* %30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 16)
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* @CIPHER_READ_CTX, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @CIPHER_DECRYPT, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %9, align 4
  %39 = sub nsw i32 %37, %38
  %40 = load i8*, i8** %10, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8*, i8** %12, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = call i32 @sqlcipher_page_cipher(i32* %33, i32 %34, i32 %35, i32 %36, i32 %39, i8* %43, i8* %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @SQLITE_OK, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %32
  br label %59

53:                                               ; preds = %32
  %54 = load i8*, i8** %10, align 8
  %55 = load i8*, i8** %12, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i32 (i8*, ...) @memcpy(i8* %54, i8* %55, i32 %56)
  %58 = load i32, i32* @SQLITERK_OK, align 4
  store i32 %58, i32* %4, align 4
  br label %66

59:                                               ; preds = %52
  %60 = load i32, i32* @SQLITERK_DAMAGED, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @sqlite3_errstr(i32 %62)
  %64 = call i32 @sqliterkOSError(i32 %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %63)
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %59, %53, %24
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @sqlcipher_codec_ctx_get_pagesize(i32*) #1

declare dso_local i64 @sqlcipher_codec_ctx_get_data(i32*) #1

declare dso_local i32 @sqlcipher_codec_key_derive(i32*) #1

declare dso_local i32 @memcpy(i8*, ...) #1

declare dso_local i32 @sqlcipher_page_cipher(i32*, i32, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @sqliterkOSError(i32, i8*, i32, i32) #1

declare dso_local i32 @sqlite3_errstr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
