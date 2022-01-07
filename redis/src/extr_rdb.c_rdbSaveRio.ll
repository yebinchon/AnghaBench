; ModuleID = '/home/carl/AnghaBench/redis/src/extr_rdb.c_rdbSaveRio.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_rdb.c_rdbSaveRio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32*, %struct.TYPE_22__*, i64 }
%struct.TYPE_22__ = type { i32*, i32* }
%struct.TYPE_21__ = type { i64, i32, i32 }
%struct.TYPE_20__ = type { i32 }

@server = common dso_local global %struct.TYPE_23__ zeroinitializer, align 8
@rioGenericUpdateChecksum = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"REDIS%04d\00", align 1
@RDB_VERSION = common dso_local global i32 0, align 4
@REDISMODULE_AUX_BEFORE_RDB = common dso_local global i32 0, align 4
@RDB_OPCODE_SELECTDB = common dso_local global i32 0, align 4
@RDB_OPCODE_RESIZEDB = common dso_local global i32 0, align 4
@RDBFLAGS_AOF_PREAMBLE = common dso_local global i32 0, align 4
@AOF_READ_DIFF_INTERVAL_BYTES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"lua\00", align 1
@REDISMODULE_AUX_AFTER_RDB = common dso_local global i32 0, align 4
@RDB_OPCODE_EOF = common dso_local global i32 0, align 4
@C_OK = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@C_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdbSaveRio(%struct.TYPE_21__* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca [10 x i8], align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_22__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_20__, align 4
  %22 = alloca %struct.TYPE_20__*, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i64 0, i64* %15, align 8
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @server, i32 0, i32 3), align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %4
  %28 = load i32, i32* @rioGenericUpdateChecksum, align 4
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %27, %4
  %32 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0
  %33 = load i32, i32* @RDB_VERSION, align 4
  %34 = call i32 @snprintf(i8* %32, i32 10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %36 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0
  %37 = call i32 @rdbWriteRaw(%struct.TYPE_21__* %35, i8* %36, i32 9)
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %214

40:                                               ; preds = %31
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @rdbSaveInfoAuxFields(%struct.TYPE_21__* %41, i32 %42, i32* %43)
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %214

47:                                               ; preds = %40
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %49 = load i32, i32* @REDISMODULE_AUX_BEFORE_RDB, align 4
  %50 = call i32 @rdbSaveModulesAux(%struct.TYPE_21__* %48, i32 %49)
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %214

53:                                               ; preds = %47
  store i32 0, i32* %13, align 4
  br label %54

54:                                               ; preds = %156, %53
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @server, i32 0, i32 0), align 8
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %159

58:                                               ; preds = %54
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @server, i32 0, i32 2), align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i64 %61
  store %struct.TYPE_22__* %62, %struct.TYPE_22__** %16, align 8
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  store i32* %65, i32** %17, align 8
  %66 = load i32*, i32** %17, align 8
  %67 = call i64 @dictSize(i32* %66)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  br label %156

70:                                               ; preds = %58
  %71 = load i32*, i32** %17, align 8
  %72 = call i32* @dictGetSafeIterator(i32* %71)
  store i32* %72, i32** %10, align 8
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %74 = load i32, i32* @RDB_OPCODE_SELECTDB, align 4
  %75 = call i32 @rdbSaveType(%struct.TYPE_21__* %73, i32 %74)
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %214

78:                                               ; preds = %70
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @rdbSaveLen(%struct.TYPE_21__* %79, i32 %80)
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %214

84:                                               ; preds = %78
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = call i64 @dictSize(i32* %87)
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %18, align 4
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = call i64 @dictSize(i32* %92)
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %19, align 4
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %96 = load i32, i32* @RDB_OPCODE_RESIZEDB, align 4
  %97 = call i32 @rdbSaveType(%struct.TYPE_21__* %95, i32 %96)
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %100

99:                                               ; preds = %84
  br label %214

