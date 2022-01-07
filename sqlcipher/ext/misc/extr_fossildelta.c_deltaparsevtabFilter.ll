; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_fossildelta.c_deltaparsevtabFilter.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_fossildelta.c_deltaparsevtabFilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i32, i64, i64, i8* }

@DELTAPARSE_OP_ERROR = common dso_local global i8* null, align 8
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@DELTAPARSE_OP_SIZE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32, i32**)* @deltaparsevtabFilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deltaparsevtabFilter(i32* %0, i32 %1, i8* %2, i32 %3, i32** %4) #0 {
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
  store i32 0, i32* %14, align 4
  %17 = load i8*, i8** @DELTAPARSE_OP_ERROR, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 5
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* @SQLITE_OK, align 4
  store i32 %23, i32* %6, align 4
  br label %120

24:                                               ; preds = %5
  %25 = load i32**, i32*** %11, align 8
  %26 = getelementptr inbounds i32*, i32** %25, i64 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @sqlite3_value_bytes(i32* %27)
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32**, i32*** %11, align 8
  %32 = getelementptr inbounds i32*, i32** %31, i64 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i64 @sqlite3_value_blob(i32* %33)
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** %13, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %24
  %41 = load i8*, i8** %13, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %40, %24
  %44 = load i32, i32* @SQLITE_OK, align 4
  store i32 %44, i32* %6, align 4
  br label %120

45:                                               ; preds = %40
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  %50 = call i8* @sqlite3_malloc64(i32 %49)
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %45
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  %60 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %60, i32* %6, align 4
  br label %120

61:                                               ; preds = %45
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = load i8*, i8** %13, align 8
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @memcpy(i8* %64, i8* %65, i32 %68)
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %72, i64 %76
  store i8 0, i8* %77, align 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  store i8* %80, i8** %13, align 8
  %81 = load i8*, i8** @DELTAPARSE_OP_SIZE, align 8
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 5
  store i8* %81, i8** %83, align 8
  %84 = call i64 @deltaGetInt(i8** %13, i32* %14)
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 4
  store i64 %84, i64* %86, align 8
  %87 = load i8*, i8** %13, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 0
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %90, 10
  br i1 %91, label %92, label %106

92:                                               ; preds = %61
  %93 = load i8*, i8** @DELTAPARSE_OP_ERROR, align 8
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 5
  store i8* %93, i8** %95, align 8
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 3
  store i64 0, i64* %97, align 8
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 4
  store i64 0, i64* %99, align 8
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* @SQLITE_OK, align 4
  store i32 %105, i32* %6, align 4
  br label %120

106:                                              ; preds = %61
  %107 = load i8*, i8** %13, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %13, align 8
  %109 = load i8*, i8** %13, align 8
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = ptrtoint i8* %109 to i64
  %114 = ptrtoint i8* %112 to i64
  %115 = sub i64 %113, %114
  %116 = trunc i64 %115 to i32
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* @SQLITE_OK, align 4
  store i32 %119, i32* %6, align 4
  br label %120

120:                                              ; preds = %106, %92, %57, %43, %22
  %121 = load i32, i32* %6, align 4
  ret i32 %121
}

declare dso_local i32 @sqlite3_value_bytes(i32*) #1

declare dso_local i64 @sqlite3_value_blob(i32*) #1

declare dso_local i8* @sqlite3_malloc64(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @deltaGetInt(i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
