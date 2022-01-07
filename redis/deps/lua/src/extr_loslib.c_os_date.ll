; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_loslib.c_os_date.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_loslib.c_os_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@luaL_checknumber = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"*t\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"sec\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"hour\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"day\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"month\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"year\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"wday\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"yday\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"isdst\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @os_date to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @os_date(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tm*, align 8
  %6 = alloca [3 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca [200 x i8], align 16
  store i32* %0, i32** %2, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = call i8* @luaL_optstring(i32* %10, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %11, i8** %3, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = load i64, i64* @luaL_checknumber, align 8
  %14 = trunc i64 %13 to i32
  %15 = call i32 @time(i32* null)
  %16 = call i32 @luaL_opt(i32* %12, i32 %14, i32 2, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 33
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = call %struct.tm* @gmtime(i32* %4)
  store %struct.tm* %22, %struct.tm** %5, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %3, align 8
  br label %27

25:                                               ; preds = %1
  %26 = call %struct.tm* @localtime(i32* %4)
  store %struct.tm* %26, %struct.tm** %5, align 8
  br label %27

27:                                               ; preds = %25, %21
  %28 = load %struct.tm*, %struct.tm** %5, align 8
  %29 = icmp eq %struct.tm* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @lua_pushnil(i32* %31)
  br label %132

33:                                               ; preds = %27
  %34 = load i8*, i8** %3, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %89

37:                                               ; preds = %33
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @lua_createtable(i32* %38, i32 0, i32 9)
  %40 = load i32*, i32** %2, align 8
  %41 = load %struct.tm*, %struct.tm** %5, align 8
  %42 = getelementptr inbounds %struct.tm, %struct.tm* %41, i32 0, i32 8
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @setfield(i32* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 %43)
  %45 = load i32*, i32** %2, align 8
  %46 = load %struct.tm*, %struct.tm** %5, align 8
  %47 = getelementptr inbounds %struct.tm, %struct.tm* %46, i32 0, i32 7
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @setfield(i32* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 %48)
  %50 = load i32*, i32** %2, align 8
  %51 = load %struct.tm*, %struct.tm** %5, align 8
  %52 = getelementptr inbounds %struct.tm, %struct.tm* %51, i32 0, i32 6
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @setfield(i32* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 %53)
  %55 = load i32*, i32** %2, align 8
  %56 = load %struct.tm*, %struct.tm** %5, align 8
  %57 = getelementptr inbounds %struct.tm, %struct.tm* %56, i32 0, i32 5
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @setfield(i32* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i64 %58)
  %60 = load i32*, i32** %2, align 8
  %61 = load %struct.tm*, %struct.tm** %5, align 8
  %62 = getelementptr inbounds %struct.tm, %struct.tm* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 1
  %65 = call i32 @setfield(i32* %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i64 %64)
  %66 = load i32*, i32** %2, align 8
  %67 = load %struct.tm*, %struct.tm** %5, align 8
  %68 = getelementptr inbounds %struct.tm, %struct.tm* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 1900
  %71 = call i32 @setfield(i32* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %70)
  %72 = load i32*, i32** %2, align 8
  %73 = load %struct.tm*, %struct.tm** %5, align 8
  %74 = getelementptr inbounds %struct.tm, %struct.tm* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, 1
  %77 = call i32 @setfield(i32* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %76)
  %78 = load i32*, i32** %2, align 8
  %79 = load %struct.tm*, %struct.tm** %5, align 8
  %80 = getelementptr inbounds %struct.tm, %struct.tm* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, 1
  %83 = call i32 @setfield(i32* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i64 %82)
  %84 = load i32*, i32** %2, align 8
  %85 = load %struct.tm*, %struct.tm** %5, align 8
  %86 = getelementptr inbounds %struct.tm, %struct.tm* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @setboolfield(i32* %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %87)
  br label %131

89:                                               ; preds = %33
  %90 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  store i8 37, i8* %90, align 1
  %91 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 2
  store i8 0, i8* %91, align 1
  %92 = load i32*, i32** %2, align 8
  %93 = call i32 @luaL_buffinit(i32* %92, i32* %7)
  br label %94

94:                                               ; preds = %126, %89
  %95 = load i8*, i8** %3, align 8
  %96 = load i8, i8* %95, align 1
  %97 = icmp ne i8 %96, 0
  br i1 %97, label %98, label %129

98:                                               ; preds = %94
  %99 = load i8*, i8** %3, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp ne i32 %101, 37
  br i1 %102, label %109, label %103

103:                                              ; preds = %98
  %104 = load i8*, i8** %3, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 1
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %103, %98
  %110 = load i8*, i8** %3, align 8
  %111 = load i8, i8* %110, align 1
  %112 = call i32 @luaL_addchar(i32* %7, i8 signext %111)
  br label %125

113:                                              ; preds = %103
  %114 = load i8*, i8** %3, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %3, align 8
  %116 = load i8, i8* %115, align 1
  %117 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 1
  store i8 %116, i8* %117, align 1
  %118 = getelementptr inbounds [200 x i8], [200 x i8]* %9, i64 0, i64 0
  %119 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %120 = load %struct.tm*, %struct.tm** %5, align 8
  %121 = call i64 @strftime(i8* %118, i32 200, i8* %119, %struct.tm* %120)
  store i64 %121, i64* %8, align 8
  %122 = getelementptr inbounds [200 x i8], [200 x i8]* %9, i64 0, i64 0
  %123 = load i64, i64* %8, align 8
  %124 = call i32 @luaL_addlstring(i32* %7, i8* %122, i64 %123)
  br label %125

125:                                              ; preds = %113, %109
  br label %126

126:                                              ; preds = %125
  %127 = load i8*, i8** %3, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %3, align 8
  br label %94

129:                                              ; preds = %94
  %130 = call i32 @luaL_pushresult(i32* %7)
  br label %131

131:                                              ; preds = %129, %37
  br label %132

132:                                              ; preds = %131, %30
  ret i32 1
}

declare dso_local i8* @luaL_optstring(i32*, i32, i8*) #1

declare dso_local i32 @luaL_opt(i32*, i32, i32, i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local %struct.tm* @gmtime(i32*) #1

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @lua_createtable(i32*, i32, i32) #1

declare dso_local i32 @setfield(i32*, i8*, i64) #1

declare dso_local i32 @setboolfield(i32*, i8*, i32) #1

declare dso_local i32 @luaL_buffinit(i32*, i32*) #1

declare dso_local i32 @luaL_addchar(i32*, i8 signext) #1

declare dso_local i64 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i32 @luaL_addlstring(i32*, i8*, i64) #1

declare dso_local i32 @luaL_pushresult(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