100:                                              ; preds = %84
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %102 = load i32, i32* %18, align 4
  %103 = call i32 @rdbSaveLen(%struct.TYPE_21__* %101, i32 %102)
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %214

106:                                              ; preds = %100
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %108 = load i32, i32* %19, align 4
  %109 = call i32 @rdbSaveLen(%struct.TYPE_21__* %107, i32 %108)
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  br label %214

112:                                              ; preds = %106
  br label %113

113:                                              ; preds = %152, %112
  %114 = load i32*, i32** %10, align 8
  %115 = call i32* @dictNext(i32* %114)
  store i32* %115, i32** %11, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %153

117:                                              ; preds = %113
  %118 = load i32*, i32** %11, align 8
  %119 = call i32 @dictGetKey(i32* %118)
  store i32 %119, i32* %20, align 4
  %120 = load i32*, i32** %11, align 8
  %121 = call %struct.TYPE_20__* @dictGetVal(i32* %120)
  store %struct.TYPE_20__* %121, %struct.TYPE_20__** %22, align 8
  %122 = load i32, i32* %20, align 4
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @initStaticStringObject(i32 %124, i32 %122)
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %127 = call i64 @getExpire(%struct.TYPE_22__* %126, %struct.TYPE_20__* %21)
  store i64 %127, i64* %23, align 8
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %130 = load i64, i64* %23, align 8
  %131 = call i32 @rdbSaveKeyValuePair(%struct.TYPE_21__* %128, %struct.TYPE_20__* %21, %struct.TYPE_20__* %129, i64 %130)
  %132 = icmp eq i32 %131, -1
  br i1 %132, label %133, label %134

133:                                              ; preds = %117
  br label %214

134:                                              ; preds = %117
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* @RDBFLAGS_AOF_PREAMBLE, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %152

139:                                              ; preds = %134
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* %15, align 8
  %144 = load i64, i64* @AOF_READ_DIFF_INTERVAL_BYTES, align 8
  %145 = add i64 %143, %144
  %146 = icmp ugt i64 %142, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %139
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  store i64 %150, i64* %15, align 8
  %151 = call i32 (...) @aofReadDiffFromParent()
  br label %152

152:                                              ; preds = %147, %139, %134
  br label %113

153:                                              ; preds = %113
  %154 = load i32*, i32** %10, align 8
  %155 = call i32 @dictReleaseIterator(i32* %154)
  store i32* null, i32** %10, align 8
  br label %156

156:                                              ; preds = %153, %69
  %157 = load i32, i32* %13, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %13, align 4
  br label %54

159:                                              ; preds = %54
  %160 = load i32*, i32** %9, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %162, label %191

162:                                              ; preds = %159
  %163 = load i32*, i32** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @server, i32 0, i32 1), align 8
  %164 = call i64 @dictSize(i32* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %191

166:                                              ; preds = %162
  %167 = load i32*, i32** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @server, i32 0, i32 1), align 8
  %168 = call i32* @dictGetIterator(i32* %167)
  store i32* %168, i32** %10, align 8
  br label %169

169:                                              ; preds = %187, %166
  %170 = load i32*, i32** %10, align 8
  %171 = call i32* @dictNext(i32* %170)
  store i32* %171, i32** %11, align 8
  %172 = icmp ne i32* %171, null
  br i1 %172, label %173, label %188

173:                                              ; preds = %169
  %174 = load i32*, i32** %11, align 8
  %175 = call %struct.TYPE_20__* @dictGetVal(i32* %174)
  store %struct.TYPE_20__* %175, %struct.TYPE_20__** %24, align 8
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @sdslen(i32 %182)
  %184 = call i32 @rdbSaveAuxField(%struct.TYPE_21__* %176, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3, i32 %179, i32 %183)
  %185 = icmp eq i32 %184, -1
  br i1 %185, label %186, label %187

186:                                              ; preds = %173
  br label %214

187:                                              ; preds = %173
  br label %169

