; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_regexp.c_sqlite3re_compile.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_regexp.c_sqlite3re_compile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64*, i32*, i8*, i32, i8*, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@re_next_char_nocase = common dso_local global i32 0, align 4
@re_next_char = common dso_local global i32 0, align 4
@RE_OP_ANYSTAR = common dso_local global i64 0, align 8
@RE_OP_MATCH = common dso_local global i64 0, align 8
@RE_EOF = common dso_local global i32 0, align 4
@RE_OP_ACCEPT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"unrecognized character\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @re_compile(%struct.TYPE_12__** %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_12__**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_12__** %0, %struct.TYPE_12__*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %13, align 8
  %14 = call %struct.TYPE_12__* @sqlite3_malloc(i32 64)
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %8, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %16 = icmp eq %struct.TYPE_12__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %259

18:                                               ; preds = %3
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %20 = call i32 @memset(%struct.TYPE_12__* %19, i32 0, i32 64)
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @re_next_char_nocase, align 4
  br label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @re_next_char, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %32 = call i64 @re_resize(%struct.TYPE_12__* %31, i32 30)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %36 = call i32 @re_free(%struct.TYPE_12__* %35)
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %259

37:                                               ; preds = %27
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 94
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %6, align 8
  br label %50

46:                                               ; preds = %37
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %48 = load i64, i64* @RE_OP_ANYSTAR, align 8
  %49 = call i32 @re_append(%struct.TYPE_12__* %47, i64 %48, i32 0)
  br label %50

50:                                               ; preds = %46, %43
  %51 = load i8*, i8** %6, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 5
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  store i8* %51, i8** %54, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  store i32 0, i32* %57, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = call i64 @strlen(i8* %58)
  %60 = trunc i64 %59 to i32
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 2
  store i32 %60, i32* %63, align 4
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %65 = call i8* @re_subcompile_re(%struct.TYPE_12__* %64)
  store i8* %65, i8** %9, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %50
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %70 = call i32 @re_free(%struct.TYPE_12__* %69)
  %71 = load i8*, i8** %9, align 8
  store i8* %71, i8** %4, align 8
  br label %259

72:                                               ; preds = %50
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %74 = call signext i8 @rePeek(%struct.TYPE_12__* %73)
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 36
  br i1 %76, label %77, label %98

77:                                               ; preds = %72
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = icmp sge i32 %82, %86
  br i1 %87, label %88, label %98

88:                                               ; preds = %77
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %90 = load i64, i64* @RE_OP_MATCH, align 8
  %91 = load i32, i32* @RE_EOF, align 4
  %92 = call i32 @re_append(%struct.TYPE_12__* %89, i64 %90, i32 %91)
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %94 = load i64, i64* @RE_OP_ACCEPT, align 8
  %95 = call i32 @re_append(%struct.TYPE_12__* %93, i64 %94, i32 0)
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %97 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  store %struct.TYPE_12__* %96, %struct.TYPE_12__** %97, align 8
  br label %118

98:                                               ; preds = %77, %72
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 5
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 5
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = icmp sge i32 %102, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %98
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %110 = load i64, i64* @RE_OP_ACCEPT, align 8
  %111 = call i32 @re_append(%struct.TYPE_12__* %109, i64 %110, i32 0)
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %113 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  store %struct.TYPE_12__* %112, %struct.TYPE_12__** %113, align 8
  br label %117

114:                                              ; preds = %98
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %116 = call i32 @re_free(%struct.TYPE_12__* %115)
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %259

117:                                              ; preds = %108
  br label %118

118:                                              ; preds = %117, %88
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load i64*, i64** %120, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @RE_OP_ANYSTAR, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %255

126:                                              ; preds = %118
  store i32 0, i32* %11, align 4
  store i32 1, i32* %10, align 4
  br label %127

127:                                              ; preds = %231, %126
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = icmp ult i64 %129, 6
  br i1 %130, label %131, label %141

131:                                              ; preds = %127
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = load i64*, i64** %133, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %134, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @RE_OP_MATCH, align 8
  %140 = icmp eq i64 %138, %139
  br label %141

141:                                              ; preds = %131, %127
  %142 = phi i1 [ false, %127 ], [ %140, %131 ]
  br i1 %142, label %143, label %234

143:                                              ; preds = %141
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %12, align 4
  %151 = load i32, i32* %12, align 4
  %152 = icmp ule i32 %151, 127
  br i1 %152, label %153, label %163

153:                                              ; preds = %143
  %154 = load i32, i32* %12, align 4
  %155 = trunc i32 %154 to i8
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 2
  %158 = load i8*, i8** %157, align 8
  %159 = load i32, i32* %11, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %11, align 4
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds i8, i8* %158, i64 %161
  store i8 %155, i8* %162, align 1
  br label %230

