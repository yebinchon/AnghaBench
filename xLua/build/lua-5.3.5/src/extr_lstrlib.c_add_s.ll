; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_lstrlib.c_add_s.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_lstrlib.c_add_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@L_ESC = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [42 x i8] c"invalid use of '%c' in replacement string\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*, i8*, i8*)* @add_s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_s(%struct.TYPE_4__* %0, i32* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %11, align 8
  %16 = load i32*, i32** %11, align 8
  %17 = call i8* @lua_tolstring(i32* %16, i32 3, i64* %9)
  store i8* %17, i8** %12, align 8
  store i64 0, i64* %10, align 8
  br label %18

18:                                               ; preds = %106, %4
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %109

22:                                               ; preds = %18
  %23 = load i8*, i8** %12, align 8
  %24 = load i64, i64* %10, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = load i8, i8* @L_ESC, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %27, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %22
  %32 = load i32*, i32** %6, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = load i64, i64* %10, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = call i32 @luaL_addchar(i32* %32, i8 signext %36)
  br label %105

38:                                               ; preds = %22
  %39 = load i64, i64* %10, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %10, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = load i64, i64* %10, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = call i32 @uchar(i8 signext %44)
  %46 = call i32 @isdigit(i32 %45) #3
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %68, label %48

48:                                               ; preds = %38
  %49 = load i8*, i8** %12, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = load i8, i8* @L_ESC, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %53, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %48
  %58 = load i32*, i32** %11, align 8
  %59 = load i8, i8* @L_ESC, align 1
  %60 = call i32 @luaL_error(i32* %58, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8 signext %59)
  br label %61

61:                                               ; preds = %57, %48
  %62 = load i32*, i32** %6, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = load i64, i64* %10, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = call i32 @luaL_addchar(i32* %62, i8 signext %66)
  br label %104

68:                                               ; preds = %38
  %69 = load i8*, i8** %12, align 8
  %70 = load i64, i64* %10, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 48
  br i1 %74, label %75, label %85

75:                                               ; preds = %68
  %76 = load i32*, i32** %6, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = ptrtoint i8* %78 to i64
  %81 = ptrtoint i8* %79 to i64
  %82 = sub i64 %80, %81
  %83 = trunc i64 %82 to i32
  %84 = call i32 @luaL_addlstring(i32* %76, i8* %77, i32 %83)
  br label %103

85:                                               ; preds = %68
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %87 = load i8*, i8** %12, align 8
  %88 = load i64, i64* %10, align 8
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = sub nsw i32 %91, 49
  %93 = trunc i32 %92 to i8
  %94 = load i8*, i8** %7, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = call i32 @push_onecapture(%struct.TYPE_4__* %86, i8 signext %93, i8* %94, i8* %95)
  %97 = load i32*, i32** %11, align 8
  %98 = call i32 @luaL_tolstring(i32* %97, i32 -1, i32* null)
  %99 = load i32*, i32** %11, align 8
  %100 = call i32 @lua_remove(i32* %99, i32 -2)
  %101 = load i32*, i32** %6, align 8
  %102 = call i32 @luaL_addvalue(i32* %101)
  br label %103

103:                                              ; preds = %85, %75
  br label %104

104:                                              ; preds = %103, %61
  br label %105

105:                                              ; preds = %104, %31
  br label %106

106:                                              ; preds = %105
  %107 = load i64, i64* %10, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %10, align 8
  br label %18

109:                                              ; preds = %18
  ret void
}

declare dso_local i8* @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i32 @luaL_addchar(i32*, i8 signext) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isdigit(i32) #2

declare dso_local i32 @uchar(i8 signext) #1

declare dso_local i32 @luaL_error(i32*, i8*, i8 signext) #1

declare dso_local i32 @luaL_addlstring(i32*, i8*, i32) #1

declare dso_local i32 @push_onecapture(%struct.TYPE_4__*, i8 signext, i8*, i8*) #1

declare dso_local i32 @luaL_tolstring(i32*, i32, i32*) #1

declare dso_local i32 @lua_remove(i32*, i32) #1

declare dso_local i32 @luaL_addvalue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
