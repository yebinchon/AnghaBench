; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_nextchar.c_nextCharFunc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_nextchar.c_nextCharFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i32, i64, i32, i8*, i32 }

@.str = private unnamed_addr constant [9 x i8] c"AND (%s)\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"collate \22%w\22\00", align 1
@.str.3 = private unnamed_addr constant [108 x i8] c"SELECT %s FROM %s WHERE %s>=(?1 || ?2) %s   AND %s<=(?1 || char(1114111)) %s   %s ORDER BY 1 %s ASC LIMIT 1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @nextCharFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nextCharFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_4__, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %19 = load i32**, i32*** %6, align 8
  %20 = getelementptr inbounds i32*, i32** %19, i64 1
  %21 = load i32*, i32** %20, align 8
  %22 = call i8* @sqlite3_value_text(i32* %21)
  store i8* %22, i8** %8, align 8
  %23 = load i32**, i32*** %6, align 8
  %24 = getelementptr inbounds i32*, i32** %23, i64 2
  %25 = load i32*, i32** %24, align 8
  %26 = call i8* @sqlite3_value_text(i32* %25)
  store i8* %26, i8** %9, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  %27 = call i32 @memset(%struct.TYPE_4__* %7, i32 0, i32 56)
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @sqlite3_context_db_handle(i32* %28)
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 4
  store i32 %29, i32* %30, align 8
  %31 = load i32**, i32*** %6, align 8
  %32 = getelementptr inbounds i32*, i32** %31, i64 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i8* @sqlite3_value_text(i32* %33)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 5
  store i8* %34, i8** %35, align 8
  %36 = load i32**, i32*** %6, align 8
  %37 = getelementptr inbounds i32*, i32** %36, i64 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @sqlite3_value_bytes(i32* %38)
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 6
  store i32 %39, i32* %40, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %3
  %44 = load i8*, i8** %9, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 5
  %48 = load i8*, i8** %47, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %46, %43, %3
  br label %217

51:                                               ; preds = %46
  %52 = load i32, i32* %5, align 4
  %53 = icmp sge i32 %52, 4
  br i1 %53, label %54, label %75

54:                                               ; preds = %51
  %55 = load i32**, i32*** %6, align 8
  %56 = getelementptr inbounds i32*, i32** %55, i64 3
  %57 = load i32*, i32** %56, align 8
  %58 = call i8* @sqlite3_value_text(i32* %57)
  store i8* %58, i8** %10, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %75

60:                                               ; preds = %54
  %61 = load i8*, i8** %10, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %60
  %67 = load i8*, i8** %10, align 8
  %68 = call i8* (i8*, i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %67)
  store i8* %68, i8** %12, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @sqlite3_result_error_nomem(i32* %72)
  br label %217

74:                                               ; preds = %66
  br label %76

75:                                               ; preds = %60, %54, %51
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  br label %76

76:                                               ; preds = %75, %74
  %77 = load i32, i32* %5, align 4
  %78 = icmp sge i32 %77, 5
  br i1 %78, label %79, label %108

79:                                               ; preds = %76
  %80 = load i32**, i32*** %6, align 8
  %81 = getelementptr inbounds i32*, i32** %80, i64 4
  %82 = load i32*, i32** %81, align 8
  %83 = call i8* @sqlite3_value_text(i32* %82)
  store i8* %83, i8** %11, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %108

85:                                               ; preds = %79
  %86 = load i8*, i8** %11, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %108

91:                                               ; preds = %85
  %92 = load i8*, i8** %11, align 8
  %93 = call i8* (i8*, i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %92)
  store i8* %93, i8** %13, align 8
  %94 = load i8*, i8** %13, align 8
  %95 = icmp eq i8* %94, null
  br i1 %95, label %96, label %107

96:                                               ; preds = %91
  %97 = load i32*, i32** %4, align 8
  %98 = call i32 @sqlite3_result_error_nomem(i32* %97)
  %99 = load i8*, i8** %12, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 0
  %101 = load i8, i8* %100, align 1
  %102 = icmp ne i8 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %96
  %104 = load i8*, i8** %12, align 8
  %105 = call i32 @sqlite3_free(i8* %104)
  br label %106

106:                                              ; preds = %103, %96
  br label %217

107:                                              ; preds = %91
  br label %109

108:                                              ; preds = %85, %79, %76
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  br label %109

109:                                              ; preds = %108, %107
  %110 = load i8*, i8** %9, align 8
  %111 = load i8*, i8** %8, align 8
  %112 = load i8*, i8** %9, align 8
  %113 = load i8*, i8** %13, align 8
  %114 = load i8*, i8** %9, align 8
  %115 = load i8*, i8** %13, align 8
  %116 = load i8*, i8** %12, align 8
  %117 = load i8*, i8** %13, align 8
  %118 = call i8* (i8*, i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.3, i64 0, i64 0), i8* %110, i8* %111, i8* %112, i8* %113, i8* %114, i8* %115, i8* %116, i8* %117)
  store i8* %118, i8** %14, align 8
  %119 = load i8*, i8** %12, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 0
  %121 = load i8, i8* %120, align 1
  %122 = icmp ne i8 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %109
  %124 = load i8*, i8** %12, align 8
  %125 = call i32 @sqlite3_free(i8* %124)
  br label %126

