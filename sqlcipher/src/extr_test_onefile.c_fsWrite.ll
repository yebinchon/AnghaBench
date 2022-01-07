; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_onefile.c_fsWrite.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_onefile.c_fsWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { {}* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64, i32, %struct.TYPE_9__* }

@SQLITE_OK = common dso_local global i32 0, align 4
@DATABASE_FILE = common dso_local global i64 0, align 8
@BLOCKSIZE = common dso_local global i32 0, align 4
@SQLITE_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i32, i64)* @fsWrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsWrite(%struct.TYPE_9__* %0, i8* %1, i32 %2, i64 %3) #0 {
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
  br i1 %31, label %32, label %82

32:                                               ; preds = %4
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %8, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i32, i32* @BLOCKSIZE, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %42, %45
  %47 = icmp sgt i64 %39, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %32
  %49 = load i32, i32* @SQLITE_FULL, align 4
  store i32 %49, i32* %9, align 4
  br label %81

50:                                               ; preds = %32
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = bitcast {}** %54 to i32 (%struct.TYPE_9__*, i8*, i32, i64)**
  %56 = load i32 (%struct.TYPE_9__*, i8*, i32, i64)*, i32 (%struct.TYPE_9__*, i8*, i32, i64)** %55, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i64, i64* %8, align 8
  %61 = load i32, i32* @BLOCKSIZE, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %60, %62
  %64 = call i32 %56(%struct.TYPE_9__* %57, i8* %58, i32 %59, i64 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @SQLITE_OK, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %50
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* %8, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i64 @MAX(i32 %71, i64 %75)
  %77 = trunc i64 %76 to i32
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  br label %80

80:                                               ; preds = %68, %50
  br label %81

81:                                               ; preds = %80, %48
  br label %174

82:                                               ; preds = %4
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %84 = load i64, i64* %8, align 8
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %15, align 4
  br label %86

86:                                               ; preds = %154, %82
  %87 = load i32, i32* %13, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @SQLITE_OK, align 4
  %92 = icmp eq i32 %90, %91
  br label %93

93:                                               ; preds = %89, %86
  %94 = phi i1 [ false, %86 ], [ %92, %89 ]
  br i1 %94, label %95, label %155

95:                                               ; preds = %93
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* @BLOCKSIZE, align 4
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* @BLOCKSIZE, align 4
  %102 = sdiv i32 %100, %101
  %103 = add nsw i32 %102, 1
  %104 = mul nsw i32 %99, %103
  %105 = sext i32 %104 to i64
  %106 = sub nsw i64 %98, %105
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* @BLOCKSIZE, align 4
  %109 = srem i32 %107, %108
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %106, %110
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %16, align 4
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* @BLOCKSIZE, align 4
  %115 = load i32, i32* %16, align 4
  %116 = load i32, i32* @BLOCKSIZE, align 4
  %117 = srem i32 %115, %116
  %118 = sub nsw i32 %114, %117
  %119 = call i32 @MIN(i32 %113, i32 %118)
  store i32 %119, i32* %17, align 4
  %120 = load i32, i32* %16, align 4
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @BLOCKSIZE, align 4
  %125 = add nsw i32 %123, %124
  %126 = icmp slt i32 %120, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %95
  %128 = load i32, i32* @SQLITE_FULL, align 4
  store i32 %128, i32* %9, align 4
  br label %154

129:                                              ; preds = %95
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = bitcast {}** %133 to i32 (%struct.TYPE_9__*, i8*, i32, i64)**
  %135 = load i32 (%struct.TYPE_9__*, i8*, i32, i64)*, i32 (%struct.TYPE_9__*, i8*, i32, i64)** %134, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %137 = load i8*, i8** %6, align 8
  %138 = load i32, i32* %14, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  %141 = load i32, i32* %17, align 4
  %142 = load i32, i32* %16, align 4
  %143 = sext i32 %142 to i64
  %144 = call i32 %135(%struct.TYPE_9__* %136, i8* %140, i32 %141, i64 %143)
  store i32 %144, i32* %9, align 4
  %145 = load i32, i32* %17, align 4
  %146 = load i32, i32* %15, align 4
  %147 = add nsw i32 %146, %145
  store i32 %147, i32* %15, align 4
  %148 = load i32, i32* %17, align 4
  %149 = load i32, i32* %14, align 4
  %150 = add nsw i32 %149, %148
  store i32 %150, i32* %14, align 4
  %151 = load i32, i32* %17, align 4
  %152 = load i32, i32* %13, align 4
  %153 = sub nsw i32 %152, %151
  store i32 %153, i32* %13, align 4
  br label %154

154:                                              ; preds = %129, %127
  br label %86

155:                                              ; preds = %93
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* @SQLITE_OK, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %173

159:                                              ; preds = %155
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = trunc i64 %162 to i32
  %164 = load i32, i32* %7, align 4
  %165 = sext i32 %164 to i64
  %166 = load i64, i64* %8, align 8
  %167 = add nsw i64 %165, %166
  %168 = call i64 @MAX(i32 %163, i64 %167)
  %169 = trunc i64 %168 to i32
  %170 = sext i32 %169 to i64
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 1
  store i64 %170, i64* %172, align 8
  br label %173

173:                                              ; preds = %159, %155
  br label %174

174:                                              ; preds = %173, %81
  %175 = load i32, i32* %9, align 4
  ret i32 %175
}

declare dso_local i64 @MAX(i32, i64) #1

declare dso_local i32 @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
