; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/imagesoft/extr_contrast.c_Cont_OnDrawItem.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/imagesoft/extr_contrast.c_Cont_OnDrawItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i32 }

@IDC_PICPREVIEW = common dso_local global i64 0, align 8
@SRCCOPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64)* @Cont_OnDrawItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Cont_OnDrawItem(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = inttoptr i64 %8 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %6, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @CreateCompatibleDC(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IDC_PICPREVIEW, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %49

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @SelectObject(i32 %20, i32 %23)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @SRCCOPY, align 4
  %46 = call i32 @BitBlt(i32 %27, i32 %31, i32 %35, i32 %39, i32 %43, i32 %44, i32 0, i32 0, i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @DeleteDC(i32 %47)
  br label %49

49:                                               ; preds = %19, %2
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @CreateCompatibleDC(i32) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @BitBlt(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DeleteDC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
