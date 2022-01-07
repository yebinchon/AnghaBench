; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/kmtests/ntos_mm/extr_ZwMapViewOfSection.c_CompareFileContents.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/kmtests/ntos_mm/extr_ZwMapViewOfSection.c_CompareFileContents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@PagedPool = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Error allocating memory for FileContent\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i32*)* @CompareFileContents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @CompareFileContents(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__, align 8
  %9 = alloca %struct.TYPE_6__, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i64 0, i64* %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* @PagedPool, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32* @ExAllocatePoolWithTag(i32 %13, i32 %14, i8 signext 116)
  store i32* %15, i32** %10, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = icmp ne i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @skip(i32 %18, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %39, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* %4, align 4
  %23 = load i32*, i32** %10, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @ZwReadFile(i32 %22, i32* null, i32* null, i32* null, %struct.TYPE_6__* %9, i32* %23, i32 %24, %struct.TYPE_5__* %8, i32* null)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @STATUS_SUCCESS, align 4
  %28 = call i32 @ok_eq_hex(i32 %26, i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @ok_eq_ulongptr(i32 %30, i32 %31)
  store i64 0, i64* %11, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @RtlCompareMemory(i32* %33, i32* %34, i32 %35)
  store i64 %36, i64* %11, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 @ExFreePoolWithTag(i32* %37, i8 signext 116)
  br label %39

39:                                               ; preds = %21, %3
  %40 = load i64, i64* %11, align 8
  ret i64 %40
}

declare dso_local i32* @ExAllocatePoolWithTag(i32, i32, i8 signext) #1

declare dso_local i32 @skip(i32, i8*) #1

declare dso_local i32 @ZwReadFile(i32, i32*, i32*, i32*, %struct.TYPE_6__*, i32*, i32, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @ok_eq_hex(i32, i32) #1

declare dso_local i32 @ok_eq_ulongptr(i32, i32) #1

declare dso_local i64 @RtlCompareMemory(i32*, i32*, i32) #1

declare dso_local i32 @ExFreePoolWithTag(i32*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
