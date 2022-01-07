; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_sqldiff.c_getRbudiffQuery.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_sqldiff.c_getRbudiffQuery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"SELECT \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c", 0, \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c" FROM aux.%Q AS n WHERE NOT EXISTS (\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"    SELECT 1 FROM \00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c" main.%Q AS o WHERE \00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" AND \00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"(n.%Q = o.%Q)\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"\0A) AND \00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"(n.%Q IS NOT NULL)\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"\0AUNION ALL\0ASELECT \00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c", 1, \00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c" FROM main.%Q AS n WHERE NOT EXISTS (\0A\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c" aux.%Q AS o WHERE \00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"n.%s\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c" ,\0A\00", align 1
@.str.19 = private unnamed_addr constant [51 x i8] c"    CASE WHEN n.%s IS o.%s THEN NULL ELSE n.%s END\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c", '\00", align 1
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"' ||\0A\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c" ||\0A\00", align 1
@.str.25 = private unnamed_addr constant [49 x i8] c"    CASE WHEN n.%s IS o.%s THEN '.' ELSE 'x' END\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"\0AAS ota_control, \00", align 1
@.str.27 = private unnamed_addr constant [51 x i8] c"    CASE WHEN n.%s IS o.%s THEN NULL ELSE o.%s END\00", align 1
@.str.28 = private unnamed_addr constant [39 x i8] c"\0AFROM main.%Q AS o, aux.%Q AS n\0AWHERE \00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c" AND ota_control LIKE '%%x%%'\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"\0AORDER BY \00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8**, i32, i32, i32*)* @getRbudiffQuery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getRbudiffQuery(i8* %0, i8** %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %12 = load i32*, i32** %10, align 8
  %13 = call i32 (i32*, i8*, ...) @strPrintf(i32* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %14 = load i32*, i32** %10, align 8
  %15 = load i8**, i8*** %7, align 8
  %16 = call i32 @strPrintfArray(i32* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %15, i32 -1)
  %17 = load i32*, i32** %10, align 8
  %18 = call i32 (i32*, i8*, ...) @strPrintf(i32* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %19 = load i32*, i32** %10, align 8
  %20 = load i8**, i8*** %7, align 8
  %21 = call i32 @strPrintfArray(i32* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %20, i32 -1)
  %22 = load i32*, i32** %10, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 (i32*, i8*, ...) @strPrintf(i32* %22, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i8* %23)
  %25 = load i32*, i32** %10, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 (i32*, i8*, ...) @strPrintf(i32* %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %26)
  %28 = load i32*, i32** %10, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 (i32*, i8*, ...) @strPrintf(i32* %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* %29)
  %31 = load i32*, i32** %10, align 8
  %32 = load i8**, i8*** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @strPrintfArray(i32* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8** %32, i32 %33)
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 (i32*, i8*, ...) @strPrintf(i32* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %37 = load i32*, i32** %10, align 8
  %38 = load i8**, i8*** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @strPrintfArray(i32* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8** %38, i32 %39)
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 (i32*, i8*, ...) @strPrintf(i32* %41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  %43 = load i32*, i32** %10, align 8
  %44 = load i8**, i8*** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @strPrintfArray(i32* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %44, i32 %45)
  %47 = load i8**, i8*** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %62

53:                                               ; preds = %5
  %54 = load i32*, i32** %10, align 8
  %55 = call i32 (i32*, i8*, ...) @strPrintf(i32* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32*, i32** %10, align 8
  %57 = load i8**, i8*** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = call i32 @strPrintfArray(i32* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %60, i32 -1)
  br label %62

62:                                               ; preds = %53, %5
  %63 = load i32*, i32** %10, align 8
  %64 = call i32 (i32*, i8*, ...) @strPrintf(i32* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %65 = load i32*, i32** %10, align 8
  %66 = load i8**, i8*** %7, align 8
  %67 = call i32 @strPrintfArray(i32* %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %66, i32 -1)
  %68 = load i32*, i32** %10, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 (i32*, i8*, ...) @strPrintf(i32* %68, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0), i8* %69)
  %71 = load i32*, i32** %10, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 (i32*, i8*, ...) @strPrintf(i32* %71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %72)
  %74 = load i32*, i32** %10, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = call i32 (i32*, i8*, ...) @strPrintf(i32* %74, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i8* %75)
  %77 = load i32*, i32** %10, align 8
  %78 = load i8**, i8*** %7, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @strPrintfArray(i32* %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8** %78, i32 %79)
  %81 = load i32*, i32** %10, align 8
  %82 = call i32 (i32*, i8*, ...) @strPrintf(i32* %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %83 = load i32*, i32** %10, align 8
  %84 = load i8**, i8*** %7, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @strPrintfArray(i32* %83, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8** %84, i32 %85)
  %87 = load i8**, i8*** %7, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %153

93:                                               ; preds = %62
  %94 = load i32*, i32** %10, align 8
  %95 = call i32 (i32*, i8*, ...) @strPrintf(i32* %94, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  %96 = load i32*, i32** %10, align 8
  %97 = load i8**, i8*** %7, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @strPrintfArray(i32* %96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8** %97, i32 %98)
  %100 = load i32*, i32** %10, align 8
  %101 = call i32 (i32*, i8*, ...) @strPrintf(i32* %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  %102 = load i32*, i32** %10, align 8
  %103 = load i8**, i8*** %7, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %103, i64 %105
  %107 = call i32 @strPrintfArray(i32* %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.19, i64 0, i64 0), i8** %106, i32 -1)
  %108 = load i32, i32* %9, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %93
  %111 = load i32*, i32** %10, align 8
  %112 = call i32 (i32*, i8*, ...) @strPrintf(i32* %111, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  %113 = load i32*, i32** %10, align 8
  %114 = load i8**, i8*** %7, align 8
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @strPrintfArray(i32* %113, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i8** %114, i32 %115)
  %117 = load i32*, i32** %10, align 8
  %118 = call i32 (i32*, i8*, ...) @strPrintf(i32* %117, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0))
  br label %122

119:                                              ; preds = %93
  %120 = load i32*, i32** %10, align 8
  %121 = call i32 (i32*, i8*, ...) @strPrintf(i32* %120, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  br label %122

122:                                              ; preds = %119, %110
  %123 = load i32*, i32** %10, align 8
  %124 = load i8**, i8*** %7, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8*, i8** %124, i64 %126
  %128 = call i32 @strPrintfArray(i32* %123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.25, i64 0, i64 0), i8** %127, i32 -1)
  %129 = load i32*, i32** %10, align 8
  %130 = call i32 (i32*, i8*, ...) @strPrintf(i32* %129, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i64 0, i64 0))
  %131 = load i32*, i32** %10, align 8
  %132 = load i8**, i8*** %7, align 8
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @strPrintfArray(i32* %131, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %132, i32 %133)
  %135 = load i32*, i32** %10, align 8
  %136 = call i32 (i32*, i8*, ...) @strPrintf(i32* %135, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  %137 = load i32*, i32** %10, align 8
  %138 = load i8**, i8*** %7, align 8
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8*, i8** %138, i64 %140
  %142 = call i32 @strPrintfArray(i32* %137, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i64 0, i64 0), i8** %141, i32 -1)
  %143 = load i32*, i32** %10, align 8
  %144 = load i8*, i8** %6, align 8
  %145 = load i8*, i8** %6, align 8
  %146 = call i32 (i32*, i8*, ...) @strPrintf(i32* %143, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.28, i64 0, i64 0), i8* %144, i8* %145)
  %147 = load i32*, i32** %10, align 8
  %148 = load i8**, i8*** %7, align 8
  %149 = load i32, i32* %8, align 4
  %150 = call i32 @strPrintfArray(i32* %147, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8** %148, i32 %149)
  %151 = load i32*, i32** %10, align 8
  %152 = call i32 (i32*, i8*, ...) @strPrintf(i32* %151, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.29, i64 0, i64 0))
  br label %153

153:                                              ; preds = %122, %62
  %154 = load i32*, i32** %10, align 8
  %155 = call i32 (i32*, i8*, ...) @strPrintf(i32* %154, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %156

156:                                              ; preds = %168, %153
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* %8, align 4
  %159 = icmp sle i32 %157, %158
  br i1 %159, label %160, label %171

160:                                              ; preds = %156
  %161 = load i32*, i32** %10, align 8
  %162 = load i32, i32* %11, align 4
  %163 = icmp sgt i32 %162, 1
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0)
  %166 = load i32, i32* %11, align 4
  %167 = call i32 (i32*, i8*, ...) @strPrintf(i32* %161, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i8* %165, i32 %166)
  br label %168

168:                                              ; preds = %160
  %169 = load i32, i32* %11, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %11, align 4
  br label %156

171:                                              ; preds = %156
  ret void
}

declare dso_local i32 @strPrintf(i32*, i8*, ...) #1

declare dso_local i32 @strPrintfArray(i32*, i8*, i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
