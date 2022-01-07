; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fts1.c_fulltextQuery.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fts1.c_fulltextQuery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i64, i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@DL_DOCIDS = common dso_local global i32 0, align 4
@SQLITE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32, i32**, %struct.TYPE_8__*)* @fulltextQuery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fulltextQuery(i32* %0, i32 %1, i8* %2, i32 %3, i32** %4, %struct.TYPE_8__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32**, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32** %4, i32*** %12, align 8
  store %struct.TYPE_8__* %5, %struct.TYPE_8__** %13, align 8
  store i32* null, i32** %17, align 8
  store i32 0, i32* %21, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %28 = call i32 @parseQuery(i32* %23, i8* %24, i32 %25, i32 %26, %struct.TYPE_8__* %27)
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %16, align 4
  %30 = load i32, i32* @SQLITE_OK, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %6
  %33 = load i32, i32* %16, align 4
  store i32 %33, i32* %7, align 4
  br label %240

34:                                               ; preds = %6
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %22, align 8
  store i32 0, i32* %14, align 4
  br label %38

38:                                               ; preds = %167, %34
  %39 = load i32, i32* %14, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %169

44:                                               ; preds = %38
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %46 = load i32, i32* %14, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %44
  %53 = load i32, i32* %21, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %21, align 4
  %55 = load i32, i32* %14, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %57 = load i32, i32* %14, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %55, %61
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %15, align 4
  br label %167

64:                                               ; preds = %44
  %65 = load i32, i32* %14, align 4
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %65, %71
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %15, align 4
  %74 = load i32*, i32** %8, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %76 = load i32, i32* %14, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i64 %83
  %85 = call i32 @docListOfTerm(i32* %74, i32 %80, %struct.TYPE_7__* %84, i32** %18)
  store i32 %85, i32* %16, align 4
  %86 = load i32, i32* %16, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %64
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %90 = call i32 @queryClear(%struct.TYPE_8__* %89)
  %91 = load i32, i32* %16, align 4
  store i32 %91, i32* %7, align 4
  br label %240

92:                                               ; preds = %64
  br label %93

93:                                               ; preds = %137, %92
  %94 = load i32, i32* %15, align 4
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %93
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br label %107

107:                                              ; preds = %99, %93
  %108 = phi i1 [ false, %93 ], [ %106, %99 ]
  br i1 %108, label %109, label %149

109:                                              ; preds = %107
  %110 = load i32*, i32** %8, align 8
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %112 = load i32, i32* %15, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %118 = load i32, i32* %15, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i64 %119
  %121 = call i32 @docListOfTerm(i32* %110, i32 %116, %struct.TYPE_7__* %120, i32** %20)
  store i32 %121, i32* %16, align 4
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %123 = load i32, i32* %15, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %127, 1
  %129 = load i32, i32* %15, align 4
  %130 = add nsw i32 %129, %128
  store i32 %130, i32* %15, align 4
  %131 = load i32, i32* %16, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %109
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %135 = call i32 @queryClear(%struct.TYPE_8__* %134)
  %136 = load i32, i32* %16, align 4
  store i32 %136, i32* %7, align 4
  br label %240

137:                                              ; preds = %109
  %138 = load i32, i32* @DL_DOCIDS, align 4
  %139 = call i32* @docListNew(i32 %138)
  store i32* %139, i32** %19, align 8
  %140 = load i32*, i32** %18, align 8
  %141 = load i32*, i32** %20, align 8
  %142 = load i32*, i32** %19, align 8
  %143 = call i32 @docListOrMerge(i32* %140, i32* %141, i32* %142)
  %144 = load i32*, i32** %18, align 8
  %145 = call i32 @docListDelete(i32* %144)
  %146 = load i32*, i32** %20, align 8
  %147 = call i32 @docListDelete(i32* %146)
  %148 = load i32*, i32** %19, align 8
  store i32* %148, i32** %18, align 8
  br label %93

149:                                              ; preds = %107
  %150 = load i32*, i32** %17, align 8
  %151 = icmp eq i32* %150, null
  br i1 %151, label %152, label %154

152:                                              ; preds = %149
  %153 = load i32*, i32** %18, align 8
  store i32* %153, i32** %17, align 8
  br label %166

154:                                              ; preds = %149
  %155 = load i32, i32* @DL_DOCIDS, align 4
  %156 = call i32* @docListNew(i32 %155)
  store i32* %156, i32** %19, align 8
  %157 = load i32*, i32** %17, align 8
  %158 = load i32*, i32** %18, align 8
  %159 = load i32*, i32** %19, align 8
  %160 = call i32 @docListAndMerge(i32* %157, i32* %158, i32* %159)
  %161 = load i32*, i32** %18, align 8
  %162 = call i32 @docListDelete(i32* %161)
  %163 = load i32*, i32** %17, align 8
  %164 = call i32 @docListDelete(i32* %163)
  %165 = load i32*, i32** %19, align 8
  store i32* %165, i32** %17, align 8
  br label %166

166:                                              ; preds = %154, %152
  br label %167

167:                                              ; preds = %166, %52
  %168 = load i32, i32* %15, align 4
  store i32 %168, i32* %14, align 4
  br label %38

169:                                              ; preds = %38
  %170 = load i32, i32* %21, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %169
  %173 = load i32*, i32** %17, align 8
  %174 = icmp eq i32* %173, null
  br i1 %174, label %175, label %177

175:                                              ; preds = %172
  %176 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %176, i32* %7, align 4
  br label %240

177:                                              ; preds = %172, %169
  store i32 0, i32* %14, align 4
  br label %178

178:                                              ; preds = %226, %177
  %179 = load i32, i32* %14, align 4
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = icmp slt i32 %179, %182
  br i1 %183, label %184, label %236

184:                                              ; preds = %178
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %186 = load i32, i32* %14, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %184
  br label %226

193:                                              ; preds = %184
  %194 = load i32*, i32** %8, align 8
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %196 = load i32, i32* %14, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %202 = load i32, i32* %14, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i64 %203
  %205 = call i32 @docListOfTerm(i32* %194, i32 %200, %struct.TYPE_7__* %204, i32** %18)
  store i32 %205, i32* %16, align 4
  %206 = load i32, i32* %16, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %193
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %210 = call i32 @queryClear(%struct.TYPE_8__* %209)
  %211 = load i32*, i32** %17, align 8
  %212 = call i32 @docListDelete(i32* %211)
  %213 = load i32, i32* %16, align 4
  store i32 %213, i32* %7, align 4
  br label %240

214:                                              ; preds = %193
  %215 = load i32, i32* @DL_DOCIDS, align 4
  %216 = call i32* @docListNew(i32 %215)
  store i32* %216, i32** %19, align 8
  %217 = load i32*, i32** %17, align 8
  %218 = load i32*, i32** %18, align 8
  %219 = load i32*, i32** %19, align 8
  %220 = call i32 @docListExceptMerge(i32* %217, i32* %218, i32* %219)
  %221 = load i32*, i32** %18, align 8
  %222 = call i32 @docListDelete(i32* %221)
  %223 = load i32*, i32** %17, align 8
  %224 = call i32 @docListDelete(i32* %223)
  %225 = load i32*, i32** %19, align 8
  store i32* %225, i32** %17, align 8
  br label %226

226:                                              ; preds = %214, %192
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %228 = load i32, i32* %14, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = add nsw i32 %232, 1
  %234 = load i32, i32* %14, align 4
  %235 = add nsw i32 %234, %233
  store i32 %235, i32* %14, align 4
  br label %178

236:                                              ; preds = %178
  %237 = load i32*, i32** %17, align 8
  %238 = load i32**, i32*** %12, align 8
  store i32* %237, i32** %238, align 8
  %239 = load i32, i32* %16, align 4
  store i32 %239, i32* %7, align 4
  br label %240

240:                                              ; preds = %236, %208, %175, %133, %88, %32
  %241 = load i32, i32* %7, align 4
  ret i32 %241
}

declare dso_local i32 @parseQuery(i32*, i8*, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @docListOfTerm(i32*, i32, %struct.TYPE_7__*, i32**) #1

declare dso_local i32 @queryClear(%struct.TYPE_8__*) #1

declare dso_local i32* @docListNew(i32) #1

declare dso_local i32 @docListOrMerge(i32*, i32*, i32*) #1

declare dso_local i32 @docListDelete(i32*) #1

declare dso_local i32 @docListAndMerge(i32*, i32*, i32*) #1

declare dso_local i32 @docListExceptMerge(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
