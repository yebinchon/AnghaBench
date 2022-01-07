; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lua/extr_lstring.c_internshrstr.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lua/extr_lstring.c_internshrstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_15__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_15__** }

@STRSEED = common dso_local global i32 0, align 4
@MAX_INT = common dso_local global i32 0, align 4
@LUA_TSHRSTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (i32*, i8*, i64)* @internshrstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @internshrstr(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_15__**, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call %struct.TYPE_14__* @G(i32* %12)
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i32, i32* @STRSEED, align 4
  %17 = call i32 @luaS_hash(i8* %14, i64 %15, i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %20, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @lmod(i32 %22, i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %21, i64 %27
  store %struct.TYPE_15__** %28, %struct.TYPE_15__*** %11, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = icmp ne i8* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @lua_assert(i32 %31)
  %33 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %11, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  store %struct.TYPE_15__* %34, %struct.TYPE_15__** %8, align 8
  br label %35

35:                                               ; preds = %63, %3
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %37 = icmp ne %struct.TYPE_15__* %36, null
  br i1 %37, label %38, label %68

38:                                               ; preds = %35
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %38
  %45 = load i8*, i8** %6, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %47 = call i32 @getstr(%struct.TYPE_15__* %46)
  %48 = load i64, i64* %7, align 8
  %49 = mul i64 %48, 1
  %50 = call i64 @memcmp(i8* %45, i32 %47, i64 %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %44
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %55 = call i64 @isdead(%struct.TYPE_14__* %53, %struct.TYPE_15__* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %59 = call i32 @changewhite(%struct.TYPE_15__* %58)
  br label %60

60:                                               ; preds = %57, %52
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_15__* %61, %struct.TYPE_15__** %4, align 8
  br label %134

62:                                               ; preds = %44, %38
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %66, align 8
  store %struct.TYPE_15__* %67, %struct.TYPE_15__** %8, align 8
  br label %35

68:                                               ; preds = %35
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp sge i32 %72, %76
  br i1 %77, label %78, label %105

78:                                               ; preds = %68
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @MAX_INT, align 4
  %84 = sdiv i32 %83, 2
  %85 = icmp sle i32 %82, %84
  br i1 %85, label %86, label %105

86:                                               ; preds = %78
  %87 = load i32*, i32** %5, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = mul nsw i32 %91, 2
  %93 = call i32 @luaS_resize(i32* %87, i32 %92)
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @lmod(i32 %98, i32 %102)
  %104 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %97, i64 %103
  store %struct.TYPE_15__** %104, %struct.TYPE_15__*** %11, align 8
  br label %105

105:                                              ; preds = %86, %78, %68
  %106 = load i32*, i32** %5, align 8
  %107 = load i64, i64* %7, align 8
  %108 = load i32, i32* @LUA_TSHRSTR, align 4
  %109 = load i32, i32* %10, align 4
  %110 = call %struct.TYPE_15__* @createstrobj(i32* %106, i64 %107, i32 %108, i32 %109)
  store %struct.TYPE_15__* %110, %struct.TYPE_15__** %8, align 8
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %112 = call i32 @getstr(%struct.TYPE_15__* %111)
  %113 = load i8*, i8** %6, align 8
  %114 = load i64, i64* %7, align 8
  %115 = mul i64 %114, 1
  %116 = call i32 @memcpy(i32 %112, i8* %113, i64 %115)
  %117 = load i64, i64* %7, align 8
  %118 = call i64 @cast_byte(i64 %117)
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  %121 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %11, align 8
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %121, align 8
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  store %struct.TYPE_15__* %122, %struct.TYPE_15__** %125, align 8
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %127 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %11, align 8
  store %struct.TYPE_15__* %126, %struct.TYPE_15__** %127, align 8
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 4
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_15__* %133, %struct.TYPE_15__** %4, align 8
  br label %134

134:                                              ; preds = %105, %60
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  ret %struct.TYPE_15__* %135
}

declare dso_local %struct.TYPE_14__* @G(i32*) #1

declare dso_local i32 @luaS_hash(i8*, i64, i32) #1

declare dso_local i64 @lmod(i32, i32) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @memcmp(i8*, i32, i64) #1

declare dso_local i32 @getstr(%struct.TYPE_15__*) #1

declare dso_local i64 @isdead(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32 @changewhite(%struct.TYPE_15__*) #1

declare dso_local i32 @luaS_resize(i32*, i32) #1

declare dso_local %struct.TYPE_15__* @createstrobj(i32*, i64, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i64 @cast_byte(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
