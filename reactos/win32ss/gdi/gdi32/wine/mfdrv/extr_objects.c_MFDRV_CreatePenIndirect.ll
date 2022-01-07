; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/mfdrv/extr_objects.c_MFDRV_CreatePenIndirect.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/mfdrv/extr_objects.c_MFDRV_CreatePenIndirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@META_CREATEPENINDIRECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @MFDRV_CreatePenIndirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MFDRV_CreatePenIndirect(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca [14 x i8], align 1
  %9 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = bitcast [14 x i8]* %8 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %9, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i32 7, i32* %12, align 4
  %13 = load i32, i32* @META_CREATEPENINDIRECT, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @memcpy(i32* %17, i32* %18, i32 4)
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %24, 2
  %26 = call i32 @MFDRV_WriteRecord(i32 %20, %struct.TYPE_3__* %21, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %33

29:                                               ; preds = %3
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @MFDRV_AddHandle(i32 %30, i32 %31)
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %29, %28
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @MFDRV_WriteRecord(i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @MFDRV_AddHandle(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
