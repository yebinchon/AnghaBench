; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-main.c_restore_mark.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-main.c_restore_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mark = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@currentpage = common dso_local global i32 0, align 4
@draw_page_ctm = common dso_local global i32 0, align 4
@scroll_x = common dso_local global i32 0, align 4
@scroll_y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @restore_mark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_mark(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.mark, align 4
  %4 = alloca { i64, i32 }, align 4
  %5 = alloca %struct.TYPE_3__, align 4
  %6 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %4, i32 0, i32 0
  store i64 %0, i64* %6, align 4
  %7 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %4, i32 0, i32 1
  store i32 %1, i32* %7, align 4
  %8 = bitcast %struct.mark* %3 to i8*
  %9 = bitcast { i64, i32 }* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 %9, i64 12, i1 false)
  %10 = getelementptr inbounds %struct.mark, %struct.mark* %3, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* @currentpage, align 4
  %12 = getelementptr inbounds %struct.mark, %struct.mark* %3, i32 0, i32 0
  %13 = getelementptr inbounds %struct.mark, %struct.mark* %3, i32 0, i32 0
  %14 = load i32, i32* @draw_page_ctm, align 4
  %15 = bitcast %struct.TYPE_3__* %13 to i64*
  %16 = load i64, i64* %15, align 4
  %17 = call i64 @fz_transform_point(i64 %16, i32 %14)
  %18 = bitcast %struct.TYPE_3__* %5 to i64*
  store i64 %17, i64* %18, align 4
  %19 = bitcast %struct.TYPE_3__* %12 to i8*
  %20 = bitcast %struct.TYPE_3__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 8, i1 false)
  %21 = getelementptr inbounds %struct.mark, %struct.mark* %3, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* @scroll_x, align 4
  %24 = getelementptr inbounds %struct.mark, %struct.mark* %3, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* @scroll_y, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @fz_transform_point(i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
