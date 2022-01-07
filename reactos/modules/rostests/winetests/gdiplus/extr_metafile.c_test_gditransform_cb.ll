; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_metafile.c_test_gditransform_cb.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_metafile.c_test_gditransform_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, double, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@test_gditransform_cb.xform = internal constant %struct.TYPE_3__ { double 5.000000e-01, double 0.000000e+00, i32 0, i32 0, i32 0, i32 0 }, align 8
@test_gditransform_cb.rectangle = internal constant %struct.TYPE_4__ { i32 0, i32 0, i32 100, i32 100 }, align 4
@EMR_SETWORLDTRANSFORM = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@EMR_RECTANGLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i8*)* @test_gditransform_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_gditransform_cb(i32* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* @EMR_SETWORLDTRANSFORM, align 4
  %14 = call i32 @GdipPlayMetafileRecord(i32* %12, i32 %13, i32 0, i32 32, i8* bitcast (%struct.TYPE_3__* @test_gditransform_cb.xform to i8*))
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* @Ok, align 4
  %16 = load i32, i32* %11, align 4
  %17 = call i32 @expect(i32 %15, i32 %16)
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* @EMR_RECTANGLE, align 4
  %20 = call i32 @GdipPlayMetafileRecord(i32* %18, i32 %19, i32 0, i32 16, i8* bitcast (%struct.TYPE_4__* @test_gditransform_cb.rectangle to i8*))
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* @Ok, align 4
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @expect(i32 %21, i32 %22)
  ret void
}

declare dso_local i32 @GdipPlayMetafileRecord(i32*, i32, i32, i32, i8*) #1

declare dso_local i32 @expect(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
