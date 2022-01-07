; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_GetRandomRgn.c_Test_GetRandomRgn_SYSRGN.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_GetRandomRgn.c_Test_GetRandomRgn_SYSRGN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Coun't create a region\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Coun't create a dc\0A\00", align 1
@SYSRGN = common dso_local global i32 0, align 4
@ghwnd = common dso_local global i32 0, align 4
@ghdcWindow = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_GetRandomRgn_SYSRGN() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__, align 4
  %6 = alloca %struct.TYPE_3__, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @CreateRectRgn(i32 11, i32 17, i32 23, i32 42)
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %0
  %12 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %123

13:                                               ; preds = %0
  %14 = call i32 @CreateCompatibleDC(i32 0)
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* %1, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %123

19:                                               ; preds = %13
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @SYSRGN, align 4
  %23 = call i32 @GetRandomRgn(i32 %20, i32 %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @ok_int(i32 %24, i32 1)
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @GetRgnBox(i32 %26, %struct.TYPE_3__* %5)
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ok_long(i32 %29, i32 0)
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ok_long(i32 %32, i32 0)
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ok_long(i32 %35, i32 1)
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ok_long(i32 %38, i32 1)
  %40 = call i32 @CreateRectRgn(i32 1, i32 2, i32 3, i32 4)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %1, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @SelectClipRgn(i32 %41, i32 %42)
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @DeleteObject(i32 %44)
  %46 = load i32, i32* %1, align 4
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* @SYSRGN, align 4
  %49 = call i32 @GetRandomRgn(i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @ok_int(i32 %50, i32 1)
  %52 = load i32, i32* %2, align 4
  %53 = call i32 @GetRgnBox(i32 %52, %struct.TYPE_3__* %5)
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ok_long(i32 %55, i32 0)
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ok_long(i32 %58, i32 0)
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ok_long(i32 %61, i32 1)
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ok_long(i32 %64, i32 1)
  %66 = load i32, i32* %1, align 4
  %67 = call i32 @CreateCompatibleBitmap(i32 %66, i32 4, i32 7)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %1, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @SelectObject(i32 %68, i32 %69)
  %71 = load i32, i32* %1, align 4
  %72 = load i32, i32* %2, align 4
  %73 = load i32, i32* @SYSRGN, align 4
  %74 = call i32 @GetRandomRgn(i32 %71, i32 %72, i32 %73)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @ok_int(i32 %75, i32 1)
  %77 = load i32, i32* %2, align 4
  %78 = call i32 @GetRgnBox(i32 %77, %struct.TYPE_3__* %5)
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ok_long(i32 %80, i32 0)
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ok_long(i32 %83, i32 0)
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @ok_long(i32 %86, i32 4)
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ok_long(i32 %89, i32 7)
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @DeleteObject(i32 %91)
  %93 = load i32, i32* @ghwnd, align 4
  %94 = call i32 @MoveWindow(i32 %93, i32 100, i32 100, i32 100, i32 100, i32 0)
  %95 = load i32, i32* @ghdcWindow, align 4
  %96 = load i32, i32* %2, align 4
  %97 = load i32, i32* @SYSRGN, align 4
  %98 = call i32 @GetRandomRgn(i32 %95, i32 %96, i32 %97)
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @ok_int(i32 %99, i32 1)
  %101 = load i32, i32* %2, align 4
  %102 = call i32 @GetRgnBox(i32 %101, %struct.TYPE_3__* %5)
  %103 = load i32, i32* @ghdcWindow, align 4
  %104 = ptrtoint %struct.TYPE_3__* %5 to i32
  %105 = call i32 @DPtoLP(i32 %103, i32 %104, i32 2)
  %106 = load i32, i32* @ghwnd, align 4
  %107 = call i32 @MoveWindow(i32 %106, i32 200, i32 400, i32 200, i32 200, i32 0)
  %108 = load i32, i32* @ghdcWindow, align 4
  %109 = load i32, i32* %2, align 4
  %110 = load i32, i32* @SYSRGN, align 4
  %111 = call i32 @GetRandomRgn(i32 %108, i32 %109, i32 %110)
  store i32 %111, i32* %4, align 4
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @ok_int(i32 %112, i32 1)
  %114 = load i32, i32* %2, align 4
  %115 = call i32 @GetRgnBox(i32 %114, %struct.TYPE_3__* %6)
  %116 = load i32, i32* @ghdcWindow, align 4
  %117 = ptrtoint %struct.TYPE_3__* %6 to i32
  %118 = call i32 @DPtoLP(i32 %116, i32 %117, i32 2)
  %119 = load i32, i32* %2, align 4
  %120 = call i32 @DeleteObject(i32 %119)
  %121 = load i32, i32* %1, align 4
  %122 = call i32 @DeleteDC(i32 %121)
  br label %123

123:                                              ; preds = %19, %17, %11
  ret void
}

declare dso_local i32 @CreateRectRgn(i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @CreateCompatibleDC(i32) #1

declare dso_local i32 @GetRandomRgn(i32, i32, i32) #1

declare dso_local i32 @ok_int(i32, i32) #1

declare dso_local i32 @GetRgnBox(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @ok_long(i32, i32) #1

declare dso_local i32 @SelectClipRgn(i32, i32) #1

declare dso_local i32 @DeleteObject(i32) #1

declare dso_local i32 @CreateCompatibleBitmap(i32, i32, i32) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @MoveWindow(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DPtoLP(i32, i32, i32) #1

declare dso_local i32 @DeleteDC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
