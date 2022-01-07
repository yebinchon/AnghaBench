; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lptree.c_fixonecall.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lptree.c_fixonecall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32 }

@.str = private unnamed_addr constant [37 x i8] c"rule '%s' undefined in given grammar\00", align 1
@TCall = common dso_local global i32 0, align 4
@TRule = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.TYPE_8__*, %struct.TYPE_8__*)* @fixonecall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fixonecall(i32* %0, i32 %1, %struct.TYPE_8__* %2, %struct.TYPE_8__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %8, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @lua_rawgeti(i32* %10, i32 -1, i32 %13)
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @lua_gettable(i32* %15, i32 %16)
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @lua_tonumber(i32* %18, i32 -1)
  store i32 %19, i32* %9, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @lua_pop(i32* %20, i32 1)
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %4
  %25 = load i32*, i32** %5, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @lua_rawgeti(i32* %25, i32 -1, i32 %28)
  %30 = load i32*, i32** %5, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @val2str(i32* %31, i32 -1)
  %33 = call i32 @luaL_error(i32* %30, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %24, %4
  %35 = load i32, i32* @TCall, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %42 = ptrtoint %struct.TYPE_8__* %40 to i64
  %43 = ptrtoint %struct.TYPE_8__* %41 to i64
  %44 = sub i64 %42, %43
  %45 = sdiv exact i64 %44, 12
  %46 = sub nsw i64 %39, %45
  %47 = trunc i64 %46 to i32
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %52 = call %struct.TYPE_9__* @sib2(%struct.TYPE_8__* %51)
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @TRule, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %63 = call %struct.TYPE_9__* @sib2(%struct.TYPE_8__* %62)
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 8
  ret void
}

declare dso_local i32 @lua_rawgeti(i32*, i32, i32) #1

declare dso_local i32 @lua_gettable(i32*, i32) #1

declare dso_local i32 @lua_tonumber(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, i32) #1

declare dso_local i32 @val2str(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_9__* @sib2(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
