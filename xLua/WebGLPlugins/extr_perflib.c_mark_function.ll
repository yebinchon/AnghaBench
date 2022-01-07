; ModuleID = '/home/carl/AnghaBench/xLua/WebGLPlugins/extr_perflib.c_mark_function.c'
source_filename = "/home/carl/AnghaBench/xLua/WebGLPlugins/extr_perflib.c_mark_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c">S\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%s:%d~%d\00", align 1
@LUA_TTABLE = common dso_local global i64 0, align 8
@RT_UPVALUE = common dso_local global i32 0, align 4
@MARKED_TABLE = common dso_local global i32 0, align 4
@LUA_TFUNCTION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @mark_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_function(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__, align 8
  %8 = alloca [128 x i8], align 16
  %9 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i8* @lua_topointer(i32* %10, i32 -1)
  store i8* %11, i8** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @is_marked(i32* %12, i8* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %84, label %16

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @marked(i32* %17, i8* %18, i32 0)
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @lua_pushvalue(i32* %20, i32 -1)
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @lua_getinfo(i32* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.TYPE_3__* %7)
  %24 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @snprintf(i8* %24, i32 127, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %26, i32 %28, i32 %30)
  %32 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 127
  store i8 0, i8* %32, align 1
  store i32 1, i32* %6, align 4
  br label %33

33:                                               ; preds = %80, %16
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i8* @lua_getupvalue(i32* %34, i32 -1, i32 %35)
  store i8* %36, i8** %9, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %83

40:                                               ; preds = %33
  %41 = load i32*, i32** %3, align 8
  %42 = call i8* @lua_topointer(i32* %41, i32 -1)
  store i8* %42, i8** %5, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %68

47:                                               ; preds = %40
  %48 = load i64, i64* @LUA_TTABLE, align 8
  %49 = load i32*, i32** %3, align 8
  %50 = call i64 @lua_type(i32* %49, i32 -1)
  %51 = icmp eq i64 %48, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %47
  %53 = load i32*, i32** %4, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = load i32, i32* @RT_UPVALUE, align 4
  %57 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %58 = call i32 @make_root(i32* %53, i8* %54, i8* %55, i32 %56, i8* %57, i32 1)
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* @MARKED_TABLE, align 4
  %61 = call i32 @lua_insert(i32* %59, i32 %60)
  %62 = load i32*, i32** %3, align 8
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @mark_object(i32* %62, i32* %63)
  %65 = load i32*, i32** %4, align 8
  %66 = load i32, i32* @MARKED_TABLE, align 4
  %67 = call i32 @lua_remove(i32* %65, i32 %66)
  br label %77

68:                                               ; preds = %47, %40
  %69 = load i64, i64* @LUA_TFUNCTION, align 8
  %70 = load i32*, i32** %3, align 8
  %71 = call i64 @lua_type(i32* %70, i32 -1)
  %72 = icmp eq i64 %69, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32*, i32** %3, align 8
  %75 = load i32*, i32** %4, align 8
  call void @mark_function(i32* %74, i32* %75)
  br label %76

76:                                               ; preds = %73, %68
  br label %77

77:                                               ; preds = %76, %52
  %78 = load i32*, i32** %3, align 8
  %79 = call i32 @lua_pop(i32* %78, i32 1)
  br label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %33

83:                                               ; preds = %39
  br label %84

84:                                               ; preds = %83, %2
  ret void
}

declare dso_local i8* @lua_topointer(i32*, i32) #1

declare dso_local i32 @is_marked(i32*, i8*) #1

declare dso_local i32 @marked(i32*, i8*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_getinfo(i32*, i8*, %struct.TYPE_3__*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32, i32) #1

declare dso_local i8* @lua_getupvalue(i32*, i32, i32) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i32 @make_root(i32*, i8*, i8*, i32, i8*, i32) #1

declare dso_local i32 @lua_insert(i32*, i32) #1

declare dso_local i32 @mark_object(i32*, i32*) #1

declare dso_local i32 @lua_remove(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
