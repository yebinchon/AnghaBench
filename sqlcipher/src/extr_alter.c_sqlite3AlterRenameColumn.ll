; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_alter.c_sqlite3AlterRenameColumn.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_alter.c_sqlite3AlterRenameColumn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { %struct.TYPE_32__* }
%struct.TYPE_32__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i8* }
%struct.TYPE_35__ = type { i32* }
%struct.TYPE_33__ = type { i64, i32* }
%struct.TYPE_34__ = type { i32, i32, %struct.TYPE_31__*, i32 }
%struct.TYPE_31__ = type { i32 }

@SQLITE_OK = common dso_local global i64 0, align 8
@SQLITE_ALTER_TABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"no such column: \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [194 x i8] c"UPDATE \22%w\22.%s SET sql = sqlite_rename_column(sql, type, name, %Q, %Q, %d, %Q, %d, %d) WHERE name NOT LIKE 'sqlite_%%' AND (type != 'index' OR tbl_name = %Q) AND sql NOT LIKE 'create virtual%%'\00", align 1
@MASTER_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [120 x i8] c"UPDATE temp.%s SET sql = sqlite_rename_column(sql, type, name, %Q, %Q, %d, %Q, %d, 1) WHERE type IN ('trigger', 'view')\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3AlterRenameColumn(%struct.TYPE_36__* %0, %struct.TYPE_35__* %1, %struct.TYPE_33__* %2, %struct.TYPE_33__* %3) #0 {
  %5 = alloca %struct.TYPE_36__*, align 8
  %6 = alloca %struct.TYPE_35__*, align 8
  %7 = alloca %struct.TYPE_33__*, align 8
  %8 = alloca %struct.TYPE_33__*, align 8
  %9 = alloca %struct.TYPE_32__*, align 8
  %10 = alloca %struct.TYPE_34__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_36__* %0, %struct.TYPE_36__** %5, align 8
  store %struct.TYPE_35__* %1, %struct.TYPE_35__** %6, align 8
  store %struct.TYPE_33__* %2, %struct.TYPE_33__** %7, align 8
  store %struct.TYPE_33__* %3, %struct.TYPE_33__** %8, align 8
  %17 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  store %struct.TYPE_32__* %19, %struct.TYPE_32__** %9, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  %20 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %21 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = call %struct.TYPE_34__* @sqlite3LocateTableItem(%struct.TYPE_36__* %20, i32 0, i32* %24)
  store %struct.TYPE_34__* %25, %struct.TYPE_34__** %10, align 8
  %26 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %27 = icmp ne %struct.TYPE_34__* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %4
  br label %175

29:                                               ; preds = %4
  %30 = load i64, i64* @SQLITE_OK, align 8
  %31 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %32 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %33 = call i64 @isAlterableTable(%struct.TYPE_36__* %31, %struct.TYPE_34__* %32)
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %175

36:                                               ; preds = %29
  %37 = load i64, i64* @SQLITE_OK, align 8
  %38 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %39 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %40 = call i64 @isRealTable(%struct.TYPE_36__* %38, %struct.TYPE_34__* %39)
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %175

43:                                               ; preds = %36
  %44 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %45 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @sqlite3SchemaToIndex(%struct.TYPE_32__* %44, i32 %47)
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = icmp sge i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_30__*, %struct.TYPE_30__** %54, align 8
  %56 = load i32, i32* %15, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %14, align 8
  %61 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %62 = load i32, i32* @SQLITE_ALTER_TABLE, align 4
  %63 = load i8*, i8** %14, align 8
  %64 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @sqlite3AuthCheck(%struct.TYPE_36__* %61, i32 %62, i8* %63, i32 %66, i32 0)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %43
  br label %175

70:                                               ; preds = %43
  %71 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %72 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %73 = call i8* @sqlite3NameFromToken(%struct.TYPE_32__* %71, %struct.TYPE_33__* %72)
  store i8* %73, i8** %12, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %70
  br label %175

77:                                               ; preds = %70
  store i32 0, i32* %11, align 4
  br label %78

78:                                               ; preds = %98, %77
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %101

84:                                               ; preds = %78
  %85 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_31__*, %struct.TYPE_31__** %86, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i8*, i8** %12, align 8
  %94 = call i64 @sqlite3StrICmp(i32 %92, i8* %93)
  %95 = icmp eq i64 0, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %84
  br label %101

97:                                               ; preds = %84
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %11, align 4
  br label %78

101:                                              ; preds = %96, %78
  %102 = load i32, i32* %11, align 4
  %103 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %102, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %109 = load i8*, i8** %12, align 8
  %110 = call i32 @sqlite3ErrorMsg(%struct.TYPE_36__* %108, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %109)
  br label %175

