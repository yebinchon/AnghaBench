; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_set.c_srandmemberWithCountCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_set.c_srandmemberWithCountCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32* }
%struct.TYPE_13__ = type { i64, i32* }

@C_OK = common dso_local global i64 0, align 8
@shared = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@OBJ_SET = common dso_local global i32 0, align 4
@OBJ_ENCODING_INTSET = common dso_local global i32 0, align 4
@SET_OP_UNION = common dso_local global i32 0, align 4
@objectKeyPointerValueDictType = common dso_local global i32 0, align 4
@SRANDMEMBER_SUB_STRATEGY_MUL = common dso_local global i64 0, align 8
@DICT_ERR = common dso_local global i32 0, align 4
@DICT_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @srandmemberWithCountCommand(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  store i32 1, i32* %6, align 4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @getLongFromObjectOrReply(%struct.TYPE_13__* %19, i32 %24, i64* %3, i32* null)
  %26 = load i64, i64* @C_OK, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  br label %227

29:                                               ; preds = %1
  %30 = load i64, i64* %3, align 8
  %31 = icmp sge i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i64, i64* %3, align 8
  store i64 %33, i64* %4, align 8
  br label %37

34:                                               ; preds = %29
  %35 = load i64, i64* %3, align 8
  %36 = sub nsw i64 0, %35
  store i64 %36, i64* %4, align 8
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %34, %32
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @shared, i32 0, i32 0), align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32* @lookupKeyReadOrReply(%struct.TYPE_13__* %38, i32 %43, i32 %49)
  store i32* %50, i32** %7, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %58, label %52

52:                                               ; preds = %37
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* @OBJ_SET, align 4
  %56 = call i64 @checkType(%struct.TYPE_13__* %53, i32* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52, %37
  br label %227

59:                                               ; preds = %52
  %60 = load i32*, i32** %7, align 8
  %61 = call i64 @setTypeSize(i32* %60)
  store i64 %61, i64* %5, align 8
  %62 = load i64, i64* %4, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %66 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @shared, i32 0, i32 0), align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @addReply(%struct.TYPE_13__* %65, i32 %71)
  br label %227

73:                                               ; preds = %59
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %102, label %76

76:                                               ; preds = %73
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %78 = load i64, i64* %4, align 8
  %79 = call i32 @addReplySetLen(%struct.TYPE_13__* %77, i64 %78)
  br label %80

80:                                               ; preds = %100, %76
  %81 = load i64, i64* %4, align 8
  %82 = add i64 %81, -1
  store i64 %82, i64* %4, align 8
  %83 = icmp ne i64 %81, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %80
  %85 = load i32*, i32** %7, align 8
  %86 = call i32 @setTypeRandomElement(i32* %85, i32* %8, i32* %9)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @OBJ_ENCODING_INTSET, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @addReplyBulkLongLong(%struct.TYPE_13__* %91, i32 %92)
  br label %100

94:                                               ; preds = %84
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @sdslen(i32 %97)
  %99 = call i32 @addReplyBulkCBuffer(%struct.TYPE_13__* %95, i32 %96, i32 %98)
  br label %100

100:                                              ; preds = %94, %90
  br label %80

101:                                              ; preds = %80
  br label %227

102:                                              ; preds = %73
  %103 = load i64, i64* %4, align 8
  %104 = load i64, i64* %5, align 8
  %105 = icmp uge i64 %103, %104
  br i1 %105, label %106, label %114

106:                                              ; preds = %102
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* @SET_OP_UNION, align 4
  %113 = call i32 @sunionDiffGenericCommand(%struct.TYPE_13__* %107, i32* %111, i32 1, i32* null, i32 %112)
  br label %227

114:                                              ; preds = %102
  %115 = call i32* @dictCreate(i32* @objectKeyPointerValueDictType, i32* null)
  store i32* %115, i32** %11, align 8
  %116 = load i64, i64* %4, align 8
  %117 = load i64, i64* @SRANDMEMBER_SUB_STRATEGY_MUL, align 8
  %118 = mul i64 %116, %117
  %119 = load i64, i64* %5, align 8
  %120 = icmp ugt i64 %118, %119
  br i1 %120, label %121, label %174

