; ModuleID = '/home/carl/AnghaBench/redis/src/extr_aof.c_rewriteAppendOnlyFileRio.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_aof.c_rewriteAppendOnlyFileRio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { i32, %struct.TYPE_34__* }
%struct.TYPE_34__ = type { i32* }
%struct.TYPE_33__ = type { i64 }
%struct.TYPE_32__ = type { i64 }

@server = common dso_local global %struct.TYPE_35__ zeroinitializer, align 8
@__const.rewriteAppendOnlyFileRio.selectcmd = private unnamed_addr constant [17 x i8] c"*2\0D\0A$6\0D\0ASELECT\0D\0A\00", align 16
@OBJ_STRING = common dso_local global i64 0, align 8
@__const.rewriteAppendOnlyFileRio.cmd = private unnamed_addr constant [14 x i8] c"*3\0D\0A$3\0D\0ASET\0D\0A\00", align 1
@OBJ_LIST = common dso_local global i64 0, align 8
@OBJ_SET = common dso_local global i64 0, align 8
@OBJ_ZSET = common dso_local global i64 0, align 8
@OBJ_HASH = common dso_local global i64 0, align 8
@OBJ_STREAM = common dso_local global i64 0, align 8
@OBJ_MODULE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"Unknown object type\00", align 1
@__const.rewriteAppendOnlyFileRio.cmd.1 = private unnamed_addr constant [20 x i8] c"*3\0D\0A$9\0D\0APEXPIREAT\0D\0A\00", align 16
@AOF_READ_DIFF_INTERVAL_BYTES = common dso_local global i64 0, align 8
@C_OK = common dso_local global i32 0, align 4
@C_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rewriteAppendOnlyFileRio(%struct.TYPE_33__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_33__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [17 x i8], align 16
  %9 = alloca %struct.TYPE_34__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_32__, align 8
  %13 = alloca %struct.TYPE_32__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca [14 x i8], align 1
  %16 = alloca [20 x i8], align 16
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %3, align 8
  store i32* null, i32** %4, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %214, %1
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_35__, %struct.TYPE_35__* @server, i32 0, i32 0), align 8
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %217

