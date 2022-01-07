; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-op-run.c_pdf_run_d1.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-op-run.c_pdf_run_d1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i8* }

@FZ_DEVFLAG_MASK = common dso_local global i32 0, align 4
@FZ_DEVFLAG_BBOX_DEFINED = common dso_local global i32 0, align 4
@FZ_DEVFLAG_FILLCOLOR_UNDEFINED = common dso_local global i32 0, align 4
@FZ_DEVFLAG_STROKECOLOR_UNDEFINED = common dso_local global i32 0, align 4
@FZ_DEVFLAG_STARTCAP_UNDEFINED = common dso_local global i32 0, align 4
@FZ_DEVFLAG_DASHCAP_UNDEFINED = common dso_local global i32 0, align 4
@FZ_DEVFLAG_ENDCAP_UNDEFINED = common dso_local global i32 0, align 4
@FZ_DEVFLAG_LINEJOIN_UNDEFINED = common dso_local global i32 0, align 4
@FZ_DEVFLAG_MITERLIMIT_UNDEFINED = common dso_local global i32 0, align 4
@FZ_DEVFLAG_LINEWIDTH_UNDEFINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, float, float, float, float, float, float)* @pdf_run_d1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_run_d1(i32* %0, i32* %1, float %2, float %3, float %4, float %5, float %6, float %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store float %2, float* %11, align 4
  store float %3, float* %12, align 4
  store float %4, float* %13, align 4
  store float %5, float* %14, align 4
  store float %6, float* %15, align 4
  store float %7, float* %16, align 4
  %18 = load i32*, i32** %10, align 8
  %19 = bitcast i32* %18 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %17, align 8
  %20 = load i32, i32* @FZ_DEVFLAG_MASK, align 4
  %21 = load i32, i32* @FZ_DEVFLAG_BBOX_DEFINED, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %22
  store i32 %28, i32* %26, align 8
  %29 = load i32, i32* @FZ_DEVFLAG_FILLCOLOR_UNDEFINED, align 4
  %30 = load i32, i32* @FZ_DEVFLAG_STROKECOLOR_UNDEFINED, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @FZ_DEVFLAG_STARTCAP_UNDEFINED, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @FZ_DEVFLAG_DASHCAP_UNDEFINED, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @FZ_DEVFLAG_ENDCAP_UNDEFINED, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @FZ_DEVFLAG_LINEJOIN_UNDEFINED, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @FZ_DEVFLAG_MITERLIMIT_UNDEFINED, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @FZ_DEVFLAG_LINEWIDTH_UNDEFINED, align 4
  %43 = or i32 %41, %42
  %44 = xor i32 %43, -1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, %44
  store i32 %50, i32* %48, align 8
  %51 = load float, float* %13, align 4
  %52 = load float, float* %15, align 4
  %53 = call i8* @fz_min(float %51, float %52)
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 3
  store i8* %53, i8** %58, align 8
  %59 = load float, float* %14, align 4
  %60 = load float, float* %16, align 4
  %61 = call i8* @fz_min(float %59, float %60)
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  store i8* %61, i8** %66, align 8
  %67 = load float, float* %13, align 4
  %68 = load float, float* %15, align 4
  %69 = call i8* @fz_max(float %67, float %68)
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  store i8* %69, i8** %74, align 8
  %75 = load float, float* %14, align 4
  %76 = load float, float* %16, align 4
  %77 = call i8* @fz_max(float %75, float %76)
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i8* %77, i8** %82, align 8
  ret void
}

declare dso_local i8* @fz_min(float, float) #1

declare dso_local i8* @fz_max(float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
