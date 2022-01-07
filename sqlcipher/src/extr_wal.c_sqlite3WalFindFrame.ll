; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_wal.c_sqlite3WalFindFrame.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_wal.c_sqlite3WalFindFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i64, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i64*, i64, i64* }

@SQLITE_OK = common dso_local global i32 0, align 4
@HASHTABLE_NSLOT = common dso_local global i32 0, align 4
@CORRUPT_DB = common dso_local global i64 0, align 8
@SQLITE_CORRUPT_BKPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3WalFindFrame(%struct.TYPE_10__* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 0, i64* %8, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %9, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %3
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %25, %3
  %31 = phi i1 [ true, %3 ], [ %29, %25 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i64, i64* %9, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %30
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41, %30
  %47 = load i64*, i64** %7, align 8
  store i64 0, i64* %47, align 8
  %48 = load i32, i32* @SQLITE_OK, align 4
  store i32 %48, i32* %4, align 4
  br label %147

49:                                               ; preds = %41, %36
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @walFramePage(i64 %52)
  store i32 %53, i32* %11, align 4
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @walFramePage(i64 %54)
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %140, %49
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %143

60:                                               ; preds = %56
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @walHashGet(%struct.TYPE_10__* %61, i32 %62, %struct.TYPE_9__* %12)
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* @SQLITE_OK, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* %15, align 4
  store i32 %68, i32* %4, align 4
  br label %147

69:                                               ; preds = %60
  %70 = load i32, i32* @HASHTABLE_NSLOT, align 4
  store i32 %70, i32* %14, align 4
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @walHash(i64 %71)
  store i32 %72, i32* %13, align 4
  br label %73

73:                                               ; preds = %132, %69
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %135

81:                                               ; preds = %73
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = add i64 %87, %89
  store i64 %90, i64* %16, align 8
  %91 = load i64, i64* %16, align 8
  %92 = load i64, i64* %9, align 8
  %93 = icmp sle i64 %91, %92
  br i1 %93, label %94, label %125

94:                                               ; preds = %81
  %95 = load i64, i64* %16, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp sge i64 %95, %98
  br i1 %99, label %100, label %125

100:                                              ; preds = %94
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %102 = load i64*, i64** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %104 = load i64*, i64** %103, align 8
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds i64, i64* %102, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %6, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %125

113:                                              ; preds = %100
  %114 = load i64, i64* %16, align 8
  %115 = load i64, i64* %8, align 8
  %116 = icmp sgt i64 %114, %115
  br i1 %116, label %120, label %117

117:                                              ; preds = %113
  %118 = load i64, i64* @CORRUPT_DB, align 8
  %119 = icmp ne i64 %118, 0
  br label %120

120:                                              ; preds = %117, %113
  %121 = phi i1 [ true, %113 ], [ %119, %117 ]
  %122 = zext i1 %121 to i32
  %123 = call i32 @assert(i32 %122)
  %124 = load i64, i64* %16, align 8
  store i64 %124, i64* %8, align 8
  br label %125

125:                                              ; preds = %120, %100, %94, %81
  %126 = load i32, i32* %14, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %14, align 4
  %128 = icmp eq i32 %126, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %130, i32* %4, align 4
  br label %147

131:                                              ; preds = %125
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %13, align 4
  %134 = call i32 @walNextHash(i32 %133)
  store i32 %134, i32* %13, align 4
  br label %73

135:                                              ; preds = %73
  %136 = load i64, i64* %8, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  br label %143

139:                                              ; preds = %135
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %10, align 4
  %142 = add nsw i32 %141, -1
  store i32 %142, i32* %10, align 4
  br label %56

143:                                              ; preds = %138, %56
  %144 = load i64, i64* %8, align 8
  %145 = load i64*, i64** %7, align 8
  store i64 %144, i64* %145, align 8
  %146 = load i32, i32* @SQLITE_OK, align 4
  store i32 %146, i32* %4, align 4
  br label %147

147:                                              ; preds = %143, %129, %67, %46
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @walFramePage(i64) #1

declare dso_local i32 @walHashGet(%struct.TYPE_10__*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @walHash(i64) #1

declare dso_local i32 @walNextHash(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
