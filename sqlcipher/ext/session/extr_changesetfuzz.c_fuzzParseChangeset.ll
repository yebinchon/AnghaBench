; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/session/extr_changesetfuzz.c_fuzzParseChangeset.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/session/extr_changesetfuzz.c_fuzzParseChangeset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32** }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.TYPE_6__*)* @fuzzParseChangeset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuzzParseChangeset(i8* %0, i32 %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %4, align 8
  store i8* %16, i8** %8, align 8
  %17 = load i32, i32* @SQLITE_OK, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = call i32 @memset(%struct.TYPE_6__* %18, i32 0, i32 16)
  %20 = load i32, i32* %5, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %3
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 80
  %28 = zext i1 %27 to i32
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  br label %31

31:                                               ; preds = %22, %3
  br label %32

32:                                               ; preds = %95, %31
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @SQLITE_OK, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i8*, i8** %8, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = icmp ult i8* %37, %38
  br label %40

40:                                               ; preds = %36, %32
  %41 = phi i1 [ false, %32 ], [ %39, %36 ]
  br i1 %41, label %42, label %96

42:                                               ; preds = %40
  store i32* null, i32** %10, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @fuzzParseHeader(%struct.TYPE_6__* %43, i8** %8, i8* %44, i32** %10)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @SQLITE_OK, align 4
  %48 = icmp eq i32 %46, %47
  %49 = zext i1 %48 to i32
  %50 = load i32*, i32** %10, align 8
  %51 = icmp ne i32* %50, null
  %52 = zext i1 %51 to i32
  %53 = icmp eq i32 %49, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @SQLITE_OK, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %95

59:                                               ; preds = %42
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load i32**, i32*** %61, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = mul i64 8, %67
  %69 = trunc i64 %68 to i32
  %70 = call i64 @sqlite3_realloc64(i32** %62, i32 %69)
  %71 = inttoptr i64 %70 to i32**
  store i32** %71, i32*** %11, align 8
  %72 = load i32**, i32*** %11, align 8
  %73 = icmp eq i32** %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %59
  %75 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %75, i32* %9, align 4
  br label %91

76:                                               ; preds = %59
  %77 = load i32*, i32** %10, align 8
  %78 = load i32**, i32*** %11, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %78, i64 %82
  store i32* %77, i32** %83, align 8
  %84 = load i32**, i32*** %11, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  store i32** %84, i32*** %86, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %76, %74
  %92 = load i8*, i8** %7, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %94 = call i32 @fuzzParseChanges(i8** %8, i8* %92, %struct.TYPE_6__* %93)
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %91, %42
  br label %32

96:                                               ; preds = %40
  %97 = load i32, i32* %9, align 4
  ret i32 %97
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @fuzzParseHeader(%struct.TYPE_6__*, i8**, i8*, i32**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3_realloc64(i32**, i32) #1

declare dso_local i32 @fuzzParseChanges(i8**, i8*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
