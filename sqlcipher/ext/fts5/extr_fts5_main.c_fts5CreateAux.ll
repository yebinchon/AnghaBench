; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_main.c_fts5CreateAux.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_main.c_fts5CreateAux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i8*, void (i8*)*, %struct.TYPE_5__*, i32, i8*, %struct.TYPE_4__* }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i32, void (i8*)*)* @fts5CreateAux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5CreateAux(i32* %0, i8* %1, i8* %2, i32 %3, void (i8*)* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca void (i8*)*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store void (i8*)* %4, void (i8*)** %10, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = bitcast i32* %16 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %11, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @sqlite3_overload_function(i32 %20, i8* %21, i32 -1)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @SQLITE_OK, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %75

26:                                               ; preds = %5
  %27 = load i8*, i8** %7, align 8
  %28 = call i64 @strlen(i8* %27)
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %14, align 8
  %30 = load i64, i64* %14, align 8
  %31 = add i64 48, %30
  store i64 %31, i64* %15, align 8
  %32 = load i64, i64* %15, align 8
  %33 = call i64 @sqlite3_malloc64(i64 %32)
  %34 = inttoptr i64 %33 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %13, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %36 = icmp ne %struct.TYPE_5__* %35, null
  br i1 %36, label %37, label %72

37:                                               ; preds = %26
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %39 = load i64, i64* %15, align 8
  %40 = call i32 @memset(%struct.TYPE_5__* %38, i32 0, i64 %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 1
  %43 = bitcast %struct.TYPE_5__* %42 to i8*
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load i64, i64* %14, align 8
  %51 = call i32 @memcpy(i8* %48, i8* %49, i64 %50)
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 5
  store %struct.TYPE_4__* %52, %struct.TYPE_4__** %54, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 4
  store i8* %55, i8** %57, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  %61 = load void (i8*)*, void (i8*)** %10, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  store void (i8*)* %61, void (i8*)** %63, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  store %struct.TYPE_5__* %66, %struct.TYPE_5__** %68, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store %struct.TYPE_5__* %69, %struct.TYPE_5__** %71, align 8
  br label %74

72:                                               ; preds = %26
  %73 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %72, %37
  br label %75

75:                                               ; preds = %74, %5
  %76 = load i32, i32* %12, align 4
  ret i32 %76
}

declare dso_local i32 @sqlite3_overload_function(i32, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @sqlite3_malloc64(i64) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
