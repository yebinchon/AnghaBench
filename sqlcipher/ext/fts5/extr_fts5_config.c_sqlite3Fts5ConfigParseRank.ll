; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_config.c_sqlite3Fts5ConfigParseRank.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_config.c_sqlite3Fts5ConfigParseRank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3Fts5ConfigParseRank(i8* %0, i8** %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i8** %2, i8*** %6, align 8
  %13 = load i8*, i8** %4, align 8
  store i8* %13, i8** %7, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %14 = load i32, i32* @SQLITE_OK, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i8**, i8*** %5, align 8
  store i8* null, i8** %15, align 8
  %16 = load i8**, i8*** %6, align 8
  store i8* null, i8** %16, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %20, i32* %11, align 4
  br label %113

21:                                               ; preds = %3
  %22 = load i8*, i8** %7, align 8
  %23 = call i8* @fts5ConfigSkipWhitespace(i8* %22)
  store i8* %23, i8** %7, align 8
  %24 = load i8*, i8** %7, align 8
  store i8* %24, i8** %8, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i8* @fts5ConfigSkipBareword(i8* %25)
  store i8* %26, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %51

29:                                               ; preds = %21
  %30 = load i8*, i8** %7, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8*, i8** %8, align 8
  %33 = ptrtoint i8* %31 to i64
  %34 = ptrtoint i8* %32 to i64
  %35 = sub i64 %33, %34
  %36 = trunc i64 %35 to i32
  %37 = call i8* @sqlite3Fts5MallocZero(i32* %11, i32 %36)
  store i8* %37, i8** %9, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %29
  %41 = load i8*, i8** %9, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = ptrtoint i8* %43 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = trunc i64 %47 to i32
  %49 = call i32 @memcpy(i8* %41, i8* %42, i32 %48)
  br label %50

50:                                               ; preds = %40, %29
  br label %53

51:                                               ; preds = %21
  %52 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %52, i32* %11, align 4
  br label %53

53:                                               ; preds = %51, %50
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @SQLITE_OK, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %53
  %58 = load i8*, i8** %7, align 8
  %59 = call i8* @fts5ConfigSkipWhitespace(i8* %58)
  store i8* %59, i8** %7, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 40
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %64, %57
  %67 = load i8*, i8** %7, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %7, align 8
  br label %69

69:                                               ; preds = %66, %53
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @SQLITE_OK, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %112

73:                                               ; preds = %69
  %74 = load i8*, i8** %7, align 8
  %75 = call i8* @fts5ConfigSkipWhitespace(i8* %74)
  store i8* %75, i8** %7, align 8
  %76 = load i8*, i8** %7, align 8
  store i8* %76, i8** %12, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 41
  br i1 %80, label %81, label %111

81:                                               ; preds = %73
  %82 = load i8*, i8** %7, align 8
  %83 = call i8* @fts5ConfigSkipArgs(i8* %82)
  store i8* %83, i8** %7, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = icmp eq i8* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %87, i32* %11, align 4
  br label %110

88:                                               ; preds = %81
  %89 = load i8*, i8** %7, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  %91 = load i8*, i8** %12, align 8
  %92 = ptrtoint i8* %90 to i64
  %93 = ptrtoint i8* %91 to i64
  %94 = sub i64 %92, %93
  %95 = trunc i64 %94 to i32
  %96 = call i8* @sqlite3Fts5MallocZero(i32* %11, i32 %95)
  store i8* %96, i8** %10, align 8
  %97 = load i8*, i8** %10, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %109

99:                                               ; preds = %88
  %100 = load i8*, i8** %10, align 8
  %101 = load i8*, i8** %12, align 8
  %102 = load i8*, i8** %7, align 8
  %103 = load i8*, i8** %12, align 8
  %104 = ptrtoint i8* %102 to i64
  %105 = ptrtoint i8* %103 to i64
  %106 = sub i64 %104, %105
  %107 = trunc i64 %106 to i32
  %108 = call i32 @memcpy(i8* %100, i8* %101, i32 %107)
  br label %109

109:                                              ; preds = %99, %88
  br label %110

110:                                              ; preds = %109, %86
  br label %111

111:                                              ; preds = %110, %73
  br label %112

112:                                              ; preds = %111, %69
  br label %113

113:                                              ; preds = %112, %19
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* @SQLITE_OK, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %124

117:                                              ; preds = %113
  %118 = load i8*, i8** %9, align 8
  %119 = call i32 @sqlite3_free(i8* %118)
  %120 = load i8*, i8** %10, align 8
  %121 = icmp eq i8* %120, null
  %122 = zext i1 %121 to i32
  %123 = call i32 @assert(i32 %122)
  br label %129

124:                                              ; preds = %113
  %125 = load i8*, i8** %9, align 8
  %126 = load i8**, i8*** %5, align 8
  store i8* %125, i8** %126, align 8
  %127 = load i8*, i8** %10, align 8
  %128 = load i8**, i8*** %6, align 8
  store i8* %127, i8** %128, align 8
  br label %129

129:                                              ; preds = %124, %117
  %130 = load i32, i32* %11, align 4
  ret i32 %130
}

declare dso_local i8* @fts5ConfigSkipWhitespace(i8*) #1

declare dso_local i8* @fts5ConfigSkipBareword(i8*) #1

declare dso_local i8* @sqlite3Fts5MallocZero(i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @fts5ConfigSkipArgs(i8*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
