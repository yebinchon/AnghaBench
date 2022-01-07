; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/libs/extr_variables.c_vlclua_tovalue.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/libs/extr_variables.c_vlclua_tovalue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i32 }

@VLC_VAR_CLASS = common dso_local global i32 0, align 4
@INT32_MIN = common dso_local global i8* null, align 8
@INT32_MAX = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.TYPE_3__*)* @vlclua_tovalue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlclua_tovalue(i32* %0, i32 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @VLC_VAR_CLASS, align 4
  %10 = and i32 %8, %9
  switch i32 %10, label %57 [
    i32 128, label %11
    i32 132, label %12
    i32 130, label %17
    i32 129, label %43
    i32 131, label %49
    i32 133, label %54
  ]

11:                                               ; preds = %3
  br label %60

12:                                               ; preds = %3
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @luaL_checkboolean(i32* %13, i32 -1)
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 8
  br label %60

17:                                               ; preds = %3
  %18 = load i32*, i32** %4, align 8
  %19 = call i8* @luaL_checknumber(i32* %18, i32 -1)
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @llround(i8* %20)
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** @INT32_MIN, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ult i8* %26, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %17
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = load i8*, i8** @INT32_MAX, align 8
  %36 = icmp ult i8* %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load i32*, i32** %4, align 8
  %39 = call i8* @luaL_checkinteger(i32* %38, i32 -1)
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  br label %42

42:                                               ; preds = %37, %31, %17
  br label %60

43:                                               ; preds = %3
  %44 = load i32*, i32** %4, align 8
  %45 = call i64 @luaL_checkstring(i32* %44, i32 -1)
  %46 = inttoptr i64 %45 to i8*
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  br label %60

49:                                               ; preds = %3
  %50 = load i32*, i32** %4, align 8
  %51 = call i8* @luaL_checknumber(i32* %50, i32 -1)
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  br label %60

54:                                               ; preds = %3
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @vlclua_error(i32* %55)
  br label %60

57:                                               ; preds = %3
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @vlclua_error(i32* %58)
  br label %60

60:                                               ; preds = %57, %54, %49, %43, %42, %12, %11
  ret i32 1
}

declare dso_local i32 @luaL_checkboolean(i32*, i32) #1

declare dso_local i8* @luaL_checknumber(i32*, i32) #1

declare dso_local i32 @llround(i8*) #1

declare dso_local i8* @luaL_checkinteger(i32*, i32) #1

declare dso_local i64 @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @vlclua_error(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
