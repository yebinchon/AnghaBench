; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_completion.c_completionNext.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_completion.c_completionNext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i64, i64, i64, i32, i32, i32, i32 }

@COMPLETION_EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"PRAGMA database_list\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SQLITE_ROW = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"%z%sSELECT name FROM \22%w\22.sqlite_master\00", align 1
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c" UNION \00", align 1
@.str.4 = private unnamed_addr constant [114 x i8] c"%z%sSELECT pti.name FROM \22%w\22.sqlite_master AS sm JOIN pragma_table_info(sm.name,%Q) AS pti WHERE sm.type='table'\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @completionNext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @completionNext(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = bitcast i32* %15 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  br label %21

21:                                               ; preds = %228, %189, %161, %1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @COMPLETION_EOF, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %229

27:                                               ; preds = %21
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %153 [
    i32 129, label %31
    i32 130, label %53
    i32 128, label %67
    i32 131, label %109
  ]

31:                                               ; preds = %27
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (...) @sqlite3_keyword_count()
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i8* null, i8** %39, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 130, i32* %41, align 8
  br label %52

42:                                               ; preds = %31
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = call i32 @sqlite3_keyword_name(i32 %45, i8** %48, i64* %50)
  br label %52

52:                                               ; preds = %42, %37
  store i32 -1, i32* %6, align 4
  br label %153

53:                                               ; preds = %27
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 3
  %64 = bitcast i64* %63 to i32**
  %65 = call i32 @sqlite3_prepare_v2(i32 %61, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 -1, i32** %64, i32 0)
  br label %66

66:                                               ; preds = %58, %53
  store i32 1, i32* %6, align 4
  store i32 128, i32* %5, align 4
  br label %153

67:                                               ; preds = %27
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %108

72:                                               ; preds = %67
  store i8* null, i8** %8, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @sqlite3_prepare_v2(i32 %75, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 -1, i32** %7, i32 0)
  br label %77

77:                                               ; preds = %94, %72
  %78 = load i32*, i32** %7, align 8
  %79 = call i64 @sqlite3_step(i32* %78)
  %80 = load i64, i64* @SQLITE_ROW, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %95

82:                                               ; preds = %77
  %83 = load i32*, i32** %7, align 8
  %84 = call i64 @sqlite3_column_text(i32* %83, i32 1)
  %85 = inttoptr i64 %84 to i8*
  store i8* %85, i8** %10, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = call i8* (i8*, i8*, i8*, i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %86, i8* %87, i8* %88)
  store i8* %89, i8** %8, align 8
  %90 = load i8*, i8** %8, align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %82
  %93 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %93, i32* %2, align 4
  br label %231

94:                                               ; preds = %82
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %77

95:                                               ; preds = %77
  %96 = load i32*, i32** %7, align 8
  %97 = call i32 @sqlite3_finalize(i32* %96)
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 4
  %101 = load i8*, i8** %8, align 8
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 3
  %104 = bitcast i64* %103 to i32**
  %105 = call i32 @sqlite3_prepare_v2(i32 %100, i8* %101, i32 -1, i32** %104, i32 0)
  %106 = load i8*, i8** %8, align 8
  %107 = call i32 @sqlite3_free(i8* %106)
  br label %108

108:                                              ; preds = %95, %67
  store i32 0, i32* %6, align 4
  store i32 131, i32* %5, align 4
  br label %153

109:                                              ; preds = %27
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %151

114:                                              ; preds = %109
  store i8* null, i8** %12, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @sqlite3_prepare_v2(i32 %117, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 -1, i32** %11, i32 0)
  br label %119

119:                                              ; preds = %137, %114
  %120 = load i32*, i32** %11, align 8
  %121 = call i64 @sqlite3_step(i32* %120)
  %122 = load i64, i64* @SQLITE_ROW, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %138

124:                                              ; preds = %119
  %125 = load i32*, i32** %11, align 8
  %126 = call i64 @sqlite3_column_text(i32* %125, i32 1)
  %127 = inttoptr i64 %126 to i8*
  store i8* %127, i8** %14, align 8
  %128 = load i8*, i8** %12, align 8
  %129 = load i8*, i8** %13, align 8
  %130 = load i8*, i8** %14, align 8
  %131 = load i8*, i8** %14, align 8
  %132 = call i8* (i8*, i8*, i8*, i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.4, i64 0, i64 0), i8* %128, i8* %129, i8* %130, i8* %131)
  store i8* %132, i8** %12, align 8
  %133 = load i8*, i8** %12, align 8
  %134 = icmp eq i8* %133, null
  br i1 %134, label %135, label %137

