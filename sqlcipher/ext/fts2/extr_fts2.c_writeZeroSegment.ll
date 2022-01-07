; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_writeZeroSegment.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_writeZeroSegment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@termDataCmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @writeZeroSegment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @writeZeroSegment(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @segdirNextIndex(i32* %14, i32 0, i32* %7)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @SQLITE_OK, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %131

21:                                               ; preds = %2
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @fts2HashCount(i32* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 12
  %27 = trunc i64 %26 to i32
  %28 = call %struct.TYPE_10__* @sqlite3_malloc(i32 %27)
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %11, align 8
  store i32 0, i32* %9, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = call i32* @fts2HashFirst(i32* %29)
  store i32* %30, i32** %6, align 8
  br label %31

31:                                               ; preds = %61, %21
  %32 = load i32*, i32** %6, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %66

34:                                               ; preds = %31
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @fts2HashKey(i32* %40)
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  store i32 %41, i32* %46, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @fts2HashKeysize(i32* %47)
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  store i32 %48, i32* %53, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @fts2HashData(i32* %54)
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 2
  store i32 %55, i32* %60, align 4
  br label %61

61:                                               ; preds = %34
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = call i32* @fts2HashNext(i32* %64)
  store i32* %65, i32** %6, align 8
  br label %31

66:                                               ; preds = %31
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp eq i32 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load i32, i32* %10, align 4
  %73 = icmp sgt i32 %72, 1
  br i1 %73, label %74, label %79

74:                                               ; preds = %66
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @termDataCmp, align 4
  %78 = call i32 @qsort(%struct.TYPE_10__* %75, i32 %76, i32 12, i32 %77)
  br label %79

79:                                               ; preds = %74, %66
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @leafWriterInit(i32 0, i32 %80, i32* %12)
  %82 = call i32 @dataBufferInit(%struct.TYPE_11__* %13, i32 0)
  store i32 0, i32* %9, align 4
  br label %83

83:                                               ; preds = %119, %79
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %122

87:                                               ; preds = %83
  %88 = call i32 @dataBufferReset(%struct.TYPE_11__* %13)
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @dlcAddDoclist(i32 %94, %struct.TYPE_11__* %13)
  %96 = load i32*, i32** %4, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @leafWriterStep(i32* %96, i32* %12, i32 %102, i32 %108, i32 %110, i32 %112)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* @SQLITE_OK, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %87
  br label %125

118:                                              ; preds = %87
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %9, align 4
  br label %83

122:                                              ; preds = %83
  %123 = load i32*, i32** %4, align 8
  %124 = call i32 @leafWriterFinalize(i32* %123, i32* %12)
  store i32 %124, i32* %8, align 4
  br label %125

125:                                              ; preds = %122, %117
  %126 = call i32 @dataBufferDestroy(%struct.TYPE_11__* %13)
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %128 = call i32 @sqlite3_free(%struct.TYPE_10__* %127)
  %129 = call i32 @leafWriterDestroy(i32* %12)
  %130 = load i32, i32* %8, align 4
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %125, %19
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @segdirNextIndex(i32*, i32, i32*) #1

declare dso_local i32 @fts2HashCount(i32*) #1

declare dso_local %struct.TYPE_10__* @sqlite3_malloc(i32) #1

declare dso_local i32* @fts2HashFirst(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fts2HashKey(i32*) #1

declare dso_local i32 @fts2HashKeysize(i32*) #1

declare dso_local i32 @fts2HashData(i32*) #1

declare dso_local i32* @fts2HashNext(i32*) #1

declare dso_local i32 @qsort(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @leafWriterInit(i32, i32, i32*) #1

declare dso_local i32 @dataBufferInit(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @dataBufferReset(%struct.TYPE_11__*) #1

declare dso_local i32 @dlcAddDoclist(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @leafWriterStep(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @leafWriterFinalize(i32*, i32*) #1

declare dso_local i32 @dataBufferDestroy(%struct.TYPE_11__*) #1

declare dso_local i32 @sqlite3_free(%struct.TYPE_10__*) #1

declare dso_local i32 @leafWriterDestroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
