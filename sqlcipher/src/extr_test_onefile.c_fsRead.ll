; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_onefile.c_fsRead.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_onefile.c_fsRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { {}* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64, i32, %struct.TYPE_9__* }

@SQLITE_OK = common dso_local global i32 0, align 4
@DATABASE_FILE = common dso_local global i64 0, align 8
@JOURNAL_FILE = common dso_local global i64 0, align 8
@SQLITE_IOERR_SHORT_READ = common dso_local global i32 0, align 4
@BLOCKSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i32, i64)* @fsRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsRead(%struct.TYPE_9__* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %18 = load i32, i32* @SQLITE_OK, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %20 = bitcast %struct.TYPE_9__* %19 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %10, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %11, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %12, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DATABASE_FILE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %4
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %8, align 8
  %36 = add nsw i64 %34, %35
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %36, %39
  br i1 %40, label %56, label %41

41:                                               ; preds = %32, %4
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @JOURNAL_FILE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %41
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %8, align 8
  %51 = add nsw i64 %49, %50
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %51, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %47, %32
  %57 = load i32, i32* @SQLITE_IOERR_SHORT_READ, align 4
  store i32 %57, i32* %9, align 4
  br label %140

58:                                               ; preds = %47, %41
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @DATABASE_FILE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %79

64:                                               ; preds = %58
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = bitcast {}** %68 to i32 (%struct.TYPE_9__*, i8*, i32, i64)**
  %70 = load i32 (%struct.TYPE_9__*, i8*, i32, i64)*, i32 (%struct.TYPE_9__*, i8*, i32, i64)** %69, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i64, i64* %8, align 8
  %75 = load i32, i32* @BLOCKSIZE, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %74, %76
  %78 = call i32 %70(%struct.TYPE_9__* %71, i8* %72, i32 %73, i64 %77)
  store i32 %78, i32* %9, align 4
  br label %139

79:                                               ; preds = %58
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %81 = load i64, i64* %8, align 8
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %15, align 4
  br label %83

83:                                               ; preds = %92, %79
  %84 = load i32, i32* %13, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @SQLITE_OK, align 4
  %89 = icmp eq i32 %87, %88
  br label %90

90:                                               ; preds = %86, %83
  %91 = phi i1 [ false, %83 ], [ %89, %86 ]
  br i1 %91, label %92, label %138

92:                                               ; preds = %90
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @BLOCKSIZE, align 4
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* @BLOCKSIZE, align 4
  %99 = sdiv i32 %97, %98
  %100 = add nsw i32 %99, 1
  %101 = mul nsw i32 %96, %100
  %102 = sub nsw i32 %95, %101
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* @BLOCKSIZE, align 4
  %105 = srem i32 %103, %104
  %106 = add nsw i32 %102, %105
  store i32 %106, i32* %16, align 4
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* @BLOCKSIZE, align 4
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* @BLOCKSIZE, align 4
  %111 = srem i32 %109, %110
  %112 = sub nsw i32 %108, %111
  %113 = call i32 @MIN(i32 %107, i32 %112)
  store i32 %113, i32* %17, align 4
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = bitcast {}** %117 to i32 (%struct.TYPE_9__*, i8*, i32, i64)**
  %119 = load i32 (%struct.TYPE_9__*, i8*, i32, i64)*, i32 (%struct.TYPE_9__*, i8*, i32, i64)** %118, align 8
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %121 = load i8*, i8** %6, align 8
  %122 = load i32, i32* %14, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = load i32, i32* %17, align 4
  %126 = load i32, i32* %16, align 4
  %127 = sext i32 %126 to i64
  %128 = call i32 %119(%struct.TYPE_9__* %120, i8* %124, i32 %125, i64 %127)
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* %17, align 4
  %130 = load i32, i32* %15, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %15, align 4
  %132 = load i32, i32* %17, align 4
  %133 = load i32, i32* %14, align 4
  %134 = add nsw i32 %133, %132
  store i32 %134, i32* %14, align 4
  %135 = load i32, i32* %17, align 4
  %136 = load i32, i32* %13, align 4
  %137 = sub nsw i32 %136, %135
  store i32 %137, i32* %13, align 4
  br label %83

138:                                              ; preds = %90
  br label %139

139:                                              ; preds = %138, %64
  br label %140

140:                                              ; preds = %139, %56
  %141 = load i32, i32* %9, align 4
  ret i32 %141
}

declare dso_local i32 @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