188:                                              ; preds = %169
  %189 = load i32*, i32** %10, align 8
  %190 = call i32 @dictReleaseIterator(i32* %189)
  store i32* null, i32** %10, align 8
  br label %191

191:                                              ; preds = %188, %162, %159
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %193 = load i32, i32* @REDISMODULE_AUX_AFTER_RDB, align 4
  %194 = call i32 @rdbSaveModulesAux(%struct.TYPE_21__* %192, i32 %193)
  %195 = icmp eq i32 %194, -1
  br i1 %195, label %196, label %197

196:                                              ; preds = %191
  br label %214

197:                                              ; preds = %191
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %199 = load i32, i32* @RDB_OPCODE_EOF, align 4
  %200 = call i32 @rdbSaveType(%struct.TYPE_21__* %198, i32 %199)
  %201 = icmp eq i32 %200, -1
  br i1 %201, label %202, label %203

202:                                              ; preds = %197
  br label %214

203:                                              ; preds = %197
  %204 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  store i32 %206, i32* %14, align 4
  %207 = call i32 @memrev64ifbe(i32* %14)
  %208 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %209 = call i64 @rioWrite(%struct.TYPE_21__* %208, i32* %14, i32 8)
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %203
  br label %214

212:                                              ; preds = %203
  %213 = load i32, i32* @C_OK, align 4
  store i32 %213, i32* %5, align 4
  br label %228

214:                                              ; preds = %211, %202, %196, %186, %133, %111, %105, %99, %83, %77, %52, %46, %39
  %215 = load i32*, i32** %7, align 8
  %216 = icmp ne i32* %215, null
  br i1 %216, label %217, label %220

217:                                              ; preds = %214
  %218 = load i32, i32* @errno, align 4
  %219 = load i32*, i32** %7, align 8
  store i32 %218, i32* %219, align 4
  br label %220

220:                                              ; preds = %217, %214
  %221 = load i32*, i32** %10, align 8
  %222 = icmp ne i32* %221, null
  br i1 %222, label %223, label %226

223:                                              ; preds = %220
  %224 = load i32*, i32** %10, align 8
  %225 = call i32 @dictReleaseIterator(i32* %224)
  br label %226

226:                                              ; preds = %223, %220
  %227 = load i32, i32* @C_ERR, align 4
  store i32 %227, i32* %5, align 4
  br label %228

228:                                              ; preds = %226, %212
  %229 = load i32, i32* %5, align 4
  ret i32 %229
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @rdbWriteRaw(%struct.TYPE_21__*, i8*, i32) #1

declare dso_local i32 @rdbSaveInfoAuxFields(%struct.TYPE_21__*, i32, i32*) #1

declare dso_local i32 @rdbSaveModulesAux(%struct.TYPE_21__*, i32) #1

declare dso_local i64 @dictSize(i32*) #1

declare dso_local i32* @dictGetSafeIterator(i32*) #1

declare dso_local i32 @rdbSaveType(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @rdbSaveLen(%struct.TYPE_21__*, i32) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local i32 @dictGetKey(i32*) #1

declare dso_local %struct.TYPE_20__* @dictGetVal(i32*) #1

declare dso_local i32 @initStaticStringObject(i32, i32) #1

declare dso_local i64 @getExpire(%struct.TYPE_22__*, %struct.TYPE_20__*) #1

declare dso_local i32 @rdbSaveKeyValuePair(%struct.TYPE_21__*, %struct.TYPE_20__*, %struct.TYPE_20__*, i64) #1

declare dso_local i32 @aofReadDiffFromParent(...) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

declare dso_local i32* @dictGetIterator(i32*) #1

declare dso_local i32 @rdbSaveAuxField(%struct.TYPE_21__*, i8*, i32, i32, i32) #1

declare dso_local i32 @sdslen(i32) #1

declare dso_local i32 @memrev64ifbe(i32*) #1

declare dso_local i64 @rioWrite(%struct.TYPE_21__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
