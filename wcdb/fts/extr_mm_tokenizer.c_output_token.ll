; ModuleID = '/home/carl/AnghaBench/wcdb/fts/extr_mm_tokenizer.c_output_token.c'
source_filename = "/home/carl/AnghaBench/wcdb/fts/extr_mm_tokenizer.c_output_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32*, i32, i32* }

@U_ZERO_ERROR = common dso_local global i32 0, align 4
@UNORM_NFKD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Normalize token failed. ICU status: %d, input: %s\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@U_FOLD_CASE_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"FoldCase token failed. ICU status: %d, input: %s\00", align 1
@MINIMAL_OUT_BUFFER_LENGTH = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"Transform token to UTF-8 failed. ICU status: %d, input: %s\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32, i8**, i32*, i32*, i32*, i32*)* @output_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @output_token(%struct.TYPE_3__* %0, i32 %1, i32 %2, i8** %3, i32* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca [256 x i32], align 16
  %19 = alloca [256 x i32], align 16
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i8** %3, i8*** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %27 = load i32, i32* @U_ZERO_ERROR, align 4
  store i32 %27, i32* %20, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %11, align 4
  %30 = sub nsw i32 %28, %29
  store i32 %30, i32* %22, align 4
  %31 = load i32, i32* %22, align 4
  %32 = icmp sgt i32 %31, 256
  br i1 %32, label %33, label %34

33:                                               ; preds = %8
  store i32 256, i32* %22, align 4
  br label %34

34:                                               ; preds = %33, %8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %22, align 4
  %42 = load i32, i32* @UNORM_NFKD, align 4
  %43 = getelementptr inbounds [256 x i32], [256 x i32]* %18, i64 0, i64 0
  %44 = call i32 @unorm_normalize(i32* %40, i32 %41, i32 %42, i32 0, i32* %43, i32 256, i32* %20)
  store i32 %44, i32* %21, align 4
  %45 = load i32, i32* %20, align 4
  %46 = call i64 @U_FAILURE(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %34
  %49 = load i32, i32* %21, align 4
  %50 = sext i32 %49 to i64
  %51 = icmp ugt i64 %50, 256
  br i1 %51, label %52, label %67

52:                                               ; preds = %48, %34
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 4
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %22, align 4
  %60 = call i8* @generate_token_printable_code(i32* %58, i32 %59)
  store i8* %60, i8** %23, align 8
  %61 = load i32, i32* %20, align 4
  %62 = load i8*, i8** %23, align 8
  %63 = call i32 @sqlite3_mm_set_last_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %61, i8* %62)
  %64 = load i8*, i8** %23, align 8
  %65 = call i32 @free(i8* %64)
  %66 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %66, i32* %9, align 4
  br label %211

67:                                               ; preds = %48
  %68 = load i32, i32* %21, align 4
  store i32 %68, i32* %22, align 4
  %69 = getelementptr inbounds [256 x i32], [256 x i32]* %19, i64 0, i64 0
  %70 = getelementptr inbounds [256 x i32], [256 x i32]* %18, i64 0, i64 0
  %71 = load i32, i32* %22, align 4
  %72 = load i32, i32* @U_FOLD_CASE_DEFAULT, align 4
  %73 = call i32 @u_strFoldCase(i32* %69, i32 256, i32* %70, i32 %71, i32 %72, i32* %20)
  store i32 %73, i32* %21, align 4
  %74 = load i32, i32* %20, align 4
  %75 = call i64 @U_FAILURE(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %67
  %78 = load i32, i32* %21, align 4
  %79 = sext i32 %78 to i64
  %80 = icmp ugt i64 %79, 256
  br i1 %80, label %81, label %91

81:                                               ; preds = %77, %67
  %82 = getelementptr inbounds [256 x i32], [256 x i32]* %18, i64 0, i64 0
  %83 = load i32, i32* %22, align 4
  %84 = call i8* @generate_token_printable_code(i32* %82, i32 %83)
  store i8* %84, i8** %24, align 8
  %85 = load i32, i32* %20, align 4
  %86 = load i8*, i8** %24, align 8
  %87 = call i32 @sqlite3_mm_set_last_error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %85, i8* %86)
  %88 = load i8*, i8** %24, align 8
  %89 = call i32 @free(i8* %88)
  %90 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %90, i32* %9, align 4
  br label %211

91:                                               ; preds = %77
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = icmp eq i8* %94, null
  br i1 %95, label %96, label %115

96:                                               ; preds = %91
  %97 = load i32, i32* @MINIMAL_OUT_BUFFER_LENGTH, align 4
  %98 = sext i32 %97 to i64
  %99 = mul i64 %98, 1
  %100 = trunc i64 %99 to i32
  %101 = call i64 @sqlite3_malloc(i32 %100)
  %102 = inttoptr i64 %101 to i8*
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  store i8* %102, i8** %104, align 8
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %111, label %109

