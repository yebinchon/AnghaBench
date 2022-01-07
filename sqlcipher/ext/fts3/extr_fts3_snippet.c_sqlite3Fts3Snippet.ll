; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_snippet.c_sqlite3Fts3Snippet.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_snippet.c_sqlite3Fts3Snippet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i8*, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3Fts3Snippet(i32* %0, %struct.TYPE_19__* %1, i8* %2, i8* %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_18__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_16__, align 8
  %19 = alloca i32, align 4
  %20 = alloca [4 x %struct.TYPE_17__], align 16
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_17__*, align 8
  %28 = alloca %struct.TYPE_17__, align 4
  %29 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %34, %struct.TYPE_18__** %15, align 8
  %35 = load i32, i32* @SQLITE_OK, align 4
  store i32 %35, i32* %16, align 4
  %36 = bitcast %struct.TYPE_16__* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %36, i8 0, i64 24, i1 false)
  store i32 0, i32* %19, align 4
  store i32 -1, i32* %21, align 4
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %7
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @sqlite3_result_text(i32* %42, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0, i32 (i8*)* @SQLITE_STATIC)
  br label %199

44:                                               ; preds = %7
  %45 = load i32, i32* %14, align 4
  %46 = icmp slt i32 %45, -64
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 -64, i32* %14, align 4
  br label %48

48:                                               ; preds = %47, %44
  %49 = load i32, i32* %14, align 4
  %50 = icmp sgt i32 %49, 64
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 64, i32* %14, align 4
  br label %52

52:                                               ; preds = %51, %48
  store i32 1, i32* %19, align 4
  br label %53

53:                                               ; preds = %143, %52
  br i1 true, label %54, label %146

54:                                               ; preds = %53
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %19, align 4
  %60 = add nsw i32 %58, %59
  %61 = sub nsw i32 %60, 1
  %62 = load i32, i32* %19, align 4
  %63 = sdiv i32 %61, %62
  store i32 %63, i32* %21, align 4
  br label %67

64:                                               ; preds = %54
  %65 = load i32, i32* %14, align 4
  %66 = mul nsw i32 -1, %65
  store i32 %66, i32* %21, align 4
  br label %67

67:                                               ; preds = %64, %57
  store i32 0, i32* %22, align 4
  br label %68

68:                                               ; preds = %122, %67
  %69 = load i32, i32* %22, align 4
  %70 = load i32, i32* %19, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %125

72:                                               ; preds = %68
  store i32 -1, i32* %25, align 4
  %73 = load i32, i32* %22, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [4 x %struct.TYPE_17__], [4 x %struct.TYPE_17__]* %20, i64 0, i64 %74
  store %struct.TYPE_17__* %75, %struct.TYPE_17__** %27, align 8
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %27, align 8
  %77 = call i32 @memset(%struct.TYPE_17__* %76, i32 0, i32 20)
  store i32 0, i32* %26, align 4
  br label %78

78:                                               ; preds = %113, %72
  %79 = load i32, i32* %26, align 4
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %116

84:                                               ; preds = %78
  %85 = bitcast %struct.TYPE_17__* %28 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %85, i8 0, i64 20, i1 false)
  store i32 0, i32* %29, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp sge i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load i32, i32* %26, align 4
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  br label %113

93:                                               ; preds = %88, %84
  %94 = load i32, i32* %21, align 4
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %96 = load i32, i32* %26, align 4
  %97 = load i32, i32* %23, align 4
  %98 = call i32 @fts3BestSnippet(i32 %94, %struct.TYPE_19__* %95, i32 %96, i32 %97, i32* %24, %struct.TYPE_17__* %28, i32* %29)
  store i32 %98, i32* %16, align 4
  %99 = load i32, i32* %16, align 4
  %100 = load i32, i32* @SQLITE_OK, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %93
  br label %181

103:                                              ; preds = %93
  %104 = load i32, i32* %29, align 4
  %105 = load i32, i32* %25, align 4
  %106 = icmp sgt i32 %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %103
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %27, align 8
  %109 = bitcast %struct.TYPE_17__* %108 to i8*
  %110 = bitcast %struct.TYPE_17__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %109, i8* align 4 %110, i64 20, i1 false)
  %111 = load i32, i32* %29, align 4
  store i32 %111, i32* %25, align 4
  br label %112

112:                                              ; preds = %107, %103
  br label %113

113:                                              ; preds = %112, %92
  %114 = load i32, i32* %26, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %26, align 4
  br label %78

116:                                              ; preds = %78
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %27, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %23, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %23, align 4
  br label %122

122:                                              ; preds = %116
  %123 = load i32, i32* %22, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %22, align 4
  br label %68

