; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_config.c_fts5ConfigGobbleWord.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_config.c_fts5ConfigGobbleWord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*, i8**, i32*)* @fts5ConfigGobbleWord to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fts5ConfigGobbleWord(i32* %0, i8* %1, i8** %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i32* %3, i32** %8, align 8
  store i8* null, i8** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i64 @strlen(i8* %13)
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %10, align 8
  %16 = add nsw i64 %15, 1
  %17 = call i8* @sqlite3_malloc64(i64 %16)
  store i8* %17, i8** %11, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SQLITE_OK, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32*, i32** %8, align 8
  store i32 0, i32* %24, align 4
  %25 = load i8**, i8*** %7, align 8
  store i8* null, i8** %25, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i32, i32* @SQLITE_NOMEM, align 4
  %30 = load i32*, i32** %5, align 8
  store i32 %29, i32* %30, align 4
  br label %65

31:                                               ; preds = %4
  %32 = load i8*, i8** %11, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i64, i64* %10, align 8
  %35 = add nsw i64 %34, 1
  %36 = call i32 @memcpy(i8* %32, i8* %33, i64 %35)
  %37 = load i8*, i8** %11, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = call i64 @fts5_isopenquote(i8 signext %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %31
  %43 = load i8*, i8** %11, align 8
  %44 = call i32 @fts5Dequote(i8* %43)
  store i32 %44, i32* %12, align 4
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  store i8* %48, i8** %9, align 8
  %49 = load i32*, i32** %8, align 8
  store i32 1, i32* %49, align 4
  br label %64

50:                                               ; preds = %31
  %51 = load i8*, i8** %6, align 8
  %52 = call i8* @fts5ConfigSkipBareword(i8* %51)
  store i8* %52, i8** %9, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load i8*, i8** %11, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = ptrtoint i8* %57 to i64
  %60 = ptrtoint i8* %58 to i64
  %61 = sub i64 %59, %60
  %62 = getelementptr inbounds i8, i8* %56, i64 %61
  store i8 0, i8* %62, align 1
  br label %63

63:                                               ; preds = %55, %50
  br label %64

64:                                               ; preds = %63, %42
  br label %65

65:                                               ; preds = %64, %28
  %66 = load i8*, i8** %9, align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i8*, i8** %11, align 8
  %70 = call i32 @sqlite3_free(i8* %69)
  br label %74

71:                                               ; preds = %65
  %72 = load i8*, i8** %11, align 8
  %73 = load i8**, i8*** %7, align 8
  store i8* %72, i8** %73, align 8
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i8*, i8** %9, align 8
  ret i8* %75
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @sqlite3_malloc64(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @fts5_isopenquote(i8 signext) #1

declare dso_local i32 @fts5Dequote(i8*) #1

declare dso_local i8* @fts5ConfigSkipBareword(i8*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
