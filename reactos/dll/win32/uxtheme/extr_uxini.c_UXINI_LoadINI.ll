; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_uxini.c_UXINI_LoadINI.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_uxini.c_UXINI_LoadINI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [25 x i8] c"Loading resource INI %s\0A\00", align 1
@szTextFileResource = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"%s resource not found\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @UXINI_LoadINI(i32 %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @debugstr_w(i8* %10)
  %12 = call i32 @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* @szTextFileResource, align 4
  %16 = call i32 @FindResourceW(i32 %13, i8* %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i8* @LoadResource(i32 %19, i32 %20)
  store i8* %21, i8** %7, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @debugstr_w(i8* %24)
  %26 = call i32 @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %50

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27, %2
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @SizeofResource(i32 %29, i32 %30)
  %32 = sext i32 %31 to i64
  %33 = udiv i64 %32, 4
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %9, align 4
  %35 = call i32 (...) @GetProcessHeap()
  %36 = call %struct.TYPE_4__* @HeapAlloc(i32 %35, i32 0, i32 4)
  store %struct.TYPE_4__* %36, %struct.TYPE_4__** %8, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr i8, i8* %43, i64 %45
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %49, %struct.TYPE_4__** %3, align 8
  br label %50

50:                                               ; preds = %28, %23
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %51
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i32 @FindResourceW(i32, i8*, i32) #1

declare dso_local i8* @LoadResource(i32, i32) #1

declare dso_local i32 @SizeofResource(i32, i32) #1

declare dso_local %struct.TYPE_4__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
