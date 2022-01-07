; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_write_msft.c_add_dispatch.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_write_msft.c_add_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i8* }
%struct.TYPE_16__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"stdole2.tlb\00", align 1
@TKIND_INTERFACE = common dso_local global i32 0, align 4
@MSFT_IMPINFO_OFFSET_IS_GUID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*)* @add_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_dispatch(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__, align 8
  %7 = alloca %struct.TYPE_16__, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  store i8* inttoptr (i64 132144 to i8*), i8** %8, align 8
  store i8* inttoptr (i64 132096 to i8*), i8** %9, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %67

16:                                               ; preds = %1
  %17 = load i8*, i8** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 2
  store i8* %17, i8** %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  store i32 2, i32* %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  store i32 -1, i32* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 2
  %22 = call i32 @ctl2_hash_guid(i8** %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %24 = load i32, i32* %5, align 4
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 2
  %26 = call i32 @ctl2_find_guid(%struct.TYPE_15__* %23, i32 %24, i8** %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %32

29:                                               ; preds = %16
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %31 = call i32 @ctl2_alloc_guid(%struct.TYPE_15__* %30, %struct.TYPE_17__* %6)
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %29, %16
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @alloc_importfile(%struct.TYPE_15__* %33, i32 %34, i32 2, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %35, i32* %4, align 4
  %36 = load i8*, i8** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 2
  store i8* %36, i8** %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  store i32 -1, i32* %39, align 4
  %40 = load i32, i32* @TKIND_INTERFACE, align 4
  %41 = shl i32 %40, 24
  %42 = load i32, i32* @MSFT_IMPINFO_OFFSET_IS_GUID, align 4
  %43 = or i32 %41, %42
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* %4, align 4
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 1
  store i32 %45, i32* %46, align 4
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 2
  %48 = call i32 @ctl2_hash_guid(i8** %47)
  store i32 %48, i32* %5, align 4
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %50 = load i32, i32* %5, align 4
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 2
  %52 = call i32 @ctl2_find_guid(%struct.TYPE_15__* %49, i32 %50, i8** %51)
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %3, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %58

55:                                               ; preds = %32
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %57 = call i32 @ctl2_alloc_guid(%struct.TYPE_15__* %56, %struct.TYPE_17__* %6)
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %55, %32
  %59 = load i32, i32* %3, align 4
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 2
  store i32 %59, i32* %60, align 4
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %62 = call i32 @alloc_msft_importinfo(%struct.TYPE_15__* %61, %struct.TYPE_16__* %7)
  %63 = or i32 %62, 1
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 4
  br label %67

67:                                               ; preds = %58, %15
  ret void
}

declare dso_local i32 @ctl2_hash_guid(i8**) #1

declare dso_local i32 @ctl2_find_guid(%struct.TYPE_15__*, i32, i8**) #1

declare dso_local i32 @ctl2_alloc_guid(%struct.TYPE_15__*, %struct.TYPE_17__*) #1

declare dso_local i32 @alloc_importfile(%struct.TYPE_15__*, i32, i32, i32, i8*) #1

declare dso_local i32 @alloc_msft_importinfo(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
