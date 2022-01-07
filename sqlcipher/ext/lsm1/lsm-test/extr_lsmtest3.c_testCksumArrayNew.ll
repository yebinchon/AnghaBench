; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest3.c_testCksumArrayNew.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest3.c_testCksumArrayNew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i8** }

@TEST_CKSUM_BYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"lsm\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"tempdb.lsm\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @testCksumArrayNew(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %13, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sub nsw i32 %19, %20
  %22 = load i32, i32* %8, align 4
  %23 = srem i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br label %25

25:                                               ; preds = %18, %4
  %26 = phi i1 [ false, %4 ], [ %24, %18 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = call %struct.TYPE_5__* @malloc(i32 24)
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %10, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %31 = call i32 @memset(%struct.TYPE_5__* %30, i32 0, i32 24)
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %6, align 4
  %43 = sub nsw i32 %41, %42
  %44 = load i32, i32* %8, align 4
  %45 = sdiv i32 %43, %44
  %46 = add nsw i32 1, %45
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = load i32, i32* @TEST_CKSUM_BYTES, align 4
  %50 = sext i32 %49 to i64
  %51 = add i64 8, %50
  %52 = mul i64 %48, %51
  %53 = trunc i64 %52 to i32
  %54 = call %struct.TYPE_5__* @malloc(i32 %53)
  %55 = bitcast %struct.TYPE_5__* %54 to i8**
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 3
  store i8** %55, i8*** %57, align 8
  store i32 0, i32* %11, align 4
  br label %58

58:                                               ; preds = %82, %25
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %85

62:                                               ; preds = %58
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 3
  %65 = load i8**, i8*** %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  %69 = bitcast i8** %68 to i8*
  store i8* %69, i8** %14, align 8
  %70 = load i8*, i8** %14, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @TEST_CKSUM_BYTES, align 4
  %73 = mul nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %70, i64 %74
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 3
  %78 = load i8**, i8*** %77, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  store i8* %75, i8** %81, align 8
  br label %82

82:                                               ; preds = %62
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  br label %58

85:                                               ; preds = %58
  %86 = call i32 @tdb_open(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 1, i32** %9)
  %87 = load i32*, i32** %9, align 8
  %88 = load i32*, i32** %5, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @testWriteDatasourceRange(i32* %87, i32* %88, i32 0, i32 %89, i32* %13)
  store i32 0, i32* %11, align 4
  br label %91

91:                                               ; preds = %119, %85
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %12, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %122

95:                                               ; preds = %91
  %96 = load i32*, i32** %9, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 3
  %99 = load i8**, i8*** %98, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8*, i8** %99, i64 %101
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @testCksumDatabase(i32* %96, i8* %103)
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %95
  br label %122

109:                                              ; preds = %95
  %110 = load i32*, i32** %9, align 8
  %111 = load i32*, i32** %5, align 8
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %8, align 4
  %115 = mul nsw i32 %113, %114
  %116 = add nsw i32 %112, %115
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @testWriteDatasourceRange(i32* %110, i32* %111, i32 %116, i32 %117, i32* %13)
  br label %119

119:                                              ; preds = %109
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %11, align 4
  br label %91

122:                                              ; preds = %108, %91
  %123 = load i32*, i32** %9, align 8
  %124 = call i32 @tdb_close(i32* %123)
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  ret %struct.TYPE_5__* %125
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_5__* @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @tdb_open(i8*, i8*, i32, i32**) #1

declare dso_local i32 @testWriteDatasourceRange(i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @testCksumDatabase(i32*, i8*) #1

declare dso_local i32 @tdb_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
