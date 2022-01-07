; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/qmgr/extr_job.c_create_copy_error.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/qmgr/extr_job.c_create_copy_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.copy_error = type { i32, %struct.TYPE_4__, i32*, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"context %u code %08x file %p\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@copy_error_vtbl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"returning iface %p\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, %struct.TYPE_4__**)* @create_copy_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_copy_error(i32 %0, i32 %1, i32* %2, %struct.TYPE_4__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_4__**, align 8
  %10 = alloca %struct.copy_error*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_4__** %3, %struct.TYPE_4__*** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to %struct.TYPE_4__*
  %14 = load i32, i32* %7, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 (i8*, %struct.TYPE_4__*, ...) @TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %13, i32 %14, i32* %15)
  %17 = call i32 (...) @GetProcessHeap()
  %18 = call %struct.copy_error* @HeapAlloc(i32 %17, i32 0, i32 32)
  store %struct.copy_error* %18, %struct.copy_error** %10, align 8
  %19 = icmp ne %struct.copy_error* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %21, i32* %5, align 4
  br label %54

22:                                               ; preds = %4
  %23 = load %struct.copy_error*, %struct.copy_error** %10, align 8
  %24 = getelementptr inbounds %struct.copy_error, %struct.copy_error* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32* @copy_error_vtbl, i32** %25, align 8
  %26 = load %struct.copy_error*, %struct.copy_error** %10, align 8
  %27 = getelementptr inbounds %struct.copy_error, %struct.copy_error* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.copy_error*, %struct.copy_error** %10, align 8
  %30 = getelementptr inbounds %struct.copy_error, %struct.copy_error* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.copy_error*, %struct.copy_error** %10, align 8
  %33 = getelementptr inbounds %struct.copy_error, %struct.copy_error* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load %struct.copy_error*, %struct.copy_error** %10, align 8
  %36 = getelementptr inbounds %struct.copy_error, %struct.copy_error* %35, i32 0, i32 2
  store i32* %34, i32** %36, align 8
  %37 = load %struct.copy_error*, %struct.copy_error** %10, align 8
  %38 = getelementptr inbounds %struct.copy_error, %struct.copy_error* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %22
  %42 = load %struct.copy_error*, %struct.copy_error** %10, align 8
  %43 = getelementptr inbounds %struct.copy_error, %struct.copy_error* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @IBackgroundCopyFile2_AddRef(i32* %44)
  br label %46

46:                                               ; preds = %41, %22
  %47 = load %struct.copy_error*, %struct.copy_error** %10, align 8
  %48 = getelementptr inbounds %struct.copy_error, %struct.copy_error* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  store %struct.TYPE_4__* %48, %struct.TYPE_4__** %49, align 8
  %50 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = call i32 (i8*, %struct.TYPE_4__*, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_4__* %51)
  %53 = load i32, i32* @S_OK, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %46, %20
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_4__*, ...) #1

declare dso_local %struct.copy_error* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @IBackgroundCopyFile2_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
