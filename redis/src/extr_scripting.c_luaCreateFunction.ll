; ModuleID = '/home/carl/AnghaBench/redis/src/extr_scripting.c_luaCreateFunction.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_scripting.c_luaCreateFunction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32*, i32 }
%struct.TYPE_7__ = type { i8* }

@server = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str = private unnamed_addr constant [10 x i8] c"function \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"() \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\0Aend\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"@user_script\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Error compiling script (new function): %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Error running script (new function): %s\0A\00", align 1
@DICT_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @luaCreateFunction(i32* %0, i32* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca [43 x i8], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %13 = getelementptr inbounds [43 x i8], [43 x i8]* %8, i64 0, i64 0
  store i8 102, i8* %13, align 16
  %14 = getelementptr inbounds [43 x i8], [43 x i8]* %8, i64 0, i64 1
  store i8 95, i8* %14, align 1
  %15 = getelementptr inbounds [43 x i8], [43 x i8]* %8, i64 0, i64 0
  %16 = getelementptr inbounds i8, i8* %15, i64 2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @sdslen(i8* %22)
  %24 = call i32 @sha1hex(i8* %16, i8* %19, i32 %23)
  %25 = getelementptr inbounds [43 x i8], [43 x i8]* %8, i64 0, i64 0
  %26 = getelementptr inbounds i8, i8* %25, i64 2
  %27 = call i8* @sdsnewlen(i8* %26, i32 40)
  store i8* %27, i8** %10, align 8
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 2), align 8
  %29 = load i8*, i8** %10, align 8
  %30 = call i32* @dictFind(i32 %28, i8* %29)
  store i32* %30, i32** %9, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %3
  %33 = load i8*, i8** %10, align 8
  %34 = call i32 @sdsfree(i8* %33)
  %35 = load i32*, i32** %9, align 8
  %36 = call i8* @dictGetKey(i32* %35)
  store i8* %36, i8** %4, align 8
  br label %127

37:                                               ; preds = %3
  %38 = call i8* (...) @sdsempty()
  store i8* %38, i8** %11, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = call i8* @sdscat(i8* %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %40, i8** %11, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = getelementptr inbounds [43 x i8], [43 x i8]* %8, i64 0, i64 0
  %43 = call i8* @sdscatlen(i8* %41, i8* %42, i32 42)
  store i8* %43, i8** %11, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = call i8* @sdscatlen(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  store i8* %45, i8** %11, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @sdslen(i8* %52)
  %54 = call i8* @sdscatlen(i8* %46, i8* %49, i32 %53)
  store i8* %54, i8** %11, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = call i8* @sdscatlen(i8* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  store i8* %56, i8** %11, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 @sdslen(i8* %59)
  %61 = call i64 @luaL_loadbuffer(i32* %57, i8* %58, i32 %60, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %37
  %64 = load i32*, i32** %5, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load i32*, i32** %5, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @lua_tostring(i32* %68, i32 -1)
  %70 = call i32 @addReplyErrorFormat(i32* %67, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %66, %63
  %72 = load i32*, i32** %6, align 8
  %73 = call i32 @lua_pop(i32* %72, i32 1)
  %74 = load i8*, i8** %10, align 8
  %75 = call i32 @sdsfree(i8* %74)
  %76 = load i8*, i8** %11, align 8
  %77 = call i32 @sdsfree(i8* %76)
  store i8* null, i8** %4, align 8
  br label %127

78:                                               ; preds = %37
  %79 = load i8*, i8** %11, align 8
  %80 = call i32 @sdsfree(i8* %79)
  %81 = load i32*, i32** %6, align 8
  %82 = call i64 @lua_pcall(i32* %81, i32 0, i32 0, i32 0)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %78
  %85 = load i32*, i32** %5, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load i32*, i32** %5, align 8
  %89 = load i32*, i32** %6, align 8
  %90 = call i32 @lua_tostring(i32* %89, i32 -1)
  %91 = call i32 @addReplyErrorFormat(i32* %88, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %87, %84
  %93 = load i32*, i32** %6, align 8
  %94 = call i32 @lua_pop(i32* %93, i32 1)
  %95 = load i8*, i8** %10, align 8
  %96 = call i32 @sdsfree(i8* %95)
  store i8* null, i8** %4, align 8
  br label %127

97:                                               ; preds = %78
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 2), align 8
  %99 = load i8*, i8** %10, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %101 = call i32 @dictAdd(i32 %98, i8* %99, %struct.TYPE_7__* %100)
  store i32 %101, i32* %12, align 4
  %102 = load i32*, i32** %5, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = load i32*, i32** %5, align 8
  br label %108

106:                                              ; preds = %97
  %107 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 1), align 8
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i32* [ %105, %104 ], [ %107, %106 ]
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* @DICT_OK, align 4
  %112 = icmp eq i32 %110, %111
  %113 = zext i1 %112 to i32
  %114 = call i32 @serverAssertWithInfo(i32* %109, i32* null, i32 %113)
  %115 = load i8*, i8** %10, align 8
  %116 = call i64 @sdsZmallocSize(i8* %115)
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %118 = call i64 @getStringObjectSdsUsedMemory(%struct.TYPE_7__* %117)
  %119 = add nsw i64 %116, %118
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 0), align 8
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %121, %119
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 0), align 8
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %125 = call i32 @incrRefCount(%struct.TYPE_7__* %124)
  %126 = load i8*, i8** %10, align 8
  store i8* %126, i8** %4, align 8
  br label %127

127:                                              ; preds = %108, %92, %71, %32
  %128 = load i8*, i8** %4, align 8
  ret i8* %128
}

declare dso_local i32 @sha1hex(i8*, i8*, i32) #1

declare dso_local i32 @sdslen(i8*) #1

declare dso_local i8* @sdsnewlen(i8*, i32) #1

declare dso_local i32* @dictFind(i32, i8*) #1

declare dso_local i32 @sdsfree(i8*) #1

declare dso_local i8* @dictGetKey(i32*) #1

declare dso_local i8* @sdsempty(...) #1

declare dso_local i8* @sdscat(i8*, i8*) #1

declare dso_local i8* @sdscatlen(i8*, i8*, i32) #1

declare dso_local i64 @luaL_loadbuffer(i32*, i8*, i32, i8*) #1

declare dso_local i32 @addReplyErrorFormat(i32*, i8*, i32) #1

declare dso_local i32 @lua_tostring(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i64 @lua_pcall(i32*, i32, i32, i32) #1

declare dso_local i32 @dictAdd(i32, i8*, %struct.TYPE_7__*) #1

declare dso_local i32 @serverAssertWithInfo(i32*, i32*, i32) #1

declare dso_local i64 @sdsZmallocSize(i8*) #1

declare dso_local i64 @getStringObjectSdsUsedMemory(%struct.TYPE_7__*) #1

declare dso_local i32 @incrRefCount(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
