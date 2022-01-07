; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/scrrun/extr_filesystem.c_create_drivecoll.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/scrrun/extr_filesystem.c_create_drivecoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%struct.drivecollection = type { i32, i32, %struct.TYPE_3__, i32, i64 }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@drivecollectionvtbl = common dso_local global i32 0, align 4
@CLSID_Drives = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__**)* @create_drivecoll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_drivecoll(%struct.TYPE_3__** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__**, align 8
  %4 = alloca %struct.drivecollection*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__** %0, %struct.TYPE_3__*** %3, align 8
  %6 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %6, align 8
  %7 = call %struct.drivecollection* @heap_alloc(i32 32)
  store %struct.drivecollection* %7, %struct.drivecollection** %4, align 8
  %8 = load %struct.drivecollection*, %struct.drivecollection** %4, align 8
  %9 = icmp ne %struct.drivecollection* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %11, i32* %2, align 4
  br label %47

12:                                               ; preds = %1
  %13 = load %struct.drivecollection*, %struct.drivecollection** %4, align 8
  %14 = getelementptr inbounds %struct.drivecollection, %struct.drivecollection* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32* @drivecollectionvtbl, i32** %15, align 8
  %16 = load %struct.drivecollection*, %struct.drivecollection** %4, align 8
  %17 = getelementptr inbounds %struct.drivecollection, %struct.drivecollection* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = call i32 (...) @GetLogicalDrives()
  store i32 %18, i32* %5, align 4
  %19 = load %struct.drivecollection*, %struct.drivecollection** %4, align 8
  %20 = getelementptr inbounds %struct.drivecollection, %struct.drivecollection* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.drivecollection*, %struct.drivecollection** %4, align 8
  %22 = getelementptr inbounds %struct.drivecollection, %struct.drivecollection* %21, i32 0, i32 4
  store i64 0, i64* %22, align 8
  br label %23

23:                                               ; preds = %31, %12
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = sub nsw i32 %27, 1
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %26
  %32 = load %struct.drivecollection*, %struct.drivecollection** %4, align 8
  %33 = getelementptr inbounds %struct.drivecollection, %struct.drivecollection* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %33, align 8
  br label %23

36:                                               ; preds = %23
  %37 = load %struct.drivecollection*, %struct.drivecollection** %4, align 8
  %38 = getelementptr inbounds %struct.drivecollection, %struct.drivecollection* %37, i32 0, i32 2
  %39 = bitcast %struct.TYPE_3__* %38 to i32*
  %40 = load %struct.drivecollection*, %struct.drivecollection** %4, align 8
  %41 = getelementptr inbounds %struct.drivecollection, %struct.drivecollection* %40, i32 0, i32 3
  %42 = call i32 @init_classinfo(i32* @CLSID_Drives, i32* %39, i32* %41)
  %43 = load %struct.drivecollection*, %struct.drivecollection** %4, align 8
  %44 = getelementptr inbounds %struct.drivecollection, %struct.drivecollection* %43, i32 0, i32 2
  %45 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  store %struct.TYPE_3__* %44, %struct.TYPE_3__** %45, align 8
  %46 = load i32, i32* @S_OK, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %36, %10
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.drivecollection* @heap_alloc(i32) #1

declare dso_local i32 @GetLogicalDrives(...) #1

declare dso_local i32 @init_classinfo(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
