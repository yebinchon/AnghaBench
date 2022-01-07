; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/extr_meta.c_fetch_art.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/extr_meta.c_fetch_art.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"fetch_art\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"setting arturl: %s\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Lua art fetcher script %s: didn't return a string\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Script went completely foobar\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, %struct.TYPE_4__*)* @fetch_art to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fetch_art(i32* %0, i8* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = call i32* @init(i32* %11, i32 %14, i8* %15)
  store i32* %16, i32** %8, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %20, i32* %4, align 4
  br label %82

21:                                               ; preds = %3
  %22 = load i32*, i32** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %26 = call i32 @run(i32* %22, i8* %23, i32* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @VLC_SUCCESS, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @lua_close(i32* %31)
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %4, align 4
  br label %82

34:                                               ; preds = %21
  %35 = load i32*, i32** %8, align 8
  %36 = call i64 @lua_gettop(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %75

38:                                               ; preds = %34
  %39 = load i32*, i32** %8, align 8
  %40 = call i64 @lua_isstring(i32* %39, i32 -1)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %65

42:                                               ; preds = %38
  %43 = load i32*, i32** %8, align 8
  %44 = call i8* @lua_tostring(i32* %43, i32 -1)
  store i8* %44, i8** %10, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %64

47:                                               ; preds = %42
  %48 = load i8*, i8** %10, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %47
  %53 = load i32*, i32** %5, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = call i32 @lua_Dbg(i32* %53, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %54)
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %10, align 8
  %60 = call i32 @input_item_SetArtURL(i32 %58, i8* %59)
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @lua_close(i32* %61)
  %63 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %63, i32* %4, align 4
  br label %82

64:                                               ; preds = %47, %42
  br label %74

65:                                               ; preds = %38
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @lua_isnoneornil(i32* %66, i32 -1)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load i32*, i32** %5, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = call i32 (i32*, i8*, ...) @msg_Err(i32* %70, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8* %71)
  br label %73

73:                                               ; preds = %69, %65
  br label %74

74:                                               ; preds = %73, %64
  br label %78

75:                                               ; preds = %34
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 (i32*, i8*, ...) @msg_Err(i32* %76, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %74
  %79 = load i32*, i32** %8, align 8
  %80 = call i32 @lua_close(i32* %79)
  %81 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %78, %52, %30, %19
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32* @init(i32*, i32, i8*) #1

declare dso_local i32 @run(i32*, i8*, i32*, i8*, %struct.TYPE_4__*) #1

declare dso_local i32 @lua_close(i32*) #1

declare dso_local i64 @lua_gettop(i32*) #1

declare dso_local i64 @lua_isstring(i32*, i32) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32 @lua_Dbg(i32*, i8*, i8*) #1

declare dso_local i32 @input_item_SetArtURL(i32, i8*) #1

declare dso_local i32 @lua_isnoneornil(i32*, i32) #1

declare dso_local i32 @msg_Err(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
