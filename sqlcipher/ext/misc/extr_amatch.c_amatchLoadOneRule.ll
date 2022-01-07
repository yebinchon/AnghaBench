; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_amatch.c_amatchLoadOneRule.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_amatch.c_amatchLoadOneRule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, i32 }
%struct.TYPE_8__ = type { i32, i64, i8*, i32*, i32*, i8* }

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AMATCH_MX_COST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"%s: cost must be between 1 and %d\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@AMATCH_MX_LENGTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"%s: maximum string length is %d\00", align 1
@AMATCH_MX_LANGID = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"%s: iLang must be between 0 and %d\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, %struct.TYPE_8__**, i8**)* @amatchLoadOneRule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amatchLoadOneRule(%struct.TYPE_7__* %0, i32* %1, %struct.TYPE_8__** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_8__** %2, %struct.TYPE_8__*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i64 @sqlite3_column_int64(i32* %18, i32 0)
  store i64 %19, i64* %10, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i64 @sqlite3_column_text(i32* %20, i32 1)
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** %11, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i64 @sqlite3_column_text(i32* %23, i32 2)
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %12, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = call i64 @sqlite3_column_int(i32* %26, i32 3)
  store i64 %27, i64* %13, align 8
  %28 = load i32, i32* @SQLITE_OK, align 4
  store i32 %28, i32* %14, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %17, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %32

32:                                               ; preds = %31, %4
  %33 = load i8*, i8** %12, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  br label %36

36:                                               ; preds = %35, %32
  %37 = load i8*, i8** %11, align 8
  %38 = call i64 @strlen(i8* %37)
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %15, align 4
  %40 = load i8*, i8** %12, align 8
  %41 = call i64 @strlen(i8* %40)
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %16, align 4
  %43 = load i8*, i8** %11, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = call i64 @strcmp(i8* %43, i8* %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %78

47:                                               ; preds = %36
  %48 = load i8*, i8** %11, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 63
  br i1 %52, label %53, label %75

53:                                               ; preds = %47
  %54 = load i8*, i8** %11, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %53
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %59
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %13, align 8
  %69 = icmp sgt i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %64, %59
  %71 = load i64, i64* %13, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %70, %64
  br label %75

75:                                               ; preds = %74, %53, %47
  %76 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %76, align 8
  %77 = load i32, i32* @SQLITE_OK, align 4
  store i32 %77, i32* %5, align 4
  br label %238

78:                                               ; preds = %36
  %79 = load i64, i64* %13, align 8
  %80 = icmp sle i64 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %78
  %82 = load i64, i64* %13, align 8
  %83 = load i64, i64* @AMATCH_MX_COST, align 8
  %84 = icmp sgt i64 %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %81, %78
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load i64, i64* @AMATCH_MX_COST, align 8
  %90 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %88, i64 %89)
  %91 = load i8**, i8*** %9, align 8
  store i8* %90, i8** %91, align 8
  %92 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %92, i32* %14, align 4
  br label %234

93:                                               ; preds = %81
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* @AMATCH_MX_LENGTH, align 4
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* @AMATCH_MX_LENGTH, align 4
  %100 = icmp sgt i32 %98, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %97, %93
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @AMATCH_MX_LENGTH, align 4
  %106 = sext i32 %105 to i64
  %107 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %104, i64 %106)
  %108 = load i8**, i8*** %9, align 8
  store i8* %107, i8** %108, align 8
  %109 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %109, i32* %14, align 4
  br label %233

110:                                              ; preds = %97
  %111 = load i64, i64* %10, align 8
  %112 = icmp slt i64 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %110
  %114 = load i64, i64* %10, align 8
  %115 = load i64, i64* @AMATCH_MX_LANGID, align 8
  %116 = icmp sgt i64 %114, %115
  br i1 %116, label %117, label %125

117:                                              ; preds = %113, %110
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = load i64, i64* @AMATCH_MX_LANGID, align 8
  %122 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %120, i64 %121)
  %123 = load i8**, i8*** %9, align 8
  store i8* %122, i8** %123, align 8
  %124 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %124, i32* %14, align 4
  br label %232