121:                                              ; preds = %114
  %122 = load i32*, i32** %7, align 8
  %123 = call i32* @setTypeInitIterator(i32* %122)
  store i32* %123, i32** %12, align 8
  br label %124

124:                                              ; preds = %145, %121
  %125 = load i32*, i32** %12, align 8
  %126 = call i32 @setTypeNext(i32* %125, i32* %8, i32* %9)
  store i32 %126, i32* %10, align 4
  %127 = icmp ne i32 %126, -1
  br i1 %127, label %128, label %151

128:                                              ; preds = %124
  %129 = load i32, i32* @DICT_ERR, align 4
  store i32 %129, i32* %13, align 4
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* @OBJ_ENCODING_INTSET, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load i32*, i32** %11, align 8
  %135 = load i32, i32* %9, align 4
  %136 = call i32* @createStringObjectFromLongLong(i32 %135)
  %137 = call i32 @dictAdd(i32* %134, i32* %136, i32* null)
  store i32 %137, i32* %13, align 4
  br label %145

138:                                              ; preds = %128
  %139 = load i32*, i32** %11, align 8
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* %8, align 4
  %142 = call i32 @sdslen(i32 %141)
  %143 = call i32* @createStringObject(i32 %140, i32 %142)
  %144 = call i32 @dictAdd(i32* %139, i32* %143, i32* null)
  store i32 %144, i32* %13, align 4
  br label %145

145:                                              ; preds = %138, %133
  %146 = load i32, i32* %13, align 4
  %147 = load i32, i32* @DICT_OK, align 4
  %148 = icmp eq i32 %146, %147
  %149 = zext i1 %148 to i32
  %150 = call i32 @serverAssert(i32 %149)
  br label %124

151:                                              ; preds = %124
  %152 = load i32*, i32** %12, align 8
  %153 = call i32 @setTypeReleaseIterator(i32* %152)
  %154 = load i32*, i32** %11, align 8
  %155 = call i64 @dictSize(i32* %154)
  %156 = load i64, i64* %5, align 8
  %157 = icmp eq i64 %155, %156
  %158 = zext i1 %157 to i32
  %159 = call i32 @serverAssert(i32 %158)
  br label %160

160:                                              ; preds = %164, %151
  %161 = load i64, i64* %5, align 8
  %162 = load i64, i64* %4, align 8
  %163 = icmp ugt i64 %161, %162
  br i1 %163, label %164, label %173

164:                                              ; preds = %160
  %165 = load i32*, i32** %11, align 8
  %166 = call i32* @dictGetRandomKey(i32* %165)
  store i32* %166, i32** %14, align 8
  %167 = load i32*, i32** %11, align 8
  %168 = load i32*, i32** %14, align 8
  %169 = call i32 @dictGetKey(i32* %168)
  %170 = call i32 @dictDelete(i32* %167, i32 %169)
  %171 = load i64, i64* %5, align 8
  %172 = add i64 %171, -1
  store i64 %172, i64* %5, align 8
  br label %160

173:                                              ; preds = %160
  br label %207

174:                                              ; preds = %114
  store i64 0, i64* %15, align 8
  br label %175

175:                                              ; preds = %205, %174
  %176 = load i64, i64* %15, align 8
  %177 = load i64, i64* %4, align 8
  %178 = icmp ult i64 %176, %177
  br i1 %178, label %179, label %206

179:                                              ; preds = %175
  %180 = load i32*, i32** %7, align 8
  %181 = call i32 @setTypeRandomElement(i32* %180, i32* %8, i32* %9)
  store i32 %181, i32* %10, align 4
  %182 = load i32, i32* %10, align 4
  %183 = load i32, i32* @OBJ_ENCODING_INTSET, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %188

185:                                              ; preds = %179
  %186 = load i32, i32* %9, align 4
  %187 = call i32* @createStringObjectFromLongLong(i32 %186)
  store i32* %187, i32** %16, align 8
  br label %193

