; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_lundump.c_LoadFunction.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_lundump.c_LoadFunction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i32* }
%struct.TYPE_22__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64, i32 }

@LUAI_MAXCCALLS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"code too deep\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"bad code\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_21__* (%struct.TYPE_22__*, i32*)* @LoadFunction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_21__* @LoadFunction(%struct.TYPE_22__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, 1
  store i64 %11, i64* %9, align 8
  %12 = load i64, i64* @LUAI_MAXCCALLS, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %16 = call i32 @error(%struct.TYPE_22__* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %14, %2
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %21 = call %struct.TYPE_21__* @luaF_newproto(%struct.TYPE_23__* %20)
  store %struct.TYPE_21__* %21, %struct.TYPE_21__** %5, align 8
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %31 = call i32 @setptvalue2s(%struct.TYPE_23__* %24, i32 %29, %struct.TYPE_21__* %30)
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %33, align 8
  %35 = call i32 @incr_top(%struct.TYPE_23__* %34)
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %37 = call i32* @LoadString(%struct.TYPE_22__* %36)
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 6
  store i32* %37, i32** %39, align 8
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 6
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %17
  %45 = load i32*, i32** %4, align 8
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 6
  store i32* %45, i32** %47, align 8
  br label %48

48:                                               ; preds = %44, %17
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %50 = call i8* @LoadInt(%struct.TYPE_22__* %49)
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 5
  store i8* %50, i8** %52, align 8
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %54 = call i8* @LoadInt(%struct.TYPE_22__* %53)
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 4
  store i8* %54, i8** %56, align 8
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %58 = call i8* @LoadByte(%struct.TYPE_22__* %57)
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 3
  store i8* %58, i8** %60, align 8
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %62 = call i8* @LoadByte(%struct.TYPE_22__* %61)
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 2
  store i8* %62, i8** %64, align 8
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %66 = call i8* @LoadByte(%struct.TYPE_22__* %65)
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %70 = call i8* @LoadByte(%struct.TYPE_22__* %69)
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %75 = call i32 @LoadCode(%struct.TYPE_22__* %73, %struct.TYPE_21__* %74)
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %78 = call i32 @LoadConstants(%struct.TYPE_22__* %76, %struct.TYPE_21__* %77)
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %81 = call i32 @LoadDebug(%struct.TYPE_22__* %79, %struct.TYPE_21__* %80)
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %83 = call i32 @luaG_checkcode(%struct.TYPE_21__* %82)
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = call i32 @IF(i32 %86, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %91, align 8
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, -1
  store i64 %99, i64* %97, align 8
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  ret %struct.TYPE_21__* %100
}

declare dso_local i32 @error(%struct.TYPE_22__*, i8*) #1

declare dso_local %struct.TYPE_21__* @luaF_newproto(%struct.TYPE_23__*) #1

declare dso_local i32 @setptvalue2s(%struct.TYPE_23__*, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @incr_top(%struct.TYPE_23__*) #1

declare dso_local i32* @LoadString(%struct.TYPE_22__*) #1

declare dso_local i8* @LoadInt(%struct.TYPE_22__*) #1

declare dso_local i8* @LoadByte(%struct.TYPE_22__*) #1

declare dso_local i32 @LoadCode(%struct.TYPE_22__*, %struct.TYPE_21__*) #1

declare dso_local i32 @LoadConstants(%struct.TYPE_22__*, %struct.TYPE_21__*) #1

declare dso_local i32 @LoadDebug(%struct.TYPE_22__*, %struct.TYPE_21__*) #1

declare dso_local i32 @IF(i32, i8*) #1

declare dso_local i32 @luaG_checkcode(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
