; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_write_msft.c_set_custdata.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_write_msft.c_set_custdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32** }
%struct.TYPE_10__ = type { i32, i32, i32 }

@VT_BSTR = common dso_local global i32 0, align 4
@MSFT_SEG_CUSTDATAGUID = common dso_local global i64 0, align 8
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*, i32, i8*, i32*)* @set_custdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_custdata(%struct.TYPE_9__* %0, i32* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_10__, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 2
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  store i32 -1, i32* %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  store i32 -1, i32* %20, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %22 = call i32 @ctl2_alloc_guid(%struct.TYPE_9__* %21, %struct.TYPE_10__* %11)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @VT_BSTR, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %5
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @write_string_value(%struct.TYPE_9__* %27, i32* %15, i8* %28)
  br label %37

30:                                               ; preds = %5
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i8*, i8** %9, align 8
  %34 = bitcast i8* %33 to i32*
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @write_int_value(%struct.TYPE_9__* %31, i32* %15, i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %30, %26
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %39 = load i64, i64* @MSFT_SEG_CUSTDATAGUID, align 8
  %40 = call i32 @ctl2_alloc_segment(%struct.TYPE_9__* %38, i64 %39, i32 12, i32 0)
  store i32 %40, i32* %13, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32**, i32*** %42, align 8
  %44 = load i64, i64* @MSFT_SEG_CUSTDATAGUID, align 8
  %45 = getelementptr inbounds i32*, i32** %43, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32* %49, i32** %14, align 8
  %50 = load i32, i32* %12, align 4
  %51 = load i32*, i32** %14, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %15, align 4
  %54 = load i32*, i32** %14, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  store i32 %53, i32* %55, align 4
  %56 = load i32*, i32** %10, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %14, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32*, i32** %10, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* @S_OK, align 4
  ret i32 %62
}

declare dso_local i32 @ctl2_alloc_guid(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @write_string_value(%struct.TYPE_9__*, i32*, i8*) #1

declare dso_local i32 @write_int_value(%struct.TYPE_9__*, i32*, i32, i32) #1

declare dso_local i32 @ctl2_alloc_segment(%struct.TYPE_9__*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
