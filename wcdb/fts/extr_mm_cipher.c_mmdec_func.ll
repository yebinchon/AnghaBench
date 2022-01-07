; ModuleID = '/home/carl/AnghaBench/wcdb/fts/extr_mm_cipher.c_mmdec_func.c'
source_filename = "/home/carl/AnghaBench/wcdb/fts/extr_mm_cipher.c_mmdec_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@U_ZERO_ERROR = common dso_local global i64 0, align 8
@SQLITE_BLOB = common dso_local global i32 0, align 4
@U_BUFFER_OVERFLOW_ERROR = common dso_local global i64 0, align 8
@U_STRING_NOT_TERMINATED_WARNING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"Failed transforming text from internal encoding.\00", align 1
@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@SQLITE_ERROR = common dso_local global i32 0, align 4
@SQLITE_MISUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @mmdec_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmdec_func(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca [1024 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [512 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  store i8* %16, i8** %9, align 8
  %17 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  store i8* %17, i8** %12, align 8
  %18 = load i64, i64* @U_ZERO_ERROR, align 8
  store i64 %18, i64* %14, align 8
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %144

22:                                               ; preds = %3
  %23 = load i32**, i32*** %6, align 8
  %24 = getelementptr inbounds i32*, i32** %23, i64 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @sqlite3_value_type(i32* %25)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = load i32, i32* @SQLITE_BLOB, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load i32*, i32** %4, align 8
  %32 = load i32**, i32*** %6, align 8
  %33 = getelementptr inbounds i32*, i32** %32, i64 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @sqlite3_result_value(i32* %31, i32* %34)
  br label %162

36:                                               ; preds = %22
  %37 = load i32*, i32** %4, align 8
  %38 = call i64 @sqlite3_user_data(i32* %37)
  %39 = inttoptr i64 %38 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %39, %struct.TYPE_3__** %7, align 8
  %40 = load i32**, i32*** %6, align 8
  %41 = getelementptr inbounds i32*, i32** %40, i64 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @sqlite3_value_bytes(i32* %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = icmp ugt i64 %45, 1024
  br i1 %46, label %47, label %55

47:                                               ; preds = %36
  %48 = load i32, i32* %10, align 4
  %49 = call i64 @sqlite3_malloc(i32 %48)
  %50 = inttoptr i64 %49 to i8*
  store i8* %50, i8** %9, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  br label %126

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54, %36
  %56 = load i8*, i8** %9, align 8
  %57 = load i32**, i32*** %6, align 8
  %58 = getelementptr inbounds i32*, i32** %57, i64 0
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @sqlite3_value_blob(i32* %59)
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @memcpy(i8* %56, i32 %60, i32 %61)
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @do_rc4(%struct.TYPE_3__* %63, i8* %64, i32 %65)
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i8*, i8** %12, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @ucnv_toUChars(i32 %69, i8* %70, i32 512, i8* %71, i32 %72, i64* %14)
  store i32 %73, i32* %13, align 4
  %74 = load i64, i64* %14, align 8
  %75 = load i64, i64* @U_BUFFER_OVERFLOW_ERROR, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %93

77:                                               ; preds = %55
  %78 = load i64, i64* @U_ZERO_ERROR, align 8
  store i64 %78, i64* %14, align 8
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = mul i64 %80, 1
  %82 = trunc i64 %81 to i32
  %83 = call i64 @sqlite3_malloc(i32 %82)
  %84 = inttoptr i64 %83 to i8*
  store i8* %84, i8** %12, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i8*, i8** %12, align 8
  %89 = load i32, i32* %13, align 4
  %90 = load i8*, i8** %9, align 8
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @ucnv_toUChars(i32 %87, i8* %88, i32 %89, i8* %90, i32 %91, i64* %14)
  store i32 %92, i32* %13, align 4
  br label %93

93:                                               ; preds = %77, %55
  %94 = load i64, i64* %14, align 8
  %95 = call i64 @U_FAILURE(i64 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %93
  %98 = load i64, i64* %14, align 8
  %99 = load i64, i64* @U_STRING_NOT_TERMINATED_WARNING, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = call i32 @sqlite3_mm_set_last_error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %126

103:                                              ; preds = %97, %93
  %104 = load i32*, i32** %4, align 8
  %105 = load i8*, i8** %12, align 8
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = mul i64 %107, 1
  %109 = trunc i64 %108 to i32
  %110 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %111 = call i32 @sqlite3_result_text16(i32* %104, i8* %105, i32 %109, i32 %110)
  %112 = load i8*, i8** %9, align 8
  %113 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %114 = icmp ne i8* %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %103
  %116 = load i8*, i8** %9, align 8
  %117 = call i32 @sqlite3_free(i8* %116)
  br label %118

118:                                              ; preds = %115, %103
  %119 = load i8*, i8** %12, align 8
  %120 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %121 = icmp ne i8* %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = load i8*, i8** %12, align 8
  %124 = call i32 @sqlite3_free(i8* %123)
  br label %125

125:                                              ; preds = %122, %118
  br label %162

126:                                              ; preds = %101, %53
  %127 = load i8*, i8** %9, align 8
  %128 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %129 = icmp ne i8* %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %126
  %131 = load i8*, i8** %9, align 8
  %132 = call i32 @sqlite3_free(i8* %131)
  br label %133

133:                                              ; preds = %130, %126
  %134 = load i8*, i8** %12, align 8
  %135 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %136 = icmp ne i8* %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = load i8*, i8** %12, align 8
  %139 = call i32 @sqlite3_free(i8* %138)
  br label %140

140:                                              ; preds = %137, %133
  %141 = load i32*, i32** %4, align 8
  %142 = load i32, i32* @SQLITE_ERROR, align 4
  %143 = call i32 @sqlite3_result_error_code(i32* %141, i32 %142)
  br label %162

144:                                              ; preds = %21
  %145 = load i8*, i8** %9, align 8
  %146 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %147 = icmp ne i8* %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %144
  %149 = load i8*, i8** %9, align 8
  %150 = call i32 @sqlite3_free(i8* %149)
  br label %151

151:                                              ; preds = %148, %144
  %152 = load i8*, i8** %12, align 8
  %153 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %154 = icmp ne i8* %152, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %151
  %156 = load i8*, i8** %12, align 8
  %157 = call i32 @sqlite3_free(i8* %156)
  br label %158

158:                                              ; preds = %155, %151
  %159 = load i32*, i32** %4, align 8
  %160 = load i32, i32* @SQLITE_MISUSE, align 4
  %161 = call i32 @sqlite3_result_error_code(i32* %159, i32 %160)
  br label %162

162:                                              ; preds = %158, %140, %125, %30
  ret void
}

declare dso_local i32 @sqlite3_value_type(i32*) #1

declare dso_local i32 @sqlite3_result_value(i32*, i32*) #1

declare dso_local i64 @sqlite3_user_data(i32*) #1

declare dso_local i32 @sqlite3_value_bytes(i32*) #1

declare dso_local i64 @sqlite3_malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @sqlite3_value_blob(i32*) #1

declare dso_local i32 @do_rc4(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @ucnv_toUChars(i32, i8*, i32, i8*, i32, i64*) #1

declare dso_local i64 @U_FAILURE(i64) #1

declare dso_local i32 @sqlite3_mm_set_last_error(i8*) #1

declare dso_local i32 @sqlite3_result_text16(i32*, i8*, i32, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @sqlite3_result_error_code(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
