; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_fs.c_fsdirFilter.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_fs.c_fsdirFilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64 }

@SQLITE_ERROR = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32, i32**)* @fsdirFilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsdirFilter(i32* %0, i32 %1, i8* %2, i32 %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca %struct.TYPE_2__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32** %4, i32*** %11, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = bitcast i32* %15 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %12, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %5
  %23 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %23, i32* %6, align 4
  br label %79

24:                                               ; preds = %19
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @sqlite3_free(i32 %29)
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %24
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @closedir(i64 %38)
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  br label %42

42:                                               ; preds = %35, %24
  %43 = load i32**, i32*** %11, align 8
  %44 = getelementptr inbounds i32*, i32** %43, i64 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i64 @sqlite3_value_text(i32* %45)
  %47 = inttoptr i64 %46 to i8*
  store i8* %47, i8** %13, align 8
  %48 = load i32**, i32*** %11, align 8
  %49 = getelementptr inbounds i32*, i32** %48, i64 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @sqlite3_value_bytes(i32* %50)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = add nsw i32 %52, 1
  %54 = call i32 @sqlite3_malloc(i32 %53)
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %42
  %62 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %62, i32* %6, align 4
  br label %79

63:                                               ; preds = %42
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i8*, i8** %13, align 8
  %68 = load i32, i32* %14, align 4
  %69 = add nsw i32 %68, 1
  %70 = call i32 @memcpy(i32 %66, i8* %67, i32 %69)
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @opendir(i32 %73)
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @fsdirNext(i32* %77)
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %63, %61, %22
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local i32 @sqlite3_free(i32) #1

declare dso_local i32 @closedir(i64) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i32 @sqlite3_value_bytes(i32*) #1

declare dso_local i32 @sqlite3_malloc(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i64 @opendir(i32) #1

declare dso_local i32 @fsdirNext(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
