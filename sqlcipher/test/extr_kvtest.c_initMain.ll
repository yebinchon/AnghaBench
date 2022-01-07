; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_kvtest.c_initMain.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_kvtest.c_initMain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"init\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"unknown argument: \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"-count\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"missing argument on \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"the --count must be positive\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"-size\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"the --size must be positive\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"-variance\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"-pagesize\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"the --pagesize must be power of 2 between 512 and 65536\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"unknown option: \22%s\22\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"cannot open database \22%s\22: %s\00", align 1
@.str.12 = private unnamed_addr constant [262 x i8] c"DROP TABLE IF EXISTS kv;\0APRAGMA page_size=%d;\0AVACUUM;\0ABEGIN;\0ACREATE TABLE kv(k INTEGER PRIMARY KEY, v BLOB);\0AWITH RECURSIVE c(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM c WHERE x<%d) INSERT INTO kv(k,v) SELECT x, randomblob(%d+(random()%%(%d))) FROM c;\0ACOMMIT;\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"database create failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @initMain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initMain(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 1000, i32* %8, align 4
  store i32 10000, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 4096, i32* %11, align 4
  store i8* null, i8** %14, align 8
  %16 = load i8**, i8*** %4, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  %19 = call i64 @strcmp(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = icmp sge i32 %23, 3
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i8**, i8*** %4, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 2
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %5, align 8
  store i32 3, i32* %6, align 4
  br label %30

30:                                               ; preds = %184, %2
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %187

34:                                               ; preds = %30
  %35 = load i8**, i8*** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %15, align 8
  %40 = load i8*, i8** %15, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 45
  br i1 %44, label %45, label %48

45:                                               ; preds = %34
  %46 = load i8*, i8** %15, align 8
  %47 = call i32 (i8*, ...) @fatalError(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %45, %34
  %49 = load i8*, i8** %15, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 45
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i8*, i8** %15, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %15, align 8
  br label %57

57:                                               ; preds = %54, %48
  %58 = load i8*, i8** %15, align 8
  %59 = call i64 @strcmp(i8* %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %86

61:                                               ; preds = %57
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %3, align 4
  %64 = sub nsw i32 %63, 1
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load i8**, i8*** %4, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 (i8*, ...) @fatalError(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %71)
  br label %73

73:                                               ; preds = %66, %61
  %74 = load i8**, i8*** %4, align 8
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %74, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @integerValue(i8* %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp slt i32 %81, 1
  br i1 %82, label %83, label %85

83:                                               ; preds = %73
  %84 = call i32 (i8*, ...) @fatalError(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %73
  br label %184

86:                                               ; preds = %57
  %87 = load i8*, i8** %15, align 8
  %88 = call i64 @strcmp(i8* %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %115

90:                                               ; preds = %86
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %3, align 4
  %93 = sub nsw i32 %92, 1
  %94 = icmp eq i32 %91, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %90
  %96 = load i8**, i8*** %4, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 (i8*, ...) @fatalError(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %100)
  br label %102

102:                                              ; preds = %95, %90
  %103 = load i8**, i8*** %4, align 8
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %103, i64 %106
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @integerValue(i8* %108)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp slt i32 %110, 1
  br i1 %111, label %112, label %114

112:                                              ; preds = %102
  %113 = call i32 (i8*, ...) @fatalError(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %102
  br label %184

115:                                              ; preds = %86
  %116 = load i8*, i8** %15, align 8
  %117 = call i64 @strcmp(i8* %116, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %139

119:                                              ; preds = %115
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* %3, align 4
  %122 = sub nsw i32 %121, 1
  %123 = icmp eq i32 %120, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %119
  %125 = load i8**, i8*** %4, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8*, i8** %125, i64 %127
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 (i8*, ...) @fatalError(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %129)
  br label %131

131:                                              ; preds = %124, %119
  %132 = load i8**, i8*** %4, align 8
  %133 = load i32, i32* %6, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8*, i8** %132, i64 %135
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @integerValue(i8* %137)
  store i32 %138, i32* %10, align 4
  br label %184

139:                                              ; preds = %115
  %140 = load i8*, i8** %15, align 8
  %141 = call i64 @strcmp(i8* %140, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %177

143:                                              ; preds = %139
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* %3, align 4
  %146 = sub nsw i32 %145, 1
  %147 = icmp eq i32 %144, %146
  br i1 %147, label %148, label %155

148:                                              ; preds = %143
  %149 = load i8**, i8*** %4, align 8
  %150 = load i32, i32* %6, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8*, i8** %149, i64 %151
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 (i8*, ...) @fatalError(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %153)
  br label %155

155:                                              ; preds = %148, %143
  %156 = load i8**, i8*** %4, align 8
  %157 = load i32, i32* %6, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %6, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8*, i8** %156, i64 %159
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @integerValue(i8* %161)
  store i32 %162, i32* %11, align 4
  %163 = load i32, i32* %11, align 4
  %164 = icmp slt i32 %163, 512
  br i1 %164, label %174, label %165

165:                                              ; preds = %155
  %166 = load i32, i32* %11, align 4
  %167 = icmp sgt i32 %166, 65536
  br i1 %167, label %174, label %168

168:                                              ; preds = %165
  %169 = load i32, i32* %11, align 4
  %170 = sub nsw i32 %169, 1
  %171 = load i32, i32* %11, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %168, %165, %155
  %175 = call i32 (i8*, ...) @fatalError(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i64 0, i64 0))
  br label %176

176:                                              ; preds = %174, %168
  br label %184

177:                                              ; preds = %139
  %178 = load i8**, i8*** %4, align 8
  %179 = load i32, i32* %6, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8*, i8** %178, i64 %180
  %182 = load i8*, i8** %181, align 8
  %183 = call i32 (i8*, ...) @fatalError(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* %182)
  br label %184

184:                                              ; preds = %177, %176, %131, %114, %85
  %185 = load i32, i32* %6, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %6, align 4
  br label %30

187:                                              ; preds = %30
  %188 = load i8*, i8** %5, align 8
  %189 = call i32 @sqlite3_open(i8* %188, i32** %12)
  store i32 %189, i32* %7, align 4
  %190 = load i32, i32* %7, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %187
  %193 = load i8*, i8** %5, align 8
  %194 = load i32*, i32** %12, align 8
  %195 = call i32 @sqlite3_errmsg(i32* %194)
  %196 = call i32 (i8*, ...) @fatalError(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i8* %193, i32 %195)
  br label %197

197:                                              ; preds = %192, %187
  %198 = load i32, i32* %11, align 4
  %199 = load i32, i32* %8, align 4
  %200 = load i32, i32* %9, align 4
  %201 = load i32, i32* %10, align 4
  %202 = add nsw i32 %201, 1
  %203 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([262 x i8], [262 x i8]* @.str.12, i64 0, i64 0), i32 %198, i32 %199, i32 %200, i32 %202)
  store i8* %203, i8** %13, align 8
  %204 = load i32*, i32** %12, align 8
  %205 = load i8*, i8** %13, align 8
  %206 = call i32 @sqlite3_exec(i32* %204, i8* %205, i32 0, i32 0, i8** %14)
  store i32 %206, i32* %7, align 4
  %207 = load i32, i32* %7, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %197
  %210 = load i8*, i8** %14, align 8
  %211 = call i32 (i8*, ...) @fatalError(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i8* %210)
  br label %212

212:                                              ; preds = %209, %197
  %213 = load i8*, i8** %13, align 8
  %214 = call i32 @sqlite3_free(i8* %213)
  %215 = load i32*, i32** %12, align 8
  %216 = call i32 @sqlite3_close(i32* %215)
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fatalError(i8*, ...) #1

declare dso_local i32 @integerValue(i8*) #1

declare dso_local i32 @sqlite3_open(i8*, i32**) #1

declare dso_local i32 @sqlite3_errmsg(i32*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3_exec(i32*, i8*, i32, i32, i8**) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @sqlite3_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
