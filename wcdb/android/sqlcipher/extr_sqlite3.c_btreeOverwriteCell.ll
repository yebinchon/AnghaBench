; ModuleID = '/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_btreeOverwriteCell.c'
source_filename = "/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_btreeOverwriteCell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_12__, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_13__ = type { i64, i64, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }

@SQLITE_CORRUPT_BKPT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_14__*)* @btreeOverwriteCell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btreeOverwriteCell(%struct.TYPE_16__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %15, %18
  store i32 %19, i32* %7, align 4
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  store %struct.TYPE_13__* %22, %struct.TYPE_13__** %9, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %26, %31
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %32, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %2
  %38 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %38, i32* %3, align 4
  br label %152

39:                                               ; preds = %2
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @btreeOverwriteContent(%struct.TYPE_13__* %40, i64 %44, %struct.TYPE_14__* %45, i32 0, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %39
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %3, align 4
  br label %152

55:                                               ; preds = %39
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32, i32* @SQLITE_OK, align 4
  store i32 %63, i32* %3, align 4
  br label %152

64:                                               ; preds = %55
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp sge i32 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load i32, i32* %6, align 4
  %74 = icmp sge i32 %73, 0
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %80, %82
  %84 = call i32 @get4byte(i64 %83)
  store i32 %84, i32* %11, align 4
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %86, align 8
  store %struct.TYPE_15__* %87, %struct.TYPE_15__** %10, align 8
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %90, 4
  store i32 %91, i32* %12, align 4
  br label %92

92:                                               ; preds = %146, %64
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @btreeGetPage(%struct.TYPE_15__* %93, i32 %94, %struct.TYPE_13__** %9, i32 0)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %3, align 4
  br label %152

100:                                              ; preds = %92
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @sqlite3PagerPageRefcount(i32 %103)
  %105 = icmp ne i32 %104, 1
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %107, i32* %8, align 4
  br label %133

108:                                              ; preds = %100
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %109, %110
  %112 = load i32, i32* %7, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %108
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @get4byte(i64 %117)
  store i32 %118, i32* %11, align 4
  br label %123

119:                                              ; preds = %108
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* %6, align 4
  %122 = sub nsw i32 %120, %121
  store i32 %122, i32* %12, align 4
  br label %123

123:                                              ; preds = %119, %114
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %127, 4
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* %12, align 4
  %132 = call i32 @btreeOverwriteContent(%struct.TYPE_13__* %124, i64 %128, %struct.TYPE_14__* %129, i32 %130, i32 %131)
  store i32 %132, i32* %8, align 4
  br label %133

133:                                              ; preds = %123, %106
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @sqlite3PagerUnref(i32 %136)
  %138 = load i32, i32* %8, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %133
  %141 = load i32, i32* %8, align 4
  store i32 %141, i32* %3, align 4
  br label %152

142:                                              ; preds = %133
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* %6, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %6, align 4
  br label %146

146:                                              ; preds = %142
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* %7, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %92, label %150

150:                                              ; preds = %146
  %151 = load i32, i32* @SQLITE_OK, align 4
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %150, %140, %98, %62, %53, %37
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local i32 @btreeOverwriteContent(%struct.TYPE_13__*, i64, %struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @get4byte(i64) #1

declare dso_local i32 @btreeGetPage(%struct.TYPE_15__*, i32, %struct.TYPE_13__**, i32) #1

declare dso_local i32 @sqlite3PagerPageRefcount(i32) #1

declare dso_local i32 @sqlite3PagerUnref(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
