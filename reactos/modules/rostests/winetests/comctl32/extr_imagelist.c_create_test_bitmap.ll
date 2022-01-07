; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_imagelist.c_create_test_bitmap.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_imagelist.c_create_test_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@BI_RGB = common dso_local global i32 0, align 4
@DIB_RGB_COLORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"CreateDIBSection failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32, i32, i32)* @create_test_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_test_bitmap(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_5__, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* null, i32** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32 4, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  store i32 2, i32* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  store i32 1, i32* %16, align 4
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 3
  store i32 1, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 4
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 5
  %21 = load i32, i32* @BI_RGB, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 6
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 7
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 8
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 9
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 10
  store i32 0, i32* %26, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @DIB_RGB_COLORS, align 4
  %29 = bitcast i32** %11 to i8**
  %30 = call i32* @CreateDIBSection(i32 %27, %struct.TYPE_5__* %12, i32 %28, i8** %29, i32* null, i32 0)
  store i32* %30, i32** %10, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %4
  %34 = load i32*, i32** %11, align 8
  %35 = icmp ne i32* %34, null
  br label %36

36:                                               ; preds = %33, %4
  %37 = phi i1 [ false, %4 ], [ %35, %33 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %40 = load i32*, i32** %10, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32*, i32** %11, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %42, %36
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @DeleteObject(i32* %46)
  store i32* null, i32** %5, align 8
  br label %56

48:                                               ; preds = %42
  %49 = load i32, i32* %8, align 4
  %50 = load i32*, i32** %11, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32*, i32** %11, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  store i32 %52, i32* %54, align 4
  %55 = load i32*, i32** %10, align 8
  store i32* %55, i32** %5, align 8
  br label %56

56:                                               ; preds = %48, %45
  %57 = load i32*, i32** %5, align 8
  ret i32* %57
}

declare dso_local i32* @CreateDIBSection(i32, %struct.TYPE_5__*, i32, i8**, i32*, i32) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @DeleteObject(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
