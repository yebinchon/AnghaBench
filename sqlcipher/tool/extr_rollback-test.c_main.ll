; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_rollback-test.c_main.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_rollback-test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"-utf8\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"PRAGMA encoding=UTF8\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"-utf16le\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"PRAGMA encoding=UTF16LE\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"-utf16be\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"PRAGMA encoding=UTF16BE\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"-pagesize=\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"PRAGMA pagesize=%d\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"unknown option %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [532 x i8] c"BEGIN;CREATE TABLE t1(x INTEGER PRIMARY KEY, y);INSERT INTO t1(y) VALUES('abcdefghijklmnopqrstuvwxyz');INSERT INTO t1(y) VALUES('abcdefghijklmnopqrstuvwxyz');INSERT INTO t1(y) SELECT y FROM t1;INSERT INTO t1(y) SELECT y FROM t1;INSERT INTO t1(y) SELECT y FROM t1;INSERT INTO t1(y) SELECT y FROM t1;INSERT INTO t1(y) SELECT y FROM t1;INSERT INTO t1(y) SELECT y FROM t1;INSERT INTO t1(y) SELECT y FROM t1;INSERT INTO t1(y) SELECT y FROM t1;INSERT INTO t1(y) SELECT y FROM t1;UPDATE t1 SET y=(y || x);CREATE INDEX t1y ON t1(y);COMMIT;\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"check\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"PRAGMA integrity_check\00", align 1
@zReply = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"Integrity check: %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [69 x i8] c"SELECT count(*) FROM t1 WHERE y<>('abcdefghijklmnopqrstuvwxyz' || x)\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"Wrong content\0A\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"Ok\0A\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"crash\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"-wal\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"PRAGMA journal_mode=WAL\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"-rollback\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"PRAGMA journal_mode=DELETE\00", align 1
@.str.24 = private unnamed_addr constant [53 x i8] c"PRAGMA cache_size=10;BEGIN;UPDATE t1 SET y=(y || -x)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [100 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 3
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @usage(i8* %15)
  br label %17

17:                                               ; preds = %12, %2
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %115

23:                                               ; preds = %17
  %24 = load i8**, i8*** %5, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %24, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i32* @openDb(i8* %29)
  store i32* %30, i32** %6, align 8
  store i32 2, i32* %7, align 4
  br label %31

31:                                               ; preds = %107, %23
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %4, align 4
  %34 = sub nsw i32 %33, 1
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %110

