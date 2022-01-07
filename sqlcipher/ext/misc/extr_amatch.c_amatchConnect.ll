; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_amatch.c_amatchConnect.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_amatch.c_amatchConnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, i64, i32, i8*, i32* }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"vocabulary_table\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"vocabulary_word\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"vocabulary_language\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"edit_distances\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"unrecognized argument: [%s]\0A\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"no edit_distances table specified\00", align 1
@.str.7 = private unnamed_addr constant [67 x i8] c"CREATE TABLE x(word,distance,language,command HIDDEN,nword HIDDEN)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8**, i32**, i8**)* @amatchConnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amatchConnect(i32* %0, i8* %1, i32 %2, i8** %3, i32** %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8** %3, i8*** %11, align 8
  store i32** %4, i32*** %12, align 8
  store i8** %5, i8*** %13, align 8
  %20 = load i32, i32* @SQLITE_OK, align 4
  store i32 %20, i32* %14, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %15, align 8
  %21 = load i8**, i8*** %11, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %16, align 8
  %24 = load i8**, i8*** %11, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %17, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i32**, i32*** %12, align 8
  store i32* null, i32** %28, align 8
  %29 = call %struct.TYPE_6__* @sqlite3_malloc(i32 72)
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %15, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %31 = icmp eq %struct.TYPE_6__* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %6
  %33 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %33, i32* %7, align 4
  br label %232

34:                                               ; preds = %6
  %35 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %35, i32* %14, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %37 = call i32 @memset(%struct.TYPE_6__* %36, i32 0, i32 72)
  %38 = load i32*, i32** %8, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 8
  store i32* %38, i32** %40, align 8
  %41 = load i8*, i8** %16, align 8
  %42 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %41)
  %43 = ptrtoint i8* %42 to i64
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %34
  br label %228

51:                                               ; preds = %34
  %52 = load i8*, i8** %17, align 8
  %53 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %52)
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 7
  store i8* %53, i8** %55, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 7
  %58 = load i8*, i8** %57, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %228

61:                                               ; preds = %51
  %62 = load i8**, i8*** %11, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 2
  %64 = load i8*, i8** %63, align 8
  %65 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %64)
  %66 = ptrtoint i8* %65 to i64
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %61
  br label %228

74:                                               ; preds = %61
  store i32 3, i32* %19, align 4
  br label %75

75:                                               ; preds = %191, %74
  %76 = load i32, i32* %19, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %194

79:                                               ; preds = %75
  %80 = load i8**, i8*** %11, align 8
  %81 = load i32, i32* %19, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %80, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = call i8* @amatchValueOfKey(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %84)
  store i8* %85, i8** %18, align 8
  %86 = load i8*, i8** %18, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %104

88:                                               ; preds = %79
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @sqlite3_free(i64 %91)
  %93 = load i8*, i8** %18, align 8
  %94 = call i8* @amatchDequote(i8* %93)
  %95 = ptrtoint i8* %94 to i64
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  store i64 %95, i64* %97, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %88
  br label %228

103:                                              ; preds = %88
  br label %191

104:                                              ; preds = %79
  %105 = load i8**, i8*** %11, align 8
  %106 = load i32, i32* %19, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %105, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = call i8* @amatchValueOfKey(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %109)
  store i8* %110, i8** %18, align 8
  %111 = load i8*, i8** %18, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %129

113:                                              ; preds = %104
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @sqlite3_free(i64 %116)
  %118 = load i8*, i8** %18, align 8
  %119 = call i8* @amatchDequote(i8* %118)
  %120 = ptrtoint i8* %119 to i64
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 3
  store i64 %120, i64* %122, align 8
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %113
  br label %228

128:                                              ; preds = %113
  br label %191

129:                                              ; preds = %104
  %130 = load i8**, i8*** %11, align 8
  %131 = load i32, i32* %19, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8*, i8** %130, i64 %132
  %134 = load i8*, i8** %133, align 8
  %135 = call i8* @amatchValueOfKey(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %134)
  store i8* %135, i8** %18, align 8
  %136 = load i8*, i8** %18, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %154

138:                                              ; preds = %129
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @sqlite3_free(i64 %141)
  %143 = load i8*, i8** %18, align 8
  %144 = call i8* @amatchDequote(i8* %143)
  %145 = ptrtoint i8* %144 to i64
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 4
  store i64 %145, i64* %147, align 8
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 4
  %150 = load i64, i64* %149, align 8
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %138
  br label %228

