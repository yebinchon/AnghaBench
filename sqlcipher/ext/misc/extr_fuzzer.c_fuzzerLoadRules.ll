; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_fuzzer.c_fuzzerLoadRules.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_fuzzer.c_fuzzerLoadRules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_9__* }

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"SELECT * FROM %Q.%Q\00", align 1
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"%s: %s has %d columns, expected 4\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*, i8*, i8*, i8**)* @fuzzerLoadRules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuzzerLoadRules(i32* %0, %struct.TYPE_8__* %1, i8* %2, i8* %3, i8** %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_9__*, align 8
  %19 = alloca [15 x %struct.TYPE_9__*], align 16
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8** %4, i8*** %10, align 8
  %20 = load i32, i32* @SQLITE_OK, align 4
  store i32 %20, i32* %11, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %13, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = call i8* (i8*, i8*, i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %22)
  store i8* %23, i8** %12, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %27, i32* %11, align 4
  br label %99

28:                                               ; preds = %5
  store i32* null, i32** %15, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = call i32 @sqlite3_prepare_v2(i32* %29, i8* %30, i32 -1, i32** %15, i32 0)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @SQLITE_OK, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %28
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @sqlite3_errmsg(i32* %41)
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = call i8* (i8*, i8*, i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %40, i8* %44)
  %46 = load i8**, i8*** %10, align 8
  store i8* %45, i8** %46, align 8
  br label %90

47:                                               ; preds = %28
  %48 = load i32*, i32** %15, align 8
  %49 = call i32 @sqlite3_column_count(i32* %48)
  %50 = icmp ne i32 %49, 4
  br i1 %50, label %51, label %63

51:                                               ; preds = %47
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = load i8*, i8** %9, align 8
  %58 = load i32*, i32** %15, align 8
  %59 = call i32 @sqlite3_column_count(i32* %58)
  %60 = call i8* (i8*, i8*, i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %56, i8* %57, i32 %59)
  %61 = load i8**, i8*** %10, align 8
  store i8* %60, i8** %61, align 8
  %62 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %62, i32* %11, align 4
  br label %89

63:                                               ; preds = %47
  br label %64

64:                                               ; preds = %87, %63
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @SQLITE_OK, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load i64, i64* @SQLITE_ROW, align 8
  %70 = load i32*, i32** %15, align 8
  %71 = call i64 @sqlite3_step(i32* %70)
  %72 = icmp eq i64 %69, %71
  br label %73

73:                                               ; preds = %68, %64
  %74 = phi i1 [ false, %64 ], [ %72, %68 ]
  br i1 %74, label %75, label %88

75:                                               ; preds = %73
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %16, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %77 = load i32*, i32** %15, align 8
  %78 = load i8**, i8*** %10, align 8
  %79 = call i32 @fuzzerLoadOneRule(%struct.TYPE_8__* %76, i32* %77, %struct.TYPE_9__** %16, i8** %78)
  store i32 %79, i32* %11, align 4
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %81 = icmp ne %struct.TYPE_9__* %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %75
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  store %struct.TYPE_9__* %83, %struct.TYPE_9__** %85, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  store %struct.TYPE_9__* %86, %struct.TYPE_9__** %13, align 8
  br label %87

87:                                               ; preds = %82, %75
  br label %64

88:                                               ; preds = %73
  br label %89

89:                                               ; preds = %88, %51
  br label %90

90:                                               ; preds = %89, %35
  %91 = load i32*, i32** %15, align 8
  %92 = call i32 @sqlite3_finalize(i32* %91)
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* @SQLITE_OK, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = load i32, i32* %14, align 4
  store i32 %97, i32* %11, align 4
  br label %98

98:                                               ; preds = %96, %90
  br label %99

99:                                               ; preds = %98, %26
  %100 = load i8*, i8** %12, align 8
  %101 = call i32 @sqlite3_free(i8* %100)
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* @SQLITE_OK, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %191

105:                                              ; preds = %99
  store i32 0, i32* %17, align 4
  br label %106

106:                                              ; preds = %114, %105
  %107 = load i32, i32* %17, align 4
  %108 = zext i32 %107 to i64
  %109 = icmp ult i64 %108, 15
  br i1 %109, label %110, label %117

110:                                              ; preds = %106
  %111 = load i32, i32* %17, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds [15 x %struct.TYPE_9__*], [15 x %struct.TYPE_9__*]* %19, i64 0, i64 %112
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %113, align 8
  br label %114

114:                                              ; preds = %110
  %115 = load i32, i32* %17, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %17, align 4
  br label %106

117:                                              ; preds = %106
  br label %118

118:                                              ; preds = %153, %117
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* %119, %struct.TYPE_9__** %18, align 8
  %120 = icmp ne %struct.TYPE_9__* %119, null
  br i1 %120, label %121, label %164

