; ModuleID = '/home/carl/AnghaBench/redis/src/extr_scripting.c_luaReplyToRedisReply.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_scripting.c_luaReplyToRedisReply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i32*, i32 }
%struct.TYPE_18__ = type { i64 }

@server = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@shared = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@.str = private unnamed_addr constant [4 x i8] c"err\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"-%s\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"+%s\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@LUA_TNIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaReplyToRedisReply(%struct.TYPE_18__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store i32* %1, i32** %4, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @lua_type(i32* %15, i32 -1)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %229 [
    i32 129, label %18
    i32 131, label %26
    i32 130, label %54
    i32 128, label %59
  ]

18:                                               ; preds = %2
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i64 @lua_tostring(i32* %20, i32 -1)
  %22 = inttoptr i64 %21 to i8*
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @lua_strlen(i32* %23, i32 -1)
  %25 = call i32 @addReplyBulkCBuffer(%struct.TYPE_18__* %19, i8* %22, i32 %24)
  br label %232

26:                                               ; preds = %2
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @server, i32 0, i32 0), align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %48

31:                                               ; preds = %26
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @lua_toboolean(i32* %33, i32 -1)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @shared, i32 0, i32 1), align 8
  br label %45

38:                                               ; preds = %31
  %39 = load i32*, i32** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @shared, i32 0, i32 0), align 8
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i32, i32* %43, align 4
  br label %45

45:                                               ; preds = %38, %36
  %46 = phi i32 [ %37, %36 ], [ %44, %38 ]
  %47 = call i32 @addReply(%struct.TYPE_18__* %32, i32 %46)
  br label %53

48:                                               ; preds = %26
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @lua_toboolean(i32* %50, i32 -1)
  %52 = call i32 @addReplyBool(%struct.TYPE_18__* %49, i32 %51)
  br label %53

53:                                               ; preds = %48, %45
  br label %232

54:                                               ; preds = %2
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %56 = load i32*, i32** %4, align 8
  %57 = call i64 @lua_tonumber(i32* %56, i32 -1)
  %58 = call i32 @addReplyLongLong(%struct.TYPE_18__* %55, i64 %57)
  br label %232