188:                                              ; preds = %179
  %189 = load i32, i32* %8, align 4
  %190 = load i32, i32* %8, align 4
  %191 = call i32 @sdslen(i32 %190)
  %192 = call i32* @createStringObject(i32 %189, i32 %191)
  store i32* %192, i32** %16, align 8
  br label %193

193:                                              ; preds = %188, %185
  %194 = load i32*, i32** %11, align 8
  %195 = load i32*, i32** %16, align 8
  %196 = call i32 @dictAdd(i32* %194, i32* %195, i32* null)
  %197 = load i32, i32* @DICT_OK, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %193
  %200 = load i64, i64* %15, align 8
  %201 = add i64 %200, 1
  store i64 %201, i64* %15, align 8
  br label %205

202:                                              ; preds = %193
  %203 = load i32*, i32** %16, align 8
  %204 = call i32 @decrRefCount(i32* %203)
  br label %205

205:                                              ; preds = %202, %199
  br label %175

206:                                              ; preds = %175
  br label %207

207:                                              ; preds = %206, %173
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %209 = load i64, i64* %4, align 8
  %210 = call i32 @addReplySetLen(%struct.TYPE_13__* %208, i64 %209)
  %211 = load i32*, i32** %11, align 8
  %212 = call i32* @dictGetIterator(i32* %211)
  store i32* %212, i32** %17, align 8
  br label %213

213:                                              ; preds = %217, %207
  %214 = load i32*, i32** %17, align 8
  %215 = call i32* @dictNext(i32* %214)
  store i32* %215, i32** %18, align 8
  %216 = icmp ne i32* %215, null
  br i1 %216, label %217, label %222

217:                                              ; preds = %213
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %219 = load i32*, i32** %18, align 8
  %220 = call i32 @dictGetKey(i32* %219)
  %221 = call i32 @addReplyBulk(%struct.TYPE_13__* %218, i32 %220)
  br label %213

222:                                              ; preds = %213
  %223 = load i32*, i32** %17, align 8
  %224 = call i32 @dictReleaseIterator(i32* %223)
  %225 = load i32*, i32** %11, align 8
  %226 = call i32 @dictRelease(i32* %225)
  br label %227

227:                                              ; preds = %222, %106, %101, %64, %58, %28
  ret void
}

declare dso_local i64 @getLongFromObjectOrReply(%struct.TYPE_13__*, i32, i64*, i32*) #1

declare dso_local i32* @lookupKeyReadOrReply(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i64 @checkType(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i64 @setTypeSize(i32*) #1

declare dso_local i32 @addReply(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @addReplySetLen(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @setTypeRandomElement(i32*, i32*, i32*) #1

declare dso_local i32 @addReplyBulkLongLong(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @addReplyBulkCBuffer(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @sdslen(i32) #1

declare dso_local i32 @sunionDiffGenericCommand(%struct.TYPE_13__*, i32*, i32, i32*, i32) #1

declare dso_local i32* @dictCreate(i32*, i32*) #1

declare dso_local i32* @setTypeInitIterator(i32*) #1

declare dso_local i32 @setTypeNext(i32*, i32*, i32*) #1

declare dso_local i32 @dictAdd(i32*, i32*, i32*) #1

declare dso_local i32* @createStringObjectFromLongLong(i32) #1

declare dso_local i32* @createStringObject(i32, i32) #1

declare dso_local i32 @serverAssert(i32) #1

declare dso_local i32 @setTypeReleaseIterator(i32*) #1

declare dso_local i64 @dictSize(i32*) #1

declare dso_local i32* @dictGetRandomKey(i32*) #1

declare dso_local i32 @dictDelete(i32*, i32) #1

declare dso_local i32 @dictGetKey(i32*) #1

declare dso_local i32 @decrRefCount(i32*) #1

declare dso_local i32* @dictGetIterator(i32*) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local i32 @addReplyBulk(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

declare dso_local i32 @dictRelease(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
