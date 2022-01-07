; ModuleID = '/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_clearCell.c'
source_filename = "/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_clearCell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8*, i32, %struct.TYPE_18__*, {}* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@CORRUPT_DB = common dso_local global i64 0, align 8
@SQLITE_CORRUPT_BKPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i8*, %struct.TYPE_17__*)* @clearCell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clearCell(%struct.TYPE_16__* %0, i8* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @sqlite3_mutex_held(i32 %19)
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 3
  %24 = bitcast {}** %23 to i32 (%struct.TYPE_16__*, i8*, %struct.TYPE_17__*)**
  %25 = load i32 (%struct.TYPE_16__*, i8*, %struct.TYPE_17__*)*, i32 (%struct.TYPE_16__*, i8*, %struct.TYPE_17__*)** %24, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %29 = call i32 %25(%struct.TYPE_16__* %26, i8* %27, %struct.TYPE_17__* %28)
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %3
  %38 = load i32, i32* @SQLITE_OK, align 4
  store i32 %38, i32* %4, align 4
  br label %195

39:                                               ; preds = %3
  %40 = load i8*, i8** %6, align 8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %40, i64 %44
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = icmp eq i8* %45, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @testcase(i32 %50)
  %52 = load i8*, i8** %6, align 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %52, i64 %57
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = icmp eq i8* %58, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @testcase(i32 %63)
  %65 = load i8*, i8** %6, align 8
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %65, i64 %69
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ugt i8* %70, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %39
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %77 = call i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_16__* %76)
  store i32 %77, i32* %4, align 4
  br label %195

78:                                               ; preds = %39
  %79 = load i8*, i8** %6, align 8
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %79, i64 %83
  %85 = getelementptr inbounds i8, i8* %84, i64 -4
  %86 = call i32 @get4byte(i8* %85)
  store i32 %86, i32* %9, align 4
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %88, align 8
  store %struct.TYPE_18__* %89, %struct.TYPE_18__** %8, align 8
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp sgt i32 %92, 4
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %98, 4
  store i32 %99, i32* %12, align 4
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 %102, %105
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %106, %107
  %109 = sub nsw i32 %108, 1
  %110 = load i32, i32* %12, align 4
  %111 = sdiv i32 %109, %110
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* %11, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %127, label %114

114:                                              ; preds = %78
  %115 = load i64, i64* @CORRUPT_DB, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %114
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %12, align 4
  %122 = add nsw i32 %120, %121
  %123 = load i32, i32* %12, align 4
  %124 = icmp slt i32 %122, %123
  br label %125

125:                                              ; preds = %117, %114
  %126 = phi i1 [ false, %114 ], [ %124, %117 ]
  br label %127

127:                                              ; preds = %125, %78
  %128 = phi i1 [ true, %78 ], [ %126, %125 ]
  %129 = zext i1 %128 to i32
  %130 = call i32 @assert(i32 %129)
  br label %131

131:                                              ; preds = %191, %127
  %132 = load i32, i32* %11, align 4
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %11, align 4
  %134 = icmp ne i32 %132, 0
  br i1 %134, label %135, label %193

135:                                              ; preds = %131
  store i32 0, i32* %13, align 4
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %14, align 8
  %136 = load i32, i32* %9, align 4
  %137 = icmp slt i32 %136, 2
  br i1 %137, label %143, label %138

138:                                              ; preds = %135
  %139 = load i32, i32* %9, align 4
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %141 = call i32 @btreePagecount(%struct.TYPE_18__* %140)
  %142 = icmp sgt i32 %139, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %138, %135
  %144 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %144, i32* %4, align 4
  br label %195

145:                                              ; preds = %138
  %146 = load i32, i32* %11, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %145
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %150 = load i32, i32* %9, align 4
  %151 = call i32 @getOverflowPage(%struct.TYPE_18__* %149, i32 %150, %struct.TYPE_16__** %14, i32* %13)
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* %10, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %148
  %155 = load i32, i32* %10, align 4
  store i32 %155, i32* %4, align 4
  br label %195

156:                                              ; preds = %148
  br label %157

157:                                              ; preds = %156, %145
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %159 = icmp ne %struct.TYPE_16__* %158, null
  br i1 %159, label %165, label %160

160:                                              ; preds = %157
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %162 = load i32, i32* %9, align 4
  %163 = call %struct.TYPE_16__* @btreePageLookup(%struct.TYPE_18__* %161, i32 %162)
  store %struct.TYPE_16__* %163, %struct.TYPE_16__** %14, align 8
  %164 = icmp ne %struct.TYPE_16__* %163, null
  br i1 %164, label %165, label %173

165:                                              ; preds = %160, %157
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @sqlite3PagerPageRefcount(i32 %168)
  %170 = icmp ne i32 %169, 1
  br i1 %170, label %171, label %173

171:                                              ; preds = %165
  %172 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %172, i32* %10, align 4
  br label %178

173:                                              ; preds = %165, %160
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %176 = load i32, i32* %9, align 4
  %177 = call i32 @freePage2(%struct.TYPE_18__* %174, %struct.TYPE_16__* %175, i32 %176)
  store i32 %177, i32* %10, align 4
  br label %178

178:                                              ; preds = %173, %171
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %180 = icmp ne %struct.TYPE_16__* %179, null
  br i1 %180, label %181, label %186

181:                                              ; preds = %178
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @sqlite3PagerUnref(i32 %184)
  br label %186

186:                                              ; preds = %181, %178
  %187 = load i32, i32* %10, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %186
  %190 = load i32, i32* %10, align 4
  store i32 %190, i32* %4, align 4
  br label %195

191:                                              ; preds = %186
  %192 = load i32, i32* %13, align 4
  store i32 %192, i32* %9, align 4
  br label %131

193:                                              ; preds = %131
  %194 = load i32, i32* @SQLITE_OK, align 4
  store i32 %194, i32* %4, align 4
  br label %195

195:                                              ; preds = %193, %189, %154, %143, %75, %37
  %196 = load i32, i32* %4, align 4
  ret i32 %196
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_16__*) #1

declare dso_local i32 @get4byte(i8*) #1

declare dso_local i32 @btreePagecount(%struct.TYPE_18__*) #1

declare dso_local i32 @getOverflowPage(%struct.TYPE_18__*, i32, %struct.TYPE_16__**, i32*) #1

declare dso_local %struct.TYPE_16__* @btreePageLookup(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @sqlite3PagerPageRefcount(i32) #1

declare dso_local i32 @freePage2(%struct.TYPE_18__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @sqlite3PagerUnref(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
