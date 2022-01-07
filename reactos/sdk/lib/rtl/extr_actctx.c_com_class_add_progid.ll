; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_com_class_add_progid.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_com_class_add_progid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entity = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.progids }
%struct.progids = type { i32, i32, i32** }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.entity*)* @com_class_add_progid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @com_class_add_progid(i32* %0, %struct.entity* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.entity*, align 8
  %6 = alloca %struct.progids*, align 8
  %7 = alloca i32**, align 8
  store i32* %0, i32** %4, align 8
  store %struct.entity* %1, %struct.entity** %5, align 8
  %8 = load %struct.entity*, %struct.entity** %5, align 8
  %9 = getelementptr inbounds %struct.entity, %struct.entity* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.progids* %11, %struct.progids** %6, align 8
  %12 = load %struct.progids*, %struct.progids** %6, align 8
  %13 = getelementptr inbounds %struct.progids, %struct.progids* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %2
  %17 = load %struct.progids*, %struct.progids** %6, align 8
  %18 = getelementptr inbounds %struct.progids, %struct.progids* %17, i32 0, i32 0
  store i32 4, i32* %18, align 8
  %19 = call i32 (...) @RtlGetProcessHeap()
  %20 = load %struct.progids*, %struct.progids** %6, align 8
  %21 = getelementptr inbounds %struct.progids, %struct.progids* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 8
  %25 = trunc i64 %24 to i32
  %26 = call i32** @RtlAllocateHeap(i32 %19, i32 0, i32 %25)
  %27 = load %struct.progids*, %struct.progids** %6, align 8
  %28 = getelementptr inbounds %struct.progids, %struct.progids* %27, i32 0, i32 2
  store i32** %26, i32*** %28, align 8
  %29 = icmp ne i32** %26, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %16
  %31 = load i32, i32* @FALSE, align 4
  store i32 %31, i32* %3, align 4
  br label %86

32:                                               ; preds = %16
  br label %33

33:                                               ; preds = %32, %2
  %34 = load %struct.progids*, %struct.progids** %6, align 8
  %35 = getelementptr inbounds %struct.progids, %struct.progids* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.progids*, %struct.progids** %6, align 8
  %38 = getelementptr inbounds %struct.progids, %struct.progids* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %36, %39
  br i1 %40, label %41, label %66

41:                                               ; preds = %33
  %42 = call i32 (...) @RtlGetProcessHeap()
  %43 = load %struct.progids*, %struct.progids** %6, align 8
  %44 = getelementptr inbounds %struct.progids, %struct.progids* %43, i32 0, i32 2
  %45 = load i32**, i32*** %44, align 8
  %46 = load %struct.progids*, %struct.progids** %6, align 8
  %47 = getelementptr inbounds %struct.progids, %struct.progids* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = mul nsw i32 2, %48
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 8
  %52 = trunc i64 %51 to i32
  %53 = call i32** @RtlReAllocateHeap(i32 %42, i32 0, i32** %45, i32 %52)
  store i32** %53, i32*** %7, align 8
  %54 = load i32**, i32*** %7, align 8
  %55 = icmp ne i32** %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %41
  %57 = load i32, i32* @FALSE, align 4
  store i32 %57, i32* %3, align 4
  br label %86

58:                                               ; preds = %41
  %59 = load %struct.progids*, %struct.progids** %6, align 8
  %60 = getelementptr inbounds %struct.progids, %struct.progids* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = mul nsw i32 %61, 2
  store i32 %62, i32* %60, align 8
  %63 = load i32**, i32*** %7, align 8
  %64 = load %struct.progids*, %struct.progids** %6, align 8
  %65 = getelementptr inbounds %struct.progids, %struct.progids* %64, i32 0, i32 2
  store i32** %63, i32*** %65, align 8
  br label %66

66:                                               ; preds = %58, %33
  %67 = load i32*, i32** %4, align 8
  %68 = call i32* @xmlstrdupW(i32* %67)
  %69 = load %struct.progids*, %struct.progids** %6, align 8
  %70 = getelementptr inbounds %struct.progids, %struct.progids* %69, i32 0, i32 2
  %71 = load i32**, i32*** %70, align 8
  %72 = load %struct.progids*, %struct.progids** %6, align 8
  %73 = getelementptr inbounds %struct.progids, %struct.progids* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32*, i32** %71, i64 %75
  store i32* %68, i32** %76, align 8
  %77 = icmp ne i32* %68, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %66
  %79 = load i32, i32* @FALSE, align 4
  store i32 %79, i32* %3, align 4
  br label %86

80:                                               ; preds = %66
  %81 = load %struct.progids*, %struct.progids** %6, align 8
  %82 = getelementptr inbounds %struct.progids, %struct.progids* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  %85 = load i32, i32* @TRUE, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %80, %78, %56, %30
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32** @RtlAllocateHeap(i32, i32, i32) #1

declare dso_local i32 @RtlGetProcessHeap(...) #1

declare dso_local i32** @RtlReAllocateHeap(i32, i32, i32**, i32) #1

declare dso_local i32* @xmlstrdupW(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
