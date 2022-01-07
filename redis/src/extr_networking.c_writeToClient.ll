; ModuleID = '/home/carl/AnghaBench/redis/src/extr_networking.c_writeToClient.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_networking.c_writeToClient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i32 }
%struct.TYPE_9__ = type { i64, i64, i64, i32, i32, i32, i32, i64 }
%struct.TYPE_8__ = type { i64, i64, i64 }

@NET_MAX_WRITES_PER_EVENT = common dso_local global i64 0, align 8
@server = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@CLIENT_SLAVE = common dso_local global i32 0, align 4
@CONN_STATE_CONNECTED = common dso_local global i64 0, align 8
@LL_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Error writing to client: %s\00", align 1
@C_ERR = common dso_local global i32 0, align 4
@CLIENT_MASTER = common dso_local global i32 0, align 4
@CLIENT_CLOSE_AFTER_REPLY = common dso_local global i32 0, align 4
@C_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @writeToClient(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %10

10:                                               ; preds = %177, %76, %2
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = call i64 @clientHasPendingReplies(%struct.TYPE_9__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %178

14:                                               ; preds = %10
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ugt i64 %17, 0
  br i1 %18, label %19, label %65

19:                                               ; preds = %14
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 7
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = add i64 %25, %28
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = sub i64 %32, %35
  %37 = call i64 @connWrite(i32 %22, i64 %29, i64 %36)
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp sle i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %19
  br label %178

41:                                               ; preds = %19
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %45, %42
  store i64 %46, i64* %44, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* %7, align 8
  %49 = add nsw i64 %48, %47
  store i64 %49, i64* %7, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = sext i32 %53 to i64
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %54, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %41
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  store i64 0, i64* %63, align 8
  br label %64

64:                                               ; preds = %59, %41
  br label %158

65:                                               ; preds = %14
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @listFirst(i32 %68)
  %70 = call %struct.TYPE_8__* @listNodeValue(i32 %69)
  store %struct.TYPE_8__* %70, %struct.TYPE_8__** %9, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %8, align 8
  %74 = load i64, i64* %8, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %65
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = sub nsw i64 %82, %79
  store i64 %83, i64* %81, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @listFirst(i32 %89)
  %91 = call i32 @listDelNode(i32 %86, i32 %90)
  br label %10

92:                                               ; preds = %65
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = add i64 %98, %101
  %103 = load i64, i64* %8, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = sub i64 %103, %106
  %108 = call i64 @connWrite(i32 %95, i64 %102, i64 %107)
  store i64 %108, i64* %6, align 8
  %109 = load i64, i64* %6, align 8
  %110 = icmp sle i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %92
  br label %178

112:                                              ; preds = %92
  %113 = load i64, i64* %6, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = add i64 %116, %113
  store i64 %117, i64* %115, align 8
  %118 = load i64, i64* %6, align 8
  %119 = load i64, i64* %7, align 8
  %120 = add nsw i64 %119, %118
  store i64 %120, i64* %7, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* %8, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %157

126:                                              ; preds = %112
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = sub nsw i64 %132, %129
  store i64 %133, i64* %131, align 8
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 6
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @listFirst(i32 %139)
  %141 = call i32 @listDelNode(i32 %136, i32 %140)
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 1
  store i64 0, i64* %143, align 8
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 4
  %147 = call i64 @listLength(i32 %146)
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %126
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = icmp eq i64 %152, 0
  %154 = zext i1 %153 to i32
  %155 = call i32 @serverAssert(i32 %154)
  br label %156

156:                                              ; preds = %149, %126
  br label %157

157:                                              ; preds = %156, %112
  br label %158

158:                                              ; preds = %157, %64
  %159 = load i64, i64* %7, align 8
  %160 = load i64, i64* @NET_MAX_WRITES_PER_EVENT, align 8
  %161 = icmp sgt i64 %159, %160
  br i1 %161, label %162, label %177

162:                                              ; preds = %158
  %163 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @server, i32 0, i32 0), align 8
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %169, label %165

165:                                              ; preds = %162
  %166 = call i64 (...) @zmalloc_used_memory()
  %167 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @server, i32 0, i32 0), align 8
  %168 = icmp slt i64 %166, %167
  br i1 %168, label %169, label %177