109:                                              ; preds = %96
  %110 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %110, i32* %9, align 4
  br label %211

111:                                              ; preds = %96
  %112 = load i32, i32* @MINIMAL_OUT_BUFFER_LENGTH, align 4
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 8
  br label %115

115:                                              ; preds = %111, %91
  %116 = load i32, i32* %21, align 4
  store i32 %116, i32* %22, align 4
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = getelementptr inbounds [256 x i32], [256 x i32]* %19, i64 0, i64 0
  %124 = load i32, i32* %22, align 4
  %125 = call i32 @u_strToUTF8(i8* %119, i32 %122, i32* %21, i32* %123, i32 %124, i32* %20)
  %126 = load i32, i32* %21, align 4
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = icmp sgt i32 %126, %129
  br i1 %130, label %131, label %162

131:                                              ; preds = %115
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = load i32, i32* %21, align 4
  %136 = sext i32 %135 to i64
  %137 = mul i64 %136, 1
  %138 = trunc i64 %137 to i32
  %139 = call i64 @sqlite3_realloc(i8* %134, i32 %138)
  %140 = inttoptr i64 %139 to i8*
  store i8* %140, i8** %25, align 8
  %141 = load i8*, i8** %25, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %145, label %143

143:                                              ; preds = %131
  %144 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %144, i32* %9, align 4
  br label %211

145:                                              ; preds = %131
  %146 = load i8*, i8** %25, align 8
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  store i8* %146, i8** %148, align 8
  %149 = load i32, i32* %21, align 4
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 8
  %152 = load i32, i32* @U_ZERO_ERROR, align 4
  store i32 %152, i32* %20, align 4
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = getelementptr inbounds [256 x i32], [256 x i32]* %19, i64 0, i64 0
  %160 = load i32, i32* %22, align 4
  %161 = call i32 @u_strToUTF8(i8* %155, i32 %158, i32* %21, i32* %159, i32 %160, i32* %20)
  br label %162

162:                                              ; preds = %145, %115
  %163 = load i32, i32* %20, align 4
  %164 = call i64 @U_FAILURE(i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %172, label %166

166:                                              ; preds = %162
  %167 = load i32, i32* %21, align 4
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = icmp sgt i32 %167, %170
  br i1 %171, label %172, label %182

172:                                              ; preds = %166, %162
  %173 = getelementptr inbounds [256 x i32], [256 x i32]* %19, i64 0, i64 0
  %174 = load i32, i32* %22, align 4
  %175 = call i8* @generate_token_printable_code(i32* %173, i32 %174)
  store i8* %175, i8** %26, align 8
  %176 = load i32, i32* %20, align 4
  %177 = load i8*, i8** %26, align 8
  %178 = call i32 @sqlite3_mm_set_last_error(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %176, i8* %177)
  %179 = load i8*, i8** %26, align 8
  %180 = call i32 @free(i8* %179)
  %181 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %181, i32* %9, align 4
  br label %211

182:                                              ; preds = %166
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 0
  %185 = load i8*, i8** %184, align 8
  %186 = load i8**, i8*** %13, align 8
  store i8* %185, i8** %186, align 8
  %187 = load i32, i32* %21, align 4
  %188 = load i32*, i32** %14, align 8
  store i32 %187, i32* %188, align 4
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 2
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %11, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = load i32*, i32** %15, align 8
  store i32 %195, i32* %196, align 4
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 2
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %12, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = load i32*, i32** %16, align 8
  store i32 %203, i32* %204, align 4
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 8
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %206, align 8
  %209 = load i32*, i32** %17, align 8
  store i32 %207, i32* %209, align 4
  %210 = load i32, i32* @SQLITE_OK, align 4
  store i32 %210, i32* %9, align 4
  br label %211

211:                                              ; preds = %182, %172, %143, %109, %81, %52
  %212 = load i32, i32* %9, align 4
  ret i32 %212
}

declare dso_local i32 @unorm_normalize(i32*, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @U_FAILURE(i32) #1

declare dso_local i8* @generate_token_printable_code(i32*, i32) #1

declare dso_local i32 @sqlite3_mm_set_last_error(i8*, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @u_strFoldCase(i32*, i32, i32*, i32, i32, i32*) #1

declare dso_local i64 @sqlite3_malloc(i32) #1

declare dso_local i32 @u_strToUTF8(i8*, i32, i32*, i32*, i32, i32*) #1

declare dso_local i64 @sqlite3_realloc(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