125:                                              ; preds = %113
  %126 = load i8*, i8** %11, align 8
  %127 = call i64 @strcmp(i8* %126, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %149

129:                                              ; preds = %125
  %130 = load i8*, i8** %12, align 8
  %131 = call i64 @strcmp(i8* %130, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %149

133:                                              ; preds = %129
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %144, label %138

138:                                              ; preds = %133
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* %13, align 8
  %143 = icmp sgt i64 %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %138, %133
  %145 = load i64, i64* %13, align 8
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 1
  store i64 %145, i64* %147, align 8
  br label %148

148:                                              ; preds = %144, %138
  br label %231

149:                                              ; preds = %129, %125
  %150 = load i8*, i8** %11, align 8
  %151 = call i64 @strcmp(i8* %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %173

153:                                              ; preds = %149
  %154 = load i8*, i8** %12, align 8
  %155 = call i64 @strcmp(i8* %154, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %173

157:                                              ; preds = %153
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %168, label %162

162:                                              ; preds = %157
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* %13, align 8
  %167 = icmp sgt i64 %165, %166
  br i1 %167, label %168, label %172

168:                                              ; preds = %162, %157
  %169 = load i64, i64* %13, align 8
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 2
  store i64 %169, i64* %171, align 8
  br label %172

172:                                              ; preds = %168, %162
  br label %230

173:                                              ; preds = %153, %149
  %174 = load i32, i32* %15, align 4
  %175 = sext i32 %174 to i64
  %176 = add i64 48, %175
  %177 = load i32, i32* %16, align 4
  %178 = sext i32 %177 to i64
  %179 = add i64 %176, %178
  %180 = trunc i64 %179 to i32
  %181 = call %struct.TYPE_8__* @sqlite3_malloc64(i32 %180)
  store %struct.TYPE_8__* %181, %struct.TYPE_8__** %17, align 8
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %183 = icmp eq %struct.TYPE_8__* %182, null
  br i1 %183, label %184, label %186

184:                                              ; preds = %173
  %185 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %185, i32* %14, align 4
  br label %229

186:                                              ; preds = %173
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %188 = call i32 @memset(%struct.TYPE_8__* %187, i32 0, i32 48)
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 3
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %16, align 4
  %193 = add nsw i32 %192, 1
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %191, i64 %194
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 4
  store i32* %195, i32** %197, align 8
  %198 = load i32, i32* %15, align 4
  %199 = sext i32 %198 to i64
  %200 = inttoptr i64 %199 to i8*
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 5
  store i8* %200, i8** %202, align 8
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 4
  %205 = load i32*, i32** %204, align 8
  %206 = load i8*, i8** %11, align 8
  %207 = load i32, i32* %15, align 4
  %208 = add nsw i32 %207, 1
  %209 = call i32 @memcpy(i32* %205, i8* %206, i32 %208)
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 3
  %212 = load i32*, i32** %211, align 8
  %213 = load i8*, i8** %12, align 8
  %214 = load i32, i32* %16, align 4
  %215 = add nsw i32 %214, 1
  %216 = call i32 @memcpy(i32* %212, i8* %213, i32 %215)
  %217 = load i32, i32* %16, align 4
  %218 = sext i32 %217 to i64
  %219 = inttoptr i64 %218 to i8*
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 2
  store i8* %219, i8** %221, align 8
  %222 = load i64, i64* %13, align 8
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 1
  store i64 %222, i64* %224, align 8
  %225 = load i64, i64* %10, align 8
  %226 = trunc i64 %225 to i32
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 0
  store i32 %226, i32* %228, align 8
  br label %229

229:                                              ; preds = %186, %184
  br label %230

230:                                              ; preds = %229, %172
  br label %231

231:                                              ; preds = %230, %148
  br label %232

232:                                              ; preds = %231, %117
  br label %233

233:                                              ; preds = %232, %101
  br label %234

234:                                              ; preds = %233, %85
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %236 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  store %struct.TYPE_8__* %235, %struct.TYPE_8__** %236, align 8
  %237 = load i32, i32* %14, align 4
  store i32 %237, i32* %5, align 4
  br label %238

238:                                              ; preds = %234, %75
  %239 = load i32, i32* %5, align 4
  ret i32 %239
}

declare dso_local i64 @sqlite3_column_int64(i32*, i32) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i64 @sqlite3_column_int(i32*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i32, i64) #1

declare dso_local %struct.TYPE_8__* @sqlite3_malloc64(i32) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
