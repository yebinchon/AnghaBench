; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_interp.c_assign_value.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_interp.c_assign_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@VT_DISPATCH = common dso_local global i64 0, align 8
@DISPATCH_PROPERTYPUTREF = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32*, i32)* @assign_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assign_value(%struct.TYPE_3__* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32*, i32** %7, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = call i32 @VariantCopyInd(i32* %12, i32* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = call i64 @FAILED(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %5, align 4
  br label %50

20:                                               ; preds = %4
  %21 = load i32*, i32** %7, align 8
  %22 = call i64 @V_VT(i32* %21)
  %23 = load i64, i64* @VT_DISPATCH, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %48

25:                                               ; preds = %20
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @DISPATCH_PROPERTYPUTREF, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %48, label %30

30:                                               ; preds = %25
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @V_DISPATCH(i32* %34)
  %36 = call i32 @get_disp_value(i32 %33, i32 %35, i32* %11)
  store i32 %36, i32* %10, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @V_DISPATCH(i32* %37)
  %39 = call i32 @IDispatch_Release(i32 %38)
  %40 = load i32, i32* %10, align 4
  %41 = call i64 @FAILED(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %30
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %5, align 4
  br label %50

45:                                               ; preds = %30
  %46 = load i32, i32* %11, align 4
  %47 = load i32*, i32** %7, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %25, %20
  %49 = load i32, i32* @S_OK, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %48, %43, %18
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @VariantCopyInd(i32*, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i64 @V_VT(i32*) #1

declare dso_local i32 @get_disp_value(i32, i32, i32*) #1

declare dso_local i32 @V_DISPATCH(i32*) #1

declare dso_local i32 @IDispatch_Release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
