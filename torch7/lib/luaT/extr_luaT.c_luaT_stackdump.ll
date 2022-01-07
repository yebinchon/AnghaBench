; ModuleID = '/home/carl/AnghaBench/torch7/lib/luaT/extr_luaT.c_luaT_stackdump.c'
source_filename = "/home/carl/AnghaBench/torch7/lib/luaT/extr_luaT.c_luaT_stackdump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%3d. \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"'%s'\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"userdata %p [%s]\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"not a Torch object\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"cdata %p [%s]\00", align 1
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"metatable [%s]\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"table %p [%s]\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"Lua object type: %s\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"---------------------------------------------\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaT_stackdump(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i8* null, i8** %4, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @lua_gettop(i32* %7)
  store i32 %8, i32* %5, align 4
  store i32 1, i32* %3, align 4
  br label %9

9:                                                ; preds = %113, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp sle i32 %10, %11
  br i1 %12, label %13, label %116

13:                                               ; preds = %9
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @lua_type(i32* %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %106 [
    i32 130, label %20
    i32 132, label %25
    i32 131, label %33
    i32 128, label %38
    i32 10, label %53
    i32 129, label %68
  ]

20:                                               ; preds = %13
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i8* @lua_tostring(i32* %21, i32 %22)
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  br label %111

25:                                               ; preds = %13
  %26 = load i32*, i32** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @lua_toboolean(i32* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %32 = call i32 (i8*, ...) @printf(i8* %31)
  br label %111

33:                                               ; preds = %13
  %34 = load i32*, i32** %2, align 8
  %35 = load i32, i32* %3, align 4
  %36 = call double @lua_tonumber(i32* %34, i32 %35)
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), double %36)
  br label %111

38:                                               ; preds = %13
  %39 = load i32*, i32** %2, align 8
  %40 = load i32, i32* %3, align 4
  %41 = call i8* @luaT_typename(i32* %39, i32 %40)
  store i8* %41, i8** %4, align 8
  %42 = load i32*, i32** %2, align 8
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @lua_topointer(i32* %42, i32 %43)
  %45 = load i8*, i8** %4, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i8*, i8** %4, align 8
  br label %50

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i8* [ %48, %47 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), %49 ]
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %44, i8* %51)
  br label %111

53:                                               ; preds = %13
  %54 = load i32*, i32** %2, align 8
  %55 = load i32, i32* %3, align 4
  %56 = call i8* @luaT_typename(i32* %54, i32 %55)
  store i8* %56, i8** %4, align 8
  %57 = load i32*, i32** %2, align 8
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @lua_topointer(i32* %57, i32 %58)
  %60 = load i8*, i8** %4, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load i8*, i8** %4, align 8
  br label %65

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %64, %62
  %66 = phi i8* [ %63, %62 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), %64 ]
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %59, i8* %66)
  br label %111

68:                                               ; preds = %13
  %69 = load i32*, i32** %2, align 8
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @lua_pushvalue(i32* %69, i32 %70)
  %72 = load i32*, i32** %2, align 8
  %73 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %74 = call i32 @lua_rawget(i32* %72, i32 %73)
  %75 = load i32*, i32** %2, align 8
  %76 = call i32 @lua_isstring(i32* %75, i32 -1)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %68
  %79 = load i32*, i32** %2, align 8
  %80 = call i8* @lua_tostring(i32* %79, i32 -1)
  store i8* %80, i8** %4, align 8
  br label %82

81:                                               ; preds = %68
  store i8* null, i8** %4, align 8
  br label %82

82:                                               ; preds = %81, %78
  %83 = load i32*, i32** %2, align 8
  %84 = call i32 @lua_pop(i32* %83, i32 1)
  %85 = load i8*, i8** %4, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i8*, i8** %4, align 8
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* %88)
  br label %105

90:                                               ; preds = %82
  %91 = load i32*, i32** %2, align 8
  %92 = load i32, i32* %3, align 4
  %93 = call i8* @luaT_typename(i32* %91, i32 %92)
  store i8* %93, i8** %4, align 8
  %94 = load i32*, i32** %2, align 8
  %95 = load i32, i32* %3, align 4
  %96 = call i32 @lua_topointer(i32* %94, i32 %95)
  %97 = load i8*, i8** %4, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %90
  %100 = load i8*, i8** %4, align 8
  br label %102

101:                                              ; preds = %90
  br label %102

102:                                              ; preds = %101, %99
  %103 = phi i8* [ %100, %99 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), %101 ]
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %96, i8* %103)
  br label %105

105:                                              ; preds = %102, %87
  br label %111

106:                                              ; preds = %13
  %107 = load i32*, i32** %2, align 8
  %108 = load i32, i32* %6, align 4
  %109 = call i8* @lua_typename(i32* %107, i32 %108)
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i8* %109)
  br label %111

111:                                              ; preds = %106, %105, %65, %50, %33, %25, %20
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111
  %114 = load i32, i32* %3, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %3, align 4
  br label %9

116:                                              ; preds = %9
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12, i64 0, i64 0))
  ret void
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32 @lua_toboolean(i32*, i32) #1

declare dso_local double @lua_tonumber(i32*, i32) #1

declare dso_local i8* @luaT_typename(i32*, i32) #1

declare dso_local i32 @lua_topointer(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_rawget(i32*, i32) #1

declare dso_local i32 @lua_isstring(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i8* @lua_typename(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