169:                                              ; preds = %165, %162
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @CLIENT_SLAVE, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %169
  br label %178

177:                                              ; preds = %169, %165, %158
  br label %10

178:                                              ; preds = %176, %111, %40, %10
  %179 = load i64, i64* %7, align 8
  %180 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @server, i32 0, i32 2), align 4
  %181 = sext i32 %180 to i64
  %182 = add nsw i64 %181, %179
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @server, i32 0, i32 2), align 4
  %184 = load i64, i64* %6, align 8
  %185 = icmp eq i64 %184, -1
  br i1 %185, label %186, label %205

186:                                              ; preds = %178
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 4
  %190 = call i64 @connGetState(i32 %189)
  %191 = load i64, i64* @CONN_STATE_CONNECTED, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %186
  store i64 0, i64* %6, align 8
  br label %204

194:                                              ; preds = %186
  %195 = load i32, i32* @LL_VERBOSE, align 4
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @connGetLastError(i32 %198)
  %200 = call i32 @serverLog(i32 %195, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %199)
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %202 = call i32 @freeClientAsync(%struct.TYPE_9__* %201)
  %203 = load i32, i32* @C_ERR, align 4
  store i32 %203, i32* %3, align 4
  br label %248

204:                                              ; preds = %193
  br label %205

205:                                              ; preds = %204, %178
  %206 = load i64, i64* %7, align 8
  %207 = icmp sgt i64 %206, 0
  br i1 %207, label %208, label %220

208:                                              ; preds = %205
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @CLIENT_MASTER, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %219, label %215

215:                                              ; preds = %208
  %216 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @server, i32 0, i32 1), align 8
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 5
  store i32 %216, i32* %218, align 8
  br label %219

219:                                              ; preds = %215, %208
  br label %220

220:                                              ; preds = %219, %205
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %222 = call i64 @clientHasPendingReplies(%struct.TYPE_9__* %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %246, label %224

224:                                              ; preds = %220
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 1
  store i64 0, i64* %226, align 8
  %227 = load i32, i32* %5, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %224
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @connSetWriteHandler(i32 %232, i32* null)
  br label %234

234:                                              ; preds = %229, %224
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @CLIENT_CLOSE_AFTER_REPLY, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %234
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %243 = call i32 @freeClientAsync(%struct.TYPE_9__* %242)
  %244 = load i32, i32* @C_ERR, align 4
  store i32 %244, i32* %3, align 4
  br label %248

245:                                              ; preds = %234
  br label %246

246:                                              ; preds = %245, %220
  %247 = load i32, i32* @C_OK, align 4
  store i32 %247, i32* %3, align 4
  br label %248

248:                                              ; preds = %246, %241, %194
  %249 = load i32, i32* %3, align 4
  ret i32 %249
}

declare dso_local i64 @clientHasPendingReplies(%struct.TYPE_9__*) #1

declare dso_local i64 @connWrite(i32, i64, i64) #1

declare dso_local %struct.TYPE_8__* @listNodeValue(i32) #1

declare dso_local i32 @listFirst(i32) #1

declare dso_local i32 @listDelNode(i32, i32) #1

declare dso_local i64 @listLength(i32) #1

declare dso_local i32 @serverAssert(i32) #1

declare dso_local i64 @zmalloc_used_memory(...) #1

declare dso_local i64 @connGetState(i32) #1

declare dso_local i32 @serverLog(i32, i8*, i32) #1

declare dso_local i32 @connGetLastError(i32) #1

declare dso_local i32 @freeClientAsync(%struct.TYPE_9__*) #1

declare dso_local i32 @connSetWriteHandler(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
