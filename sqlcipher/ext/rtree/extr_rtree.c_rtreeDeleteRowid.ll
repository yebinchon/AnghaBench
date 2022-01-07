; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_rtreeDeleteRowid.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_rtreeDeleteRowid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, i32, %struct.TYPE_23__*, i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_23__*, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@CORRUPT_DB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, i32)* @rtreeDeleteRowid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtreeDeleteRowid(%struct.TYPE_24__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %6, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %8, align 8
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %14 = call i32 @nodeAcquire(%struct.TYPE_24__* %13, i32 1, %struct.TYPE_23__* null, %struct.TYPE_23__** %8)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @SQLITE_OK, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @findLeafNode(%struct.TYPE_24__* %19, i32 %20, %struct.TYPE_23__** %6, i32 0)
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %18, %2
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @SQLITE_OK, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %52

26:                                               ; preds = %22
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %28 = icmp ne %struct.TYPE_23__* %27, null
  br i1 %28, label %29, label %52

29:                                               ; preds = %26
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @nodeRowidIndex(%struct.TYPE_24__* %30, %struct.TYPE_23__* %31, i32 %32, i32* %7)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @SQLITE_OK, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @deleteCell(%struct.TYPE_24__* %38, %struct.TYPE_23__* %39, i32 %40, i32 0)
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %37, %29
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %45 = call i32 @nodeRelease(%struct.TYPE_24__* %43, %struct.TYPE_23__* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @SQLITE_OK, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %49, %42
  br label %52

52:                                               ; preds = %51, %26, %22
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @SQLITE_OK, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %52
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @sqlite3_bind_int64(i32 %59, i32 1, i32 %60)
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @sqlite3_step(i32 %64)
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @sqlite3_reset(i32 %68)
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %56, %52
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @SQLITE_OK, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %130

74:                                               ; preds = %70
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp sgt i64 %77, 0
  br i1 %78, label %79, label %130

79:                                               ; preds = %74
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %81 = call i32 @NCELL(%struct.TYPE_23__* %80)
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %130

83:                                               ; preds = %79
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %11, align 8
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %86 = call i32 @nodeGetRowid(%struct.TYPE_24__* %84, %struct.TYPE_23__* %85, i32 0)
  store i32 %86, i32* %12, align 4
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %88 = load i32, i32* %12, align 4
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %90 = call i32 @nodeAcquire(%struct.TYPE_24__* %87, i32 %88, %struct.TYPE_23__* %89, %struct.TYPE_23__** %11)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @SQLITE_OK, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %83
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %99, 1
  %101 = call i32 @removeNode(%struct.TYPE_24__* %95, %struct.TYPE_23__* %96, i64 %100)
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %94, %83
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %105 = call i32 @nodeRelease(%struct.TYPE_24__* %103, %struct.TYPE_23__* %104)
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @SQLITE_OK, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %102
  %110 = load i32, i32* %10, align 4
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %109, %102
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* @SQLITE_OK, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %129

115:                                              ; preds = %111
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %118, -1
  store i64 %119, i64* %117, align 8
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @writeInt16(i32 %122, i64 %125)
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 0
  store i32 1, i32* %128, align 8
  br label %129

129:                                              ; preds = %115, %111
  br label %130

130:                                              ; preds = %129, %79, %74, %70
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %132, align 8
  store %struct.TYPE_23__* %133, %struct.TYPE_23__** %6, align 8
  br label %134

134:                                              ; preds = %157, %130
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %136 = icmp ne %struct.TYPE_23__* %135, null
  br i1 %136, label %137, label %161

137:                                              ; preds = %134
  %138 = load i32, i32* %5, align 4
  %139 = load i32, i32* @SQLITE_OK, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %137
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %144 = call i32 @reinsertNodeContent(%struct.TYPE_24__* %142, %struct.TYPE_23__* %143)
  store i32 %144, i32* %5, align 4
  br label %145

145:                                              ; preds = %141, %137
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %147, align 8
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %149, i32 0, i32 2
  store %struct.TYPE_23__* %148, %struct.TYPE_23__** %150, align 8
  %151 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %152, align 8
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %156 = call i32 @sqlite3_free(%struct.TYPE_23__* %155)
  br label %157

157:                                              ; preds = %145
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 2
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %159, align 8
  store %struct.TYPE_23__* %160, %struct.TYPE_23__** %6, align 8
  br label %134

161:                                              ; preds = %134
  %162 = load i32, i32* %5, align 4
  %163 = load i32, i32* @SQLITE_OK, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %169

165:                                              ; preds = %161
  %166 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %168 = call i32 @nodeRelease(%struct.TYPE_24__* %166, %struct.TYPE_23__* %167)
  store i32 %168, i32* %5, align 4
  br label %173

169:                                              ; preds = %161
  %170 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %172 = call i32 @nodeRelease(%struct.TYPE_24__* %170, %struct.TYPE_23__* %171)
  br label %173

173:                                              ; preds = %169, %165
  %174 = load i32, i32* %5, align 4
  ret i32 %174
}

declare dso_local i32 @nodeAcquire(%struct.TYPE_24__*, i32, %struct.TYPE_23__*, %struct.TYPE_23__**) #1

declare dso_local i32 @findLeafNode(%struct.TYPE_24__*, i32, %struct.TYPE_23__**, i32) #1

declare dso_local i32 @nodeRowidIndex(%struct.TYPE_24__*, %struct.TYPE_23__*, i32, i32*) #1

declare dso_local i32 @deleteCell(%struct.TYPE_24__*, %struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @nodeRelease(%struct.TYPE_24__*, %struct.TYPE_23__*) #1

declare dso_local i32 @sqlite3_bind_int64(i32, i32, i32) #1

declare dso_local i32 @sqlite3_step(i32) #1

declare dso_local i32 @sqlite3_reset(i32) #1

declare dso_local i32 @NCELL(%struct.TYPE_23__*) #1

declare dso_local i32 @nodeGetRowid(%struct.TYPE_24__*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @removeNode(%struct.TYPE_24__*, %struct.TYPE_23__*, i64) #1

declare dso_local i32 @writeInt16(i32, i64) #1

declare dso_local i32 @reinsertNodeContent(%struct.TYPE_24__*, %struct.TYPE_23__*) #1

declare dso_local i32 @sqlite3_free(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
