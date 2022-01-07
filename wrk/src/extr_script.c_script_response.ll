; ModuleID = '/home/carl/AnghaBench/wrk/src/extr_script.c_script_response.c'
source_filename = "/home/carl/AnghaBench/wrk/src/extr_script.c_script_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8* }

@.str = private unnamed_addr constant [9 x i8] c"response\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @script_response(i32* %0, i32 %1, %struct.TYPE_5__* %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %8, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @lua_getglobal(i32* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @lua_pushinteger(i32* %12, i32 %13)
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @lua_newtable(i32* %15)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %9, align 8
  br label %20

20:                                               ; preds = %26, %4
  %21 = load i8*, i8** %9, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ult i8* %21, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load i32*, i32** %5, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = call i8* @buffer_pushlstring(i32* %27, i8* %28)
  store i8* %29, i8** %9, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = call i8* @buffer_pushlstring(i32* %30, i8* %31)
  store i8* %32, i8** %9, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @lua_rawset(i32* %33, i32 -3)
  br label %20

35:                                               ; preds = %20
  %36 = load i32*, i32** %5, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = ptrtoint i8* %42 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 @lua_pushlstring(i32* %36, i8* %39, i8* %49)
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @lua_call(i32* %51, i32 3, i32 0)
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %54 = call i32 @buffer_reset(%struct.TYPE_5__* %53)
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %56 = call i32 @buffer_reset(%struct.TYPE_5__* %55)
  ret void
}

declare dso_local i32 @lua_getglobal(i32*, i8*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i8* @buffer_pushlstring(i32*, i8*) #1

declare dso_local i32 @lua_rawset(i32*, i32) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i8*) #1

declare dso_local i32 @lua_call(i32*, i32, i32) #1

declare dso_local i32 @buffer_reset(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
