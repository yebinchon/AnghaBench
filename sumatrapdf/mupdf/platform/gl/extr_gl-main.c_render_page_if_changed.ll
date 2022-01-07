; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-main.c_render_page_if_changed.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-main.c_render_page_if_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@oldpage = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@currentpage = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@oldzoom = common dso_local global i64 0, align 8
@currentzoom = common dso_local global i64 0, align 8
@oldrotate = common dso_local global i64 0, align 8
@currentrotate = common dso_local global i64 0, align 8
@oldinvert = common dso_local global i64 0, align 8
@currentinvert = common dso_local global i64 0, align 8
@oldtint = common dso_local global i64 0, align 8
@currenttint = common dso_local global i64 0, align 8
@oldicc = common dso_local global i64 0, align 8
@currenticc = common dso_local global i64 0, align 8
@oldseparations = common dso_local global i64 0, align 8
@currentseparations = common dso_local global i64 0, align 8
@oldaa = common dso_local global i64 0, align 8
@currentaa = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @render_page_if_changed() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @oldpage, i32 0, i32 0), align 8
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @currentpage, i32 0, i32 0), align 8
  %3 = icmp ne i64 %1, %2
  br i1 %3, label %36, label %4

4:                                                ; preds = %0
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @oldpage, i32 0, i32 1), align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @currentpage, i32 0, i32 1), align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %36, label %8

8:                                                ; preds = %4
  %9 = load i64, i64* @oldzoom, align 8
  %10 = load i64, i64* @currentzoom, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %36, label %12

12:                                               ; preds = %8
  %13 = load i64, i64* @oldrotate, align 8
  %14 = load i64, i64* @currentrotate, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %36, label %16

16:                                               ; preds = %12
  %17 = load i64, i64* @oldinvert, align 8
  %18 = load i64, i64* @currentinvert, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %36, label %20

20:                                               ; preds = %16
  %21 = load i64, i64* @oldtint, align 8
  %22 = load i64, i64* @currenttint, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %36, label %24

24:                                               ; preds = %20
  %25 = load i64, i64* @oldicc, align 8
  %26 = load i64, i64* @currenticc, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %36, label %28

28:                                               ; preds = %24
  %29 = load i64, i64* @oldseparations, align 8
  %30 = load i64, i64* @currentseparations, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i64, i64* @oldaa, align 8
  %34 = load i64, i64* @currentaa, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %32, %28, %24, %20, %16, %12, %8, %4, %0
  %37 = call i32 (...) @render_page()
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_3__* @oldpage to i8*), i8* align 8 bitcast (%struct.TYPE_3__* @currentpage to i8*), i64 16, i1 false)
  %38 = load i64, i64* @currentzoom, align 8
  store i64 %38, i64* @oldzoom, align 8
  %39 = load i64, i64* @currentrotate, align 8
  store i64 %39, i64* @oldrotate, align 8
  %40 = load i64, i64* @currentinvert, align 8
  store i64 %40, i64* @oldinvert, align 8
  %41 = load i64, i64* @currenttint, align 8
  store i64 %41, i64* @oldtint, align 8
  %42 = load i64, i64* @currenticc, align 8
  store i64 %42, i64* @oldicc, align 8
  %43 = load i64, i64* @currentseparations, align 8
  store i64 %43, i64* @oldseparations, align 8
  %44 = load i64, i64* @currentaa, align 8
  store i64 %44, i64* @oldaa, align 8
  br label %45

45:                                               ; preds = %36, %32
  ret void
}

declare dso_local i32 @render_page(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