153:                                              ; preds = %138
  br label %191

154:                                              ; preds = %129
  %155 = load i8**, i8*** %11, align 8
  %156 = load i32, i32* %19, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8*, i8** %155, i64 %157
  %159 = load i8*, i8** %158, align 8
  %160 = call i8* @amatchValueOfKey(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %159)
  store i8* %160, i8** %18, align 8
  %161 = load i8*, i8** %18, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %163, label %179

163:                                              ; preds = %154
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 5
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @sqlite3_free(i64 %166)
  %168 = load i8*, i8** %18, align 8
  %169 = call i8* @amatchDequote(i8* %168)
  %170 = ptrtoint i8* %169 to i64
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 5
  store i64 %170, i64* %172, align 8
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 5
  %175 = load i64, i64* %174, align 8
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %163
  br label %228

178:                                              ; preds = %163
  br label %191

179:                                              ; preds = %154
  %180 = load i8**, i8*** %11, align 8
  %181 = load i32, i32* %19, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8*, i8** %180, i64 %182
  %184 = load i8*, i8** %183, align 8
  %185 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %184)
  %186 = load i8**, i8*** %13, align 8
  store i8* %185, i8** %186, align 8
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %188 = call i32 @amatchFree(%struct.TYPE_6__* %187)
  %189 = load i32**, i32*** %12, align 8
  store i32* null, i32** %189, align 8
  %190 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %190, i32* %7, align 4
  br label %232

191:                                              ; preds = %178, %153, %128, %103
  %192 = load i32, i32* %19, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %19, align 4
  br label %75

194:                                              ; preds = %75
  %195 = load i32, i32* @SQLITE_OK, align 4
  store i32 %195, i32* %14, align 4
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 5
  %198 = load i64, i64* %197, align 8
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %194
  %201 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %202 = load i8**, i8*** %13, align 8
  store i8* %201, i8** %202, align 8
  %203 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %203, i32* %14, align 4
  br label %209

204:                                              ; preds = %194
  %205 = load i32*, i32** %8, align 8
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %207 = load i8**, i8*** %13, align 8
  %208 = call i32 @amatchLoadRules(i32* %205, %struct.TYPE_6__* %206, i8** %207)
  store i32 %208, i32* %14, align 4
  br label %209

209:                                              ; preds = %204, %200
  %210 = load i32, i32* %14, align 4
  %211 = load i32, i32* @SQLITE_OK, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %216

213:                                              ; preds = %209
  %214 = load i32*, i32** %8, align 8
  %215 = call i32 @sqlite3_declare_vtab(i32* %214, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.7, i64 0, i64 0))
  store i32 %215, i32* %14, align 4
  br label %216

216:                                              ; preds = %213, %209
  %217 = load i32, i32* %14, align 4
  %218 = load i32, i32* @SQLITE_OK, align 4
  %219 = icmp ne i32 %217, %218
  br i1 %219, label %220, label %223

220:                                              ; preds = %216
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %222 = call i32 @amatchFree(%struct.TYPE_6__* %221)
  br label %223

223:                                              ; preds = %220, %216
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 6
  %226 = load i32**, i32*** %12, align 8
  store i32* %225, i32** %226, align 8
  %227 = load i32, i32* %14, align 4
  store i32 %227, i32* %7, align 4
  br label %232

228:                                              ; preds = %177, %152, %127, %102, %73, %60, %50
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %230 = call i32 @amatchFree(%struct.TYPE_6__* %229)
  %231 = load i32, i32* %14, align 4
  store i32 %231, i32* %7, align 4
  br label %232

232:                                              ; preds = %228, %223, %179, %32
  %233 = load i32, i32* %7, align 4
  ret i32 %233
}

declare dso_local %struct.TYPE_6__* @sqlite3_malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i8* @sqlite3_mprintf(i8*, ...) #1

declare dso_local i8* @amatchValueOfKey(i8*, i8*) #1

declare dso_local i32 @sqlite3_free(i64) #1

declare dso_local i8* @amatchDequote(i8*) #1

declare dso_local i32 @amatchFree(%struct.TYPE_6__*) #1

declare dso_local i32 @amatchLoadRules(i32*, %struct.TYPE_6__*, i8**) #1

declare dso_local i32 @sqlite3_declare_vtab(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