125:                                              ; preds = %68
  %126 = load i32, i32* %23, align 4
  %127 = load i32, i32* %24, align 4
  %128 = and i32 %126, %127
  %129 = load i32, i32* %23, align 4
  %130 = icmp eq i32 %128, %129
  %131 = zext i1 %130 to i32
  %132 = call i32 @assert(i32 %131)
  %133 = load i32, i32* %24, align 4
  %134 = load i32, i32* %23, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %141, label %136

136:                                              ; preds = %125
  %137 = load i32, i32* %19, align 4
  %138 = getelementptr inbounds [4 x %struct.TYPE_17__], [4 x %struct.TYPE_17__]* %20, i64 0, i64 0
  %139 = call i32 @SizeofArray(%struct.TYPE_17__* %138)
  %140 = icmp eq i32 %137, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %136, %125
  br label %146

142:                                              ; preds = %136
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %19, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %19, align 4
  br label %53

146:                                              ; preds = %141, %53
  %147 = load i32, i32* %21, align 4
  %148 = icmp sgt i32 %147, 0
  %149 = zext i1 %148 to i32
  %150 = call i32 @assert(i32 %149)
  store i32 0, i32* %17, align 4
  br label %151

151:                                              ; preds = %177, %146
  %152 = load i32, i32* %17, align 4
  %153 = load i32, i32* %19, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %151
  %156 = load i32, i32* %16, align 4
  %157 = load i32, i32* @SQLITE_OK, align 4
  %158 = icmp eq i32 %156, %157
  br label %159

159:                                              ; preds = %155, %151
  %160 = phi i1 [ false, %151 ], [ %158, %155 ]
  br i1 %160, label %161, label %180

161:                                              ; preds = %159
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %163 = load i32, i32* %17, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [4 x %struct.TYPE_17__], [4 x %struct.TYPE_17__]* %20, i64 0, i64 %164
  %166 = load i32, i32* %17, align 4
  %167 = load i32, i32* %17, align 4
  %168 = load i32, i32* %19, align 4
  %169 = sub nsw i32 %168, 1
  %170 = icmp eq i32 %167, %169
  %171 = zext i1 %170 to i32
  %172 = load i32, i32* %21, align 4
  %173 = load i8*, i8** %10, align 8
  %174 = load i8*, i8** %11, align 8
  %175 = load i8*, i8** %12, align 8
  %176 = call i32 @fts3SnippetText(%struct.TYPE_19__* %162, %struct.TYPE_17__* %165, i32 %166, i32 %171, i32 %172, i8* %173, i8* %174, i8* %175, %struct.TYPE_16__* %18)
  store i32 %176, i32* %16, align 4
  br label %177

177:                                              ; preds = %161
  %178 = load i32, i32* %17, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %17, align 4
  br label %151

180:                                              ; preds = %159
  br label %181

181:                                              ; preds = %180, %102
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %183 = call i32 @sqlite3Fts3SegmentsClose(%struct.TYPE_18__* %182)
  %184 = load i32, i32* %16, align 4
  %185 = load i32, i32* @SQLITE_OK, align 4
  %186 = icmp ne i32 %184, %185
  br i1 %186, label %187, label %194

187:                                              ; preds = %181
  %188 = load i32*, i32** %8, align 8
  %189 = load i32, i32* %16, align 4
  %190 = call i32 @sqlite3_result_error_code(i32* %188, i32 %189)
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %192 = load i8*, i8** %191, align 8
  %193 = call i32 @sqlite3_free(i8* %192)
  br label %199

194:                                              ; preds = %181
  %195 = load i32*, i32** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 @sqlite3_result_text(i32* %195, i8* %197, i32 -1, i32 (i8*)* @sqlite3_free)
  br label %199

199:                                              ; preds = %41, %194, %187
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @sqlite3_result_text(i32*, i8*, i32, i32 (i8*)*) #2

declare dso_local i32 @SQLITE_STATIC(i8*) #2

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i32) #2

declare dso_local i32 @fts3BestSnippet(i32, %struct.TYPE_19__*, i32, i32, i32*, %struct.TYPE_17__*, i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @SizeofArray(%struct.TYPE_17__*) #2

declare dso_local i32 @fts3SnippetText(%struct.TYPE_19__*, %struct.TYPE_17__*, i32, i32, i32, i8*, i8*, i8*, %struct.TYPE_16__*) #2

declare dso_local i32 @sqlite3Fts3SegmentsClose(%struct.TYPE_18__*) #2

declare dso_local i32 @sqlite3_result_error_code(i32*, i32) #2

declare dso_local i32 @sqlite3_free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
