; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_propbag.c_add_prop.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_propbag.c_add_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i8*, i8* }

@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%p %s %s\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i32*)* @add_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_prop(%struct.TYPE_8__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32*, i32** %7, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %11, %3
  %15 = load i32, i32* @S_OK, align 4
  store i32 %15, i32* %4, align 4
  br label %60

16:                                               ; preds = %11
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @debugstr_w(i32* %18)
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @debugstr_w(i32* %20)
  %22 = call i32 @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %17, i32 %19, i32 %21)
  %23 = call %struct.TYPE_7__* @heap_alloc(i32 24)
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %8, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %25 = icmp ne %struct.TYPE_7__* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %16
  %27 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %27, i32* %4, align 4
  br label %60

28:                                               ; preds = %16
  %29 = load i32*, i32** %6, align 8
  %30 = call i8* @heap_strdupW(i32* %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i8* @heap_strdupW(i32* %33)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %28
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %53, label %46

46:                                               ; preds = %41, %28
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = call i32 @list_init(i32* %48)
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %51 = call i32 @free_prop(%struct.TYPE_7__* %50)
  %52 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %52, i32* %4, align 4
  br label %60

53:                                               ; preds = %41
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = call i32 @list_add_tail(i32* %55, i32* %57)
  %59 = load i32, i32* @S_OK, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %53, %46, %26, %14
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local %struct.TYPE_7__* @heap_alloc(i32) #1

declare dso_local i8* @heap_strdupW(i32*) #1

declare dso_local i32 @list_init(i32*) #1

declare dso_local i32 @free_prop(%struct.TYPE_7__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
