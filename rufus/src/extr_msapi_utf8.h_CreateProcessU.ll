; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_msapi_utf8.h_CreateProcessU.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_msapi_utf8.h_CreateProcessU.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i8*, i8* }

@FALSE = common dso_local global i32 0, align 4
@ERROR_INVALID_DATA = common dso_local global i32 0, align 4
@ERROR_BAD_LENGTH = common dso_local global i32 0, align 4
@wlpApplicationName = common dso_local global i32 0, align 4
@wlpCommandLine = common dso_local global i32 0, align 4
@wlpCurrentDirectory = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i32, i32, i32, i8*, %struct.TYPE_8__*, i32)* @CreateProcessU to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CreateProcessU(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i8* %7, %struct.TYPE_8__* %8, i32 %9) #0 {
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_8__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_7__, align 8
  store i8* %0, i8** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i8* %7, i8** %18, align 8
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %19, align 8
  store i32 %9, i32* %20, align 4
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %21, align 4
  %25 = load i32, i32* @ERROR_INVALID_DATA, align 4
  store i32 %25, i32* %22, align 4
  %26 = load i8*, i8** %11, align 8
  %27 = call i32 @wconvert(i8* %26)
  %28 = load i8*, i8** %12, align 8
  %29 = call i32 @wconvert(i8* %28)
  %30 = load i8*, i8** %18, align 8
  %31 = call i32 @wconvert(i8* %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp ne i64 %35, 16
  br i1 %36, label %37, label %39

37:                                               ; preds = %10
  %38 = load i32, i32* @ERROR_BAD_LENGTH, align 4
  store i32 %38, i32* %22, align 4
  br label %72

39:                                               ; preds = %10
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @memcpy(%struct.TYPE_7__* %23, %struct.TYPE_8__* %40, i32 %43)
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @utf8_to_wchar(i32 %47)
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  store i8* %48, i8** %49, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @utf8_to_wchar(i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  store i8* %53, i8** %54, align 8
  %55 = load i32, i32* @wlpApplicationName, align 4
  %56 = load i32, i32* @wlpCommandLine, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* %17, align 4
  %62 = load i32, i32* @wlpCurrentDirectory, align 4
  %63 = load i32, i32* %20, align 4
  %64 = call i32 @CreateProcessW(i32 %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60, i32 %61, i32 %62, %struct.TYPE_7__* %23, i32 %63)
  store i32 %64, i32* %21, align 4
  %65 = call i32 (...) @GetLastError()
  store i32 %65, i32* %22, align 4
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @sfree(i8* %67)
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @sfree(i8* %70)
  br label %72

72:                                               ; preds = %39, %37
  %73 = load i8*, i8** %11, align 8
  %74 = call i32 @wfree(i8* %73)
  %75 = load i8*, i8** %12, align 8
  %76 = call i32 @wfree(i8* %75)
  %77 = load i8*, i8** %18, align 8
  %78 = call i32 @wfree(i8* %77)
  %79 = load i32, i32* %22, align 4
  %80 = call i32 @SetLastError(i32 %79)
  %81 = load i32, i32* %21, align 4
  ret i32 %81
}

declare dso_local i32 @wconvert(i8*) #1

declare dso_local i32 @memcpy(%struct.TYPE_7__*, %struct.TYPE_8__*, i32) #1

declare dso_local i8* @utf8_to_wchar(i32) #1

declare dso_local i32 @CreateProcessW(i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @sfree(i8*) #1

declare dso_local i32 @wfree(i8*) #1

declare dso_local i32 @SetLastError(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
