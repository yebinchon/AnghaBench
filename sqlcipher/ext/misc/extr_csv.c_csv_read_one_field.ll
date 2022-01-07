; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_csv.c_csv_read_one_field.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_csv.c_csv_read_one_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i8*, i64 }

@EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"line %d: unescaped %c character\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"line %d: unterminated %c-quoted field\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_6__*)* @csv_read_one_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @csv_read_one_field(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i64 0, i64* %9, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = call i32 @csv_getc(%struct.TYPE_6__* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @EOF, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @EOF, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  store i8* null, i8** %2, align 8
  br label %259

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 34
  br i1 %21, label %22, label %138

22:                                               ; preds = %19
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %22, %48, %134
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = call i32 @csv_getc(%struct.TYPE_6__* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp sle i32 %29, 34
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 34
  br i1 %33, label %34, label %127

34:                                               ; preds = %31, %26
  %35 = load i32, i32* %4, align 4
  %36 = icmp eq i32 %35, 10
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %37, %34
  %43 = load i32, i32* %4, align 4
  %44 = icmp eq i32 %43, 34
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %46, 34
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %26

49:                                               ; preds = %45
  br label %50

50:                                               ; preds = %49, %42
  %51 = load i32, i32* %4, align 4
  %52 = icmp eq i32 %51, 44
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* %5, align 4
  %55 = icmp eq i32 %54, 34
  br i1 %55, label %78, label %56

56:                                               ; preds = %53, %50
  %57 = load i32, i32* %4, align 4
  %58 = icmp eq i32 %57, 10
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* %5, align 4
  %61 = icmp eq i32 %60, 34
  br i1 %61, label %78, label %62

62:                                               ; preds = %59, %56
  %63 = load i32, i32* %4, align 4
  %64 = icmp eq i32 %63, 10
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load i32, i32* %5, align 4
  %67 = icmp eq i32 %66, 13
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* %6, align 4
  %70 = icmp eq i32 %69, 34
  br i1 %70, label %78, label %71

71:                                               ; preds = %68, %65, %62
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @EOF, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %101

75:                                               ; preds = %71
  %76 = load i32, i32* %5, align 4
  %77 = icmp eq i32 %76, 34
  br i1 %77, label %78, label %101

78:                                               ; preds = %75, %68, %59, %53
  br label %79

79:                                               ; preds = %84, %78
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %82, -1
  store i64 %83, i64* %81, align 8
  br label %84

84:                                               ; preds = %79
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 3
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds i8, i8* %87, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 34
  br i1 %94, label %79, label %95

95:                                               ; preds = %84
  %96 = load i32, i32* %4, align 4
  %97 = trunc i32 %96 to i8
  %98 = sext i8 %97 to i32
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 8
  br label %137

101:                                              ; preds = %75, %71
  %102 = load i32, i32* %5, align 4
  %103 = icmp eq i32 %102, 34
  br i1 %103, label %104, label %113

104:                                              ; preds = %101
  %105 = load i32, i32* %4, align 4
  %106 = icmp ne i32 %105, 13
  br i1 %106, label %107, label %113

107:                                              ; preds = %104
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @csv_errmsg(%struct.TYPE_6__* %108, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %111, i8 signext 34)
  br label %137

113:                                              ; preds = %104, %101
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @EOF, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %126

117:                                              ; preds = %113
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @csv_errmsg(%struct.TYPE_6__* %118, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %119, i8 signext 34)
  %121 = load i32, i32* %4, align 4
  %122 = trunc i32 %121 to i8
  %123 = sext i8 %122 to i32
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 8
  br label %137

126:                                              ; preds = %113
  br label %127

127:                                              ; preds = %126, %31
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %129 = load i32, i32* %4, align 4
  %130 = trunc i32 %129 to i8
  %131 = call i64 @csv_append(%struct.TYPE_6__* %128, i8 signext %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  store i8* null, i8** %2, align 8
  br label %259

134:                                              ; preds = %127
  %135 = load i32, i32* %5, align 4
  store i32 %135, i32* %6, align 4
  %136 = load i32, i32* %4, align 4
  store i32 %136, i32* %5, align 4
  br label %26

137:                                              ; preds = %117, %107, %95
  br label %240

138:                                              ; preds = %19
  %139 = load i32, i32* %4, align 4
  %140 = and i32 %139, 255
  %141 = icmp eq i32 %140, 239
  br i1 %141, label %142, label %176

142:                                              ; preds = %138
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %176

147:                                              ; preds = %142
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %149 = load i32, i32* %4, align 4
  %150 = trunc i32 %149 to i8
  %151 = call i64 @csv_append(%struct.TYPE_6__* %148, i8 signext %150)
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %153 = call i32 @csv_getc(%struct.TYPE_6__* %152)
  store i32 %153, i32* %4, align 4
  %154 = load i32, i32* %4, align 4
  %155 = and i32 %154, 255
  %156 = icmp eq i32 %155, 187
  br i1 %156, label %157, label %175

157:                                              ; preds = %147
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %159 = load i32, i32* %4, align 4
  %160 = trunc i32 %159 to i8
  %161 = call i64 @csv_append(%struct.TYPE_6__* %158, i8 signext %160)
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %163 = call i32 @csv_getc(%struct.TYPE_6__* %162)
  store i32 %163, i32* %4, align 4
  %164 = load i32, i32* %4, align 4
  %165 = and i32 %164, 255
  %166 = icmp eq i32 %165, 191
  br i1 %166, label %167, label %174

167:                                              ; preds = %157
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 4
  store i64 1, i64* %169, align 8
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  store i64 0, i64* %171, align 8
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %173 = call i8* @csv_read_one_field(%struct.TYPE_6__* %172)
  store i8* %173, i8** %2, align 8
  br label %259

174:                                              ; preds = %157
  br label %175

175:                                              ; preds = %174, %147
  br label %176

176:                                              ; preds = %175, %142, %138
  br label %177

177:                                              ; preds = %201, %176
  %178 = load i32, i32* %4, align 4
  %179 = icmp sgt i32 %178, 44
  br i1 %179, label %192, label %180

180:                                              ; preds = %177
  %181 = load i32, i32* %4, align 4
  %182 = load i32, i32* @EOF, align 4
  %183 = icmp ne i32 %181, %182
  br i1 %183, label %184, label %190

184:                                              ; preds = %180
  %185 = load i32, i32* %4, align 4
  %186 = icmp ne i32 %185, 44
  br i1 %186, label %187, label %190

187:                                              ; preds = %184
  %188 = load i32, i32* %4, align 4
  %189 = icmp ne i32 %188, 10
  br label %190

190:                                              ; preds = %187, %184, %180
  %191 = phi i1 [ false, %184 ], [ false, %180 ], [ %189, %187 ]
  br label %192

192:                                              ; preds = %190, %177
  %193 = phi i1 [ true, %177 ], [ %191, %190 ]
  br i1 %193, label %194, label %204

194:                                              ; preds = %192
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %196 = load i32, i32* %4, align 4
  %197 = trunc i32 %196 to i8
  %198 = call i64 @csv_append(%struct.TYPE_6__* %195, i8 signext %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %194
  store i8* null, i8** %2, align 8
  br label %259

201:                                              ; preds = %194
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %203 = call i32 @csv_getc(%struct.TYPE_6__* %202)
  store i32 %203, i32* %4, align 4
  br label %177

204:                                              ; preds = %192
  %205 = load i32, i32* %4, align 4
  %206 = icmp eq i32 %205, 10
  br i1 %206, label %207, label %234

207:                                              ; preds = %204
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %209, align 4
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = icmp ugt i64 %214, 0
  br i1 %215, label %216, label %233

216:                                              ; preds = %207
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 3
  %219 = load i8*, i8** %218, align 8
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = sub i64 %222, 1
  %224 = getelementptr inbounds i8, i8* %219, i64 %223
  %225 = load i8, i8* %224, align 1
  %226 = sext i8 %225 to i32
  %227 = icmp eq i32 %226, 13
  br i1 %227, label %228, label %233

228:                                              ; preds = %216
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = add i64 %231, -1
  store i64 %232, i64* %230, align 8
  br label %233

233:                                              ; preds = %228, %216, %207
  br label %234

234:                                              ; preds = %233, %204
  %235 = load i32, i32* %4, align 4
  %236 = trunc i32 %235 to i8
  %237 = sext i8 %236 to i32
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 1
  store i32 %237, i32* %239, align 8
  br label %240

240:                                              ; preds = %234, %137
  %241 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 3
  %243 = load i8*, i8** %242, align 8
  %244 = icmp ne i8* %243, null
  br i1 %244, label %245, label %253

245:                                              ; preds = %240
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 3
  %248 = load i8*, i8** %247, align 8
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = getelementptr inbounds i8, i8* %248, i64 %251
  store i8 0, i8* %252, align 1
  br label %253

253:                                              ; preds = %245, %240
  %254 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 4
  store i64 1, i64* %255, align 8
  %256 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 3
  %258 = load i8*, i8** %257, align 8
  store i8* %258, i8** %2, align 8
  br label %259

259:                                              ; preds = %253, %200, %167, %133, %15
  %260 = load i8*, i8** %2, align 8
  ret i8* %260
}

declare dso_local i32 @csv_getc(%struct.TYPE_6__*) #1

declare dso_local i32 @csv_errmsg(%struct.TYPE_6__*, i8*, i32, i8 signext) #1

declare dso_local i64 @csv_append(%struct.TYPE_6__*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
