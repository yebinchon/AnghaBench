; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_speedtest8inst1.c_main.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_speedtest8inst1.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.zUsageMsg = private unnamed_addr constant [324 x i8] c"Usage: %s options...\0A  where available options are:\0A\0A    -db      DATABASE-FILE  (database file to operate on)\0A    -script  SCRIPT-FILE    (script file to read sql from)\0A    -log     LOG-FILE       (log file to create)\0A    -logdata                (log all data to log file)\0A\0A  Options -db, -script and -log are compulsory\0A\0A\00", align 16
@.str = private unnamed_addr constant [4 x i8] c"-db\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"-script\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"-log\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"-logdata\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Failed to read script file\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"logging\00", align 1
@SQLITE_OPEN_READWRITE = common dso_local global i32 0, align 4
@SQLITE_OPEN_CREATE = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"Failed to open db: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [324 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8, align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %21 = bitcast [324 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %21, i8* align 16 getelementptr inbounds ([324 x i8], [324 x i8]* @__const.main.zUsageMsg, i32 0, i32 0), i64 324, i1 false)
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %10, align 4
  store i8* null, i8** %16, align 8
  store i32 1, i32* %11, align 4
  br label %22

22:                                               ; preds = %100, %2
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %103

26:                                               ; preds = %22
  %27 = load i8**, i8*** %5, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @stringcompare(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %26
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %35, 1
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load i8**, i8*** %5, align 8
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %40, i64 %43
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %7, align 8
  br label %99

46:                                               ; preds = %34, %26
  %47 = load i8**, i8*** %5, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @stringcompare(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %46
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 1
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load i8**, i8*** %5, align 8
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %60, i64 %63
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %8, align 8
  br label %98

66:                                               ; preds = %54, %46
  %67 = load i8**, i8*** %5, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = call i64 @stringcompare(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %66
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  %77 = load i32, i32* %4, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load i8**, i8*** %5, align 8
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %80, i64 %83
  %85 = load i8*, i8** %84, align 8
  store i8* %85, i8** %9, align 8
  br label %97

86:                                               ; preds = %74, %66
  %87 = load i8**, i8*** %5, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = call i64 @stringcompare(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  store i32 1, i32* %10, align 4
  br label %96

95:                                               ; preds = %86
  br label %225

96:                                               ; preds = %94
  br label %97

97:                                               ; preds = %96, %79
  br label %98

98:                                               ; preds = %97, %59
  br label %99

99:                                               ; preds = %98, %39
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %11, align 4
  br label %22

103:                                              ; preds = %22
  %104 = load i8*, i8** %7, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %112

106:                                              ; preds = %103
  %107 = load i8*, i8** %8, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i8*, i8** %9, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %113, label %112

112:                                              ; preds = %109, %106, %103
  br label %225

113:                                              ; preds = %109
  %114 = load i8*, i8** %8, align 8
  %115 = call i8* @readScriptFile(i8* %114, i32* %17)
  store i8* %115, i8** %16, align 8
  %116 = load i8*, i8** %16, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %121, label %118

118:                                              ; preds = %113
  %119 = load i32, i32* @stderr, align 4
  %120 = call i32 (i32, i8*, ...) @fprintf(i32 %119, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %232

121:                                              ; preds = %113
  %122 = load i8*, i8** %9, align 8
  %123 = load i32, i32* %10, align 4
  %124 = call i32* @sqlite3_instvfs_binarylog(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 0, i8* %122, i32 %123)
  store i32* %124, i32** %15, align 8
  %125 = load i8*, i8** %7, align 8
  %126 = load i32, i32* @SQLITE_OPEN_READWRITE, align 4
  %127 = load i32, i32* @SQLITE_OPEN_CREATE, align 4
  %128 = or i32 %126, %127
  %129 = call i32 @sqlite3_open_v2(i8* %125, i32** %18, i32 %128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* @SQLITE_OK, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %138

133:                                              ; preds = %121
  %134 = load i32, i32* @stderr, align 4
  %135 = load i32*, i32** %18, align 8
  %136 = call i8* @sqlite3_errmsg(i32* %135)
  %137 = call i32 (i32, i8*, ...) @fprintf(i32 %134, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* %136)
  store i32 -2, i32* %3, align 4
  br label %232

138:                                              ; preds = %121
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %139

139:                                              ; preds = %219, %138
  %140 = load i32, i32* %13, align 4
  %141 = load i32, i32* %17, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %222

143:                                              ; preds = %139
  %144 = load i8*, i8** %16, align 8
  %145 = load i32, i32* %13, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %144, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %149, 59
  br i1 %150, label %151, label %218

151:                                              ; preds = %143
  %152 = load i8*, i8** %16, align 8
  %153 = load i32, i32* %13, align 4
  %154 = add nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %152, i64 %155
  %157 = load i8, i8* %156, align 1
  store i8 %157, i8* %20, align 1
  %158 = load i8*, i8** %16, align 8
  %159 = load i32, i32* %13, align 4
  %160 = add nsw i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %158, i64 %161
  store i8 0, i8* %162, align 1
  %163 = load i8*, i8** %16, align 8
  %164 = load i32, i32* %12, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %163, i64 %165
  %167 = call i32 @sqlite3_complete(i8* %166)
  store i32 %167, i32* %19, align 4
  %168 = load i8, i8* %20, align 1
  %169 = load i8*, i8** %16, align 8
  %170 = load i32, i32* %13, align 4
  %171 = add nsw i32 %170, 1
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8, i8* %169, i64 %172
  store i8 %168, i8* %173, align 1
  %174 = load i32, i32* %19, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %217

176:                                              ; preds = %151
  %177 = load i8*, i8** %16, align 8
  %178 = load i32, i32* %13, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %177, i64 %179
  store i8 0, i8* %180, align 1
  br label %181

181:                                              ; preds = %195, %176
  %182 = load i32, i32* %12, align 4
  %183 = load i32, i32* %13, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %193

185:                                              ; preds = %181
  %186 = load i8*, i8** %16, align 8
  %187 = load i32, i32* %12, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %186, i64 %188
  %190 = load i8, i8* %189, align 1
  %191 = call i64 @ISSPACE(i8 signext %190)
  %192 = icmp ne i64 %191, 0
  br label %193

193:                                              ; preds = %185, %181
  %194 = phi i1 [ false, %181 ], [ %192, %185 ]
  br i1 %194, label %195, label %198

195:                                              ; preds = %193
  %196 = load i32, i32* %12, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %12, align 4
  br label %181

198:                                              ; preds = %193
  %199 = load i32, i32* %12, align 4
  %200 = load i32, i32* %13, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %210

202:                                              ; preds = %198
  %203 = load i32*, i32** %15, align 8
  %204 = load i32*, i32** %18, align 8
  %205 = load i8*, i8** %16, align 8
  %206 = load i32, i32* %12, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8, i8* %205, i64 %207
  %209 = call i32 @prepareAndRun(i32* %203, i32* %204, i8* %208)
  br label %210

210:                                              ; preds = %202, %198
  %211 = load i8*, i8** %16, align 8
  %212 = load i32, i32* %13, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8, i8* %211, i64 %213
  store i8 59, i8* %214, align 1
  %215 = load i32, i32* %13, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %12, align 4
  br label %217

217:                                              ; preds = %210, %151
  br label %218

218:                                              ; preds = %217, %143
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %13, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %13, align 4
  br label %139

222:                                              ; preds = %139
  %223 = load i32*, i32** %15, align 8
  %224 = call i32 @sqlite3_instvfs_destroy(i32* %223)
  store i32 0, i32* %3, align 4
  br label %232

225:                                              ; preds = %112, %95
  %226 = load i32, i32* @stderr, align 4
  %227 = getelementptr inbounds [324 x i8], [324 x i8]* %6, i64 0, i64 0
  %228 = load i8**, i8*** %5, align 8
  %229 = getelementptr inbounds i8*, i8** %228, i64 0
  %230 = load i8*, i8** %229, align 8
  %231 = call i32 (i32, i8*, ...) @fprintf(i32 %226, i8* %227, i8* %230)
  store i32 -3, i32* %3, align 4
  br label %232

232:                                              ; preds = %225, %222, %133, %118
  %233 = load i32, i32* %3, align 4
  ret i32 %233
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @stringcompare(i8*, i8*) #2

declare dso_local i8* @readScriptFile(i8*, i32*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32* @sqlite3_instvfs_binarylog(i8*, i32, i8*, i32) #2

declare dso_local i32 @sqlite3_open_v2(i8*, i32**, i32, i8*) #2

declare dso_local i8* @sqlite3_errmsg(i32*) #2

declare dso_local i32 @sqlite3_complete(i8*) #2

declare dso_local i64 @ISSPACE(i8 signext) #2

declare dso_local i32 @prepareAndRun(i32*, i32*, i8*) #2

declare dso_local i32 @sqlite3_instvfs_destroy(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
