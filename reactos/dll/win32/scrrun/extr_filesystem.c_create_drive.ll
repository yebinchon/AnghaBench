; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/scrrun/extr_filesystem.c_create_drive.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/scrrun/extr_filesystem.c_create_drive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%struct.drive = type { i32, i8*, %struct.TYPE_3__, i32 }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@drivevtbl = common dso_local global i32 0, align 4
@CLSID_Drive = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, %struct.TYPE_3__**)* @create_drive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_drive(i8 signext %0, %struct.TYPE_3__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca %struct.TYPE_3__**, align 8
  %6 = alloca %struct.drive*, align 8
  store i8 %0, i8* %4, align 1
  store %struct.TYPE_3__** %1, %struct.TYPE_3__*** %5, align 8
  %7 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %5, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %7, align 8
  %8 = call %struct.drive* @heap_alloc(i32 32)
  store %struct.drive* %8, %struct.drive** %6, align 8
  %9 = load %struct.drive*, %struct.drive** %6, align 8
  %10 = icmp ne %struct.drive* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %12, i32* %3, align 4
  br label %58

13:                                               ; preds = %2
  %14 = load %struct.drive*, %struct.drive** %6, align 8
  %15 = getelementptr inbounds %struct.drive, %struct.drive* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32* @drivevtbl, i32** %16, align 8
  %17 = load %struct.drive*, %struct.drive** %6, align 8
  %18 = getelementptr inbounds %struct.drive, %struct.drive* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = call i8* @SysAllocStringLen(i32* null, i32 3)
  %20 = load %struct.drive*, %struct.drive** %6, align 8
  %21 = getelementptr inbounds %struct.drive, %struct.drive* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  %22 = load %struct.drive*, %struct.drive** %6, align 8
  %23 = getelementptr inbounds %struct.drive, %struct.drive* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %13
  %27 = load %struct.drive*, %struct.drive** %6, align 8
  %28 = call i32 @heap_free(%struct.drive* %27)
  %29 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %29, i32* %3, align 4
  br label %58

30:                                               ; preds = %13
  %31 = load i8, i8* %4, align 1
  %32 = load %struct.drive*, %struct.drive** %6, align 8
  %33 = getelementptr inbounds %struct.drive, %struct.drive* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  store i8 %31, i8* %35, align 1
  %36 = load %struct.drive*, %struct.drive** %6, align 8
  %37 = getelementptr inbounds %struct.drive, %struct.drive* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  store i8 58, i8* %39, align 1
  %40 = load %struct.drive*, %struct.drive** %6, align 8
  %41 = getelementptr inbounds %struct.drive, %struct.drive* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  store i8 92, i8* %43, align 1
  %44 = load %struct.drive*, %struct.drive** %6, align 8
  %45 = getelementptr inbounds %struct.drive, %struct.drive* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 3
  store i8 0, i8* %47, align 1
  %48 = load %struct.drive*, %struct.drive** %6, align 8
  %49 = getelementptr inbounds %struct.drive, %struct.drive* %48, i32 0, i32 2
  %50 = bitcast %struct.TYPE_3__* %49 to i32*
  %51 = load %struct.drive*, %struct.drive** %6, align 8
  %52 = getelementptr inbounds %struct.drive, %struct.drive* %51, i32 0, i32 3
  %53 = call i32 @init_classinfo(i32* @CLSID_Drive, i32* %50, i32* %52)
  %54 = load %struct.drive*, %struct.drive** %6, align 8
  %55 = getelementptr inbounds %struct.drive, %struct.drive* %54, i32 0, i32 2
  %56 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %5, align 8
  store %struct.TYPE_3__* %55, %struct.TYPE_3__** %56, align 8
  %57 = load i32, i32* @S_OK, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %30, %26, %11
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.drive* @heap_alloc(i32) #1

declare dso_local i8* @SysAllocStringLen(i32*, i32) #1

declare dso_local i32 @heap_free(%struct.drive*) #1

declare dso_local i32 @init_classinfo(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
