; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_tokenize_vtab.c_fts3tokDequoteArray.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_tokenize_vtab.c_fts3tokDequoteArray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8***)* @fts3tokDequoteArray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3tokDequoteArray(i32 %0, i8** %1, i8*** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8***, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8*** %2, i8**** %6, align 8
  %13 = load i32, i32* @SQLITE_OK, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i8***, i8**** %6, align 8
  store i8** null, i8*** %17, align 8
  br label %95

18:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %34, %18
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = load i8**, i8*** %5, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @strlen(i8* %28)
  %30 = add nsw i64 %29, 1
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %23
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %19

37:                                               ; preds = %19
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 8, %39
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = add i64 %40, %42
  %44 = trunc i64 %43 to i32
  %45 = call i8** @sqlite3_malloc64(i32 %44)
  store i8** %45, i8*** %10, align 8
  %46 = load i8***, i8**** %6, align 8
  store i8** %45, i8*** %46, align 8
  %47 = load i8**, i8*** %10, align 8
  %48 = icmp eq i8** %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %37
  %50 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %50, i32* %7, align 4
  br label %94

51:                                               ; preds = %37
  %52 = load i8**, i8*** %10, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = bitcast i8** %55 to i8*
  store i8* %56, i8** %11, align 8
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %90, %51
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %93

61:                                               ; preds = %57
  %62 = load i8**, i8*** %5, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @strlen(i8* %66)
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %12, align 4
  %69 = load i8*, i8** %11, align 8
  %70 = load i8**, i8*** %10, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  store i8* %69, i8** %73, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = load i8**, i8*** %5, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %80, 1
  %82 = call i32 @memcpy(i8* %74, i8* %79, i32 %81)
  %83 = load i8*, i8** %11, align 8
  %84 = call i32 @sqlite3Fts3Dequote(i8* %83)
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 1
  %87 = load i8*, i8** %11, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  store i8* %89, i8** %11, align 8
  br label %90

90:                                               ; preds = %61
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %57

93:                                               ; preds = %57
  br label %94

94:                                               ; preds = %93, %49
  br label %95

95:                                               ; preds = %94, %16
  %96 = load i32, i32* %7, align 4
  ret i32 %96
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8** @sqlite3_malloc64(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @sqlite3Fts3Dequote(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
