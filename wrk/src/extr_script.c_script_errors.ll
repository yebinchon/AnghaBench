; ModuleID = '/home/carl/AnghaBench/wrk/src/extr_script.c_script_errors.c'
source_filename = "/home/carl/AnghaBench/wrk/src/extr_script.c_script_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i8*, i32*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@LUA_TNUMBER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"errors\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @script_errors(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca [5 x i32], align 16
  %6 = alloca [6 x %struct.TYPE_5__], align 16
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %7 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = getelementptr inbounds i32, i32* %7, i64 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %11, align 4
  %15 = getelementptr inbounds i32, i32* %11, i64 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %15, align 4
  %19 = getelementptr inbounds i32, i32* %15, i64 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %19, align 4
  %23 = getelementptr inbounds i32, i32* %19, i64 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %23, align 4
  %27 = getelementptr inbounds [6 x %struct.TYPE_5__], [6 x %struct.TYPE_5__]* %6, i64 0, i64 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %30 = load i32, i32* @LUA_TNUMBER, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i32*
  store i32* %32, i32** %29, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  %34 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %35 = ptrtoint i32* %34 to i32
  store i32 %35, i32* %33, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %39 = load i32, i32* @LUA_TNUMBER, align 4
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i32*
  store i32* %41, i32** %38, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %43 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 1
  %44 = ptrtoint i32* %43 to i32
  store i32 %44, i32* %42, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %48 = load i32, i32* @LUA_TNUMBER, align 4
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i32*
  store i32* %50, i32** %47, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  %52 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 2
  %53 = ptrtoint i32* %52 to i32
  store i32 %53, i32* %51, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %57 = load i32, i32* @LUA_TNUMBER, align 4
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i32*
  store i32* %59, i32** %56, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %61 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 3
  %62 = ptrtoint i32* %61 to i32
  store i32 %62, i32* %60, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %64, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %66 = load i32, i32* @LUA_TNUMBER, align 4
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to i32*
  store i32* %68, i32** %65, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %70 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 4
  %71 = ptrtoint i32* %70 to i32
  store i32 %71, i32* %69, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 1
  %73 = bitcast %struct.TYPE_5__* %72 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %73, i8 0, i64 24, i1 false)
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  store i32 0, i32* %74, align 8
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 @lua_newtable(i32* %75)
  %77 = load i32*, i32** %3, align 8
  %78 = getelementptr inbounds [6 x %struct.TYPE_5__], [6 x %struct.TYPE_5__]* %6, i64 0, i64 0
  %79 = call i32 @set_fields(i32* %77, i32 2, %struct.TYPE_5__* %78)
  %80 = load i32*, i32** %3, align 8
  %81 = call i32 @lua_setfield(i32* %80, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @lua_newtable(i32*) #2

declare dso_local i32 @set_fields(i32*, i32, %struct.TYPE_5__*) #2

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
