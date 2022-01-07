; ModuleID = '/home/carl/AnghaBench/wrk/src/extr_script.c_script_thread_index.c'
source_filename = "/home/carl/AnghaBench/wrk/src/extr_script.c_script_thread_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"get\00", align 1
@script_thread_get = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@script_thread_set = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@script_thread_stop = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @script_thread_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @script_thread_index(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call %struct.TYPE_3__* @checkthread(i32* %5)
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %3, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i8* @lua_tostring(i32* %7, i32 2)
  store i8* %8, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* @script_thread_get, align 4
  %15 = call i32 @lua_pushcfunction(i32* %13, i32 %14)
  br label %16

16:                                               ; preds = %12, %1
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* @script_thread_set, align 4
  %23 = call i32 @lua_pushcfunction(i32* %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %16
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32*, i32** %2, align 8
  %30 = load i32, i32* @script_thread_stop, align 4
  %31 = call i32 @lua_pushcfunction(i32* %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %24
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = load i32*, i32** %2, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @script_addr_clone(i32* %37, i32 %40)
  br label %42

42:                                               ; preds = %36, %32
  ret i32 1
}

declare dso_local %struct.TYPE_3__* @checkthread(i32*) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @lua_pushcfunction(i32*, i32) #1

declare dso_local i32 @script_addr_clone(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
