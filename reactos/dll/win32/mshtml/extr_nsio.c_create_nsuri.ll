; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_nsio.c_create_nsuri.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_nsio.c_create_nsuri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_11__, i32, i32, i32*, i32, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_9__ = type { i32* }

@NS_ERROR_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@nsFileURLVtbl = common dso_local global i32 0, align 4
@nsStandardURLVtbl = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@URL_SCHEME_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"retval=%p\0A\00", align 1
@NS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i8*, %struct.TYPE_10__**)* @create_nsuri to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_nsuri(i32* %0, i32* %1, i32* %2, i8* %3, %struct.TYPE_10__** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_10__**, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.TYPE_10__** %4, %struct.TYPE_10__*** %11, align 8
  %14 = call %struct.TYPE_10__* @heap_alloc_zero(i32 48)
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %12, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %16 = icmp ne %struct.TYPE_10__* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* @NS_ERROR_OUT_OF_MEMORY, align 4
  store i32 %18, i32* %6, align 4
  br label %86

19:                                               ; preds = %5
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  store i32* @nsFileURLVtbl, i32** %22, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 6
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  store i32* @nsStandardURLVtbl, i32** %25, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load i32, i32* @TRUE, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @set_uri_nscontainer(%struct.TYPE_10__* %31, i32* %32)
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @set_uri_window(%struct.TYPE_10__* %34, i32* %35)
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @IUri_AddRef(i32* %37)
  %39 = load i32*, i32** %7, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 4
  store i32* %39, i32** %41, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 3
  %45 = call i32 @IUri_GetScheme(i32* %42, i32* %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = call i64 @FAILED(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %19
  %50 = load i32, i32* @URL_SCHEME_UNKNOWN, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %49, %19
  %54 = load i8*, i8** %10, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %80

56:                                               ; preds = %53
  %57 = load i8*, i8** %10, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %80

61:                                               ; preds = %56
  %62 = load i8*, i8** %10, align 8
  %63 = call i64 @strcmp(i8* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %61
  %66 = load i8*, i8** %10, align 8
  %67 = call i32 @heap_strdupA(i8* %66)
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %65
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = call i32 @nsIFileURL_Release(%struct.TYPE_11__* %76)
  %78 = load i32, i32* @NS_ERROR_OUT_OF_MEMORY, align 4
  store i32 %78, i32* %6, align 4
  br label %86

79:                                               ; preds = %65
  br label %80

80:                                               ; preds = %79, %61, %56, %53
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %82 = call i32 @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_10__* %81)
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %84 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %11, align 8
  store %struct.TYPE_10__* %83, %struct.TYPE_10__** %84, align 8
  %85 = load i32, i32* @NS_OK, align 4
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %80, %74, %17
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local %struct.TYPE_10__* @heap_alloc_zero(i32) #1

declare dso_local i32 @set_uri_nscontainer(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @set_uri_window(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @IUri_AddRef(i32*) #1

declare dso_local i32 @IUri_GetScheme(i32*, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @heap_strdupA(i8*) #1

declare dso_local i32 @nsIFileURL_Release(%struct.TYPE_11__*) #1

declare dso_local i32 @TRACE(i8*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