121:                                              ; preds = %118
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  store %struct.TYPE_9__* %124, %struct.TYPE_9__** %13, align 8
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %126, align 8
  store i32 0, i32* %17, align 4
  br label %127

127:                                              ; preds = %150, %121
  %128 = load i32, i32* %17, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds [15 x %struct.TYPE_9__*], [15 x %struct.TYPE_9__*]* %19, i64 0, i64 %129
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %130, align 8
  %132 = icmp ne %struct.TYPE_9__* %131, null
  br i1 %132, label %133, label %137

133:                                              ; preds = %127
  %134 = load i32, i32* %17, align 4
  %135 = zext i32 %134 to i64
  %136 = icmp ult i64 %135, 14
  br label %137

137:                                              ; preds = %133, %127
  %138 = phi i1 [ false, %127 ], [ %136, %133 ]
  br i1 %138, label %139, label %153

139:                                              ; preds = %137
  %140 = load i32, i32* %17, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds [15 x %struct.TYPE_9__*], [15 x %struct.TYPE_9__*]* %19, i64 0, i64 %141
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %142, align 8
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %145 = call i8* @fuzzerMergeRules(%struct.TYPE_9__* %143, %struct.TYPE_9__* %144)
  %146 = bitcast i8* %145 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %146, %struct.TYPE_9__** %18, align 8
  %147 = load i32, i32* %17, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds [15 x %struct.TYPE_9__*], [15 x %struct.TYPE_9__*]* %19, i64 0, i64 %148
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %149, align 8
  br label %150

150:                                              ; preds = %139
  %151 = load i32, i32* %17, align 4
  %152 = add i32 %151, 1
  store i32 %152, i32* %17, align 4
  br label %127

153:                                              ; preds = %137
  %154 = load i32, i32* %17, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds [15 x %struct.TYPE_9__*], [15 x %struct.TYPE_9__*]* %19, i64 0, i64 %155
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %156, align 8
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %159 = call i8* @fuzzerMergeRules(%struct.TYPE_9__* %157, %struct.TYPE_9__* %158)
  %160 = bitcast i8* %159 to %struct.TYPE_9__*
  %161 = load i32, i32* %17, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds [15 x %struct.TYPE_9__*], [15 x %struct.TYPE_9__*]* %19, i64 0, i64 %162
  store %struct.TYPE_9__* %160, %struct.TYPE_9__** %163, align 8
  br label %118

164:                                              ; preds = %118
  %165 = getelementptr inbounds [15 x %struct.TYPE_9__*], [15 x %struct.TYPE_9__*]* %19, i64 0, i64 0
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %165, align 16
  store %struct.TYPE_9__* %166, %struct.TYPE_9__** %18, align 8
  store i32 1, i32* %17, align 4
  br label %167

167:                                              ; preds = %179, %164
  %168 = load i32, i32* %17, align 4
  %169 = zext i32 %168 to i64
  %170 = icmp ult i64 %169, 15
  br i1 %170, label %171, label %182

171:                                              ; preds = %167
  %172 = load i32, i32* %17, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds [15 x %struct.TYPE_9__*], [15 x %struct.TYPE_9__*]* %19, i64 0, i64 %173
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %174, align 8
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %177 = call i8* @fuzzerMergeRules(%struct.TYPE_9__* %175, %struct.TYPE_9__* %176)
  %178 = bitcast i8* %177 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %178, %struct.TYPE_9__** %18, align 8
  br label %179

179:                                              ; preds = %171
  %180 = load i32, i32* %17, align 4
  %181 = add i32 %180, 1
  store i32 %181, i32* %17, align 4
  br label %167

182:                                              ; preds = %167
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %184, align 8
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %187 = call i8* @fuzzerMergeRules(%struct.TYPE_9__* %185, %struct.TYPE_9__* %186)
  %188 = bitcast i8* %187 to %struct.TYPE_9__*
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 0
  store %struct.TYPE_9__* %188, %struct.TYPE_9__** %190, align 8
  br label %201

191:                                              ; preds = %99
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %193, align 8
  %195 = icmp eq %struct.TYPE_9__* %194, null
  %196 = zext i1 %195 to i32
  %197 = call i32 @assert(i32 %196)
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 0
  store %struct.TYPE_9__* %198, %struct.TYPE_9__** %200, align 8
  br label %201

201:                                              ; preds = %191, %182
  %202 = load i32, i32* %11, align 4
  ret i32 %202
}

declare dso_local i8* @sqlite3_mprintf(i8*, i8*, i8*, ...) #1

declare dso_local i32 @sqlite3_prepare_v2(i32*, i8*, i32, i32**, i32) #1

declare dso_local i32 @sqlite3_errmsg(i32*) #1

declare dso_local i32 @sqlite3_column_count(i32*) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i32 @fuzzerLoadOneRule(%struct.TYPE_8__*, i32*, %struct.TYPE_9__**, i8**) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i8* @fuzzerMergeRules(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
