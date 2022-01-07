; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_fts3PendingListAppend.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_fts3PendingListAppend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64*, i32, i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__**, i64, i64, i64, i32*)* @fts3PendingListAppend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3PendingListAppend(%struct.TYPE_4__** %0, i64 %1, i64 %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %12, align 8
  %17 = load i32, i32* @SQLITE_OK, align 4
  store i32 %17, i32* %13, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %5
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp sle i64 %23, %24
  br label %26

26:                                               ; preds = %20, %5
  %27 = phi i1 [ true, %5 ], [ %25, %20 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %31 = icmp ne %struct.TYPE_4__* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %91

38:                                               ; preds = %32, %26
  %39 = load i64, i64* %8, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %41 = icmp ne %struct.TYPE_4__* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  br label %47

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %42
  %48 = phi i64 [ %45, %42 ], [ 0, %46 ]
  %49 = sub nsw i64 %39, %48
  store i64 %49, i64* %14, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %51 = icmp ne %struct.TYPE_4__* %50, null
  br i1 %51, label %52, label %77

52:                                               ; preds = %47
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ult i64 %55, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 3
  %64 = load i64*, i64** %63, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i64, i64* %64, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %74, align 8
  br label %77

77:                                               ; preds = %52, %47
  %78 = load i32, i32* @SQLITE_OK, align 4
  %79 = load i64, i64* %14, align 8
  %80 = call i32 @fts3PendingListAppendVarint(%struct.TYPE_4__** %12, i64 %79)
  store i32 %80, i32* %13, align 4
  %81 = icmp ne i32 %78, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %157

83:                                               ; preds = %77
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 4
  store i32 -1, i32* %85, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 5
  store i64 0, i64* %87, align 8
  %88 = load i64, i64* %8, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  br label %91

91:                                               ; preds = %83, %32
  %92 = load i64, i64* %9, align 8
  %93 = icmp sgt i64 %92, 0
  br i1 %93, label %94, label %118

94:                                               ; preds = %91
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = load i64, i64* %9, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %118

101:                                              ; preds = %94
  %102 = load i32, i32* @SQLITE_OK, align 4
  %103 = call i32 @fts3PendingListAppendVarint(%struct.TYPE_4__** %12, i64 1)
  store i32 %103, i32* %13, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %110, label %105

105:                                              ; preds = %101
  %106 = load i32, i32* @SQLITE_OK, align 4
  %107 = load i64, i64* %9, align 8
  %108 = call i32 @fts3PendingListAppendVarint(%struct.TYPE_4__** %12, i64 %107)
  store i32 %108, i32* %13, align 4
  %109 = icmp ne i32 %106, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %105, %101
  br label %157

111:                                              ; preds = %105
  %112 = load i64, i64* %9, align 8
  %113 = trunc i64 %112 to i32
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 8
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 5
  store i64 0, i64* %117, align 8
  br label %118

118:                                              ; preds = %111, %94, %91
  %119 = load i64, i64* %9, align 8
  %120 = icmp sge i64 %119, 0
  br i1 %120, label %121, label %156

121:                                              ; preds = %118
  %122 = load i64, i64* %10, align 8
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 5
  %125 = load i64, i64* %124, align 8
  %126 = icmp sgt i64 %122, %125
  br i1 %126, label %137, label %127

127:                                              ; preds = %121
  %128 = load i64, i64* %10, align 8
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %127
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 5
  %133 = load i64, i64* %132, align 8
  %134 = icmp eq i64 %133, 0
  br label %135

135:                                              ; preds = %130, %127
  %136 = phi i1 [ false, %127 ], [ %134, %130 ]
  br label %137

137:                                              ; preds = %135, %121
  %138 = phi i1 [ true, %121 ], [ %136, %135 ]
  %139 = zext i1 %138 to i32
  %140 = call i32 @assert(i32 %139)
  %141 = load i64, i64* %10, align 8
  %142 = add nsw i64 2, %141
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 5
  %145 = load i64, i64* %144, align 8
  %146 = sub nsw i64 %142, %145
  %147 = call i32 @fts3PendingListAppendVarint(%struct.TYPE_4__** %12, i64 %146)
  store i32 %147, i32* %13, align 4
  %148 = load i32, i32* %13, align 4
  %149 = load i32, i32* @SQLITE_OK, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %137
  %152 = load i64, i64* %10, align 8
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 5
  store i64 %152, i64* %154, align 8
  br label %155

155:                                              ; preds = %151, %137
  br label %156

156:                                              ; preds = %155, %118
  br label %157

157:                                              ; preds = %156, %110, %82
  %158 = load i32, i32* %13, align 4
  %159 = load i32*, i32** %11, align 8
  store i32 %158, i32* %159, align 4
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %161 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = icmp ne %struct.TYPE_4__* %160, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %157
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %166 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  store %struct.TYPE_4__* %165, %struct.TYPE_4__** %166, align 8
  store i32 1, i32* %6, align 4
  br label %168

167:                                              ; preds = %157
  store i32 0, i32* %6, align 4
  br label %168

168:                                              ; preds = %167, %164
  %169 = load i32, i32* %6, align 4
  ret i32 %169
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fts3PendingListAppendVarint(%struct.TYPE_4__**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
