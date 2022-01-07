; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_clist.c_InitDummyStream.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_clist.c_InitDummyStream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dummystream = type { i32, %struct.TYPE_4__, i32, i8*, i64, i64, i8*, i8*, i64, i8*, i8*, i8*, i8*, i64, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32* }

@iclvt = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@SHLWAPI_CLIST_items = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dummystream*)* @InitDummyStream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InitDummyStream(%struct.dummystream* %0) #0 {
  %2 = alloca %struct.dummystream*, align 8
  store %struct.dummystream* %0, %struct.dummystream** %2, align 8
  %3 = load %struct.dummystream*, %struct.dummystream** %2, align 8
  %4 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %3, i32 0, i32 14
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i32* @iclvt, i32** %5, align 8
  %6 = load %struct.dummystream*, %struct.dummystream** %2, align 8
  %7 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %6, i32 0, i32 0
  store i32 1, i32* %7, align 8
  %8 = load %struct.dummystream*, %struct.dummystream** %2, align 8
  %9 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %8, i32 0, i32 13
  store i64 0, i64* %9, align 8
  %10 = load i8*, i8** @FALSE, align 8
  %11 = load %struct.dummystream*, %struct.dummystream** %2, align 8
  %12 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %11, i32 0, i32 12
  store i8* %10, i8** %12, align 8
  %13 = load i8*, i8** @FALSE, align 8
  %14 = load %struct.dummystream*, %struct.dummystream** %2, align 8
  %15 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %14, i32 0, i32 11
  store i8* %13, i8** %15, align 8
  %16 = load i8*, i8** @FALSE, align 8
  %17 = load %struct.dummystream*, %struct.dummystream** %2, align 8
  %18 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %17, i32 0, i32 10
  store i8* %16, i8** %18, align 8
  %19 = load i8*, i8** @FALSE, align 8
  %20 = load %struct.dummystream*, %struct.dummystream** %2, align 8
  %21 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %20, i32 0, i32 9
  store i8* %19, i8** %21, align 8
  %22 = load %struct.dummystream*, %struct.dummystream** %2, align 8
  %23 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %22, i32 0, i32 8
  store i64 0, i64* %23, align 8
  %24 = load i8*, i8** @FALSE, align 8
  %25 = load %struct.dummystream*, %struct.dummystream** %2, align 8
  %26 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %25, i32 0, i32 7
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** @FALSE, align 8
  %28 = load %struct.dummystream*, %struct.dummystream** %2, align 8
  %29 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %28, i32 0, i32 6
  store i8* %27, i8** %29, align 8
  %30 = load %struct.dummystream*, %struct.dummystream** %2, align 8
  %31 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %30, i32 0, i32 5
  store i64 0, i64* %31, align 8
  %32 = load %struct.dummystream*, %struct.dummystream** %2, align 8
  %33 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %32, i32 0, i32 4
  store i64 0, i64* %33, align 8
  %34 = load i8*, i8** @FALSE, align 8
  %35 = load %struct.dummystream*, %struct.dummystream** %2, align 8
  %36 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %35, i32 0, i32 3
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* @SHLWAPI_CLIST_items, align 4
  %38 = load %struct.dummystream*, %struct.dummystream** %2, align 8
  %39 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.dummystream*, %struct.dummystream** %2, align 8
  %41 = getelementptr inbounds %struct.dummystream, %struct.dummystream* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
