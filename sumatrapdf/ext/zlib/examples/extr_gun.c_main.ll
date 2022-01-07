; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/zlib/examples/extr_gun.c_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/zlib/examples/extr_gun.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i8* }

@match = common dso_local global i8* null, align 8
@Z_NULL = common dso_local global i8* null, align 8
@Z_OK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"gun out of memory error--aborting\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"gun 1.6 (17 Jan 2010)\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Copyright (C) 2003-2010 Mark Adler\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"usage: gun [-t] [file1.gz [file2.Z ...]]\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c".gz\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"-gz\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c".z\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"-z\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"_z\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c".Z\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"gun error: no gz type on %s--skipping\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_5__, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i8*, i8** @match, align 8
  store i8* %12, i8** %10, align 8
  %13 = load i8*, i8** @Z_NULL, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  store i8* %13, i8** %14, align 8
  %15 = load i8*, i8** @Z_NULL, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  store i8* %15, i8** %16, align 8
  %17 = load i8*, i8** @Z_NULL, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i8* %17, i8** %18, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = call i32 @inflateBackInit(%struct.TYPE_5__* %11, i32 15, i8* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @Z_OK, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @stderr, align 4
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %185

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %4, align 4
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i32 1
  store i8** %31, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %27
  %35 = load i8**, i8*** %5, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @strcmp(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* @stderr, align 4
  %43 = call i32 (i32, i8*, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %44 = load i32, i32* @stderr, align 4
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %185

46:                                               ; preds = %34, %27
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = load i8**, i8*** %5, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @strcmp(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  store i32 1, i32* %8, align 4
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %4, align 4
  %57 = load i8**, i8*** %5, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i32 1
  store i8** %58, i8*** %5, align 8
  br label %59

59:                                               ; preds = %54, %49, %46
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %179

62:                                               ; preds = %59
  br label %63

63:                                               ; preds = %172, %62
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i8* null, i8** %9, align 8
  br label %156

67:                                               ; preds = %63
  %68 = load i8**, i8*** %5, align 8
  %69 = load i8*, i8** %68, align 8
  %70 = call i64 @strlen(i8* %69)
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %7, align 4
  %72 = load i8**, i8*** %5, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = getelementptr inbounds i8, i8* %76, i64 -3
  %78 = call i64 @strcmp(i8* %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %67
  %81 = load i8**, i8*** %5, align 8
  %82 = load i8*, i8** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = getelementptr inbounds i8, i8* %85, i64 -3
  %87 = call i64 @strcmp(i8* %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %80, %67
  %90 = load i32, i32* %7, align 4
  %91 = sub nsw i32 %90, 3
  store i32 %91, i32* %7, align 4
  br label %137

92:                                               ; preds = %80
  %93 = load i8**, i8*** %5, align 8
  %94 = load i8*, i8** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = getelementptr inbounds i8, i8* %97, i64 -2
  %99 = call i64 @strcmp(i8* %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %128, label %101

101:                                              ; preds = %92
  %102 = load i8**, i8*** %5, align 8
  %103 = load i8*, i8** %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = getelementptr inbounds i8, i8* %106, i64 -2
  %108 = call i64 @strcmp(i8* %107, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %128, label %110

110:                                              ; preds = %101
  %111 = load i8**, i8*** %5, align 8
  %112 = load i8*, i8** %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = getelementptr inbounds i8, i8* %115, i64 -2
  %117 = call i64 @strcmp(i8* %116, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %128, label %119

119:                                              ; preds = %110
  %120 = load i8**, i8*** %5, align 8
  %121 = load i8*, i8** %120, align 8
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = getelementptr inbounds i8, i8* %124, i64 -2
  %126 = call i64 @strcmp(i8* %125, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %119, %110, %101, %92
  %129 = load i32, i32* %7, align 4
  %130 = sub nsw i32 %129, 2
  store i32 %130, i32* %7, align 4
  br label %136

131:                                              ; preds = %119
  %132 = load i32, i32* @stderr, align 4
  %133 = load i8**, i8*** %5, align 8
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 (i32, i8*, ...) @fprintf(i32 %132, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i8* %134)
  br label %172

136:                                              ; preds = %128
  br label %137

137:                                              ; preds = %136, %89
  %138 = load i32, i32* %7, align 4
  %139 = add nsw i32 %138, 1
  %140 = call i8* @malloc(i32 %139)
  store i8* %140, i8** %9, align 8
  %141 = load i8*, i8** %9, align 8
  %142 = icmp eq i8* %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %137
  %144 = load i32, i32* @stderr, align 4
  %145 = call i32 (i32, i8*, ...) @fprintf(i32 %144, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %178

146:                                              ; preds = %137
  %147 = load i8*, i8** %9, align 8
  %148 = load i8**, i8*** %5, align 8
  %149 = load i8*, i8** %148, align 8
  %150 = load i32, i32* %7, align 4
  %151 = call i32 @memcpy(i8* %147, i8* %149, i32 %150)
  %152 = load i8*, i8** %9, align 8
  %153 = load i32, i32* %7, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %152, i64 %154
  store i8 0, i8* %155, align 1
  br label %156

156:                                              ; preds = %146, %66
  %157 = load i8**, i8*** %5, align 8
  %158 = load i8*, i8** %157, align 8
  %159 = load i8*, i8** %9, align 8
  %160 = load i32, i32* %8, align 4
  %161 = call i32 @gunzip(%struct.TYPE_5__* %11, i8* %158, i8* %159, i32 %160)
  store i32 %161, i32* %6, align 4
  %162 = load i8*, i8** %9, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %156
  %165 = load i8*, i8** %9, align 8
  %166 = call i32 @free(i8* %165)
  br label %167

167:                                              ; preds = %164, %156
  %168 = load i32, i32* %6, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %167
  br label %178

171:                                              ; preds = %167
  br label %172

172:                                              ; preds = %171, %131
  %173 = load i8**, i8*** %5, align 8
  %174 = getelementptr inbounds i8*, i8** %173, i32 1
  store i8** %174, i8*** %5, align 8
  %175 = load i32, i32* %4, align 4
  %176 = add nsw i32 %175, -1
  store i32 %176, i32* %4, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %63, label %178

178:                                              ; preds = %172, %170, %143
  br label %182

179:                                              ; preds = %59
  %180 = load i32, i32* %8, align 4
  %181 = call i32 @gunzip(%struct.TYPE_5__* %11, i8* null, i8* null, i32 %180)
  store i32 %181, i32* %6, align 4
  br label %182

182:                                              ; preds = %179, %178
  %183 = call i32 @inflateBackEnd(%struct.TYPE_5__* %11)
  %184 = load i32, i32* %6, align 4
  store i32 %184, i32* %3, align 4
  br label %185

185:                                              ; preds = %182, %39, %24
  %186 = load i32, i32* %3, align 4
  ret i32 %186
}

declare dso_local i32 @inflateBackInit(%struct.TYPE_5__*, i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @gunzip(%struct.TYPE_5__*, i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @inflateBackEnd(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
