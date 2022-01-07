; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_btree.c_btreeComputeFreeSpace.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_btree.c_btreeComputeFreeSpace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32*, i32, i32, i32, i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64, i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @btreeComputeFreeSpace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btreeComputeFreeSpace(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 7
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = icmp ne %struct.TYPE_6__* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 7
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 7
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @sqlite3_mutex_held(i32 %32)
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 8
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @sqlite3PagerPagenumber(i32 %40)
  %42 = icmp eq i64 %37, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.TYPE_7__* @sqlite3PagerGetExtra(i32 %48)
  %50 = icmp eq %struct.TYPE_7__* %45, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 8
  %58 = load i32, i32* %57, align 8
  %59 = call i32* @sqlite3PagerGetData(i32 %58)
  %60 = icmp eq i32* %55, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 1
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 7
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %7, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %5, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  store i32* %85, i32** %6, align 8
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 5
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  %91 = call i32 @get2byteNotZero(i32* %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %93, %96
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = mul nsw i32 2, %100
  %102 = add nsw i32 %97, %101
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %7, align 4
  %104 = sub nsw i32 %103, 4
  store i32 %104, i32* %11, align 4
  %105 = load i32*, i32** %6, align 8
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  %110 = call i32 @get2byte(i32* %109)
  store i32 %110, i32* %4, align 4
  %111 = load i32*, i32** %6, align 8
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 %112, 7
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %116, %117
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %4, align 4
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %176

121:                                              ; preds = %1
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* %10, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %127 = call i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_7__* %126)
  store i32 %127, i32* %2, align 4
  br label %190

128:                                              ; preds = %121
  br label %129

129:                                              ; preds = %128, %158
  %130 = load i32, i32* %4, align 4
  %131 = load i32, i32* %11, align 4
  %132 = icmp sgt i32 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %129
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %135 = call i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_7__* %134)
  store i32 %135, i32* %2, align 4
  br label %190

136:                                              ; preds = %129
  %137 = load i32*, i32** %6, align 8
  %138 = load i32, i32* %4, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = call i32 @get2byte(i32* %140)
  store i32 %141, i32* %12, align 4
  %142 = load i32*, i32** %6, align 8
  %143 = load i32, i32* %4, align 4
  %144 = add nsw i32 %143, 2
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %142, i64 %145
  %147 = call i32 @get2byte(i32* %146)
  store i32 %147, i32* %13, align 4
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* %13, align 4
  %150 = add nsw i32 %148, %149
  store i32 %150, i32* %8, align 4
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* %4, align 4
  %153 = load i32, i32* %13, align 4
  %154 = add nsw i32 %152, %153
  %155 = add nsw i32 %154, 3
  %156 = icmp sle i32 %151, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %136
  br label %160

158:                                              ; preds = %136
  %159 = load i32, i32* %12, align 4
  store i32 %159, i32* %4, align 4
  br label %129

160:                                              ; preds = %157
  %161 = load i32, i32* %12, align 4
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %165 = call i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_7__* %164)
  store i32 %165, i32* %2, align 4
  br label %190

166:                                              ; preds = %160
  %167 = load i32, i32* %4, align 4
  %168 = load i32, i32* %13, align 4
  %169 = add nsw i32 %167, %168
  %170 = load i32, i32* %7, align 4
  %171 = icmp ugt i32 %169, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %166
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %174 = call i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_7__* %173)
  store i32 %174, i32* %2, align 4
  br label %190

175:                                              ; preds = %166
  br label %176

176:                                              ; preds = %175, %1
  %177 = load i32, i32* %8, align 4
  %178 = load i32, i32* %7, align 4
  %179 = icmp sgt i32 %177, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %176
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %182 = call i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_7__* %181)
  store i32 %182, i32* %2, align 4
  br label %190

183:                                              ; preds = %176
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* %10, align 4
  %186 = sub nsw i32 %184, %185
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 6
  store i32 %186, i32* %188, align 8
  %189 = load i32, i32* @SQLITE_OK, align 4
  store i32 %189, i32* %2, align 4
  br label %190

190:                                              ; preds = %183, %180, %172, %163, %133, %125
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i64 @sqlite3PagerPagenumber(i32) #1

declare dso_local %struct.TYPE_7__* @sqlite3PagerGetExtra(i32) #1

declare dso_local i32* @sqlite3PagerGetData(i32) #1

declare dso_local i32 @get2byteNotZero(i32*) #1

declare dso_local i32 @get2byte(i32*) #1

declare dso_local i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
