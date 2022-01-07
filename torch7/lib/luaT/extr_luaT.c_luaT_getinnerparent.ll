; ModuleID = '/home/carl/AnghaBench/torch7/lib/luaT/extr_luaT.c_luaT_getinnerparent.c'
source_filename = "/home/carl/AnghaBench/torch7/lib/luaT/extr_luaT.c_luaT_getinnerparent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.luaT_getinnerparent.chars = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str = private unnamed_addr constant [76 x i8] c"while creating metatable %s: bad argument #1 (%s is an invalid module name)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaT_getinnerparent(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca [2 x i8], align 1
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = bitcast [2 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.luaT_getinnerparent.chars, i32 0, i32 0), i64 2, i1 false)
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %13 = call i32 @strcspn(i8* %11, i8* %12)
  store i32 %13, i32* %8, align 4
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @strncpy(i8* %14, i8* %15, i32 %16)
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 %19
  store i8 0, i8* %20, align 1
  %21 = load i32*, i32** %3, align 8
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %23 = call i32 @lua_getglobal(i32* %21, i8* %22)
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %24, 1
  %26 = load i8*, i8** %4, align 8
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8* %28, i8** %4, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %31 = call i32 @strcspn(i8* %29, i8* %30)
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %62, %2
  %33 = load i32, i32* %8, align 4
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %83

37:                                               ; preds = %32
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @lua_istable(i32* %38, i32 -1)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %62, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %43 = load i8*, i8** %7, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = ptrtoint i8* %44 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = sub nsw i64 %48, 1
  %50 = trunc i64 %49 to i32
  %51 = call i32 @strncpy(i8* %42, i8* %43, i32 %50)
  %52 = load i8*, i8** %4, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = ptrtoint i8* %52 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 %56
  store i8 0, i8* %57, align 1
  %58 = load i32*, i32** %3, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %61 = call i32 @luaL_error(i32* %58, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i8* %59, i8* %60)
  br label %62

62:                                               ; preds = %41, %37
  %63 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %64 = load i8*, i8** %4, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @strncpy(i8* %63, i8* %64, i32 %65)
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 %68
  store i8 0, i8* %69, align 1
  %70 = load i32*, i32** %3, align 8
  %71 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %72 = call i32 @lua_getfield(i32* %70, i32 -1, i8* %71)
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 @lua_remove(i32* %73, i32 -2)
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  %77 = load i8*, i8** %4, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  store i8* %79, i8** %4, align 8
  %80 = load i8*, i8** %4, align 8
  %81 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %82 = call i32 @strcspn(i8* %80, i8* %81)
  store i32 %82, i32* %8, align 4
  br label %32

83:                                               ; preds = %32
  %84 = load i32*, i32** %3, align 8
  %85 = call i32 @lua_istable(i32* %84, i32 -1)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %108, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %89 = load i8*, i8** %7, align 8
  %90 = load i8*, i8** %4, align 8
  %91 = load i8*, i8** %7, align 8
  %92 = ptrtoint i8* %90 to i64
  %93 = ptrtoint i8* %91 to i64
  %94 = sub i64 %92, %93
  %95 = sub nsw i64 %94, 1
  %96 = trunc i64 %95 to i32
  %97 = call i32 @strncpy(i8* %88, i8* %89, i32 %96)
  %98 = load i8*, i8** %4, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = ptrtoint i8* %98 to i64
  %101 = ptrtoint i8* %99 to i64
  %102 = sub i64 %100, %101
  %103 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 %102
  store i8 0, i8* %103, align 1
  %104 = load i32*, i32** %3, align 8
  %105 = load i8*, i8** %7, align 8
  %106 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %107 = call i32 @luaL_error(i32* %104, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i8* %105, i8* %106)
  br label %108

108:                                              ; preds = %87, %83
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strcspn(i8*, i8*) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i32 @lua_getglobal(i32*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @lua_istable(i32*, i32) #2

declare dso_local i32 @luaL_error(i32*, i8*, i8*, i8*) #2

declare dso_local i32 @lua_getfield(i32*, i32, i8*) #2

declare dso_local i32 @lua_remove(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