126:                                              ; preds = %123, %109
  %127 = load i8*, i8** %13, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 0
  %129 = load i8, i8* %128, align 1
  %130 = icmp ne i8 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %126
  %132 = load i8*, i8** %13, align 8
  %133 = call i32 @sqlite3_free(i8* %132)
  br label %134

134:                                              ; preds = %131, %126
  %135 = load i8*, i8** %14, align 8
  %136 = icmp eq i8* %135, null
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load i32*, i32** %4, align 8
  %139 = call i32 @sqlite3_result_error_nomem(i32* %138)
  br label %217

140:                                              ; preds = %134
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = load i8*, i8** %14, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %145 = call i32 @sqlite3_prepare_v2(i32 %142, i8* %143, i32 -1, i32* %144, i32 0)
  store i32 %145, i32* %15, align 4
  %146 = load i8*, i8** %14, align 8
  %147 = call i32 @sqlite3_free(i8* %146)
  %148 = load i32, i32* %15, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %140
  %151 = load i32*, i32** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @sqlite3_errmsg(i32 %153)
  %155 = call i32 @sqlite3_result_error(i32* %151, i32 %154, i32 -1)
  br label %217

156:                                              ; preds = %140
  %157 = call i32 @findNextChars(%struct.TYPE_4__* %7)
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load i32*, i32** %4, align 8
  %163 = call i32 @sqlite3_result_error_nomem(i32* %162)
  br label %210

164:                                              ; preds = %156
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = mul nsw i32 %166, 4
  %168 = add nsw i32 %167, 1
  %169 = call i8* @sqlite3_malloc64(i32 %168)
  store i8* %169, i8** %16, align 8
  %170 = load i8*, i8** %16, align 8
  %171 = icmp eq i8* %170, null
  br i1 %171, label %172, label %175

172:                                              ; preds = %164
  %173 = load i32*, i32** %4, align 8
  %174 = call i32 @sqlite3_result_error_nomem(i32* %173)
  br label %209

175:                                              ; preds = %164
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %176

176:                                              ; preds = %197, %175
  %177 = load i32, i32* %17, align 4
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp slt i32 %177, %179
  br i1 %180, label %181, label %200

181:                                              ; preds = %176
  %182 = load i8*, i8** %16, align 8
  %183 = load i32, i32* %18, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %187 = load i8*, i8** %186, align 8
  %188 = load i32, i32* %17, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* %187, i64 %189
  %191 = load i8, i8* %190, align 1
  %192 = call i64 @writeUtf8(i8* %185, i8 signext %191)
  %193 = load i32, i32* %18, align 4
  %194 = sext i32 %193 to i64
  %195 = add nsw i64 %194, %192
  %196 = trunc i64 %195 to i32
  store i32 %196, i32* %18, align 4
  br label %197

197:                                              ; preds = %181
  %198 = load i32, i32* %17, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %17, align 4
  br label %176

200:                                              ; preds = %176
  %201 = load i8*, i8** %16, align 8
  %202 = load i32, i32* %18, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8, i8* %201, i64 %203
  store i8 0, i8* %204, align 1
  %205 = load i32*, i32** %4, align 8
  %206 = load i8*, i8** %16, align 8
  %207 = load i32, i32* %18, align 4
  %208 = call i32 @sqlite3_result_text(i32* %205, i8* %206, i32 %207, i32 (i8*)* @sqlite3_free)
  br label %209

209:                                              ; preds = %200, %172
  br label %210

210:                                              ; preds = %209, %161
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @sqlite3_finalize(i32 %212)
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %215 = load i8*, i8** %214, align 8
  %216 = call i32 @sqlite3_free(i8* %215)
  br label %217

217:                                              ; preds = %210, %150, %137, %106, %71, %50
  ret void
}

declare dso_local i8* @sqlite3_value_text(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @sqlite3_context_db_handle(i32*) #1

declare dso_local i32 @sqlite3_value_bytes(i32*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*, ...) #1

declare dso_local i32 @sqlite3_result_error_nomem(i32*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @sqlite3_prepare_v2(i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @sqlite3_result_error(i32*, i32, i32) #1

declare dso_local i32 @sqlite3_errmsg(i32) #1

declare dso_local i32 @findNextChars(%struct.TYPE_4__*) #1

declare dso_local i8* @sqlite3_malloc64(i32) #1

declare dso_local i64 @writeUtf8(i8*, i8 signext) #1

declare dso_local i32 @sqlite3_result_text(i32*, i8*, i32, i32 (i8*)*) #1

declare dso_local i32 @sqlite3_finalize(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
