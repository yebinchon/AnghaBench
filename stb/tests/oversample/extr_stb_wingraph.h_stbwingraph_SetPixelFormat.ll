; ModuleID = '/home/carl/AnghaBench/stb/tests/oversample/extr_stb_wingraph.h_stbwingraph_SetPixelFormat.c'
source_filename = "/home/carl/AnghaBench/stb/tests/oversample/extr_stb_wingraph.h_stbwingraph_SetPixelFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PFD_SUPPORT_OPENGL = common dso_local global i32 0, align 4
@PFD_DRAW_TO_WINDOW = common dso_local global i32 0, align 4
@PFD_DOUBLEBUFFER = common dso_local global i32 0, align 4
@PFD_MAIN_PLANE = common dso_local global i32 0, align 4
@PFD_TYPE_RGBA = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stbwingraph_SetPixelFormat(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_5__, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @GetDC(i32 %17)
  store i32 %18, i32* %14, align 4
  %19 = bitcast %struct.TYPE_5__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 40, i1 false)
  %20 = bitcast i8* %19 to %struct.TYPE_5__*
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i32 40, i32* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  store i32 1, i32* %22, align 4
  %23 = load i32, i32* @PFD_SUPPORT_OPENGL, align 4
  %24 = load i32, i32* @PFD_DRAW_TO_WINDOW, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @PFD_DOUBLEBUFFER, align 4
  %27 = or i32 %25, %26
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @PFD_MAIN_PLANE, align 4
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 9
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @PFD_TYPE_RGBA, align 4
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 8
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %9, align 4
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 3
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %10, align 4
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 4
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %11, align 4
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 5
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %12, align 4
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 6
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %13, align 4
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 7
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %14, align 4
  %44 = call i32 @ChoosePixelFormat(i32 %43, %struct.TYPE_5__* %15)
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %16, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %6
  %48 = load i32, i32* @FALSE, align 4
  store i32 %48, i32* %7, align 4
  br label %61

49:                                               ; preds = %6
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %16, align 4
  %52 = call i32 @DescribePixelFormat(i32 %50, i32 %51, i32 40, %struct.TYPE_5__* %15)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @FALSE, align 4
  store i32 %55, i32* %7, align 4
  br label %61

56:                                               ; preds = %49
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %16, align 4
  %59 = call i32 @SetPixelFormat(i32 %57, i32 %58, %struct.TYPE_5__* %15)
  %60 = load i32, i32* @TRUE, align 4
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %56, %54, %47
  %62 = load i32, i32* %7, align 4
  ret i32 %62
}

declare dso_local i32 @GetDC(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ChoosePixelFormat(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @DescribePixelFormat(i32, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @SetPixelFormat(i32, i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
