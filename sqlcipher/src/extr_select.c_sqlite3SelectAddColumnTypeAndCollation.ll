; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_select.c_sqlite3SelectAddColumnTypeAndCollation.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_select.c_sqlite3SelectAddColumnTypeAndCollation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64, i8*, i64, i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { i32, %struct.ExprList_item* }
%struct.ExprList_item = type { i32* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_25__ = type { i32 }

@SF_Resolved = common dso_local global i32 0, align 4
@COLFLAG_HASTYPE = common dso_local global i32 0, align 4
@SQLITE_AFF_BLOB = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3SelectAddColumnTypeAndCollation(%struct.TYPE_22__* %0, %struct.TYPE_20__* %1, %struct.TYPE_21__* %2) #0 {
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_23__, align 4
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.ExprList_item*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %6, align 8
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  store %struct.TYPE_19__* %19, %struct.TYPE_19__** %7, align 8
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %21 = icmp ne %struct.TYPE_21__* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SF_Resolved, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %34, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %3
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br label %46

46:                                               ; preds = %41, %3
  %47 = phi i1 [ true, %3 ], [ %45, %41 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %167

55:                                               ; preds = %46
  %56 = call i32 @memset(%struct.TYPE_23__* %8, i32 0, i32 4)
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 0
  store i32 %59, i32* %60, align 4
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 1
  %65 = load %struct.ExprList_item*, %struct.ExprList_item** %64, align 8
  store %struct.ExprList_item* %65, %struct.ExprList_item** %13, align 8
  store i32 0, i32* %11, align 4
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %67, align 8
  store %struct.TYPE_24__* %68, %struct.TYPE_24__** %9, align 8
  br label %69

69:                                               ; preds = %159, %55
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %164

75:                                               ; preds = %69
  %76 = load %struct.ExprList_item*, %struct.ExprList_item** %13, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %76, i64 %78
  %80 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  store i32* %81, i32** %12, align 8
  %82 = load i32*, i32** %12, align 8
  %83 = call i8* @columnType(%struct.TYPE_23__* %8, i32* %82, i32 0, i32 0, i32 0)
  store i8* %83, i8** %14, align 8
  %84 = load i32*, i32** %12, align 8
  %85 = call i64 @sqlite3ExprAffinity(i32* %84)
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load i8*, i8** %14, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %130

90:                                               ; preds = %75
  %91 = load i8*, i8** %14, align 8
  %92 = call i32 @sqlite3Strlen30(i8* %91)
  store i32 %92, i32* %16, align 4
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @sqlite3Strlen30(i8* %95)
  store i32 %96, i32* %15, align 4
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* %16, align 4
  %103 = add nsw i32 %101, %102
  %104 = add nsw i32 %103, 2
  %105 = call i8* @sqlite3DbReallocOrFree(%struct.TYPE_19__* %97, i8* %100, i32 %104)
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 1
  store i8* %105, i8** %107, align 8
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %129

112:                                              ; preds = %90
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = load i32, i32* %15, align 4
  %117 = add nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %115, i64 %118
  %120 = load i8*, i8** %14, align 8
  %121 = load i32, i32* %16, align 4
  %122 = add nsw i32 %121, 1
  %123 = call i32 @memcpy(i8* %119, i8* %120, i32 %122)
  %124 = load i32, i32* @COLFLAG_HASTYPE, align 4
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 8
  br label %129

129:                                              ; preds = %112, %90
  br label %130

130:                                              ; preds = %129, %75
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %130
  %136 = load i64, i64* @SQLITE_AFF_BLOB, align 8
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %137, i32 0, i32 0
  store i64 %136, i64* %138, align 8
  br label %139

139:                                              ; preds = %135, %130
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %141 = load i32*, i32** %12, align 8
  %142 = call %struct.TYPE_25__* @sqlite3ExprCollSeq(%struct.TYPE_22__* %140, i32* %141)
  store %struct.TYPE_25__* %142, %struct.TYPE_25__** %10, align 8
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %144 = icmp ne %struct.TYPE_25__* %143, null
  br i1 %144, label %145, label %158

145:                                              ; preds = %139
  %146 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %145
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %152 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i64 @sqlite3DbStrDup(%struct.TYPE_19__* %151, i32 %154)
  %156 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %156, i32 0, i32 2
  store i64 %155, i64* %157, align 8
  br label %158

158:                                              ; preds = %150, %145, %139
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %11, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %11, align 4
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %162, i32 1
  store %struct.TYPE_24__* %163, %struct.TYPE_24__** %9, align 8
  br label %69

164:                                              ; preds = %69
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 1
  store i32 1, i32* %166, align 4
  br label %167

167:                                              ; preds = %164, %54
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i8* @columnType(%struct.TYPE_23__*, i32*, i32, i32, i32) #1

declare dso_local i64 @sqlite3ExprAffinity(i32*) #1

declare dso_local i32 @sqlite3Strlen30(i8*) #1

declare dso_local i8* @sqlite3DbReallocOrFree(%struct.TYPE_19__*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_25__* @sqlite3ExprCollSeq(%struct.TYPE_22__*, i32*) #1

declare dso_local i64 @sqlite3DbStrDup(%struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
