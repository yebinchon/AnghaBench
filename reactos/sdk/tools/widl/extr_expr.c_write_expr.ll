; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_expr.c_write_expr.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_expr.c_write_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, %struct.TYPE_5__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32, double, i8*, %struct.TYPE_5__*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"0x%x\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%#.15g\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"\22%s\22\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"L\22%s\22\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"'%s'\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"sizeof(\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c" << \00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c" >> \00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c" %% \00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c" * \00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c" / \00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c" + \00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c" - \00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c" & \00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c" || \00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c" && \00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c" ^ \00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c" == \00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c" != \00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c" > \00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c" < \00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c" >= \00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c" <= \00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.38 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.39 = private unnamed_addr constant [4 x i8] c" ? \00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c" : \00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_expr(i32* %0, %struct.TYPE_5__* %1, i32 %2, i32 %3, i8* %4, i32* %5, i8* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  store i8* %6, i8** %14, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %421 [
    i32 130, label %19
    i32 140, label %20
    i32 153, label %27
    i32 157, label %34
    i32 131, label %41
    i32 152, label %54
    i32 133, label %89
    i32 129, label %96
    i32 160, label %103
    i32 147, label %110
    i32 141, label %121
    i32 138, label %132
    i32 142, label %143
    i32 164, label %154
    i32 137, label %165
    i32 161, label %176
    i32 134, label %195
    i32 136, label %206
    i32 135, label %206
    i32 144, label %206
    i32 143, label %206
    i32 158, label %206
    i32 165, label %206
    i32 132, label %206
    i32 163, label %206
    i32 139, label %206
    i32 146, label %206
    i32 148, label %206
    i32 128, label %206
    i32 156, label %206
    i32 151, label %206
    i32 155, label %206
    i32 150, label %206
    i32 154, label %206
    i32 149, label %206
    i32 145, label %295
    i32 159, label %346
    i32 162, label %388
  ]

19:                                               ; preds = %7
  br label %421

20:                                               ; preds = %7
  %21 = load i32*, i32** %8, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (i32*, i8*, ...) @fprintf(i32* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %421

27:                                               ; preds = %7
  %28 = load i32*, i32** %8, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i32*, i8*, ...) @fprintf(i32* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %421

34:                                               ; preds = %7
  %35 = load i32*, i32** %8, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load double, double* %38, align 8
  %40 = call i32 (i32*, i8*, ...) @fprintf(i32* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), double %39)
  br label %421

41:                                               ; preds = %7
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 (i32*, i8*, ...) @fprintf(i32* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %53

50:                                               ; preds = %41
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 (i32*, i8*, ...) @fprintf(i32* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %47
  br label %421

54:                                               ; preds = %7
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %81

57:                                               ; preds = %54
  %58 = load i8*, i8** %12, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %81

60:                                               ; preds = %57
  %61 = load i32*, i32** %13, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %81

63:                                               ; preds = %60
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i8*, i8** %66, align 8
  %68 = load i32*, i32** %13, align 8
  %69 = call i32 @find_identifier(i8* %67, i32* %68, i32* %15)
  %70 = load i32, i32* %15, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %63
  %73 = load i32*, i32** %8, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 (i32*, i8*, ...) @fprintf(i32* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %74, i8* %78)
  br label %421

80:                                               ; preds = %63
  br label %81

81:                                               ; preds = %80, %60, %57, %54
  %82 = load i32*, i32** %8, align 8
  %83 = load i8*, i8** %14, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 (i32*, i8*, ...) @fprintf(i32* %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %83, i8* %87)
  br label %421

89:                                               ; preds = %7
  %90 = load i32*, i32** %8, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 (i32*, i8*, ...) @fprintf(i32* %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %94)
  br label %421

96:                                               ; preds = %7
  %97 = load i32*, i32** %8, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 (i32*, i8*, ...) @fprintf(i32* %97, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %101)
  br label %421

103:                                              ; preds = %7
  %104 = load i32*, i32** %8, align 8
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 (i32*, i8*, ...) @fprintf(i32* %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %108)
  br label %421

110:                                              ; preds = %7
  %111 = load i32*, i32** %8, align 8
  %112 = call i32 (i32*, i8*, ...) @fprintf(i32* %111, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %113 = load i32*, i32** %8, align 8
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = load i32, i32* %11, align 4
  %118 = load i8*, i8** %12, align 8
  %119 = load i32*, i32** %13, align 8
  %120 = load i8*, i8** %14, align 8
  call void @write_expr(i32* %113, %struct.TYPE_5__* %116, i32 1, i32 %117, i8* %118, i32* %119, i8* %120)
  br label %421

121:                                              ; preds = %7
  %122 = load i32*, i32** %8, align 8
  %123 = call i32 (i32*, i8*, ...) @fprintf(i32* %122, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %124 = load i32*, i32** %8, align 8
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = load i32, i32* %11, align 4
  %129 = load i8*, i8** %12, align 8
  %130 = load i32*, i32** %13, align 8
  %131 = load i8*, i8** %14, align 8
  call void @write_expr(i32* %124, %struct.TYPE_5__* %127, i32 1, i32 %128, i8* %129, i32* %130, i8* %131)
  br label %421

132:                                              ; preds = %7
  %133 = load i32*, i32** %8, align 8
  %134 = call i32 (i32*, i8*, ...) @fprintf(i32* %133, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %135 = load i32*, i32** %8, align 8
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 2
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = load i32, i32* %11, align 4
  %140 = load i8*, i8** %12, align 8
  %141 = load i32*, i32** %13, align 8
  %142 = load i8*, i8** %14, align 8
  call void @write_expr(i32* %135, %struct.TYPE_5__* %138, i32 1, i32 %139, i8* %140, i32* %141, i8* %142)
  br label %421

143:                                              ; preds = %7
  %144 = load i32*, i32** %8, align 8
  %145 = call i32 (i32*, i8*, ...) @fprintf(i32* %144, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %146 = load i32*, i32** %8, align 8
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %148, align 8
  %150 = load i32, i32* %11, align 4
  %151 = load i8*, i8** %12, align 8
  %152 = load i32*, i32** %13, align 8
  %153 = load i8*, i8** %14, align 8
  call void @write_expr(i32* %146, %struct.TYPE_5__* %149, i32 1, i32 %150, i8* %151, i32* %152, i8* %153)
  br label %421

154:                                              ; preds = %7
  %155 = load i32*, i32** %8, align 8
  %156 = call i32 (i32*, i8*, ...) @fprintf(i32* %155, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %157 = load i32*, i32** %8, align 8
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 2
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %159, align 8
  %161 = load i32, i32* %11, align 4
  %162 = load i8*, i8** %12, align 8
  %163 = load i32*, i32** %13, align 8
  %164 = load i8*, i8** %14, align 8
  call void @write_expr(i32* %157, %struct.TYPE_5__* %160, i32 1, i32 %161, i8* %162, i32* %163, i8* %164)
  br label %421

165:                                              ; preds = %7
  %166 = load i32*, i32** %8, align 8
  %167 = call i32 (i32*, i8*, ...) @fprintf(i32* %166, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %168 = load i32*, i32** %8, align 8
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 2
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %170, align 8
  %172 = load i32, i32* %11, align 4
  %173 = load i8*, i8** %12, align 8
  %174 = load i32*, i32** %13, align 8
  %175 = load i8*, i8** %14, align 8
  call void @write_expr(i32* %168, %struct.TYPE_5__* %171, i32 1, i32 %172, i8* %173, i32* %174, i8* %175)
  br label %421

176:                                              ; preds = %7
  %177 = load i32*, i32** %8, align 8
  %178 = call i32 (i32*, i8*, ...) @fprintf(i32* %177, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  %179 = load i32*, i32** %8, align 8
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @write_type_decl(i32* %179, i32 %183, i32* null)
  %185 = load i32*, i32** %8, align 8
  %186 = call i32 (i32*, i8*, ...) @fprintf(i32* %185, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %187 = load i32*, i32** %8, align 8
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 2
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %189, align 8
  %191 = load i32, i32* %11, align 4
  %192 = load i8*, i8** %12, align 8
  %193 = load i32*, i32** %13, align 8
  %194 = load i8*, i8** %14, align 8
  call void @write_expr(i32* %187, %struct.TYPE_5__* %190, i32 1, i32 %191, i8* %192, i32* %193, i8* %194)
  br label %421

195:                                              ; preds = %7
  %196 = load i32*, i32** %8, align 8
  %197 = call i32 (i32*, i8*, ...) @fprintf(i32* %196, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  %198 = load i32*, i32** %8, align 8
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @write_type_decl(i32* %198, i32 %202, i32* null)
  %204 = load i32*, i32** %8, align 8
  %205 = call i32 (i32*, i8*, ...) @fprintf(i32* %204, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  br label %421

206:                                              ; preds = %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7
  %207 = load i32, i32* %10, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %206
  %210 = load i32*, i32** %8, align 8
  %211 = call i32 (i32*, i8*, ...) @fprintf(i32* %210, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  br label %212

212:                                              ; preds = %209, %206
  %213 = load i32*, i32** %8, align 8
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 2
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %215, align 8
  %217 = load i32, i32* %11, align 4
  %218 = load i8*, i8** %12, align 8
  %219 = load i32*, i32** %13, align 8
  %220 = load i8*, i8** %14, align 8
  call void @write_expr(i32* %213, %struct.TYPE_5__* %216, i32 1, i32 %217, i8* %218, i32* %219, i8* %220)
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  switch i32 %223, label %278 [
    i32 136, label %224
    i32 135, label %227
    i32 144, label %230
    i32 143, label %233
    i32 158, label %236
    i32 165, label %239
    i32 132, label %242
    i32 163, label %245
    i32 139, label %248
    i32 146, label %251
    i32 148, label %254
    i32 128, label %257
    i32 156, label %260
    i32 151, label %263
    i32 155, label %266
    i32 150, label %269
    i32 154, label %272
    i32 149, label %275
  ]

224:                                              ; preds = %212
  %225 = load i32*, i32** %8, align 8
  %226 = call i32 (i32*, i8*, ...) @fprintf(i32* %225, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  br label %279

227:                                              ; preds = %212
  %228 = load i32*, i32** %8, align 8
  %229 = call i32 (i32*, i8*, ...) @fprintf(i32* %228, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  br label %279

230:                                              ; preds = %212
  %231 = load i32*, i32** %8, align 8
  %232 = call i32 (i32*, i8*, ...) @fprintf(i32* %231, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  br label %279

233:                                              ; preds = %212
  %234 = load i32*, i32** %8, align 8
  %235 = call i32 (i32*, i8*, ...) @fprintf(i32* %234, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0))
  br label %279

236:                                              ; preds = %212
  %237 = load i32*, i32** %8, align 8
  %238 = call i32 (i32*, i8*, ...) @fprintf(i32* %237, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0))
  br label %279

239:                                              ; preds = %212
  %240 = load i32*, i32** %8, align 8
  %241 = call i32 (i32*, i8*, ...) @fprintf(i32* %240, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0))
  br label %279

242:                                              ; preds = %212
  %243 = load i32*, i32** %8, align 8
  %244 = call i32 (i32*, i8*, ...) @fprintf(i32* %243, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0))
  br label %279

245:                                              ; preds = %212
  %246 = load i32*, i32** %8, align 8
  %247 = call i32 (i32*, i8*, ...) @fprintf(i32* %246, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0))
  br label %279

248:                                              ; preds = %212
  %249 = load i32*, i32** %8, align 8
  %250 = call i32 (i32*, i8*, ...) @fprintf(i32* %249, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0))
  br label %279

251:                                              ; preds = %212
  %252 = load i32*, i32** %8, align 8
  %253 = call i32 (i32*, i8*, ...) @fprintf(i32* %252, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0))
  br label %279

254:                                              ; preds = %212
  %255 = load i32*, i32** %8, align 8
  %256 = call i32 (i32*, i8*, ...) @fprintf(i32* %255, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0))
  br label %279

257:                                              ; preds = %212
  %258 = load i32*, i32** %8, align 8
  %259 = call i32 (i32*, i8*, ...) @fprintf(i32* %258, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0))
  br label %279

260:                                              ; preds = %212
  %261 = load i32*, i32** %8, align 8
  %262 = call i32 (i32*, i8*, ...) @fprintf(i32* %261, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0))
  br label %279

263:                                              ; preds = %212
  %264 = load i32*, i32** %8, align 8
  %265 = call i32 (i32*, i8*, ...) @fprintf(i32* %264, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0))
  br label %279

266:                                              ; preds = %212
  %267 = load i32*, i32** %8, align 8
  %268 = call i32 (i32*, i8*, ...) @fprintf(i32* %267, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0))
  br label %279

269:                                              ; preds = %212
  %270 = load i32*, i32** %8, align 8
  %271 = call i32 (i32*, i8*, ...) @fprintf(i32* %270, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0))
  br label %279

272:                                              ; preds = %212
  %273 = load i32*, i32** %8, align 8
  %274 = call i32 (i32*, i8*, ...) @fprintf(i32* %273, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0))
  br label %279

275:                                              ; preds = %212
  %276 = load i32*, i32** %8, align 8
  %277 = call i32 (i32*, i8*, ...) @fprintf(i32* %276, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0))
  br label %279

278:                                              ; preds = %212
  br label %279

279:                                              ; preds = %278, %275, %272, %269, %266, %263, %260, %257, %254, %251, %248, %245, %242, %239, %236, %233, %230, %227, %224
  %280 = load i32*, i32** %8, align 8
  %281 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i32 0, i32 3
  %284 = load %struct.TYPE_5__*, %struct.TYPE_5__** %283, align 8
  %285 = load i32, i32* %11, align 4
  %286 = load i8*, i8** %12, align 8
  %287 = load i32*, i32** %13, align 8
  %288 = load i8*, i8** %14, align 8
  call void @write_expr(i32* %280, %struct.TYPE_5__* %284, i32 1, i32 %285, i8* %286, i32* %287, i8* %288)
  %289 = load i32, i32* %10, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %294

291:                                              ; preds = %279
  %292 = load i32*, i32** %8, align 8
  %293 = call i32 (i32*, i8*, ...) @fprintf(i32* %292, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  br label %294

294:                                              ; preds = %291, %279
  br label %421

295:                                              ; preds = %7
  %296 = load i32, i32* %10, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %301

298:                                              ; preds = %295
  %299 = load i32*, i32** %8, align 8
  %300 = call i32 (i32*, i8*, ...) @fprintf(i32* %299, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  br label %301

301:                                              ; preds = %298, %295
  %302 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %303 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %302, i32 0, i32 2
  %304 = load %struct.TYPE_5__*, %struct.TYPE_5__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = icmp eq i32 %306, 137
  br i1 %307, label %308, label %321

308:                                              ; preds = %301
  %309 = load i32*, i32** %8, align 8
  %310 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %311 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %310, i32 0, i32 2
  %312 = load %struct.TYPE_5__*, %struct.TYPE_5__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %312, i32 0, i32 2
  %314 = load %struct.TYPE_5__*, %struct.TYPE_5__** %313, align 8
  %315 = load i32, i32* %11, align 4
  %316 = load i8*, i8** %12, align 8
  %317 = load i32*, i32** %13, align 8
  %318 = load i8*, i8** %14, align 8
  call void @write_expr(i32* %309, %struct.TYPE_5__* %314, i32 1, i32 %315, i8* %316, i32* %317, i8* %318)
  %319 = load i32*, i32** %8, align 8
  %320 = call i32 (i32*, i8*, ...) @fprintf(i32* %319, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0))
  br label %332

321:                                              ; preds = %301
  %322 = load i32*, i32** %8, align 8
  %323 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %324 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %323, i32 0, i32 2
  %325 = load %struct.TYPE_5__*, %struct.TYPE_5__** %324, align 8
  %326 = load i32, i32* %11, align 4
  %327 = load i8*, i8** %12, align 8
  %328 = load i32*, i32** %13, align 8
  %329 = load i8*, i8** %14, align 8
  call void @write_expr(i32* %322, %struct.TYPE_5__* %325, i32 1, i32 %326, i8* %327, i32* %328, i8* %329)
  %330 = load i32*, i32** %8, align 8
  %331 = call i32 (i32*, i8*, ...) @fprintf(i32* %330, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0))
  br label %332

332:                                              ; preds = %321, %308
  %333 = load i32*, i32** %8, align 8
  %334 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %335 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %334, i32 0, i32 1
  %336 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %335, i32 0, i32 3
  %337 = load %struct.TYPE_5__*, %struct.TYPE_5__** %336, align 8
  %338 = load i8*, i8** %12, align 8
  %339 = load i32*, i32** %13, align 8
  call void @write_expr(i32* %333, %struct.TYPE_5__* %337, i32 1, i32 0, i8* %338, i32* %339, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.38, i64 0, i64 0))
  %340 = load i32, i32* %10, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %345

342:                                              ; preds = %332
  %343 = load i32*, i32** %8, align 8
  %344 = call i32 (i32*, i8*, ...) @fprintf(i32* %343, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  br label %345

345:                                              ; preds = %342, %332
  br label %421

346:                                              ; preds = %7
  %347 = load i32, i32* %10, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %352

349:                                              ; preds = %346
  %350 = load i32*, i32** %8, align 8
  %351 = call i32 (i32*, i8*, ...) @fprintf(i32* %350, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  br label %352

352:                                              ; preds = %349, %346
  %353 = load i32*, i32** %8, align 8
  %354 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %355 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %354, i32 0, i32 2
  %356 = load %struct.TYPE_5__*, %struct.TYPE_5__** %355, align 8
  %357 = load i32, i32* %11, align 4
  %358 = load i8*, i8** %12, align 8
  %359 = load i32*, i32** %13, align 8
  %360 = load i8*, i8** %14, align 8
  call void @write_expr(i32* %353, %struct.TYPE_5__* %356, i32 1, i32 %357, i8* %358, i32* %359, i8* %360)
  %361 = load i32*, i32** %8, align 8
  %362 = call i32 (i32*, i8*, ...) @fprintf(i32* %361, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0))
  %363 = load i32*, i32** %8, align 8
  %364 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %365 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %364, i32 0, i32 1
  %366 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %365, i32 0, i32 3
  %367 = load %struct.TYPE_5__*, %struct.TYPE_5__** %366, align 8
  %368 = load i32, i32* %11, align 4
  %369 = load i8*, i8** %12, align 8
  %370 = load i32*, i32** %13, align 8
  %371 = load i8*, i8** %14, align 8
  call void @write_expr(i32* %363, %struct.TYPE_5__* %367, i32 1, i32 %368, i8* %369, i32* %370, i8* %371)
  %372 = load i32*, i32** %8, align 8
  %373 = call i32 (i32*, i8*, ...) @fprintf(i32* %372, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0))
  %374 = load i32*, i32** %8, align 8
  %375 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %376 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %375, i32 0, i32 3
  %377 = load %struct.TYPE_5__*, %struct.TYPE_5__** %376, align 8
  %378 = load i32, i32* %11, align 4
  %379 = load i8*, i8** %12, align 8
  %380 = load i32*, i32** %13, align 8
  %381 = load i8*, i8** %14, align 8
  call void @write_expr(i32* %374, %struct.TYPE_5__* %377, i32 1, i32 %378, i8* %379, i32* %380, i8* %381)
  %382 = load i32, i32* %10, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %387

384:                                              ; preds = %352
  %385 = load i32*, i32** %8, align 8
  %386 = call i32 (i32*, i8*, ...) @fprintf(i32* %385, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  br label %387

387:                                              ; preds = %384, %352
  br label %421

388:                                              ; preds = %7
  %389 = load i32, i32* %10, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %394

391:                                              ; preds = %388
  %392 = load i32*, i32** %8, align 8
  %393 = call i32 (i32*, i8*, ...) @fprintf(i32* %392, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  br label %394

394:                                              ; preds = %391, %388
  %395 = load i32*, i32** %8, align 8
  %396 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %397 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %396, i32 0, i32 2
  %398 = load %struct.TYPE_5__*, %struct.TYPE_5__** %397, align 8
  %399 = load i32, i32* %11, align 4
  %400 = load i8*, i8** %12, align 8
  %401 = load i32*, i32** %13, align 8
  %402 = load i8*, i8** %14, align 8
  call void @write_expr(i32* %395, %struct.TYPE_5__* %398, i32 1, i32 %399, i8* %400, i32* %401, i8* %402)
  %403 = load i32*, i32** %8, align 8
  %404 = call i32 (i32*, i8*, ...) @fprintf(i32* %403, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0))
  %405 = load i32*, i32** %8, align 8
  %406 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %407 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %406, i32 0, i32 1
  %408 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %407, i32 0, i32 3
  %409 = load %struct.TYPE_5__*, %struct.TYPE_5__** %408, align 8
  %410 = load i8*, i8** %12, align 8
  %411 = load i32*, i32** %13, align 8
  %412 = load i8*, i8** %14, align 8
  call void @write_expr(i32* %405, %struct.TYPE_5__* %409, i32 1, i32 1, i8* %410, i32* %411, i8* %412)
  %413 = load i32*, i32** %8, align 8
  %414 = call i32 (i32*, i8*, ...) @fprintf(i32* %413, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0))
  %415 = load i32, i32* %10, align 4
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %420

417:                                              ; preds = %394
  %418 = load i32*, i32** %8, align 8
  %419 = call i32 (i32*, i8*, ...) @fprintf(i32* %418, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  br label %420

420:                                              ; preds = %417, %394
  br label %421

421:                                              ; preds = %7, %420, %387, %345, %294, %195, %176, %165, %154, %143, %132, %121, %110, %103, %96, %89, %81, %72, %53, %34, %27, %20, %19
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @find_identifier(i8*, i32*, i32*) #1

declare dso_local i32 @write_type_decl(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