111:                                              ; preds = %101
  %112 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %113 = call i32 @sqlite3MayAbort(%struct.TYPE_36__* %112)
  %114 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %115 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %116 = call i8* @sqlite3NameFromToken(%struct.TYPE_32__* %114, %struct.TYPE_33__* %115)
  store i8* %116, i8** %13, align 8
  %117 = load i8*, i8** %13, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %111
  br label %175

120:                                              ; preds = %111
  %121 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp sgt i64 %123, 0
  %125 = zext i1 %124 to i32
  %126 = call i32 @assert(i32 %125)
  %127 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @sqlite3Isquote(i32 %131)
  store i32 %132, i32* %16, align 4
  %133 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %134 = load i8*, i8** %14, align 8
  %135 = load i32, i32* @MASTER_NAME, align 4
  %136 = sext i32 %135 to i64
  %137 = inttoptr i64 %136 to i8*
  %138 = load i8*, i8** %14, align 8
  %139 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %11, align 4
  %143 = load i8*, i8** %13, align 8
  %144 = load i32, i32* %16, align 4
  %145 = load i32, i32* %15, align 4
  %146 = icmp eq i32 %145, 1
  %147 = zext i1 %146 to i32
  %148 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 (%struct.TYPE_36__*, i8*, i8*, i8*, i8*, i32, ...) @sqlite3NestedParse(%struct.TYPE_36__* %133, i8* getelementptr inbounds ([194 x i8], [194 x i8]* @.str.1, i64 0, i64 0), i8* %134, i8* %137, i8* %138, i32 %141, i32 %142, i8* %143, i32 %144, i32 %147, i32 %150)
  %152 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %153 = load i32, i32* @MASTER_NAME, align 4
  %154 = sext i32 %153 to i64
  %155 = inttoptr i64 %154 to i8*
  %156 = load i8*, i8** %14, align 8
  %157 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = sext i32 %159 to i64
  %161 = inttoptr i64 %160 to i8*
  %162 = load i32, i32* %11, align 4
  %163 = load i8*, i8** %13, align 8
  %164 = load i32, i32* %16, align 4
  %165 = call i32 (%struct.TYPE_36__*, i8*, i8*, i8*, i8*, i32, ...) @sqlite3NestedParse(%struct.TYPE_36__* %152, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.2, i64 0, i64 0), i8* %155, i8* %156, i8* %161, i32 %162, i8* %163, i32 %164)
  %166 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %167 = load i32, i32* %15, align 4
  %168 = call i32 @renameReloadSchema(%struct.TYPE_36__* %166, i32 %167)
  %169 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %170 = load i8*, i8** %14, align 8
  %171 = load i32, i32* %15, align 4
  %172 = icmp eq i32 %171, 1
  %173 = zext i1 %172 to i32
  %174 = call i32 @renameTestSchema(%struct.TYPE_36__* %169, i8* %170, i32 %173)
  br label %175

175:                                              ; preds = %120, %119, %107, %76, %69, %42, %35, %28
  %176 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %177 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %178 = call i32 @sqlite3SrcListDelete(%struct.TYPE_32__* %176, %struct.TYPE_35__* %177)
  %179 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %180 = load i8*, i8** %12, align 8
  %181 = call i32 @sqlite3DbFree(%struct.TYPE_32__* %179, i8* %180)
  %182 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %183 = load i8*, i8** %13, align 8
  %184 = call i32 @sqlite3DbFree(%struct.TYPE_32__* %182, i8* %183)
  ret void
}

declare dso_local %struct.TYPE_34__* @sqlite3LocateTableItem(%struct.TYPE_36__*, i32, i32*) #1

declare dso_local i64 @isAlterableTable(%struct.TYPE_36__*, %struct.TYPE_34__*) #1

declare dso_local i64 @isRealTable(%struct.TYPE_36__*, %struct.TYPE_34__*) #1

declare dso_local i32 @sqlite3SchemaToIndex(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3AuthCheck(%struct.TYPE_36__*, i32, i8*, i32, i32) #1

declare dso_local i8* @sqlite3NameFromToken(%struct.TYPE_32__*, %struct.TYPE_33__*) #1

declare dso_local i64 @sqlite3StrICmp(i32, i8*) #1

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_36__*, i8*, i8*) #1

declare dso_local i32 @sqlite3MayAbort(%struct.TYPE_36__*) #1

declare dso_local i32 @sqlite3Isquote(i32) #1

declare dso_local i32 @sqlite3NestedParse(%struct.TYPE_36__*, i8*, i8*, i8*, i8*, i32, ...) #1

declare dso_local i32 @renameReloadSchema(%struct.TYPE_36__*, i32) #1

declare dso_local i32 @renameTestSchema(%struct.TYPE_36__*, i8*, i32) #1

declare dso_local i32 @sqlite3SrcListDelete(%struct.TYPE_32__*, %struct.TYPE_35__*) #1

declare dso_local i32 @sqlite3DbFree(%struct.TYPE_32__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
