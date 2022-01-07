; ModuleID = '/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_renameTableTest.c'
source_filename = "/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_renameTableTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i64 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_18__*, i64, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }

@SQLITE_LegacyAlter = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @renameTableTest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @renameTableTest(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_20__, align 8
  %15 = alloca %struct.TYPE_21__, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call %struct.TYPE_19__* @sqlite3_context_db_handle(i32* %18)
  store %struct.TYPE_19__* %19, %struct.TYPE_19__** %7, align 8
  %20 = load i32**, i32*** %6, align 8
  %21 = getelementptr inbounds i32*, i32** %20, i64 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i64 @sqlite3_value_text(i32* %22)
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** %8, align 8
  %25 = load i32**, i32*** %6, align 8
  %26 = getelementptr inbounds i32*, i32** %25, i64 1
  %27 = load i32*, i32** %26, align 8
  %28 = call i64 @sqlite3_value_text(i32* %27)
  %29 = inttoptr i64 %28 to i8*
  store i8* %29, i8** %9, align 8
  %30 = load i32**, i32*** %6, align 8
  %31 = getelementptr inbounds i32*, i32** %30, i64 4
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @sqlite3_value_int(i32* %32)
  store i32 %33, i32* %10, align 4
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @SQLITE_LegacyAlter, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %11, align 4
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %12, align 8
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @UNUSED_PARAMETER(i32 %44)
  %46 = load i8*, i8** %8, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %143

48:                                               ; preds = %3
  %49 = load i8*, i8** %9, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %143

51:                                               ; preds = %48
  %52 = load i8*, i8** %8, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @renameParseSql(%struct.TYPE_20__* %14, i8* %52, i32 1, %struct.TYPE_19__* %53, i8* %54, i32 %55)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @SQLITE_OK, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %128

60:                                               ; preds = %51
  %61 = load i32, i32* %11, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %88

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 3
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %64, align 8
  %66 = icmp ne %struct.TYPE_17__* %65, null
  br i1 %66, label %67, label %88

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 3
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %67
  %74 = call i32 @memset(%struct.TYPE_21__* %15, i32 0, i32 8)
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  store %struct.TYPE_20__* %14, %struct.TYPE_20__** %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 3
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @sqlite3SelectPrep(%struct.TYPE_20__* %14, i64 %79, %struct.TYPE_21__* %15)
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %73
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %13, align 4
  br label %87

87:                                               ; preds = %84, %73
  br label %127

88:                                               ; preds = %67, %63, %60
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 1
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %89, align 8
  %91 = icmp ne %struct.TYPE_18__* %90, null
  br i1 %91, label %92, label %126

92:                                               ; preds = %88
  %93 = load i32, i32* %11, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %92
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  br label %101

99:                                               ; preds = %95
  %100 = load i8*, i8** %8, align 8
  br label %101

101:                                              ; preds = %99, %98
  %102 = phi i8* [ null, %98 ], [ %100, %99 ]
  %103 = call i32 @renameResolveTrigger(%struct.TYPE_20__* %14, i8* %102)
  store i32 %103, i32* %13, align 4
  br label %104

104:                                              ; preds = %101, %92
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* @SQLITE_OK, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %125

108:                                              ; preds = %104
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 1
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @sqlite3SchemaToIndex(%struct.TYPE_19__* %109, i32 %113)
  store i32 %114, i32* %16, align 4
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %116 = load i8*, i8** %8, align 8
  %117 = call i32 @sqlite3FindDbName(%struct.TYPE_19__* %115, i8* %116)
  store i32 %117, i32* %17, align 4
  %118 = load i32, i32* %16, align 4
  %119 = load i32, i32* %17, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %108
  %122 = load i32*, i32** %4, align 8
  %123 = call i32 @sqlite3_result_int(i32* %122, i32 1)
  br label %124

124:                                              ; preds = %121, %108
  br label %125

125:                                              ; preds = %124, %104
  br label %126

126:                                              ; preds = %125, %88
  br label %127

127:                                              ; preds = %126, %87
  br label %128

128:                                              ; preds = %127, %51
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* @SQLITE_OK, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %141

132:                                              ; preds = %128
  %133 = load i32*, i32** %4, align 8
  %134 = load i32**, i32*** %6, align 8
  %135 = getelementptr inbounds i32*, i32** %134, i64 2
  %136 = load i32*, i32** %135, align 8
  %137 = load i32**, i32*** %6, align 8
  %138 = getelementptr inbounds i32*, i32** %137, i64 3
  %139 = load i32*, i32** %138, align 8
  %140 = call i32 @renameColumnParseError(i32* %133, i32 1, i32* %136, i32* %139, %struct.TYPE_20__* %14)
  br label %141

141:                                              ; preds = %132, %128
  %142 = call i32 @renameParseCleanup(%struct.TYPE_20__* %14)
  br label %143

143:                                              ; preds = %141, %48, %3
  %144 = load i64, i64* %12, align 8
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 1
  store i64 %144, i64* %146, align 8
  ret void
}

declare dso_local %struct.TYPE_19__* @sqlite3_context_db_handle(i32*) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i32 @sqlite3_value_int(i32*) #1

declare dso_local i32 @UNUSED_PARAMETER(i32) #1

declare dso_local i32 @renameParseSql(%struct.TYPE_20__*, i8*, i32, %struct.TYPE_19__*, i8*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @sqlite3SelectPrep(%struct.TYPE_20__*, i64, %struct.TYPE_21__*) #1

declare dso_local i32 @renameResolveTrigger(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @sqlite3SchemaToIndex(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @sqlite3FindDbName(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @sqlite3_result_int(i32*, i32) #1

declare dso_local i32 @renameColumnParseError(i32*, i32, i32*, i32*, %struct.TYPE_20__*) #1

declare dso_local i32 @renameParseCleanup(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
