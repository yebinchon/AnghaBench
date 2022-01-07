; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_config.c_sqlite3Fts5ConfigSetValue.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_config.c_sqlite3Fts5ConfigSetValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i8*, i8* }

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"pgsz\00", align 1
@SQLITE_INTEGER = common dso_local global i64 0, align 8
@FTS5_MAX_PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"hashsize\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"automerge\00", align 1
@FTS5_DEFAULT_AUTOMERGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"usermerge\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"crisismerge\00", align 1
@FTS5_DEFAULT_CRISISMERGE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"rank\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3Fts5ConfigSetValue(%struct.TYPE_3__* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %18 = load i32, i32* @SQLITE_OK, align 4
  store i32 %18, i32* %9, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = call i64 @sqlite3_stricmp(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %21 = icmp eq i64 0, %20
  br i1 %21, label %22, label %44

22:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  %23 = load i64, i64* @SQLITE_INTEGER, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = call i64 @sqlite3_value_numeric_type(i32* %24)
  %26 = icmp eq i64 %23, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @sqlite3_value_int(i32* %28)
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %27, %22
  %31 = load i32, i32* %10, align 4
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @FTS5_MAX_PAGE_SIZE, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33, %30
  %38 = load i32*, i32** %8, align 8
  store i32 1, i32* %38, align 4
  br label %43

39:                                               ; preds = %33
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %39, %37
  br label %192

44:                                               ; preds = %4
  %45 = load i8*, i8** %6, align 8
  %46 = call i64 @sqlite3_stricmp(i8* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %47 = icmp eq i64 0, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %44
  store i32 -1, i32* %11, align 4
  %49 = load i64, i64* @SQLITE_INTEGER, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = call i64 @sqlite3_value_numeric_type(i32* %50)
  %52 = icmp eq i64 %49, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @sqlite3_value_int(i32* %54)
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %53, %48
  %57 = load i32, i32* %11, align 4
  %58 = icmp sle i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32*, i32** %8, align 8
  store i32 1, i32* %60, align 4
  br label %65

61:                                               ; preds = %56
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %61, %59
  br label %191

66:                                               ; preds = %44
  %67 = load i8*, i8** %6, align 8
  %68 = call i64 @sqlite3_stricmp(i8* %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %69 = icmp eq i64 0, %68
  br i1 %69, label %70, label %96

70:                                               ; preds = %66
  store i32 -1, i32* %12, align 4
  %71 = load i64, i64* @SQLITE_INTEGER, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = call i64 @sqlite3_value_numeric_type(i32* %72)
  %74 = icmp eq i64 %71, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 @sqlite3_value_int(i32* %76)
  store i32 %77, i32* %12, align 4
  br label %78

78:                                               ; preds = %75, %70
  %79 = load i32, i32* %12, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %12, align 4
  %83 = icmp sgt i32 %82, 64
  br i1 %83, label %84, label %86

84:                                               ; preds = %81, %78
  %85 = load i32*, i32** %8, align 8
  store i32 1, i32* %85, align 4
  br label %95

86:                                               ; preds = %81
  %87 = load i32, i32* %12, align 4
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = load i32, i32* @FTS5_DEFAULT_AUTOMERGE, align 4
  store i32 %90, i32* %12, align 4
  br label %91

91:                                               ; preds = %89, %86
  %92 = load i32, i32* %12, align 4
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  br label %95

95:                                               ; preds = %91, %84
  br label %190

96:                                               ; preds = %66
  %97 = load i8*, i8** %6, align 8
  %98 = call i64 @sqlite3_stricmp(i8* %97, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %99 = icmp eq i64 0, %98
  br i1 %99, label %100, label %121

100:                                              ; preds = %96
  store i32 -1, i32* %13, align 4
  %101 = load i64, i64* @SQLITE_INTEGER, align 8
  %102 = load i32*, i32** %7, align 8
  %103 = call i64 @sqlite3_value_numeric_type(i32* %102)
  %104 = icmp eq i64 %101, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i32*, i32** %7, align 8
  %107 = call i32 @sqlite3_value_int(i32* %106)
  store i32 %107, i32* %13, align 4
  br label %108

108:                                              ; preds = %105, %100
  %109 = load i32, i32* %13, align 4
  %110 = icmp slt i32 %109, 2
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %13, align 4
  %113 = icmp sgt i32 %112, 16
  br i1 %113, label %114, label %116

114:                                              ; preds = %111, %108
  %115 = load i32*, i32** %8, align 8
  store i32 1, i32* %115, align 4
  br label %120

116:                                              ; preds = %111
  %117 = load i32, i32* %13, align 4
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 4
  br label %120

120:                                              ; preds = %116, %114
  br label %189

121:                                              ; preds = %96
  %122 = load i8*, i8** %6, align 8
  %123 = call i64 @sqlite3_stricmp(i8* %122, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %124 = icmp eq i64 0, %123
  br i1 %124, label %125, label %148

125:                                              ; preds = %121
  store i32 -1, i32* %14, align 4
  %126 = load i64, i64* @SQLITE_INTEGER, align 8
  %127 = load i32*, i32** %7, align 8
  %128 = call i64 @sqlite3_value_numeric_type(i32* %127)
  %129 = icmp eq i64 %126, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %125
  %131 = load i32*, i32** %7, align 8
  %132 = call i32 @sqlite3_value_int(i32* %131)
  store i32 %132, i32* %14, align 4
  br label %133

133:                                              ; preds = %130, %125
  %134 = load i32, i32* %14, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %133
  %137 = load i32*, i32** %8, align 8
  store i32 1, i32* %137, align 4
  br label %147

138:                                              ; preds = %133
  %139 = load i32, i32* %14, align 4
  %140 = icmp sle i32 %139, 1
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  %142 = load i32, i32* @FTS5_DEFAULT_CRISISMERGE, align 4
  store i32 %142, i32* %14, align 4
  br label %143

143:                                              ; preds = %141, %138
  %144 = load i32, i32* %14, align 4
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 4
  store i32 %144, i32* %146, align 8
  br label %147

147:                                              ; preds = %143, %136
  br label %188

148:                                              ; preds = %121
  %149 = load i8*, i8** %6, align 8
  %150 = call i64 @sqlite3_stricmp(i8* %149, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %151 = icmp eq i64 0, %150
  br i1 %151, label %152, label %185

152:                                              ; preds = %148
  %153 = load i32*, i32** %7, align 8
  %154 = call i64 @sqlite3_value_text(i32* %153)
  %155 = inttoptr i64 %154 to i8*
  store i8* %155, i8** %15, align 8
  %156 = load i8*, i8** %15, align 8
  %157 = call i32 @sqlite3Fts5ConfigParseRank(i8* %156, i8** %16, i8** %17)
  store i32 %157, i32* %9, align 4
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* @SQLITE_OK, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %176

161:                                              ; preds = %152
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 5
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 @sqlite3_free(i8* %164)
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 6
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 @sqlite3_free(i8* %168)
  %170 = load i8*, i8** %16, align 8
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 5
  store i8* %170, i8** %172, align 8
  %173 = load i8*, i8** %17, align 8
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 6
  store i8* %173, i8** %175, align 8
  br label %184

176:                                              ; preds = %152
  %177 = load i32, i32* %9, align 4
  %178 = load i32, i32* @SQLITE_ERROR, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %176
  %181 = load i32, i32* @SQLITE_OK, align 4
  store i32 %181, i32* %9, align 4
  %182 = load i32*, i32** %8, align 8
  store i32 1, i32* %182, align 4
  br label %183

183:                                              ; preds = %180, %176
  br label %184

184:                                              ; preds = %183, %161
  br label %187

185:                                              ; preds = %148
  %186 = load i32*, i32** %8, align 8
  store i32 1, i32* %186, align 4
  br label %187

187:                                              ; preds = %185, %184
  br label %188

188:                                              ; preds = %187, %147
  br label %189

189:                                              ; preds = %188, %120
  br label %190

190:                                              ; preds = %189, %95
  br label %191

191:                                              ; preds = %190, %65
  br label %192

192:                                              ; preds = %191, %43
  %193 = load i32, i32* %9, align 4
  ret i32 %193
}

declare dso_local i64 @sqlite3_stricmp(i8*, i8*) #1

declare dso_local i64 @sqlite3_value_numeric_type(i32*) #1

declare dso_local i32 @sqlite3_value_int(i32*) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i32 @sqlite3Fts5ConfigParseRank(i8*, i8**, i8**) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
