; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/extr_path.c_nulldrv_SelectClipPath.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/extr_path.c_nulldrv_SelectClipPath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"nulldrv_SelectClipPath dev %p\0A\00", align 1
@ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nulldrv_SelectClipPath(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @FALSE, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @PathToRegion(i32 %10)
  store i64 %11, i64* %6, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = call i32 @DPRINT(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %12)
  %14 = load i64, i64* %6, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* %6, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @ExtSelectClipRgn(i32 %19, i64 %20, i32 %21)
  %23 = load i64, i64* @ERROR, align 8
  %24 = icmp ne i64 %22, %23
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %5, align 4
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @DeleteObject(i64 %26)
  br label %28

28:                                               ; preds = %16, %2
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i64 @PathToRegion(i32) #1

declare dso_local i32 @DPRINT(i8*, %struct.TYPE_4__*) #1

declare dso_local i64 @ExtSelectClipRgn(i32, i64, i32) #1

declare dso_local i32 @DeleteObject(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
