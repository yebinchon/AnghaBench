; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/scrrun/extr_filesystem.c_create_foldercoll.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/scrrun/extr_filesystem.c_create_foldercoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%struct.foldercollection = type { i32, %struct.TYPE_3__, i32, i32 }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@foldercollvtbl = common dso_local global i32 0, align 4
@CLSID_Folders = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__**)* @create_foldercoll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_foldercoll(i32 %0, %struct.TYPE_3__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__**, align 8
  %6 = alloca %struct.foldercollection*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__** %1, %struct.TYPE_3__*** %5, align 8
  %7 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %5, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %7, align 8
  %8 = call %struct.foldercollection* @heap_alloc(i32 24)
  store %struct.foldercollection* %8, %struct.foldercollection** %6, align 8
  %9 = load %struct.foldercollection*, %struct.foldercollection** %6, align 8
  %10 = icmp ne %struct.foldercollection* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %12, i32* %3, align 4
  br label %42

13:                                               ; preds = %2
  %14 = load %struct.foldercollection*, %struct.foldercollection** %6, align 8
  %15 = getelementptr inbounds %struct.foldercollection, %struct.foldercollection* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32* @foldercollvtbl, i32** %16, align 8
  %17 = load %struct.foldercollection*, %struct.foldercollection** %6, align 8
  %18 = getelementptr inbounds %struct.foldercollection, %struct.foldercollection* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @SysAllocString(i32 %19)
  %21 = load %struct.foldercollection*, %struct.foldercollection** %6, align 8
  %22 = getelementptr inbounds %struct.foldercollection, %struct.foldercollection* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load %struct.foldercollection*, %struct.foldercollection** %6, align 8
  %24 = getelementptr inbounds %struct.foldercollection, %struct.foldercollection* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %13
  %28 = load %struct.foldercollection*, %struct.foldercollection** %6, align 8
  %29 = call i32 @heap_free(%struct.foldercollection* %28)
  %30 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %30, i32* %3, align 4
  br label %42

31:                                               ; preds = %13
  %32 = load %struct.foldercollection*, %struct.foldercollection** %6, align 8
  %33 = getelementptr inbounds %struct.foldercollection, %struct.foldercollection* %32, i32 0, i32 1
  %34 = bitcast %struct.TYPE_3__* %33 to i32*
  %35 = load %struct.foldercollection*, %struct.foldercollection** %6, align 8
  %36 = getelementptr inbounds %struct.foldercollection, %struct.foldercollection* %35, i32 0, i32 2
  %37 = call i32 @init_classinfo(i32* @CLSID_Folders, i32* %34, i32* %36)
  %38 = load %struct.foldercollection*, %struct.foldercollection** %6, align 8
  %39 = getelementptr inbounds %struct.foldercollection, %struct.foldercollection* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %5, align 8
  store %struct.TYPE_3__* %39, %struct.TYPE_3__** %40, align 8
  %41 = load i32, i32* @S_OK, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %31, %27, %11
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.foldercollection* @heap_alloc(i32) #1

declare dso_local i32 @SysAllocString(i32) #1

declare dso_local i32 @heap_free(%struct.foldercollection*) #1

declare dso_local i32 @init_classinfo(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