135:                                              ; preds = %124
  %136 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %136, i32* %2, align 4
  br label %231

137:                                              ; preds = %124
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %13, align 8
  br label %119

138:                                              ; preds = %119
  %139 = load i32*, i32** %11, align 8
  %140 = call i32 @sqlite3_finalize(i32* %139)
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 6
  %143 = load i32, i32* %142, align 4
  %144 = load i8*, i8** %12, align 8
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 3
  %147 = bitcast i64* %146 to i32**
  %148 = call i32 @sqlite3_prepare_v2(i32 %143, i8* %144, i32 -1, i32** %147, i32 0)
  %149 = load i8*, i8** %12, align 8
  %150 = call i32 @sqlite3_free(i8* %149)
  br label %151

151:                                              ; preds = %138, %109
  store i32 0, i32* %6, align 4
  %152 = load i32, i32* @COMPLETION_EOF, align 4
  store i32 %152, i32* %5, align 4
  br label %153

153:                                              ; preds = %27, %151, %108, %66, %52
  %154 = load i32, i32* %6, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %153
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 1
  %159 = load i8*, i8** %158, align 8
  %160 = icmp eq i8* %159, null
  br i1 %160, label %161, label %162

161:                                              ; preds = %156
  br label %21

162:                                              ; preds = %156
  br label %201

163:                                              ; preds = %153
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = inttoptr i64 %166 to i32*
  %168 = call i64 @sqlite3_step(i32* %167)
  %169 = load i64, i64* @SQLITE_ROW, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %189

171:                                              ; preds = %163
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = inttoptr i64 %174 to i32*
  %176 = load i32, i32* %6, align 4
  %177 = call i64 @sqlite3_column_text(i32* %175, i32 %176)
  %178 = inttoptr i64 %177 to i8*
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 1
  store i8* %178, i8** %180, align 8
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  %184 = inttoptr i64 %183 to i32*
  %185 = load i32, i32* %6, align 4
  %186 = call i64 @sqlite3_column_bytes(i32* %184, i32 %185)
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 2
  store i64 %186, i64* %188, align 8
  br label %200

189:                                              ; preds = %163
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 3
  %192 = load i64, i64* %191, align 8
  %193 = inttoptr i64 %192 to i32*
  %194 = call i32 @sqlite3_finalize(i32* %193)
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 3
  store i64 0, i64* %196, align 8
  %197 = load i32, i32* %5, align 4
  %198 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 0
  store i32 %197, i32* %199, align 8
  br label %21

200:                                              ; preds = %171
  br label %201

201:                                              ; preds = %200, %162
  %202 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 4
  %204 = load i64, i64* %203, align 8
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %201
  br label %229

207:                                              ; preds = %201
  %208 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 4
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 2
  %213 = load i64, i64* %212, align 8
  %214 = icmp sle i64 %210, %213
  br i1 %214, label %215, label %228

215:                                              ; preds = %207
  %216 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 5
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 1
  %221 = load i8*, i8** %220, align 8
  %222 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 4
  %224 = load i64, i64* %223, align 8
  %225 = call i64 @sqlite3_strnicmp(i32 %218, i8* %221, i64 %224)
  %226 = icmp eq i64 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %215
  br label %229

228:                                              ; preds = %215, %207
  br label %21

229:                                              ; preds = %227, %206, %21
  %230 = load i32, i32* @SQLITE_OK, align 4
  store i32 %230, i32* %2, align 4
  br label %231

231:                                              ; preds = %229, %135, %92
  %232 = load i32, i32* %2, align 4
  ret i32 %232
}

declare dso_local i32 @sqlite3_keyword_count(...) #1

declare dso_local i32 @sqlite3_keyword_name(i32, i8**, i64*) #1

declare dso_local i32 @sqlite3_prepare_v2(i32, i8*, i32, i32**, i32) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i64 @sqlite3_column_bytes(i32*, i32) #1

declare dso_local i64 @sqlite3_strnicmp(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
