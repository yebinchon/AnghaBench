; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_string.c_setCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_string.c_setCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__** }
%struct.TYPE_12__ = type { i8* }

@UNIT_SECONDS = common dso_local global i32 0, align 4
@OBJ_SET_NO_FLAGS = common dso_local global i32 0, align 4
@OBJ_SET_XX = common dso_local global i32 0, align 4
@OBJ_SET_NX = common dso_local global i32 0, align 4
@OBJ_SET_PX = common dso_local global i32 0, align 4
@OBJ_SET_EX = common dso_local global i32 0, align 4
@UNIT_MILLISECONDS = common dso_local global i32 0, align 4
@shared = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setCommand(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  %9 = load i32, i32* @UNIT_SECONDS, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @OBJ_SET_NO_FLAGS, align 4
  store i32 %10, i32* %6, align 4
  store i32 3, i32* %3, align 4
  br label %11

11:                                               ; preds = %222, %1
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %225

17:                                               ; preds = %11
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %20, i64 %22
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %7, align 8
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %30, 1
  %32 = icmp eq i32 %27, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %17
  br label %43

34:                                               ; preds = %17
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %37, i64 %40
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  br label %43

43:                                               ; preds = %34, %33
  %44 = phi %struct.TYPE_12__* [ null, %33 ], [ %42, %34 ]
  store %struct.TYPE_12__* %44, %struct.TYPE_12__** %8, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 110
  br i1 %49, label %56, label %50

50:                                               ; preds = %43
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 78
  br i1 %55, label %56, label %83

56:                                               ; preds = %50, %43
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 120
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 88
  br i1 %67, label %68, label %83

68:                                               ; preds = %62, %56
  %69 = load i8*, i8** %7, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 2
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %68
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @OBJ_SET_XX, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* @OBJ_SET_NX, align 4
  %81 = load i32, i32* %6, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %6, align 4
  br label %221

83:                                               ; preds = %74, %68, %62, %50
  %84 = load i8*, i8** %7, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 0
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 120
  br i1 %88, label %95, label %89

89:                                               ; preds = %83
  %90 = load i8*, i8** %7, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 0
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 88
  br i1 %94, label %95, label %122

95:                                               ; preds = %89, %83
  %96 = load i8*, i8** %7, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 1
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 120
  br i1 %100, label %107, label %101

101:                                              ; preds = %95
  %102 = load i8*, i8** %7, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 1
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 88
  br i1 %106, label %107, label %122

107:                                              ; preds = %101, %95
  %108 = load i8*, i8** %7, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 2
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %107
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @OBJ_SET_NX, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %113
  %119 = load i32, i32* @OBJ_SET_XX, align 4
  %120 = load i32, i32* %6, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %6, align 4
  br label %220

122:                                              ; preds = %113, %107, %101, %89
  %123 = load i8*, i8** %7, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 0
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 101
  br i1 %127, label %134, label %128

128:                                              ; preds = %122
  %129 = load i8*, i8** %7, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 0
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 69
  br i1 %133, label %134, label %168

134:                                              ; preds = %128, %122
  %135 = load i8*, i8** %7, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 1
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 120
  br i1 %139, label %146, label %140

140:                                              ; preds = %134
  %141 = load i8*, i8** %7, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 1
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 88
  br i1 %145, label %146, label %168

146:                                              ; preds = %140, %134
  %147 = load i8*, i8** %7, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 2
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %168

152:                                              ; preds = %146
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* @OBJ_SET_PX, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %168, label %157

157:                                              ; preds = %152
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %159 = icmp ne %struct.TYPE_12__* %158, null
  br i1 %159, label %160, label %168

160:                                              ; preds = %157
  %161 = load i32, i32* @OBJ_SET_EX, align 4
  %162 = load i32, i32* %6, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %6, align 4
  %164 = load i32, i32* @UNIT_SECONDS, align 4
  store i32 %164, i32* %5, align 4
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %165, %struct.TYPE_12__** %4, align 8
  %166 = load i32, i32* %3, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %3, align 4
  br label %219

168:                                              ; preds = %157, %152, %146, %140, %128
  %169 = load i8*, i8** %7, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 0
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp eq i32 %172, 112
  br i1 %173, label %180, label %174

174:                                              ; preds = %168
  %175 = load i8*, i8** %7, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 0
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp eq i32 %178, 80
  br i1 %179, label %180, label %214

180:                                              ; preds = %174, %168
  %181 = load i8*, i8** %7, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 1
  %183 = load i8, i8* %182, align 1
  %184 = sext i8 %183 to i32
  %185 = icmp eq i32 %184, 120
  br i1 %185, label %192, label %186

186:                                              ; preds = %180
  %187 = load i8*, i8** %7, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 1
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = icmp eq i32 %190, 88
  br i1 %191, label %192, label %214

192:                                              ; preds = %186, %180
  %193 = load i8*, i8** %7, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 2
  %195 = load i8, i8* %194, align 1
  %196 = sext i8 %195 to i32
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %214

198:                                              ; preds = %192
  %199 = load i32, i32* %6, align 4
  %200 = load i32, i32* @OBJ_SET_EX, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %214, label %203

203:                                              ; preds = %198
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %205 = icmp ne %struct.TYPE_12__* %204, null
  br i1 %205, label %206, label %214

206:                                              ; preds = %203
  %207 = load i32, i32* @OBJ_SET_PX, align 4
  %208 = load i32, i32* %6, align 4
  %209 = or i32 %208, %207
  store i32 %209, i32* %6, align 4
  %210 = load i32, i32* @UNIT_MILLISECONDS, align 4
  store i32 %210, i32* %5, align 4
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %211, %struct.TYPE_12__** %4, align 8
  %212 = load i32, i32* %3, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %3, align 4
  br label %218

214:                                              ; preds = %203, %198, %192, %186, %174
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %216 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @shared, i32 0, i32 0), align 4
  %217 = call i32 @addReply(%struct.TYPE_13__* %215, i32 %216)
  br label %251

218:                                              ; preds = %206
  br label %219

219:                                              ; preds = %218, %160
  br label %220

220:                                              ; preds = %219, %118
  br label %221

221:                                              ; preds = %220, %79
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %3, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %3, align 4
  br label %11

225:                                              ; preds = %11
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 1
  %228 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %228, i64 2
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %229, align 8
  %231 = call %struct.TYPE_12__* @tryObjectEncoding(%struct.TYPE_12__* %230)
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 1
  %234 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %234, i64 2
  store %struct.TYPE_12__* %231, %struct.TYPE_12__** %235, align 8
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %237 = load i32, i32* %6, align 4
  %238 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 1
  %240 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %240, i64 1
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %241, align 8
  %243 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 1
  %245 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %245, i64 2
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** %246, align 8
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %249 = load i32, i32* %5, align 4
  %250 = call i32 @setGenericCommand(%struct.TYPE_13__* %236, i32 %237, %struct.TYPE_12__* %242, %struct.TYPE_12__* %247, %struct.TYPE_12__* %248, i32 %249, i32* null, i32* null)
  br label %251

251:                                              ; preds = %225, %214
  ret void
}

declare dso_local i32 @addReply(%struct.TYPE_13__*, i32) #1

declare dso_local %struct.TYPE_12__* @tryObjectEncoding(%struct.TYPE_12__*) #1

declare dso_local i32 @setGenericCommand(%struct.TYPE_13__*, i32, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
