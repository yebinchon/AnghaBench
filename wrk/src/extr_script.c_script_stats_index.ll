; ModuleID = '/home/carl/AnghaBench/wrk/src/extr_script.c_script_stats_index.c'
source_filename = "/home/carl/AnghaBench/wrk/src/extr_script.c_script_stats_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"mean\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"stdev\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"percentile\00", align 1
@script_stats_percentile = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @script_stats_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @script_stats_index(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call %struct.TYPE_5__* @checkstats(i32* %5)
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %3, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i8* @lua_tostring(i32* %7, i32 2)
  store i8* %8, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load i32*, i32** %2, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @lua_pushnumber(i32* %13, i32 %16)
  br label %18

18:                                               ; preds = %12, %1
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = load i32*, i32** %2, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @lua_pushnumber(i32* %23, i32 %26)
  br label %28

28:                                               ; preds = %22, %18
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = load i32*, i32** %2, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = call i32 @stats_mean(%struct.TYPE_5__* %34)
  %36 = call i32 @lua_pushnumber(i32* %33, i32 %35)
  br label %37

37:                                               ; preds = %32, %28
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %37
  %42 = load i32*, i32** %2, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %45 = call i32 @stats_mean(%struct.TYPE_5__* %44)
  %46 = call i32 @stats_stdev(%struct.TYPE_5__* %43, i32 %45)
  %47 = call i32 @lua_pushnumber(i32* %42, i32 %46)
  br label %48

48:                                               ; preds = %41, %37
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load i32*, i32** %2, align 8
  %54 = load i32, i32* @script_stats_percentile, align 4
  %55 = call i32 @lua_pushcfunction(i32* %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %48
  ret i32 1
}

declare dso_local %struct.TYPE_5__* @checkstats(i32*) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i32 @stats_mean(%struct.TYPE_5__*) #1

declare dso_local i32 @stats_stdev(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @lua_pushcfunction(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
