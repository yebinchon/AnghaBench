; ModuleID = '/home/carl/AnghaBench/redis/src/extr_scripting.c_luaLdbLineHook.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_scripting.c_luaLdbLineHook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i64 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"Sl\00", align 1
@ldb = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"user_script\00", align 1
@LUA_HOOKCOUNT = common dso_local global i64 0, align 8
@server = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"step over\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"redis.breakpoint() called\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"break point\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"timeout reached, infinite loop?\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"* Stopped at %d, stop reason = %s\00", align 1
@C_ERR = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [60 x i8] c"timeout during Lua debugging with client closing connection\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaLdbLineHook(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = call i32 @lua_getstack(i32* %10, i32 0, %struct.TYPE_7__* %11)
  %13 = load i32*, i32** %3, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = call i32 @lua_getinfo(i32* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.TYPE_7__* %14)
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ldb, i32 0, i32 1), align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ldb, i32 0, i32 1), align 4
  %20 = call i64 @ldbIsBreakpoint(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ldb, i32 0, i32 2), align 8
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %22, %2
  %26 = phi i1 [ true, %2 ], [ %24, %22 ]
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32* @strstr(i32 %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %106

34:                                               ; preds = %25
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @LUA_HOOKCOUNT, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %64

40:                                               ; preds = %34
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ldb, i32 0, i32 0), align 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %64

43:                                               ; preds = %40
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %43
  %47 = call i64 (...) @mstime()
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 0), align 8
  %49 = sub nsw i64 %47, %48
  store i64 %49, i64* %7, align 8
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 1), align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 1), align 8
  br label %55

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %52
  %56 = phi i32 [ %53, %52 ], [ 5000, %54 ]
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %8, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* %8, align 8
  %60 = icmp sge i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 1, i32* %6, align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ldb, i32 0, i32 0), align 8
  br label %63

62:                                               ; preds = %55
  br label %106

63:                                               ; preds = %61
  br label %64

64:                                               ; preds = %63, %43, %40, %34
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ldb, i32 0, i32 0), align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %106

70:                                               ; preds = %67, %64
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ldb, i32 0, i32 2), align 8
  %75 = icmp ne i64 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0)
  store i8* %77, i8** %9, align 8
  br label %83

78:                                               ; preds = %70
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %82

82:                                               ; preds = %81, %78
  br label %83

83:                                               ; preds = %82, %73
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ldb, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ldb, i32 0, i32 2), align 8
  %84 = call i32 (...) @sdsempty()
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ldb, i32 0, i32 1), align 4
  %86 = load i8*, i8** %9, align 8
  %87 = call i32 @sdscatprintf(i32 %84, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %85, i8* %86)
  %88 = call i32 @ldbLog(i32 %87)
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ldb, i32 0, i32 1), align 4
  %90 = call i32 @ldbLogSourceLine(i32 %89)
  %91 = call i32 (...) @ldbSendLogs()
  %92 = load i32*, i32** %3, align 8
  %93 = call i64 @ldbRepl(i32* %92)
  %94 = load i64, i64* @C_ERR, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %83
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load i32*, i32** %3, align 8
  %101 = call i32 @lua_pushstring(i32* %100, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0))
  %102 = load i32*, i32** %3, align 8
  %103 = call i32 @lua_error(i32* %102)
  br label %104

104:                                              ; preds = %99, %96, %83
  %105 = call i64 (...) @mstime()
  store i64 %105, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @server, i32 0, i32 0), align 8
  br label %106

106:                                              ; preds = %33, %62, %104, %67
  ret void
}

declare dso_local i32 @lua_getstack(i32*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @lua_getinfo(i32*, i8*, %struct.TYPE_7__*) #1

declare dso_local i64 @ldbIsBreakpoint(i32) #1

declare dso_local i32* @strstr(i32, i8*) #1

declare dso_local i64 @mstime(...) #1

declare dso_local i32 @ldbLog(i32) #1

declare dso_local i32 @sdscatprintf(i32, i8*, i32, i8*) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @ldbLogSourceLine(i32) #1

declare dso_local i32 @ldbSendLogs(...) #1

declare dso_local i64 @ldbRepl(i32*) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_error(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
