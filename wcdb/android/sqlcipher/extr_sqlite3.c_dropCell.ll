; ModuleID = '/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_dropCell.c'
source_filename = "/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_dropCell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64, i64, %struct.TYPE_6__*, i64*, i64*, i32 }
%struct.TYPE_6__ = type { i64, i32 }

@CORRUPT_DB = common dso_local global i64 0, align 8
@SQLITE_CORRUPT_BKPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, i32, i32*)* @dropCell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dropCell(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %189

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br label %27

27:                                               ; preds = %21, %18
  %28 = phi i1 [ false, %18 ], [ %26, %21 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i64, i64* @CORRUPT_DB, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @cellSize(%struct.TYPE_7__* %35, i32 %36)
  %38 = icmp eq i32 %34, %37
  br label %39

39:                                               ; preds = %33, %27
  %40 = phi i1 [ true, %27 ], [ %38, %33 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @sqlite3PagerIswriteable(i32 %45)
  %47 = call i32 @assert(i32 %46)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @sqlite3_mutex_held(i32 %52)
  %54 = call i32 @assert(i32 %53)
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 6
  %57 = load i64*, i64** %56, align 8
  store i64* %57, i64** %10, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 5
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = mul nsw i32 2, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %60, i64 %63
  store i64* %64, i64** %11, align 8
  %65 = load i64*, i64** %11, align 8
  %66 = call i64 @get2byte(i64* %65)
  store i64 %66, i64* %9, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %13, align 4
  %70 = load i64, i64* %9, align 8
  %71 = load i64*, i64** %10, align 8
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %72, 5
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %71, i64 %74
  %76 = call i64 @get2byte(i64* %75)
  %77 = icmp eq i64 %70, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @testcase(i32 %78)
  %80 = load i64, i64* %9, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %80, %82
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %83, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @testcase(i32 %90)
  %92 = load i64, i64* %9, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %92, %94
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 4
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp sgt i64 %95, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %39
  %103 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  %104 = load i32*, i32** %8, align 8
  store i32 %103, i32* %104, align 4
  br label %189

105:                                              ; preds = %39
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %107 = load i64, i64* %9, align 8
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @freeSpace(%struct.TYPE_7__* %106, i64 %107, i32 %108)
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %105
  %113 = load i32, i32* %12, align 4
  %114 = load i32*, i32** %8, align 8
  store i32 %113, i32* %114, align 4
  br label %189

115:                                              ; preds = %105
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %117, align 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %165

124:                                              ; preds = %115
  %125 = load i64*, i64** %10, align 8
  %126 = load i32, i32* %13, align 4
  %127 = add nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %125, i64 %128
  %130 = call i32 @memset(i64* %129, i32 0, i32 4)
  %131 = load i64*, i64** %10, align 8
  %132 = load i32, i32* %13, align 4
  %133 = add nsw i32 %132, 7
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %131, i64 %134
  store i64 0, i64* %135, align 8
  %136 = load i64*, i64** %10, align 8
  %137 = load i32, i32* %13, align 4
  %138 = add nsw i32 %137, 5
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i64, i64* %136, i64 %139
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 4
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = trunc i64 %145 to i32
  %147 = call i32 @put2byte(i64* %140, i32 %146)
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 4
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = sext i32 %155 to i64
  %157 = sub nsw i64 %152, %156
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = sub nsw i64 %157, %160
  %162 = sub nsw i64 %161, 8
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 2
  store i64 %162, i64* %164, align 8
  br label %189

165:                                              ; preds = %115
  %166 = load i64*, i64** %11, align 8
  %167 = load i64*, i64** %11, align 8
  %168 = getelementptr inbounds i64, i64* %167, i64 2
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* %6, align 4
  %173 = sub nsw i32 %171, %172
  %174 = mul nsw i32 2, %173
  %175 = call i32 @memmove(i64* %166, i64* %168, i32 %174)
  %176 = load i64*, i64** %10, align 8
  %177 = load i32, i32* %13, align 4
  %178 = add nsw i32 %177, 3
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i64, i64* %176, i64 %179
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @put2byte(i64* %180, i32 %183)
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = add nsw i64 %187, 2
  store i64 %188, i64* %186, align 8
  br label %189

189:                                              ; preds = %17, %102, %112, %165, %124
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @cellSize(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @sqlite3PagerIswriteable(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i64 @get2byte(i64*) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @freeSpace(%struct.TYPE_7__*, i64, i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @put2byte(i64*, i32) #1

declare dso_local i32 @memmove(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
