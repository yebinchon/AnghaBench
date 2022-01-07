; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_imagelist.c_check_ImageList_DrawIndirect_broken.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_imagelist.c_check_ImageList_DrawIndirect_broken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@CLR_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"ImageList_DrawIndirect: Pixel %08X, Expected a close match to %08X from line %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32)* @check_ImageList_DrawIndirect_broken to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_ImageList_DrawIndirect_broken(i32 %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_3__, align 4
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32* %2, i32** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 68, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %26 = load i32, i32* %14, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 3
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 4
  store i32 0, i32* %29, align 4
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 5
  store i32 0, i32* %30, align 4
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 6
  store i32 0, i32* %31, align 4
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 7
  store i32 0, i32* %32, align 4
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 8
  store i32 0, i32* %33, align 4
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 9
  store i32 0, i32* %34, align 4
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 10
  %36 = load i32, i32* @CLR_NONE, align 4
  store i32 %36, i32* %35, align 4
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 11
  %38 = load i32, i32* @CLR_NONE, align 4
  store i32 %38, i32* %37, align 4
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 12
  %40 = load i32, i32* %15, align 4
  store i32 %40, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 13
  store i32 0, i32* %41, align 4
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 14
  %43 = load i32, i32* %16, align 4
  store i32 %43, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 15
  %45 = load i32, i32* %17, align 4
  store i32 %45, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 16
  store i32 0, i32* %46, align 4
  %47 = load i32*, i32** %13, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 16777215, i32* %48, align 4
  %49 = call i32 @pImageList_DrawIndirect(%struct.TYPE_3__* %21)
  %50 = load i32*, i32** %13, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %18, align 4
  %54 = call i64 @colour_match(i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %10
  %57 = load i32*, i32** %13, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %19, align 4
  %61 = call i64 @colour_match(i32 %59, i32 %60)
  %62 = call i64 @broken(i64 %61)
  %63 = icmp ne i64 %62, 0
  br label %64

64:                                               ; preds = %56, %10
  %65 = phi i1 [ true, %10 ], [ %63, %56 ]
  %66 = zext i1 %65 to i32
  %67 = load i32*, i32** %13, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 16777215
  %71 = load i32, i32* %18, align 4
  %72 = load i32, i32* %20, align 4
  %73 = call i32 @ok(i32 %66, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %71, i32 %72)
  ret void
}

declare dso_local i32 @pImageList_DrawIndirect(%struct.TYPE_3__*) #1

declare dso_local i32 @ok(i32, i8*, i32, i32, i32) #1

declare dso_local i64 @colour_match(i32, i32) #1

declare dso_local i64 @broken(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
