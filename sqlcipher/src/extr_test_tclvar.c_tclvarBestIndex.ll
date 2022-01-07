; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_tclvar.c_tclvarBestIndex.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_tclvar.c_tclvarBestIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i32, %struct.sqlite3_index_constraint_usage*, %struct.sqlite3_index_constraint* }
%struct.sqlite3_index_constraint_usage = type { i32, i32 }
%struct.sqlite3_index_constraint = type { i64, i32, i64 }
%struct.TYPE_4__ = type { i32 }

@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_INDEX_CONSTRAINT_EQ = common dso_local global i64 0, align 8
@TCLVAR_NAME_EQ = common dso_local global i32 0, align 4
@SQLITE_INDEX_CONSTRAINT_MATCH = common dso_local global i64 0, align 8
@TCLVAR_NAME_MATCH = common dso_local global i32 0, align 4
@SQLITE_INDEX_CONSTRAINT_GLOB = common dso_local global i64 0, align 8
@TCLVAR_VALUE_GLOB = common dso_local global i32 0, align 4
@SQLITE_INDEX_CONSTRAINT_REGEXP = common dso_local global i64 0, align 8
@TCLVAR_VALUE_REGEXP = common dso_local global i32 0, align 4
@SQLITE_INDEX_CONSTRAINT_LIKE = common dso_local global i64 0, align 8
@TCLVAR_VALUE_LIKE = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*)* @tclvarBestIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tclvarBestIndex(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sqlite3_index_constraint*, align 8
  %11 = alloca %struct.sqlite3_index_constraint_usage*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = bitcast i32* %12 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %6, align 8
  %14 = call i8* @sqlite3_malloc(i32 32)
  store i8* %14, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %18, i32* %3, align 4
  br label %192

19:                                               ; preds = %2
  %20 = load i8*, i8** %8, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  store i8 0, i8* %21, align 1
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %182, %19
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %185

28:                                               ; preds = %22
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 4
  %31 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %31, i64 %33
  store %struct.sqlite3_index_constraint* %34, %struct.sqlite3_index_constraint** %10, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 3
  %37 = load %struct.sqlite3_index_constraint_usage*, %struct.sqlite3_index_constraint_usage** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, %struct.sqlite3_index_constraint_usage* %37, i64 %39
  store %struct.sqlite3_index_constraint_usage* %40, %struct.sqlite3_index_constraint_usage** %11, align 8
  %41 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %10, align 8
  %42 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %181

45:                                               ; preds = %28
  %46 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %10, align 8
  %47 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SQLITE_INDEX_CONSTRAINT_EQ, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %69

51:                                               ; preds = %45
  %52 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %10, align 8
  %53 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %51
  %57 = load i8*, i8** %8, align 8
  %58 = load i32, i32* @TCLVAR_NAME_EQ, align 4
  %59 = call i64 @tclvarAddToIdxstr(i8* %57, i32 %58)
  %60 = icmp eq i64 0, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  %64 = load %struct.sqlite3_index_constraint_usage*, %struct.sqlite3_index_constraint_usage** %11, align 8
  %65 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, %struct.sqlite3_index_constraint_usage* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load %struct.sqlite3_index_constraint_usage*, %struct.sqlite3_index_constraint_usage** %11, align 8
  %67 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, %struct.sqlite3_index_constraint_usage* %66, i32 0, i32 1
  store i32 0, i32* %67, align 4
  br label %68

68:                                               ; preds = %61, %56
  br label %69

69:                                               ; preds = %68, %51, %45
  %70 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %10, align 8
  %71 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @SQLITE_INDEX_CONSTRAINT_MATCH, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %93

75:                                               ; preds = %69
  %76 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %10, align 8
  %77 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %75
  %81 = load i8*, i8** %8, align 8
  %82 = load i32, i32* @TCLVAR_NAME_MATCH, align 4
  %83 = call i64 @tclvarAddToIdxstr(i8* %81, i32 %82)
  %84 = icmp eq i64 0, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %80
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  %88 = load %struct.sqlite3_index_constraint_usage*, %struct.sqlite3_index_constraint_usage** %11, align 8
  %89 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, %struct.sqlite3_index_constraint_usage* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  %90 = load %struct.sqlite3_index_constraint_usage*, %struct.sqlite3_index_constraint_usage** %11, align 8
  %91 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, %struct.sqlite3_index_constraint_usage* %90, i32 0, i32 1
  store i32 1, i32* %91, align 4
  br label %92

92:                                               ; preds = %85, %80
  br label %93

93:                                               ; preds = %92, %75, %69
  %94 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %10, align 8
  %95 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @SQLITE_INDEX_CONSTRAINT_GLOB, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %122

99:                                               ; preds = %93
  %100 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %10, align 8
  %101 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %102, 2
  br i1 %103, label %104, label %122

104:                                              ; preds = %99
  %105 = load i8*, i8** %8, align 8
  %106 = load i32, i32* @TCLVAR_VALUE_GLOB, align 4
  %107 = call i64 @tclvarAddToIdxstr(i8* %105, i32 %106)
  %108 = icmp eq i64 0, %107
  br i1 %108, label %109, label %121

109:                                              ; preds = %104
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %9, align 4
  %112 = load %struct.sqlite3_index_constraint_usage*, %struct.sqlite3_index_constraint_usage** %11, align 8
  %113 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, %struct.sqlite3_index_constraint_usage* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @tclvarSetOmit(i32 %116)
  %118 = ptrtoint i8* %117 to i32
  %119 = load %struct.sqlite3_index_constraint_usage*, %struct.sqlite3_index_constraint_usage** %11, align 8
  %120 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, %struct.sqlite3_index_constraint_usage* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %109, %104
  br label %122

122:                                              ; preds = %121, %99, %93
  %123 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %10, align 8
  %124 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @SQLITE_INDEX_CONSTRAINT_REGEXP, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %151

128:                                              ; preds = %122
  %129 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %10, align 8
  %130 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = icmp eq i32 %131, 2
  br i1 %132, label %133, label %151

133:                                              ; preds = %128
  %134 = load i8*, i8** %8, align 8
  %135 = load i32, i32* @TCLVAR_VALUE_REGEXP, align 4
  %136 = call i64 @tclvarAddToIdxstr(i8* %134, i32 %135)
  %137 = icmp eq i64 0, %136
  br i1 %137, label %138, label %150

138:                                              ; preds = %133
  %139 = load i32, i32* %9, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %9, align 4
  %141 = load %struct.sqlite3_index_constraint_usage*, %struct.sqlite3_index_constraint_usage** %11, align 8
  %142 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, %struct.sqlite3_index_constraint_usage* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 4
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i8* @tclvarSetOmit(i32 %145)
  %147 = ptrtoint i8* %146 to i32
  %148 = load %struct.sqlite3_index_constraint_usage*, %struct.sqlite3_index_constraint_usage** %11, align 8
  %149 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, %struct.sqlite3_index_constraint_usage* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  br label %150

150:                                              ; preds = %138, %133
  br label %151

151:                                              ; preds = %150, %128, %122
  %152 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %10, align 8
  %153 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @SQLITE_INDEX_CONSTRAINT_LIKE, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %180

157:                                              ; preds = %151
  %158 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %10, align 8
  %159 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = icmp eq i32 %160, 2
  br i1 %161, label %162, label %180

162:                                              ; preds = %157
  %163 = load i8*, i8** %8, align 8
  %164 = load i32, i32* @TCLVAR_VALUE_LIKE, align 4
  %165 = call i64 @tclvarAddToIdxstr(i8* %163, i32 %164)
  %166 = icmp eq i64 0, %165
  br i1 %166, label %167, label %179

167:                                              ; preds = %162
  %168 = load i32, i32* %9, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %9, align 4
  %170 = load %struct.sqlite3_index_constraint_usage*, %struct.sqlite3_index_constraint_usage** %11, align 8
  %171 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, %struct.sqlite3_index_constraint_usage* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 4
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i8* @tclvarSetOmit(i32 %174)
  %176 = ptrtoint i8* %175 to i32
  %177 = load %struct.sqlite3_index_constraint_usage*, %struct.sqlite3_index_constraint_usage** %11, align 8
  %178 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, %struct.sqlite3_index_constraint_usage* %177, i32 0, i32 1
  store i32 %176, i32* %178, align 4
  br label %179

179:                                              ; preds = %167, %162
  br label %180

180:                                              ; preds = %179, %157, %151
  br label %181

181:                                              ; preds = %180, %28
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %7, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %7, align 4
  br label %22

185:                                              ; preds = %22
  %186 = load i8*, i8** %8, align 8
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 1
  store i8* %186, i8** %188, align 8
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 2
  store i32 1, i32* %190, align 8
  %191 = load i32, i32* @SQLITE_OK, align 4
  store i32 %191, i32* %3, align 4
  br label %192

192:                                              ; preds = %185, %17
  %193 = load i32, i32* %3, align 4
  ret i32 %193
}

declare dso_local i8* @sqlite3_malloc(i32) #1

declare dso_local i64 @tclvarAddToIdxstr(i8*, i32) #1

declare dso_local i8* @tclvarSetOmit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
