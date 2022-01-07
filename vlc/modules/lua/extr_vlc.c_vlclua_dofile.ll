; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/extr_vlc.c_vlclua_dofile.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/extr_vlc.c_vlclua_dofile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"://\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"file://\00", align 1
@LUA_MULTRET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlclua_dofile(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i8* @ToLocaleDup(i8* %16)
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @strstr(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %3
  %22 = load i32*, i32** %6, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @luaL_dofile(i32* %22, i8* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @free(i8* %25)
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %4, align 4
  br label %101

28:                                               ; preds = %3
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @strncasecmp(i8* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %28
  %33 = load i32*, i32** %6, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 7
  %36 = call i32 @luaL_dofile(i32* %33, i8* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @free(i8* %37)
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %4, align 4
  br label %101

40:                                               ; preds = %28
  %41 = load i32*, i32** %5, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = call i32* @vlc_stream_NewURL(i32* %41, i8* %42)
  store i32* %43, i32** %11, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @free(i8* %47)
  store i32 1, i32* %4, align 4
  br label %101

49:                                               ; preds = %40
  %50 = load i32*, i32** %11, align 8
  %51 = call i64 @stream_Size(i32* %50)
  store i64 %51, i64* %12, align 8
  %52 = load i64, i64* %12, align 8
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i64, i64* %12, align 8
  %56 = call i8* @malloc(i64 %55)
  br label %58

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57, %54
  %59 = phi i8* [ %56, %54 ], [ null, %57 ]
  store i8* %59, i8** %13, align 8
  %60 = load i8*, i8** %13, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %67, label %62

62:                                               ; preds = %58
  %63 = load i32*, i32** %11, align 8
  %64 = call i32 @vlc_stream_Delete(i32* %63)
  %65 = load i8*, i8** %8, align 8
  %66 = call i32 @free(i8* %65)
  store i32 1, i32* %4, align 4
  br label %101

67:                                               ; preds = %58
  %68 = load i32*, i32** %11, align 8
  %69 = load i8*, i8** %13, align 8
  %70 = load i64, i64* %12, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i64 @vlc_stream_Read(i32* %68, i8* %69, i32 %71)
  store i64 %72, i64* %14, align 8
  %73 = load i64, i64* %14, align 8
  %74 = load i64, i64* %12, align 8
  %75 = icmp eq i64 %73, %74
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 0, i32 1
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %15, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %67
  %81 = load i32*, i32** %6, align 8
  %82 = load i8*, i8** %13, align 8
  %83 = load i64, i64* %12, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = call i32 @luaL_loadbuffer(i32* %81, i8* %82, i64 %83, i8* %84)
  store i32 %85, i32* %15, align 4
  br label %86

86:                                               ; preds = %80, %67
  %87 = load i32, i32* %15, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %86
  %90 = load i32*, i32** %6, align 8
  %91 = load i32, i32* @LUA_MULTRET, align 4
  %92 = call i32 @lua_pcall(i32* %90, i32 0, i32 %91, i32 0)
  store i32 %92, i32* %15, align 4
  br label %93

93:                                               ; preds = %89, %86
  %94 = load i32*, i32** %11, align 8
  %95 = call i32 @vlc_stream_Delete(i32* %94)
  %96 = load i8*, i8** %13, align 8
  %97 = call i32 @free(i8* %96)
  %98 = load i8*, i8** %8, align 8
  %99 = call i32 @free(i8* %98)
  %100 = load i32, i32* %15, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %93, %62, %46, %32, %21
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i8* @ToLocaleDup(i8*) #1

declare dso_local i32 @strstr(i8*, i8*) #1

declare dso_local i32 @luaL_dofile(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32* @vlc_stream_NewURL(i32*, i8*) #1

declare dso_local i64 @stream_Size(i32*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @vlc_stream_Delete(i32*) #1

declare dso_local i64 @vlc_stream_Read(i32*, i8*, i32) #1

declare dso_local i32 @luaL_loadbuffer(i32*, i8*, i64, i8*) #1

declare dso_local i32 @lua_pcall(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
