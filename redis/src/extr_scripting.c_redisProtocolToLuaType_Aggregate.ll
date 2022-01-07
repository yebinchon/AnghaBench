; ModuleID = '/home/carl/AnghaBench/redis/src/extr_scripting.c_redisProtocolToLuaType_Aggregate.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_scripting.c_redisProtocolToLuaType_Aggregate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@server = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"set\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @redisProtocolToLuaType_Aggregate(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 1
  %13 = call i8* @strchr(i8* %12, i8 signext 13)
  store i8* %13, i8** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = load i8*, i8** %8, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = ptrtoint i8* %16 to i64
  %19 = ptrtoint i8* %17 to i64
  %20 = sub i64 %18, %19
  %21 = sub nsw i64 %20, 1
  %22 = trunc i64 %21 to i32
  %23 = call i32 @string2ll(i8* %15, i32 %22, i64* %9)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 0), align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, 42
  br i1 %30, label %31, label %62

31:                                               ; preds = %28, %3
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 2
  store i8* %33, i8** %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = icmp eq i64 %34, -1
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @lua_pushboolean(i32* %37, i32 0)
  %39 = load i8*, i8** %8, align 8
  store i8* %39, i8** %4, align 8
  br label %110

40:                                               ; preds = %31
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @lua_newtable(i32* %41)
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %58, %40
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %9, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %43
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  %52 = call i32 @lua_pushnumber(i32* %49, i32 %51)
  %53 = load i32*, i32** %5, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = call i8* @redisProtocolToLuaType(i32* %53, i8* %54)
  store i8* %55, i8** %8, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @lua_settable(i32* %56, i32 -3)
  br label %58

58:                                               ; preds = %48
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %43

61:                                               ; preds = %43
  br label %108

62:                                               ; preds = %28
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 0), align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 3
  br i1 %66, label %67, label %107

67:                                               ; preds = %62
  %68 = load i8*, i8** %8, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 2
  store i8* %69, i8** %8, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @lua_newtable(i32* %70)
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %7, align 4
  %74 = icmp eq i32 %73, 37
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)
  %77 = call i32 @lua_pushstring(i32* %72, i8* %76)
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @lua_newtable(i32* %78)
  store i32 0, i32* %10, align 4
  br label %80

80:                                               ; preds = %101, %67
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = load i64, i64* %9, align 8
  %84 = icmp slt i64 %82, %83
  br i1 %84, label %85, label %104

85:                                               ; preds = %80
  %86 = load i32*, i32** %5, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = call i8* @redisProtocolToLuaType(i32* %86, i8* %87)
  store i8* %88, i8** %8, align 8
  %89 = load i32, i32* %7, align 4
  %90 = icmp eq i32 %89, 37
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load i32*, i32** %5, align 8
  %93 = load i8*, i8** %8, align 8
  %94 = call i8* @redisProtocolToLuaType(i32* %92, i8* %93)
  store i8* %94, i8** %8, align 8
  br label %98

95:                                               ; preds = %85
  %96 = load i32*, i32** %5, align 8
  %97 = call i32 @lua_pushboolean(i32* %96, i32 1)
  br label %98

98:                                               ; preds = %95, %91
  %99 = load i32*, i32** %5, align 8
  %100 = call i32 @lua_settable(i32* %99, i32 -3)
  br label %101

101:                                              ; preds = %98
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %80

104:                                              ; preds = %80
  %105 = load i32*, i32** %5, align 8
  %106 = call i32 @lua_settable(i32* %105, i32 -3)
  br label %107

107:                                              ; preds = %104, %62
  br label %108

108:                                              ; preds = %107, %61
  %109 = load i8*, i8** %8, align 8
  store i8* %109, i8** %4, align 8
  br label %110

110:                                              ; preds = %108, %36
  %111 = load i8*, i8** %4, align 8
  ret i8* %111
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @string2ll(i8*, i32, i64*) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i8* @redisProtocolToLuaType(i32*, i8*) #1

declare dso_local i32 @lua_settable(i32*, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
