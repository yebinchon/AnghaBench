; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_msapi_utf8.h_ShellExecuteExU.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_msapi_utf8.h_ShellExecuteExU.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32*, i32*, i32*, i32*, i32*, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@ERROR_INVALID_DATA = common dso_local global i32 0, align 4
@ERROR_BAD_LENGTH = common dso_local global i32 0, align 4
@SEE_MASK_CLASSNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @ShellExecuteExU to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ShellExecuteExU(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %7 = load i32, i32* @FALSE, align 4
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @ERROR_INVALID_DATA, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = icmp ne i64 %12, 56
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @ERROR_BAD_LENGTH, align 4
  %16 = call i32 @SetLastError(i32 %15)
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %2, align 4
  br label %91

18:                                               ; preds = %1
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @memcpy(%struct.TYPE_7__* %6, %struct.TYPE_8__* %19, i32 %22)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @utf8_to_wchar(i32 %26)
  %28 = bitcast i8* %27 to i32*
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 5
  store i32* %28, i32** %29, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @utf8_to_wchar(i32 %32)
  %34 = bitcast i8* %33 to i32*
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 4
  store i32* %34, i32** %35, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @utf8_to_wchar(i32 %38)
  %40 = bitcast i8* %39 to i32*
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 3
  store i32* %40, i32** %41, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @utf8_to_wchar(i32 %44)
  %46 = bitcast i8* %45 to i32*
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  store i32* %46, i32** %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @SEE_MASK_CLASSNAME, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %18
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @utf8_to_wchar(i32 %56)
  %58 = bitcast i8* %57 to i32*
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  store i32* %58, i32** %59, align 8
  br label %62

60:                                               ; preds = %18
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  store i32* null, i32** %61, align 8
  br label %62

62:                                               ; preds = %60, %53
  %63 = call i32 @ShellExecuteExW(%struct.TYPE_7__* %6)
  store i32 %63, i32* %4, align 4
  %64 = call i32 (...) @GetLastError()
  store i32 %64, i32* %5, align 4
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 7
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 6
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 5
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @sfree(i32* %74)
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 4
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @sfree(i32* %77)
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @sfree(i32* %80)
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @sfree(i32* %83)
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @sfree(i32* %86)
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @SetLastError(i32 %88)
  %90 = load i32, i32* %4, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %62, %14
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_7__*, %struct.TYPE_8__*, i32) #1

declare dso_local i8* @utf8_to_wchar(i32) #1

declare dso_local i32 @ShellExecuteExW(%struct.TYPE_7__*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @sfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
