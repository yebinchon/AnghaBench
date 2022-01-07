; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_catalog.c_ts_catalog_table_info_init.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_catalog.c_ts_catalog_table_info_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32, i64*, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i32* }

@InvalidOid = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"OID lookup failed for table \22%s.%s\22\00", align 1
@_MAX_TABLE_INDEXES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"OID lookup failed for table index \22%s\22\00", align 1
@NoLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ts_catalog_table_info_init(%struct.TYPE_9__* %0, i32 %1, %struct.TYPE_7__* %2, %struct.TYPE_8__* %3, i8** %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %9, align 8
  store i8** %4, i8*** %10, align 8
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %168, %5
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %171

22:                                               ; preds = %18
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @get_namespace_oid(i32 %28, i32 0)
  store i64 %29, i64* %12, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %12, align 8
  %37 = call i64 @get_relname_relid(i32 %35, i64 %36)
  store i64 %37, i64* %13, align 8
  %38 = load i64, i64* %13, align 8
  %39 = load i64, i64* @InvalidOid, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %22
  %42 = load i32, i32* @ERROR, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i32, i8*, i32, ...) @elog(i32 %42, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %54)
  br label %56

56:                                               ; preds = %41, %22
  %57 = load i64, i64* %13, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 4
  store i64 %57, i64* %62, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %15, align 8
  %69 = load i64, i64* %15, align 8
  %70 = load i64, i64* @_MAX_TABLE_INDEXES, align 8
  %71 = icmp sle i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @Assert(i32 %72)
  store i64 0, i64* %16, align 8
  br label %74

74:                                               ; preds = %115, %56
  %75 = load i64, i64* %16, align 8
  %76 = load i64, i64* %15, align 8
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %78, label %118

78:                                               ; preds = %74
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* %16, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i64, i64* %12, align 8
  %89 = call i64 @get_relname_relid(i32 %87, i64 %88)
  store i64 %89, i64* %13, align 8
  %90 = load i64, i64* %13, align 8
  %91 = load i64, i64* @InvalidOid, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %105

93:                                               ; preds = %78
  %94 = load i32, i32* @ERROR, align 4
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* %16, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i32, i8*, i32, ...) @elog(i32 %94, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %93, %78
  %106 = load i64, i64* %13, align 8
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 3
  %112 = load i64*, i64** %111, align 8
  %113 = load i64, i64* %16, align 8
  %114 = getelementptr inbounds i64, i64* %112, i64 %113
  store i64 %106, i64* %114, align 8
  br label %115

115:                                              ; preds = %105
  %116 = load i64, i64* %16, align 8
  %117 = add nsw i64 %116, 1
  store i64 %117, i64* %16, align 8
  br label %74

118:                                              ; preds = %74
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %126 = load i32, i32* %11, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 2
  store i32 %124, i32* %129, align 4
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %137 = load i32, i32* %11, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 1
  store i32 %135, i32* %140, align 8
  %141 = load i8**, i8*** %10, align 8
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8*, i8** %141, i64 %143
  %145 = load i8*, i8** %144, align 8
  store i8* %145, i8** %14, align 8
  %146 = load i8*, i8** %14, align 8
  %147 = icmp ne i8* null, %146
  br i1 %147, label %148, label %160

148:                                              ; preds = %118
  %149 = load i8*, i8** %14, align 8
  %150 = call i32 @stringToQualifiedNameList(i8* %149)
  %151 = call i32* @makeRangeVarFromNameList(i32 %150)
  store i32* %151, i32** %17, align 8
  %152 = load i32*, i32** %17, align 8
  %153 = load i32, i32* @NoLock, align 4
  %154 = call i64 @RangeVarGetRelid(i32* %152, i32 %153, i32 0)
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %156 = load i32, i32* %11, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  store i64 %154, i64* %159, align 8
  br label %167

160:                                              ; preds = %118
  %161 = load i64, i64* @InvalidOid, align 8
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %163 = load i32, i32* %11, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  store i64 %161, i64* %166, align 8
  br label %167

167:                                              ; preds = %160, %148
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %11, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %11, align 4
  br label %18

171:                                              ; preds = %18
  ret void
}

declare dso_local i64 @get_namespace_oid(i32, i32) #1

declare dso_local i64 @get_relname_relid(i32, i64) #1

declare dso_local i32 @elog(i32, i8*, i32, ...) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @makeRangeVarFromNameList(i32) #1

declare dso_local i32 @stringToQualifiedNameList(i8*) #1

declare dso_local i64 @RangeVarGetRelid(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
