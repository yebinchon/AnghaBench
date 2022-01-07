; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rbu/extr_sqlite3rbu.c_rbuObjIterGetIndexWhere.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rbu/extr_sqlite3rbu.c_rbuObjIterGetIndexWhere.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"SELECT trim(sql) FROM sqlite_master WHERE type='index' AND name=?\00", align 1
@SQLITE_STATIC = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_5__*, %struct.TYPE_6__*)* @rbuObjIterGetIndexWhere to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @rbuObjIterGetIndexWhere(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  store i32* null, i32** %5, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  store i8* null, i8** %7, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @SQLITE_OK, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = call i32 @prepareAndCollectError(i32 %22, i32** %5, i32* %24, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %19, %2
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @SQLITE_OK, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %183

30:                                               ; preds = %26
  %31 = load i32*, i32** %5, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SQLITE_STATIC, align 4
  %36 = call i32 @sqlite3_bind_text(i32* %31, i32 1, i32 %34, i32 -1, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @SQLITE_OK, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %174

40:                                               ; preds = %30
  %41 = load i64, i64* @SQLITE_ROW, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i64 @sqlite3_step(i32* %42)
  %44 = icmp eq i64 %41, %43
  br i1 %44, label %45, label %174

45:                                               ; preds = %40
  %46 = load i32*, i32** %5, align 8
  %47 = call i64 @sqlite3_column_text(i32* %46, i32 0)
  %48 = inttoptr i64 %47 to i8*
  store i8* %48, i8** %9, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %173

51:                                               ; preds = %45
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %52

52:                                               ; preds = %156, %51
  %53 = load i8*, i8** %9, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = icmp ne i8 %57, 0
  br i1 %58, label %59, label %159

59:                                               ; preds = %52
  %60 = load i8*, i8** %9, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i8, i8* %63, align 1
  store i8 %64, i8* %12, align 1
  %65 = load i8, i8* %12, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 40
  br i1 %67, label %68, label %71

68:                                               ; preds = %59
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %155

71:                                               ; preds = %59
  %72 = load i8, i8* %12, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 41
  br i1 %74, label %75, label %84

75:                                               ; preds = %71
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %11, align 4
  br label %159

83:                                               ; preds = %75
  br label %154

84:                                               ; preds = %71
  %85 = load i8, i8* %12, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 34
  br i1 %87, label %96, label %88

88:                                               ; preds = %84
  %89 = load i8, i8* %12, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 39
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  %93 = load i8, i8* %12, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 96
  br i1 %95, label %96, label %130

96:                                               ; preds = %92, %88, %84
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %11, align 4
  br label %99

99:                                               ; preds = %126, %96
  br i1 true, label %100, label %129

100:                                              ; preds = %99
  %101 = load i8*, i8** %9, align 8
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = load i8, i8* %12, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %106, %108
  br i1 %109, label %110, label %125

110:                                              ; preds = %100
  %111 = load i8*, i8** %9, align 8
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %111, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = load i8, i8* %12, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp ne i32 %117, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %110
  br label %129

122:                                              ; preds = %110
  %123 = load i32, i32* %11, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %11, align 4
  br label %125

125:                                              ; preds = %122, %100
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %11, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %11, align 4
  br label %99

129:                                              ; preds = %121, %99
  br label %153

130:                                              ; preds = %92
  %131 = load i8, i8* %12, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 91
  br i1 %133, label %134, label %152

134:                                              ; preds = %130
  %135 = load i32, i32* %11, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %11, align 4
  br label %137

137:                                              ; preds = %148, %134
  br i1 true, label %138, label %151

138:                                              ; preds = %137
  %139 = load i8*, i8** %9, align 8
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %139, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 93
  br i1 %145, label %146, label %147

146:                                              ; preds = %138
  br label %151

147:                                              ; preds = %138
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %11, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %11, align 4
  br label %137

151:                                              ; preds = %146, %137
  br label %152

152:                                              ; preds = %151, %130
  br label %153

153:                                              ; preds = %152, %129
  br label %154

154:                                              ; preds = %153, %83
  br label %155

155:                                              ; preds = %154, %68
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %11, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %11, align 4
  br label %52

159:                                              ; preds = %80, %52
  %160 = load i8*, i8** %9, align 8
  %161 = load i32, i32* %11, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %160, i64 %162
  %164 = load i8, i8* %163, align 1
  %165 = icmp ne i8 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %159
  %167 = load i8*, i8** %9, align 8
  %168 = load i32, i32* %11, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %167, i64 %169
  %171 = call i8* @rbuStrndup(i8* %170, i32* %6)
  store i8* %171, i8** %7, align 8
  br label %172

172:                                              ; preds = %166, %159
  br label %173

173:                                              ; preds = %172, %45
  br label %174

174:                                              ; preds = %173, %40, %30
  %175 = load i32*, i32** %5, align 8
  %176 = call i32 @sqlite3_finalize(i32* %175)
  store i32 %176, i32* %8, align 4
  %177 = load i32, i32* %6, align 4
  %178 = load i32, i32* @SQLITE_OK, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %182

180:                                              ; preds = %174
  %181 = load i32, i32* %8, align 4
  store i32 %181, i32* %6, align 4
  br label %182

182:                                              ; preds = %180, %174
  br label %183

183:                                              ; preds = %182, %26
  %184 = load i32, i32* %6, align 4
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 4
  %187 = load i8*, i8** %7, align 8
  ret i8* %187
}

declare dso_local i32 @prepareAndCollectError(i32, i32**, i32*, i8*) #1

declare dso_local i32 @sqlite3_bind_text(i32*, i32, i32, i32, i32) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i8* @rbuStrndup(i8*, i32*) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
