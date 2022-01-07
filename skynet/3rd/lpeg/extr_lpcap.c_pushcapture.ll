; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lpcap.c_pushcapture.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lpcap.c_pushcapture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_17__*, i32, i64, i32* }
%struct.TYPE_17__ = type { i32, i64 }

@.str = private unnamed_addr constant [18 x i8] c"too many captures\00", align 1
@FIXEDARGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"reference to absent extra argument #%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*)* @pushcapture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pushcapture(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @luaL_checkstack(i32* %12, i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %17 = call i32 @captype(%struct.TYPE_17__* %16)
  switch i32 %17, label %127 [
    i32 134, label %18
    i32 139, label %36
    i32 141, label %43
    i32 131, label %67
    i32 132, label %75
    i32 130, label %84
    i32 129, label %90
    i32 136, label %96
    i32 140, label %109
    i32 128, label %112
    i32 137, label %115
    i32 135, label %118
    i32 133, label %121
    i32 138, label %124
  ]

18:                                               ; preds = %1
  %19 = load i32*, i32** %4, align 8
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %24, %27
  %29 = add nsw i64 %28, 1
  %30 = trunc i64 %29 to i32
  %31 = call i32 @lua_pushinteger(i32* %19, i32 %30)
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 1
  store %struct.TYPE_17__* %35, %struct.TYPE_17__** %33, align 8
  store i32 1, i32* %2, align 4
  br label %129

36:                                               ; preds = %1
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %38 = call i32 @pushluaval(%struct.TYPE_20__* %37)
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 1
  store %struct.TYPE_17__* %42, %struct.TYPE_17__** %40, align 8
  store i32 1, i32* %2, align 4
  br label %129

43:                                               ; preds = %1
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 1
  store %struct.TYPE_17__* %47, %struct.TYPE_17__** %45, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @FIXEDARGS, align 4
  %52 = add nsw i32 %50, %51
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp sgt i32 %52, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %43
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @luaL_error(i32* %58, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  store i32 %60, i32* %2, align 4
  br label %129

61:                                               ; preds = %43
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @FIXEDARGS, align 4
  %65 = add nsw i32 %63, %64
  %66 = call i32 @lua_pushvalue(i32* %62, i32 %65)
  store i32 1, i32* %2, align 4
  br label %129

67:                                               ; preds = %1
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %69 = call i32 @pushnestedvalues(%struct.TYPE_20__* %68, i32 1)
  store i32 %69, i32* %6, align 4
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sub nsw i32 0, %71
  %73 = call i32 @lua_insert(i32* %70, i32 %72)
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %2, align 4
  br label %129

75:                                               ; preds = %1
  %76 = load i32*, i32** %4, align 8
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 1
  store %struct.TYPE_17__* %80, %struct.TYPE_17__** %78, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @lua_pushvalue(i32* %76, i32 %82)
  store i32 1, i32* %2, align 4
  br label %129

84:                                               ; preds = %1
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @luaL_buffinit(i32* %85, i32* %7)
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %88 = call i32 @stringcap(i32* %7, %struct.TYPE_20__* %87)
  %89 = call i32 @luaL_pushresult(i32* %7)
  store i32 1, i32* %2, align 4
  br label %129

90:                                               ; preds = %1
  %91 = load i32*, i32** %4, align 8
  %92 = call i32 @luaL_buffinit(i32* %91, i32* %8)
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %94 = call i32 @substcap(i32* %8, %struct.TYPE_20__* %93)
  %95 = call i32 @luaL_pushresult(i32* %8)
  store i32 1, i32* %2, align 4
  br label %129

96:                                               ; preds = %1
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %96
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %105 = call i32 @pushnestedvalues(%struct.TYPE_20__* %104, i32 0)
  store i32 %105, i32* %2, align 4
  br label %129

106:                                              ; preds = %96
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %108 = call i32 @nextcap(%struct.TYPE_20__* %107)
  store i32 0, i32* %2, align 4
  br label %129

109:                                              ; preds = %1
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %111 = call i32 @backrefcap(%struct.TYPE_20__* %110)
  store i32 %111, i32* %2, align 4
  br label %129

112:                                              ; preds = %1
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %114 = call i32 @tablecap(%struct.TYPE_20__* %113)
  store i32 %114, i32* %2, align 4
  br label %129

115:                                              ; preds = %1
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %117 = call i32 @functioncap(%struct.TYPE_20__* %116)
  store i32 %117, i32* %2, align 4
  br label %129

118:                                              ; preds = %1
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %120 = call i32 @numcap(%struct.TYPE_20__* %119)
  store i32 %120, i32* %2, align 4
  br label %129

121:                                              ; preds = %1
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %123 = call i32 @querycap(%struct.TYPE_20__* %122)
  store i32 %123, i32* %2, align 4
  br label %129

124:                                              ; preds = %1
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %126 = call i32 @foldcap(%struct.TYPE_20__* %125)
  store i32 %126, i32* %2, align 4
  br label %129

127:                                              ; preds = %1
  %128 = call i32 @assert(i32 0)
  store i32 0, i32* %2, align 4
  br label %129

129:                                              ; preds = %127, %124, %121, %118, %115, %112, %109, %106, %103, %90, %84, %75, %67, %61, %57, %36, %18
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i32 @luaL_checkstack(i32*, i32, i8*) #1

declare dso_local i32 @captype(%struct.TYPE_17__*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @pushluaval(%struct.TYPE_20__*) #1

declare dso_local i32 @luaL_error(i32*, i8*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @pushnestedvalues(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @lua_insert(i32*, i32) #1

declare dso_local i32 @luaL_buffinit(i32*, i32*) #1

declare dso_local i32 @stringcap(i32*, %struct.TYPE_20__*) #1

declare dso_local i32 @luaL_pushresult(i32*) #1

declare dso_local i32 @substcap(i32*, %struct.TYPE_20__*) #1

declare dso_local i32 @nextcap(%struct.TYPE_20__*) #1

declare dso_local i32 @backrefcap(%struct.TYPE_20__*) #1

declare dso_local i32 @tablecap(%struct.TYPE_20__*) #1

declare dso_local i32 @functioncap(%struct.TYPE_20__*) #1

declare dso_local i32 @numcap(%struct.TYPE_20__*) #1

declare dso_local i32 @querycap(%struct.TYPE_20__*) #1

declare dso_local i32 @foldcap(%struct.TYPE_20__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
