; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsvalue.c_js_equal.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsvalue.c_js_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64, i64 }

@JS_TUNDEFINED = common dso_local global i64 0, align 8
@JS_TNULL = common dso_local global i64 0, align 8
@JS_TNUMBER = common dso_local global i64 0, align 8
@JS_TBOOLEAN = common dso_local global i64 0, align 8
@JS_TOBJECT = common dso_local global i64 0, align 8
@JS_HNONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @js_equal(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call %struct.TYPE_9__* @js_tovalue(i32* %6, i32 -2)
  store %struct.TYPE_9__* %7, %struct.TYPE_9__** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call %struct.TYPE_9__* @js_tovalue(i32* %8, i32 -1)
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %5, align 8
  br label %10

10:                                               ; preds = %238, %217, %190, %173, %1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = call i64 @JSV_ISSTRING(%struct.TYPE_9__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = call i64 @JSV_ISSTRING(%struct.TYPE_9__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = call i32 @JSV_TOSTRING(%struct.TYPE_9__* %19)
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %22 = call i32 @JSV_TOSTRING(%struct.TYPE_9__* %21)
  %23 = call i32 @strcmp(i32 %20, i32 %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %2, align 4
  br label %244

27:                                               ; preds = %14, %10
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %101

35:                                               ; preds = %27
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @JS_TUNDEFINED, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 1, i32* %2, align 4
  br label %244

42:                                               ; preds = %35
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @JS_TNULL, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 1, i32* %2, align 4
  br label %244

49:                                               ; preds = %42
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @JS_TNUMBER, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %49
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %59, %63
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %2, align 4
  br label %244

66:                                               ; preds = %49
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @JS_TBOOLEAN, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %66
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %76, %80
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %2, align 4
  br label %244

83:                                               ; preds = %66
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @JS_TOBJECT, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %100

89:                                               ; preds = %83
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %93, %97
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %2, align 4
  br label %244

100:                                              ; preds = %83
  store i32 0, i32* %2, align 4
  br label %244

101:                                              ; preds = %27
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @JS_TNULL, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %101
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @JS_TUNDEFINED, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  store i32 1, i32* %2, align 4
  br label %244

114:                                              ; preds = %107, %101
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @JS_TUNDEFINED, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %114
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @JS_TNULL, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  store i32 1, i32* %2, align 4
  br label %244

127:                                              ; preds = %120, %114
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @JS_TNUMBER, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %147

133:                                              ; preds = %127
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %135 = call i64 @JSV_ISSTRING(%struct.TYPE_9__* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %133
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i32*, i32** %3, align 8
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %144 = call i64 @jsV_tonumber(i32* %142, %struct.TYPE_9__* %143)
  %145 = icmp eq i64 %141, %144
  %146 = zext i1 %145 to i32
  store i32 %146, i32* %2, align 4
  br label %244

147:                                              ; preds = %133, %127
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %149 = call i64 @JSV_ISSTRING(%struct.TYPE_9__* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %167

151:                                              ; preds = %147
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @JS_TNUMBER, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %167

157:                                              ; preds = %151
  %158 = load i32*, i32** %3, align 8
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %160 = call i64 @jsV_tonumber(i32* %158, %struct.TYPE_9__* %159)
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp eq i64 %160, %164
  %166 = zext i1 %165 to i32
  store i32 %166, i32* %2, align 4
  br label %244

167:                                              ; preds = %151, %147
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @JS_TBOOLEAN, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %184

173:                                              ; preds = %167
  %174 = load i64, i64* @JS_TNUMBER, align 8
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  store i64 %174, i64* %176, align 8
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  store i64 %180, i64* %183, align 8
  br label %10

184:                                              ; preds = %167
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @JS_TBOOLEAN, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %201

190:                                              ; preds = %184
  %191 = load i64, i64* @JS_TNUMBER, align 8
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 0
  store i64 %191, i64* %193, align 8
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 0
  store i64 %197, i64* %200, align 8
  br label %10

201:                                              ; preds = %184
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %203 = call i64 @JSV_ISSTRING(%struct.TYPE_9__* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %211, label %205

205:                                              ; preds = %201
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @JS_TNUMBER, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %222

211:                                              ; preds = %205, %201
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @JS_TOBJECT, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %222

217:                                              ; preds = %211
  %218 = load i32*, i32** %3, align 8
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %220 = load i32, i32* @JS_HNONE, align 4
  %221 = call i32 @jsV_toprimitive(i32* %218, %struct.TYPE_9__* %219, i32 %220)
  br label %10

222:                                              ; preds = %211, %205
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @JS_TOBJECT, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %243

228:                                              ; preds = %222
  %229 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %230 = call i64 @JSV_ISSTRING(%struct.TYPE_9__* %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %238, label %232

232:                                              ; preds = %228
  %233 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @JS_TNUMBER, align 8
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %238, label %243

238:                                              ; preds = %232, %228
  %239 = load i32*, i32** %3, align 8
  %240 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %241 = load i32, i32* @JS_HNONE, align 4
  %242 = call i32 @jsV_toprimitive(i32* %239, %struct.TYPE_9__* %240, i32 %241)
  br label %10

243:                                              ; preds = %232, %222
  store i32 0, i32* %2, align 4
  br label %244

244:                                              ; preds = %243, %157, %137, %126, %113, %100, %89, %72, %55, %48, %41, %18
  %245 = load i32, i32* %2, align 4
  ret i32 %245
}

declare dso_local %struct.TYPE_9__* @js_tovalue(i32*, i32) #1

declare dso_local i64 @JSV_ISSTRING(%struct.TYPE_9__*) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @JSV_TOSTRING(%struct.TYPE_9__*) #1

declare dso_local i64 @jsV_tonumber(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @jsV_toprimitive(i32*, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