21:                                               ; preds = %17
  %22 = bitcast [17 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %22, i8* align 16 getelementptr inbounds ([17 x i8], [17 x i8]* @__const.rewriteAppendOnlyFileRio.selectcmd, i32 0, i32 0), i64 17, i1 false)
  %23 = load %struct.TYPE_34__*, %struct.TYPE_34__** getelementptr inbounds (%struct.TYPE_35__, %struct.TYPE_35__* @server, i32 0, i32 1), align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %23, i64 %25
  store %struct.TYPE_34__* %26, %struct.TYPE_34__** %9, align 8
  %27 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %10, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = call i64 @dictSize(i32* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  br label %214

34:                                               ; preds = %21
  %35 = load i32*, i32** %10, align 8
  %36 = call i32* @dictGetSafeIterator(i32* %35)
  store i32* %36, i32** %4, align 8
  %37 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %38 = getelementptr inbounds [17 x i8], [17 x i8]* %8, i64 0, i64 0
  %39 = call i64 @rioWrite(%struct.TYPE_33__* %37, i8* %38, i32 16)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %219

42:                                               ; preds = %34
  %43 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = call i64 @rioWriteBulkLongLong(%struct.TYPE_33__* %43, i64 %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %219

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %210, %49
  %51 = load i32*, i32** %4, align 8
  %52 = call i32* @dictNext(i32* %51)
  store i32* %52, i32** %5, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %211

54:                                               ; preds = %50
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @dictGetKey(i32* %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32*, i32** %5, align 8
  %58 = call %struct.TYPE_32__* @dictGetVal(i32* %57)
  store %struct.TYPE_32__* %58, %struct.TYPE_32__** %13, align 8
  %59 = load i32, i32* %11, align 4
  %60 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %12, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @initStaticStringObject(i64 %61, i32 %59)
  %63 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %64 = call i64 @getExpire(%struct.TYPE_34__* %63, %struct.TYPE_32__* %12)
  store i64 %64, i64* %14, align 8
  %65 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @OBJ_STRING, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %89

70:                                               ; preds = %54
  %71 = bitcast [14 x i8]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %71, i8* align 1 getelementptr inbounds ([14 x i8], [14 x i8]* @__const.rewriteAppendOnlyFileRio.cmd, i32 0, i32 0), i64 14, i1 false)
  %72 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %73 = getelementptr inbounds [14 x i8], [14 x i8]* %15, i64 0, i64 0
  %74 = call i64 @rioWrite(%struct.TYPE_33__* %72, i8* %73, i32 13)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %219

77:                                               ; preds = %70
  %78 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %79 = call i64 @rioWriteBulkObject(%struct.TYPE_33__* %78, %struct.TYPE_32__* %12)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %219

82:                                               ; preds = %77
  %83 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %84 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %85 = call i64 @rioWriteBulkObject(%struct.TYPE_33__* %83, %struct.TYPE_32__* %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %219

88:                                               ; preds = %82
  br label %175

89:                                               ; preds = %54
  %90 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @OBJ_LIST, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %89
  %96 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %97 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %98 = call i64 @rewriteListObject(%struct.TYPE_33__* %96, %struct.TYPE_32__* %12, %struct.TYPE_32__* %97)
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  br label %219

101:                                              ; preds = %95
  br label %174

102:                                              ; preds = %89
  %103 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @OBJ_SET, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %102
  %109 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %110 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %111 = call i64 @rewriteSetObject(%struct.TYPE_33__* %109, %struct.TYPE_32__* %12, %struct.TYPE_32__* %110)
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  br label %219

114:                                              ; preds = %108
  br label %173

115:                                              ; preds = %102
  %116 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @OBJ_ZSET, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %115
  %122 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %123 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %124 = call i64 @rewriteSortedSetObject(%struct.TYPE_33__* %122, %struct.TYPE_32__* %12, %struct.TYPE_32__* %123)
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  br label %219

127:                                              ; preds = %121
  br label %172

128:                                              ; preds = %115
  %129 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @OBJ_HASH, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %141

134:                                              ; preds = %128
  %135 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %136 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %137 = call i64 @rewriteHashObject(%struct.TYPE_33__* %135, %struct.TYPE_32__* %12, %struct.TYPE_32__* %136)
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  br label %219

140:                                              ; preds = %134
  br label %171

141:                                              ; preds = %128
  %142 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %143 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @OBJ_STREAM, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %154

147:                                              ; preds = %141
  %148 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %149 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %150 = call i64 @rewriteStreamObject(%struct.TYPE_33__* %148, %struct.TYPE_32__* %12, %struct.TYPE_32__* %149)
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %147
  br label %219

153:                                              ; preds = %147
  br label %170

154:                                              ; preds = %141
  %155 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @OBJ_MODULE, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %167

160:                                              ; preds = %154
  %161 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %162 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %163 = call i64 @rewriteModuleObject(%struct.TYPE_33__* %161, %struct.TYPE_32__* %12, %struct.TYPE_32__* %162)
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %160
  br label %219

166:                                              ; preds = %160
  br label %169

167:                                              ; preds = %154
  %168 = call i32 @serverPanic(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %169

169:                                              ; preds = %167, %166
  br label %170

170:                                              ; preds = %169, %153
  br label %171

171:                                              ; preds = %170, %140
  br label %172

172:                                              ; preds = %171, %127
  br label %173

173:                                              ; preds = %172, %114
  br label %174

174:                                              ; preds = %173, %101
  br label %175

175:                                              ; preds = %174, %88
  %176 = load i64, i64* %14, align 8
  %177 = icmp ne i64 %176, -1
  br i1 %177, label %178, label %197

178:                                              ; preds = %175
  %179 = bitcast [20 x i8]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %179, i8* align 16 getelementptr inbounds ([20 x i8], [20 x i8]* @__const.rewriteAppendOnlyFileRio.cmd.1, i32 0, i32 0), i64 20, i1 false)
  %180 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %181 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i64 0, i64 0
  %182 = call i64 @rioWrite(%struct.TYPE_33__* %180, i8* %181, i32 19)
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %178
  br label %219

185:                                              ; preds = %178
  %186 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %187 = call i64 @rioWriteBulkObject(%struct.TYPE_33__* %186, %struct.TYPE_32__* %12)
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %185
  br label %219

190:                                              ; preds = %185
  %191 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %192 = load i64, i64* %14, align 8
  %193 = call i64 @rioWriteBulkLongLong(%struct.TYPE_33__* %191, i64 %192)
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %190
  br label %219

196:                                              ; preds = %190
  br label %197

197:                                              ; preds = %196, %175
  %198 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* %6, align 8
  %202 = load i64, i64* @AOF_READ_DIFF_INTERVAL_BYTES, align 8
  %203 = add i64 %201, %202
  %204 = icmp ugt i64 %200, %203
  br i1 %204, label %205, label %210

205:                                              ; preds = %197
  %206 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  store i64 %208, i64* %6, align 8
  %209 = call i32 (...) @aofReadDiffFromParent()
  br label %210

210:                                              ; preds = %205, %197
  br label %50

211:                                              ; preds = %50
  %212 = load i32*, i32** %4, align 8
  %213 = call i32 @dictReleaseIterator(i32* %212)
  store i32* null, i32** %4, align 8
  br label %214

214:                                              ; preds = %211, %33
  %215 = load i32, i32* %7, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %7, align 4
  br label %17

217:                                              ; preds = %17
  %218 = load i32, i32* @C_OK, align 4
  store i32 %218, i32* %2, align 4
  br label %227

219:                                              ; preds = %195, %189, %184, %165, %152, %139, %126, %113, %100, %87, %81, %76, %48, %41
  %220 = load i32*, i32** %4, align 8
  %221 = icmp ne i32* %220, null
  br i1 %221, label %222, label %225

222:                                              ; preds = %219
  %223 = load i32*, i32** %4, align 8
  %224 = call i32 @dictReleaseIterator(i32* %223)
  br label %225

225:                                              ; preds = %222, %219
  %226 = load i32, i32* @C_ERR, align 4
  store i32 %226, i32* %2, align 4
  br label %227

227:                                              ; preds = %225, %217
  %228 = load i32, i32* %2, align 4
  ret i32 %228
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @dictSize(i32*) #2

declare dso_local i32* @dictGetSafeIterator(i32*) #2

declare dso_local i64 @rioWrite(%struct.TYPE_33__*, i8*, i32) #2

declare dso_local i64 @rioWriteBulkLongLong(%struct.TYPE_33__*, i64) #2

declare dso_local i32* @dictNext(i32*) #2

declare dso_local i32 @dictGetKey(i32*) #2

declare dso_local %struct.TYPE_32__* @dictGetVal(i32*) #2

declare dso_local i32 @initStaticStringObject(i64, i32) #2

declare dso_local i64 @getExpire(%struct.TYPE_34__*, %struct.TYPE_32__*) #2

declare dso_local i64 @rioWriteBulkObject(%struct.TYPE_33__*, %struct.TYPE_32__*) #2

declare dso_local i64 @rewriteListObject(%struct.TYPE_33__*, %struct.TYPE_32__*, %struct.TYPE_32__*) #2

declare dso_local i64 @rewriteSetObject(%struct.TYPE_33__*, %struct.TYPE_32__*, %struct.TYPE_32__*) #2

declare dso_local i64 @rewriteSortedSetObject(%struct.TYPE_33__*, %struct.TYPE_32__*, %struct.TYPE_32__*) #2

declare dso_local i64 @rewriteHashObject(%struct.TYPE_33__*, %struct.TYPE_32__*, %struct.TYPE_32__*) #2

declare dso_local i64 @rewriteStreamObject(%struct.TYPE_33__*, %struct.TYPE_32__*, %struct.TYPE_32__*) #2

declare dso_local i64 @rewriteModuleObject(%struct.TYPE_33__*, %struct.TYPE_32__*, %struct.TYPE_32__*) #2

declare dso_local i32 @serverPanic(i8*) #2

declare dso_local i32 @aofReadDiffFromParent(...) #2

declare dso_local i32 @dictReleaseIterator(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
