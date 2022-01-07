; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lpcap.c_runtimecap.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lpcap.c_runtimecap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8*, i64, %struct.TYPE_12__*, i32* }
%struct.TYPE_12__ = type { i8*, i32 }

@Cgroup = common dso_local global i64 0, align 8
@Cclose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"too many runtime captures\00", align 1
@SUBJIDX = common dso_local global i32 0, align 4
@LUA_MULTRET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @runtimecap(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %11, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = call i32 @lua_gettop(i32* %18)
  store i32 %19, i32* %12, align 4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %21 = call %struct.TYPE_12__* @findopen(%struct.TYPE_12__* %20)
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %13, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %23 = call i64 @captype(%struct.TYPE_12__* %22)
  %24 = load i64, i64* @Cgroup, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %30 = call i32 @finddyncap(%struct.TYPE_12__* %28, %struct.TYPE_12__* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* @Cclose, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 2
  store %struct.TYPE_12__* %37, %struct.TYPE_12__** %39, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = call i32 @luaL_checkstack(i32* %42, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %45 = call i32 @pushluaval(%struct.TYPE_13__* %44)
  %46 = load i32*, i32** %11, align 8
  %47 = load i32, i32* @SUBJIDX, align 4
  %48 = call i32 @lua_pushvalue(i32* %46, i32 %47)
  %49 = load i32*, i32** %11, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = ptrtoint i8* %50 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  %57 = add nsw i64 %56, 1
  %58 = trunc i64 %57 to i32
  %59 = call i32 @lua_pushinteger(i32* %49, i32 %58)
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %61 = call i32 @pushnestedvalues(%struct.TYPE_13__* %60, i32 0)
  store i32 %61, i32* %9, align 4
  %62 = load i32*, i32** %11, align 8
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 2
  %65 = load i32, i32* @LUA_MULTRET, align 4
  %66 = call i32 @lua_call(i32* %62, i32 %64, i32 %65)
  %67 = load i32, i32* %10, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %88

69:                                               ; preds = %4
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %14, align 4
  br label %71

71:                                               ; preds = %79, %69
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp sle i32 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = load i32*, i32** %11, align 8
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @lua_remove(i32* %76, i32 %77)
  br label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %14, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %14, align 4
  br label %71

82:                                               ; preds = %71
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %10, align 4
  %85 = sub nsw i32 %83, %84
  %86 = add nsw i32 %85, 1
  %87 = load i32*, i32** %8, align 8
  store i32 %86, i32* %87, align 4
  br label %90

88:                                               ; preds = %4
  %89 = load i32*, i32** %8, align 8
  store i32 0, i32* %89, align 4
  br label %90

90:                                               ; preds = %88, %82
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %93 = ptrtoint %struct.TYPE_12__* %91 to i64
  %94 = ptrtoint %struct.TYPE_12__* %92 to i64
  %95 = sub i64 %93, %94
  %96 = sdiv exact i64 %95, 16
  %97 = trunc i64 %96 to i32
  ret i32 %97
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local %struct.TYPE_12__* @findopen(%struct.TYPE_12__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @captype(%struct.TYPE_12__*) #1

declare dso_local i32 @finddyncap(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @luaL_checkstack(i32*, i32, i8*) #1

declare dso_local i32 @pushluaval(%struct.TYPE_13__*) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @pushnestedvalues(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @lua_call(i32*, i32, i32) #1

declare dso_local i32 @lua_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
