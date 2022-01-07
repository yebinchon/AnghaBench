; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_theme.c_distance_get_linestyle.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_theme.c_distance_get_linestyle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@ROFI_HL_DASH = common dso_local global i64 0, align 8
@__const.distance_get_linestyle.dashes = private unnamed_addr constant [1 x double] [double 4.000000e+00], align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @distance_get_linestyle(i64 %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [1 x double], align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i64 %0, i64* %6, align 8
  store i32* %1, i32** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @ROFI_HL_DASH, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = bitcast [1 x double]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast ([1 x double]* @__const.distance_get_linestyle.dashes to i8*), i64 8, i1 false)
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds [1 x double], [1 x double]* %5, i64 0, i64 0
  %15 = call i32 @cairo_set_dash(i32* %13, double* %14, i32 1, double 0.000000e+00)
  br label %19

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @cairo_set_dash(i32* %17, double* null, i32 0, double 0.000000e+00)
  br label %19

19:                                               ; preds = %16, %11
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cairo_set_dash(i32*, double*, i32, double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