36:                                               ; preds = %31
  %37 = load i8**, i8*** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @runSql(i32* %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %106

47:                                               ; preds = %36
  %48 = load i8**, i8*** %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @strcmp(i8* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @runSql(i32* %56, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %105

58:                                               ; preds = %47
  %59 = load i8**, i8*** %5, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @strcmp(i8* %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @runSql(i32* %67, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %104

69:                                               ; preds = %58
  %70 = load i8**, i8*** %5, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = call i64 @strncmp(i8* %74, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 10)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %69
  %78 = load i8**, i8*** %5, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 10
  %84 = call i32 @atoi(i8* %83)
  store i32 %84, i32* %8, align 4
  %85 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @sprintf(i8* %85, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %86)
  %88 = load i32*, i32** %6, align 8
  %89 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %90 = call i32 @runSql(i32* %88, i8* %89)
  br label %103

91:                                               ; preds = %69
  %92 = load i32, i32* @stderr, align 4
  %93 = load i8**, i8*** %5, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %93, i64 %95
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 (i32, i8*, ...) @fprintf(i32 %92, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* %97)
  %99 = load i8**, i8*** %5, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @usage(i8* %101)
  br label %103

103:                                              ; preds = %91, %77
  br label %104

104:                                              ; preds = %103, %66
  br label %105

105:                                              ; preds = %104, %55
  br label %106

106:                                              ; preds = %105, %44
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %7, align 4
  br label %31

110:                                              ; preds = %31
  %111 = load i32*, i32** %6, align 8
  %112 = call i32 @runSql(i32* %111, i8* getelementptr inbounds ([532 x i8], [532 x i8]* @.str.10, i64 0, i64 0))
  %113 = load i32*, i32** %6, align 8
  %114 = call i32 @sqlite3_close(i32* %113)
  br label %220

115:                                              ; preds = %17
  %116 = load i8**, i8*** %5, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 1
  %118 = load i8*, i8** %117, align 8
  %119 = call i64 @strcmp(i8* %118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %151

121:                                              ; preds = %115
  %122 = load i8**, i8*** %5, align 8
  %123 = load i32, i32* %4, align 4
  %124 = sub nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8*, i8** %122, i64 %125
  %127 = load i8*, i8** %126, align 8
  %128 = call i32* @openDb(i8* %127)
  store i32* %128, i32** %6, align 8
  %129 = load i32*, i32** %6, align 8
  %130 = call i32 @runSql(i32* %129, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  %131 = load i8*, i8** @zReply, align 8
  %132 = call i64 @strcmp(i8* %131, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %121
  %135 = load i32, i32* @stderr, align 4
  %136 = load i8*, i8** @zReply, align 8
  %137 = call i32 (i32, i8*, ...) @fprintf(i32 %135, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i8* %136)
  %138 = call i32 @exit(i32 1) #3
  unreachable

139:                                              ; preds = %121
  %140 = load i32*, i32** %6, align 8
  %141 = call i32 @runSql(i32* %140, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.15, i64 0, i64 0))
  %142 = load i8*, i8** @zReply, align 8
  %143 = call i64 @strcmp(i8* %142, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %139
  %146 = load i32, i32* @stderr, align 4
  %147 = call i32 (i32, i8*, ...) @fprintf(i32 %146, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0))
  %148 = call i32 @exit(i32 1) #3
  unreachable

149:                                              ; preds = %139
  %150 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0))
  br label %219

151:                                              ; preds = %115
  %152 = load i8**, i8*** %5, align 8
  %153 = getelementptr inbounds i8*, i8** %152, i64 1
  %154 = load i8*, i8** %153, align 8
  %155 = call i64 @strcmp(i8* %154, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %213

157:                                              ; preds = %151
  %158 = load i8**, i8*** %5, align 8
  %159 = load i32, i32* %4, align 4
  %160 = sub nsw i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8*, i8** %158, i64 %161
  %163 = load i8*, i8** %162, align 8
  %164 = call i32* @openDb(i8* %163)
  store i32* %164, i32** %6, align 8
  store i32 2, i32* %7, align 4
  br label %165

165:                                              ; preds = %206, %157
  %166 = load i32, i32* %7, align 4
  %167 = load i32, i32* %4, align 4
  %168 = sub nsw i32 %167, 1
  %169 = icmp slt i32 %166, %168
  br i1 %169, label %170, label %209

170:                                              ; preds = %165
  %171 = load i8**, i8*** %5, align 8
  %172 = load i32, i32* %7, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8*, i8** %171, i64 %173
  %175 = load i8*, i8** %174, align 8
  %176 = call i64 @strcmp(i8* %175, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %170
  %179 = load i32*, i32** %6, align 8
  %180 = call i32 @runSql(i32* %179, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0))
  br label %205

181:                                              ; preds = %170
  %182 = load i8**, i8*** %5, align 8
  %183 = load i32, i32* %7, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8*, i8** %182, i64 %184
  %186 = load i8*, i8** %185, align 8
  %187 = call i64 @strcmp(i8* %186, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0))
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %181
  %190 = load i32*, i32** %6, align 8
  %191 = call i32 @runSql(i32* %190, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0))
  br label %204

192:                                              ; preds = %181
  %193 = load i32, i32* @stderr, align 4
  %194 = load i8**, i8*** %5, align 8
  %195 = load i32, i32* %7, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8*, i8** %194, i64 %196
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 (i32, i8*, ...) @fprintf(i32 %193, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* %198)
  %200 = load i8**, i8*** %5, align 8
  %201 = getelementptr inbounds i8*, i8** %200, i64 0
  %202 = load i8*, i8** %201, align 8
  %203 = call i32 @usage(i8* %202)
  br label %204

204:                                              ; preds = %192, %189
  br label %205

205:                                              ; preds = %204, %178
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %7, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %7, align 4
  br label %165

209:                                              ; preds = %165
  %210 = load i32*, i32** %6, align 8
  %211 = call i32 @runSql(i32* %210, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.24, i64 0, i64 0))
  %212 = call i32 @exit(i32 0) #3
  unreachable

213:                                              ; preds = %151
  %214 = load i8**, i8*** %5, align 8
  %215 = getelementptr inbounds i8*, i8** %214, i64 0
  %216 = load i8*, i8** %215, align 8
  %217 = call i32 @usage(i8* %216)
  br label %218

218:                                              ; preds = %213
  br label %219

219:                                              ; preds = %218, %149
  br label %220

220:                                              ; preds = %219, %110
  ret i32 0
}

declare dso_local i32 @usage(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @openDb(i8*) #1

declare dso_local i32 @runSql(i32*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @sqlite3_close(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
