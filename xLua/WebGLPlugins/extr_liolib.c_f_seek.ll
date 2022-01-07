; ModuleID = '/home/carl/AnghaBench/xLua/WebGLPlugins/extr_liolib.c_f_seek.c'
source_filename = "/home/carl/AnghaBench/xLua/WebGLPlugins/extr_liolib.c_f_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@f_seek.mode = internal constant [3 x i32] [i32 128, i32 130, i32 129], align 4
@f_seek.modenames = internal constant [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"cur\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"not an integer in proper range\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @f_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f_seek(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32* @tofile(i32* %8)
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @luaL_checkoption(i32* %10, i32 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @f_seek.modenames, i64 0, i64 0))
  store i32 %11, i32* %5, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = call i64 @luaL_optinteger(i32* %12, i32 3, i32 0)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  store i64 %14, i64* %7, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @luaL_argcheck(i32* %15, i32 %19, i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %21 = load i32*, i32** %4, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* @f_seek.mode, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @l_fseek(i32* %21, i64 %22, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %1
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @luaL_fileresult(i32* %31, i32 0, i32* null)
  store i32 %32, i32* %2, align 4
  br label %38

33:                                               ; preds = %1
  %34 = load i32*, i32** %3, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = call i64 @l_ftell(i32* %35)
  %37 = call i32 @lua_pushinteger(i32* %34, i64 %36)
  store i32 1, i32* %2, align 4
  br label %38

38:                                               ; preds = %33, %30
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32* @tofile(i32*) #1

declare dso_local i32 @luaL_checkoption(i32*, i32, i8*, i8**) #1

declare dso_local i64 @luaL_optinteger(i32*, i32, i32) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @l_fseek(i32*, i64, i32) #1

declare dso_local i32 @luaL_fileresult(i32*, i32, i32*) #1

declare dso_local i32 @lua_pushinteger(i32*, i64) #1

declare dso_local i64 @l_ftell(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
