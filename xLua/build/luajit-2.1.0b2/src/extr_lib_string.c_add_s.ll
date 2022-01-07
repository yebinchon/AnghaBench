; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lib_string.c_add_s.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lib_string.c_add_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@L_ESC = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*, i8*, i8*)* @add_s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_s(%struct.TYPE_4__* %0, i32* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @lua_tolstring(i32 %14, i32 3, i64* %9)
  store i8* %15, i8** %11, align 8
  store i64 0, i64* %10, align 8
  br label %16

16:                                               ; preds = %86, %4
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %89

20:                                               ; preds = %16
  %21 = load i8*, i8** %11, align 8
  %22 = load i64, i64* %10, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = load i8, i8* @L_ESC, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %25, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %20
  %30 = load i32*, i32** %6, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = load i64, i64* %10, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = call i32 @luaL_addchar(i32* %30, i8 signext %34)
  br label %85

36:                                               ; preds = %20
  %37 = load i64, i64* %10, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %10, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = load i64, i64* %10, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = call i32 @uchar(i8 signext %42)
  %44 = call i32 @lj_char_isdigit(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %36
  %47 = load i32*, i32** %6, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = load i64, i64* %10, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = call i32 @luaL_addchar(i32* %47, i8 signext %51)
  br label %84

53:                                               ; preds = %36
  %54 = load i8*, i8** %11, align 8
  %55 = load i64, i64* %10, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 48
  br i1 %59, label %60, label %69

60:                                               ; preds = %53
  %61 = load i32*, i32** %6, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = ptrtoint i8* %63 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  %68 = call i32 @luaL_addlstring(i32* %61, i8* %62, i64 %67)
  br label %83

69:                                               ; preds = %53
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = load i64, i64* %10, align 8
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = sub nsw i32 %75, 49
  %77 = trunc i32 %76 to i8
  %78 = load i8*, i8** %7, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = call i32 @push_onecapture(%struct.TYPE_4__* %70, i8 signext %77, i8* %78, i8* %79)
  %81 = load i32*, i32** %6, align 8
  %82 = call i32 @luaL_addvalue(i32* %81)
  br label %83

83:                                               ; preds = %69, %60
  br label %84

84:                                               ; preds = %83, %46
  br label %85

85:                                               ; preds = %84, %29
  br label %86

86:                                               ; preds = %85
  %87 = load i64, i64* %10, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %10, align 8
  br label %16

89:                                               ; preds = %16
  ret void
}

declare dso_local i8* @lua_tolstring(i32, i32, i64*) #1

declare dso_local i32 @luaL_addchar(i32*, i8 signext) #1

declare dso_local i32 @lj_char_isdigit(i32) #1

declare dso_local i32 @uchar(i8 signext) #1

declare dso_local i32 @luaL_addlstring(i32*, i8*, i64) #1

declare dso_local i32 @push_onecapture(%struct.TYPE_4__*, i8 signext, i8*, i8*) #1

declare dso_local i32 @luaL_addvalue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
