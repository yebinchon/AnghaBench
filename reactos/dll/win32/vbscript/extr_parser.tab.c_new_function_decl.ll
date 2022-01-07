; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_parser.tab.c_new_function_decl.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_parser.tab.c_new_function_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32*, i32*, i32*, i32*, i64, i32* }
%struct.TYPE_7__ = type { i32 }

@STORAGE_IS_DEFAULT = common dso_local global i32 0, align 4
@FUNC_PROPGET = common dso_local global i64 0, align 8
@FUNC_DEFGET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Invalid default property\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@STORAGE_IS_PRIVATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.TYPE_7__*, i32*, i64, i32, i32*, i32*)* @new_function_decl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @new_function_decl(%struct.TYPE_7__* %0, i32* %1, i64 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* @STORAGE_IS_DEFAULT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %6
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* @FUNC_PROPGET, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i64, i64* @FUNC_DEFGET, align 8
  store i64 %24, i64* %10, align 8
  br label %30

25:                                               ; preds = %19
  %26 = call i32 @FIXME(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @E_FAIL, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %7, align 8
  br label %63

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %6
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %33 = call %struct.TYPE_8__* @parser_alloc(%struct.TYPE_7__* %32, i32 56)
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %14, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %35 = icmp ne %struct.TYPE_8__* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %7, align 8
  br label %63

37:                                               ; preds = %31
  %38 = load i32*, i32** %9, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 6
  store i32* %38, i32** %40, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 5
  store i64 %41, i64* %43, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @STORAGE_IS_PRIVATE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load i32*, i32** %12, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 4
  store i32* %52, i32** %54, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 3
  store i32* %55, i32** %57, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  store i32* null, i32** %59, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  store i32* null, i32** %61, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %62, %struct.TYPE_8__** %7, align 8
  br label %63

63:                                               ; preds = %37, %36, %25
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  ret %struct.TYPE_8__* %64
}

declare dso_local i32 @FIXME(i8*) #1

declare dso_local %struct.TYPE_8__* @parser_alloc(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
