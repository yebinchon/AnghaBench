; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3PrefixParameter.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3PrefixParameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Fts3Index = type { i32 }

@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_ERROR = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, %struct.Fts3Index**)* @fts3PrefixParameter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3PrefixParameter(i8* %0, i32* %1, %struct.Fts3Index** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.Fts3Index**, align 8
  %8 = alloca %struct.Fts3Index*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.Fts3Index** %2, %struct.Fts3Index*** %7, align 8
  store i32 1, i32* %9, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %43

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %16
  %23 = load i32, i32* %9, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %9, align 4
  %25 = load i8*, i8** %5, align 8
  store i8* %25, i8** %10, align 8
  br label %26

26:                                               ; preds = %39, %22
  %27 = load i8*, i8** %10, align 8
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  %31 = load i8*, i8** %10, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 44
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %35, %30
  br label %39

39:                                               ; preds = %38
  %40 = load i8*, i8** %10, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %10, align 8
  br label %26

42:                                               ; preds = %26
  br label %43

43:                                               ; preds = %42, %16, %3
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 4, %45
  %47 = trunc i64 %46 to i32
  %48 = call %struct.Fts3Index* @sqlite3_malloc64(i32 %47)
  store %struct.Fts3Index* %48, %struct.Fts3Index** %8, align 8
  %49 = load %struct.Fts3Index*, %struct.Fts3Index** %8, align 8
  %50 = load %struct.Fts3Index**, %struct.Fts3Index*** %7, align 8
  store %struct.Fts3Index* %49, %struct.Fts3Index** %50, align 8
  %51 = load %struct.Fts3Index*, %struct.Fts3Index** %8, align 8
  %52 = icmp ne %struct.Fts3Index* %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %43
  %54 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %54, i32* %4, align 4
  br label %105

55:                                               ; preds = %43
  %56 = load %struct.Fts3Index*, %struct.Fts3Index** %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 4, %58
  %60 = trunc i64 %59 to i32
  %61 = call i32 @memset(%struct.Fts3Index* %56, i32 0, i32 %60)
  %62 = load i8*, i8** %5, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %101

64:                                               ; preds = %55
  %65 = load i8*, i8** %5, align 8
  store i8* %65, i8** %11, align 8
  store i32 1, i32* %12, align 4
  br label %66

66:                                               ; preds = %97, %64
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %100

70:                                               ; preds = %66
  store i32 0, i32* %13, align 4
  %71 = call i64 @fts3GobbleInt(i8** %11, i32* %13)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %74, i32* %4, align 4
  br label %105

75:                                               ; preds = %70
  %76 = load i32, i32* %13, align 4
  %77 = icmp sge i32 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  %80 = load i32, i32* %13, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %75
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %12, align 4
  br label %94

87:                                               ; preds = %75
  %88 = load i32, i32* %13, align 4
  %89 = load %struct.Fts3Index*, %struct.Fts3Index** %8, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.Fts3Index, %struct.Fts3Index* %89, i64 %91
  %93 = getelementptr inbounds %struct.Fts3Index, %struct.Fts3Index* %92, i32 0, i32 0
  store i32 %88, i32* %93, align 4
  br label %94

94:                                               ; preds = %87, %82
  %95 = load i8*, i8** %11, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %11, align 8
  br label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %12, align 4
  br label %66

100:                                              ; preds = %66
  br label %101

101:                                              ; preds = %100, %55
  %102 = load i32, i32* %9, align 4
  %103 = load i32*, i32** %6, align 8
  store i32 %102, i32* %103, align 4
  %104 = load i32, i32* @SQLITE_OK, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %101, %73, %53
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local %struct.Fts3Index* @sqlite3_malloc64(i32) #1

declare dso_local i32 @memset(%struct.Fts3Index*, i32, i32) #1

declare dso_local i64 @fts3GobbleInt(i8**, i32*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
