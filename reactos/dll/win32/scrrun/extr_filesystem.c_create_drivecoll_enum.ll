; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/scrrun/extr_filesystem.c_create_drivecoll_enum.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/scrrun/extr_filesystem.c_create_drivecoll_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drivecollection = type { i32 }
%struct.enumvariant = type { i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.drivecollection* }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@drivecollenumvariantvtbl = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drivecollection*, i32**)* @create_drivecoll_enum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_drivecoll_enum(%struct.drivecollection* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drivecollection*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca %struct.enumvariant*, align 8
  store %struct.drivecollection* %0, %struct.drivecollection** %4, align 8
  store i32** %1, i32*** %5, align 8
  %7 = load i32**, i32*** %5, align 8
  store i32* null, i32** %7, align 8
  %8 = call %struct.enumvariant* @heap_alloc(i32 32)
  store %struct.enumvariant* %8, %struct.enumvariant** %6, align 8
  %9 = load %struct.enumvariant*, %struct.enumvariant** %6, align 8
  %10 = icmp ne %struct.enumvariant* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %12, i32* %3, align 4
  br label %38

13:                                               ; preds = %2
  %14 = load %struct.enumvariant*, %struct.enumvariant** %6, align 8
  %15 = getelementptr inbounds %struct.enumvariant, %struct.enumvariant* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  store i32* @drivecollenumvariantvtbl, i32** %16, align 8
  %17 = load %struct.enumvariant*, %struct.enumvariant** %6, align 8
  %18 = getelementptr inbounds %struct.enumvariant, %struct.enumvariant* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.drivecollection*, %struct.drivecollection** %4, align 8
  %20 = load %struct.enumvariant*, %struct.enumvariant** %6, align 8
  %21 = getelementptr inbounds %struct.enumvariant, %struct.enumvariant* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store %struct.drivecollection* %19, %struct.drivecollection** %24, align 8
  %25 = load %struct.enumvariant*, %struct.enumvariant** %6, align 8
  %26 = getelementptr inbounds %struct.enumvariant, %struct.enumvariant* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 -1, i32* %29, align 8
  %30 = load %struct.drivecollection*, %struct.drivecollection** %4, align 8
  %31 = getelementptr inbounds %struct.drivecollection, %struct.drivecollection* %30, i32 0, i32 0
  %32 = call i32 @IDriveCollection_AddRef(i32* %31)
  %33 = load %struct.enumvariant*, %struct.enumvariant** %6, align 8
  %34 = getelementptr inbounds %struct.enumvariant, %struct.enumvariant* %33, i32 0, i32 1
  %35 = bitcast %struct.TYPE_8__* %34 to i32*
  %36 = load i32**, i32*** %5, align 8
  store i32* %35, i32** %36, align 8
  %37 = load i32, i32* @S_OK, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %13, %11
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.enumvariant* @heap_alloc(i32) #1

declare dso_local i32 @IDriveCollection_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