59:                                               ; preds = %2
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @lua_pushstring(i32* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @lua_gettable(i32* %62, i32 -2)
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @lua_type(i32* %64, i32 -1)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp eq i32 %66, 129
  br i1 %67, label %68, label %83

68:                                               ; preds = %59
  %69 = load i32*, i32** %4, align 8
  %70 = call i64 @lua_tostring(i32* %69, i32 -1)
  %71 = call i32 @sdsnew(i64 %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @sdsmapchars(i32 %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %75 = call i32 (...) @sdsempty()
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @sdscatprintf(i32 %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  %78 = call i32 @addReplySds(%struct.TYPE_18__* %74, i32 %77)
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @sdsfree(i32 %79)
  %81 = load i32*, i32** %4, align 8
  %82 = call i32 @lua_pop(i32* %81, i32 2)
  br label %235

83:                                               ; preds = %59
  %84 = load i32*, i32** %4, align 8
  %85 = call i32 @lua_pop(i32* %84, i32 1)
  %86 = load i32*, i32** %4, align 8
  %87 = call i32 @lua_pushstring(i32* %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %88 = load i32*, i32** %4, align 8
  %89 = call i32 @lua_gettable(i32* %88, i32 -2)
  %90 = load i32*, i32** %4, align 8
  %91 = call i32 @lua_type(i32* %90, i32 -1)
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %5, align 4
  %93 = icmp eq i32 %92, 129
  br i1 %93, label %94, label %109

94:                                               ; preds = %83
  %95 = load i32*, i32** %4, align 8
  %96 = call i64 @lua_tostring(i32* %95, i32 -1)
  %97 = call i32 @sdsnew(i64 %96)
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @sdsmapchars(i32 %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %101 = call i32 (...) @sdsempty()
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @sdscatprintf(i32 %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %102)
  %104 = call i32 @addReplySds(%struct.TYPE_18__* %100, i32 %103)
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @sdsfree(i32 %105)
  %107 = load i32*, i32** %4, align 8
  %108 = call i32 @lua_pop(i32* %107, i32 2)
  br label %235

109:                                              ; preds = %83
  %110 = load i32*, i32** %4, align 8
  %111 = call i32 @lua_pop(i32* %110, i32 1)
  %112 = load i32*, i32** %4, align 8
  %113 = call i32 @lua_pushstring(i32* %112, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %114 = load i32*, i32** %4, align 8
  %115 = call i32 @lua_gettable(i32* %114, i32 -2)
  %116 = load i32*, i32** %4, align 8
  %117 = call i32 @lua_type(i32* %116, i32 -1)
  store i32 %117, i32* %5, align 4
  %118 = load i32, i32* %5, align 4
  %119 = icmp eq i32 %118, 130
  br i1 %119, label %120, label %127

120:                                              ; preds = %109
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %122 = load i32*, i32** %4, align 8
  %123 = call i64 @lua_tonumber(i32* %122, i32 -1)
  %124 = call i32 @addReplyDouble(%struct.TYPE_18__* %121, i64 %123)
  %125 = load i32*, i32** %4, align 8
  %126 = call i32 @lua_pop(i32* %125, i32 2)
  br label %235

127:                                              ; preds = %109
  %128 = load i32*, i32** %4, align 8
  %129 = call i32 @lua_pop(i32* %128, i32 1)
  %130 = load i32*, i32** %4, align 8
  %131 = call i32 @lua_pushstring(i32* %130, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %132 = load i32*, i32** %4, align 8
  %133 = call i32 @lua_gettable(i32* %132, i32 -2)
  %134 = load i32*, i32** %4, align 8
  %135 = call i32 @lua_type(i32* %134, i32 -1)
  store i32 %135, i32* %5, align 4
  %136 = load i32, i32* %5, align 4
  %137 = icmp eq i32 %136, 128
  br i1 %137, label %138, label %163

138:                                              ; preds = %127
  store i32 0, i32* %8, align 4
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %140 = call i8* @addReplyDeferredLen(%struct.TYPE_18__* %139)
  store i8* %140, i8** %9, align 8
  %141 = load i32*, i32** %4, align 8
  %142 = call i32 @lua_pushnil(i32* %141)
  br label %143

143:                                              ; preds = %147, %138
  %144 = load i32*, i32** %4, align 8
  %145 = call i32 @lua_next(i32* %144, i32 -2)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %156

147:                                              ; preds = %143
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %149 = load i32*, i32** %4, align 8
  call void @luaReplyToRedisReply(%struct.TYPE_18__* %148, i32* %149)
  %150 = load i32*, i32** %4, align 8
  %151 = call i32 @lua_pushvalue(i32* %150, i32 -1)
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %153 = load i32*, i32** %4, align 8
  call void @luaReplyToRedisReply(%struct.TYPE_18__* %152, i32* %153)
  %154 = load i32, i32* %8, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %8, align 4
  br label %143

156:                                              ; preds = %143
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %158 = load i8*, i8** %9, align 8
  %159 = load i32, i32* %8, align 4
  %160 = call i32 @setDeferredMapLen(%struct.TYPE_18__* %157, i8* %158, i32 %159)
  %161 = load i32*, i32** %4, align 8
  %162 = call i32 @lua_pop(i32* %161, i32 2)
  br label %235

163:                                              ; preds = %127
  %164 = load i32*, i32** %4, align 8
  %165 = call i32 @lua_pop(i32* %164, i32 1)
  %166 = load i32*, i32** %4, align 8
  %167 = call i32 @lua_pushstring(i32* %166, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %168 = load i32*, i32** %4, align 8
  %169 = call i32 @lua_gettable(i32* %168, i32 -2)
  %170 = load i32*, i32** %4, align 8
  %171 = call i32 @lua_type(i32* %170, i32 -1)
  store i32 %171, i32* %5, align 4
  %172 = load i32, i32* %5, align 4
  %173 = icmp eq i32 %172, 128
  br i1 %173, label %174, label %199

174:                                              ; preds = %163
  store i32 0, i32* %10, align 4
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %176 = call i8* @addReplyDeferredLen(%struct.TYPE_18__* %175)
  store i8* %176, i8** %11, align 8
  %177 = load i32*, i32** %4, align 8
  %178 = call i32 @lua_pushnil(i32* %177)
  br label %179

179:                                              ; preds = %183, %174
  %180 = load i32*, i32** %4, align 8
  %181 = call i32 @lua_next(i32* %180, i32 -2)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %192

183:                                              ; preds = %179
  %184 = load i32*, i32** %4, align 8
  %185 = call i32 @lua_pop(i32* %184, i32 1)
  %186 = load i32*, i32** %4, align 8
  %187 = call i32 @lua_pushvalue(i32* %186, i32 -1)
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %189 = load i32*, i32** %4, align 8
  call void @luaReplyToRedisReply(%struct.TYPE_18__* %188, i32* %189)
  %190 = load i32, i32* %10, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %10, align 4
  br label %179

192:                                              ; preds = %179
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %194 = load i8*, i8** %11, align 8
  %195 = load i32, i32* %10, align 4
  %196 = call i32 @setDeferredSetLen(%struct.TYPE_18__* %193, i8* %194, i32 %195)
  %197 = load i32*, i32** %4, align 8
  %198 = call i32 @lua_pop(i32* %197, i32 2)
  br label %235

199:                                              ; preds = %163
  %200 = load i32*, i32** %4, align 8
  %201 = call i32 @lua_pop(i32* %200, i32 1)
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %203 = call i8* @addReplyDeferredLen(%struct.TYPE_18__* %202)
  store i8* %203, i8** %12, align 8
  store i32 1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %204

204:                                              ; preds = %199, %219
  %205 = load i32*, i32** %4, align 8
  %206 = load i32, i32* %13, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %13, align 4
  %208 = call i32 @lua_pushnumber(i32* %205, i32 %206)
  %209 = load i32*, i32** %4, align 8
  %210 = call i32 @lua_gettable(i32* %209, i32 -2)
  %211 = load i32*, i32** %4, align 8
  %212 = call i32 @lua_type(i32* %211, i32 -1)
  store i32 %212, i32* %5, align 4
  %213 = load i32, i32* %5, align 4
  %214 = load i32, i32* @LUA_TNIL, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %219

216:                                              ; preds = %204
  %217 = load i32*, i32** %4, align 8
  %218 = call i32 @lua_pop(i32* %217, i32 1)
  br label %224

219:                                              ; preds = %204
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %221 = load i32*, i32** %4, align 8
  call void @luaReplyToRedisReply(%struct.TYPE_18__* %220, i32* %221)
  %222 = load i32, i32* %14, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %14, align 4
  br label %204

224:                                              ; preds = %216
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %226 = load i8*, i8** %12, align 8
  %227 = load i32, i32* %14, align 4
  %228 = call i32 @setDeferredArrayLen(%struct.TYPE_18__* %225, i8* %226, i32 %227)
  br label %232

229:                                              ; preds = %2
  %230 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %231 = call i32 @addReplyNull(%struct.TYPE_18__* %230)
  br label %232

232:                                              ; preds = %229, %224, %54, %53, %18
  %233 = load i32*, i32** %4, align 8
  %234 = call i32 @lua_pop(i32* %233, i32 1)
  br label %235

235:                                              ; preds = %232, %192, %156, %120, %94, %68
  ret void
}

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i32 @addReplyBulkCBuffer(%struct.TYPE_18__*, i8*, i32) #1

declare dso_local i64 @lua_tostring(i32*, i32) #1

declare dso_local i32 @lua_strlen(i32*, i32) #1

declare dso_local i32 @addReply(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @lua_toboolean(i32*, i32) #1

declare dso_local i32 @addReplyBool(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @addReplyLongLong(%struct.TYPE_18__*, i64) #1

declare dso_local i64 @lua_tonumber(i32*, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_gettable(i32*, i32) #1

declare dso_local i32 @sdsnew(i64) #1

declare dso_local i32 @sdsmapchars(i32, i8*, i8*, i32) #1

declare dso_local i32 @addReplySds(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @sdscatprintf(i32, i8*, i32) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @sdsfree(i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @addReplyDouble(%struct.TYPE_18__*, i64) #1

declare dso_local i8* @addReplyDeferredLen(%struct.TYPE_18__*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_next(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @setDeferredMapLen(%struct.TYPE_18__*, i8*, i32) #1

declare dso_local i32 @setDeferredSetLen(%struct.TYPE_18__*, i8*, i32) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i32 @setDeferredArrayLen(%struct.TYPE_18__*, i8*, i32) #1

declare dso_local i32 @addReplyNull(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
