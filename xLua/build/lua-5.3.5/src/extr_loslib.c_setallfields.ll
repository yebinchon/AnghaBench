; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_loslib.c_setallfields.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_loslib.c_setallfields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"sec\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"hour\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"day\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"month\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"year\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"wday\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"yday\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"isdst\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.tm*)* @setallfields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setallfields(i32* %0, %struct.tm* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.tm*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.tm* %1, %struct.tm** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load %struct.tm*, %struct.tm** %4, align 8
  %7 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 8
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @setfield(i32* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %8)
  %10 = load i32*, i32** %3, align 8
  %11 = load %struct.tm*, %struct.tm** %4, align 8
  %12 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 7
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @setfield(i32* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %13)
  %15 = load i32*, i32** %3, align 8
  %16 = load %struct.tm*, %struct.tm** %4, align 8
  %17 = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 6
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @setfield(i32* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = load %struct.tm*, %struct.tm** %4, align 8
  %22 = getelementptr inbounds %struct.tm, %struct.tm* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @setfield(i32* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 %23)
  %25 = load i32*, i32** %3, align 8
  %26 = load %struct.tm*, %struct.tm** %4, align 8
  %27 = getelementptr inbounds %struct.tm, %struct.tm* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 1
  %30 = call i32 @setfield(i32* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i64 %29)
  %31 = load i32*, i32** %3, align 8
  %32 = load %struct.tm*, %struct.tm** %4, align 8
  %33 = getelementptr inbounds %struct.tm, %struct.tm* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1900
  %36 = call i32 @setfield(i32* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 %35)
  %37 = load i32*, i32** %3, align 8
  %38 = load %struct.tm*, %struct.tm** %4, align 8
  %39 = getelementptr inbounds %struct.tm, %struct.tm* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  %42 = call i32 @setfield(i32* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64 %41)
  %43 = load i32*, i32** %3, align 8
  %44 = load %struct.tm*, %struct.tm** %4, align 8
  %45 = getelementptr inbounds %struct.tm, %struct.tm* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 1
  %48 = call i32 @setfield(i32* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %47)
  %49 = load i32*, i32** %3, align 8
  %50 = load %struct.tm*, %struct.tm** %4, align 8
  %51 = getelementptr inbounds %struct.tm, %struct.tm* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @setboolfield(i32* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %52)
  ret void
}

declare dso_local i32 @setfield(i32*, i8*, i64) #1

declare dso_local i32 @setboolfield(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