163:                                              ; preds = %143
  %164 = load i32, i32* %12, align 4
  %165 = icmp ule i32 %164, 4095
  br i1 %165, label %166, label %189

166:                                              ; preds = %163
  %167 = load i32, i32* %12, align 4
  %168 = lshr i32 %167, 6
  %169 = or i32 192, %168
  %170 = trunc i32 %169 to i8
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 2
  %173 = load i8*, i8** %172, align 8
  %174 = load i32, i32* %11, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %11, align 4
  %176 = sext i32 %174 to i64
  %177 = getelementptr inbounds i8, i8* %173, i64 %176
  store i8 %170, i8* %177, align 1
  %178 = load i32, i32* %12, align 4
  %179 = and i32 %178, 63
  %180 = or i32 128, %179
  %181 = trunc i32 %180 to i8
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 2
  %184 = load i8*, i8** %183, align 8
  %185 = load i32, i32* %11, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %11, align 4
  %187 = sext i32 %185 to i64
  %188 = getelementptr inbounds i8, i8* %184, i64 %187
  store i8 %181, i8* %188, align 1
  br label %229

189:                                              ; preds = %163
  %190 = load i32, i32* %12, align 4
  %191 = icmp ule i32 %190, 65535
  br i1 %191, label %192, label %227

192:                                              ; preds = %189
  %193 = load i32, i32* %12, align 4
  %194 = lshr i32 %193, 12
  %195 = or i32 208, %194
  %196 = trunc i32 %195 to i8
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 2
  %199 = load i8*, i8** %198, align 8
  %200 = load i32, i32* %11, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %11, align 4
  %202 = sext i32 %200 to i64
  %203 = getelementptr inbounds i8, i8* %199, i64 %202
  store i8 %196, i8* %203, align 1
  %204 = load i32, i32* %12, align 4
  %205 = lshr i32 %204, 6
  %206 = and i32 %205, 63
  %207 = or i32 128, %206
  %208 = trunc i32 %207 to i8
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 2
  %211 = load i8*, i8** %210, align 8
  %212 = load i32, i32* %11, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %11, align 4
  %214 = sext i32 %212 to i64
  %215 = getelementptr inbounds i8, i8* %211, i64 %214
  store i8 %208, i8* %215, align 1
  %216 = load i32, i32* %12, align 4
  %217 = and i32 %216, 63
  %218 = or i32 128, %217
  %219 = trunc i32 %218 to i8
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 2
  %222 = load i8*, i8** %221, align 8
  %223 = load i32, i32* %11, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %11, align 4
  %225 = sext i32 %223 to i64
  %226 = getelementptr inbounds i8, i8* %222, i64 %225
  store i8 %219, i8* %226, align 1
  br label %228

227:                                              ; preds = %189
  br label %234

228:                                              ; preds = %192
  br label %229

229:                                              ; preds = %228, %166
  br label %230

230:                                              ; preds = %229, %153
  br label %231

231:                                              ; preds = %230
  %232 = load i32, i32* %10, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %10, align 4
  br label %127

234:                                              ; preds = %227, %141
  %235 = load i32, i32* %11, align 4
  %236 = icmp sgt i32 %235, 0
  br i1 %236, label %237, label %251

237:                                              ; preds = %234
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 2
  %240 = load i8*, i8** %239, align 8
  %241 = load i32, i32* %11, align 4
  %242 = sub nsw i32 %241, 1
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8, i8* %240, i64 %243
  %245 = load i8, i8* %244, align 1
  %246 = zext i8 %245 to i32
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %237
  %249 = load i32, i32* %11, align 4
  %250 = add nsw i32 %249, -1
  store i32 %250, i32* %11, align 4
  br label %251

251:                                              ; preds = %248, %237, %234
  %252 = load i32, i32* %11, align 4
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 3
  store i32 %252, i32* %254, align 8
  br label %255

255:                                              ; preds = %251, %118
  %256 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 4
  %258 = load i8*, i8** %257, align 8
  store i8* %258, i8** %4, align 8
  br label %259

259:                                              ; preds = %255, %114, %68, %34, %17
  %260 = load i8*, i8** %4, align 8
  ret i8* %260
}

declare dso_local %struct.TYPE_12__* @sqlite3_malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i64 @re_resize(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @re_free(%struct.TYPE_12__*) #1

declare dso_local i32 @re_append(%struct.TYPE_12__*, i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @re_subcompile_re(%struct.TYPE_12__*) #1

declare dso_local signext i8 @rePeek(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
