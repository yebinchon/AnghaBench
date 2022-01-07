; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-link.c_xps_add_link.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-link.c_xps_add_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i8*, i8*, %struct.TYPE_4__**)* @xps_add_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xps_add_link(i32* %0, i32* %1, i32 %2, i8* %3, i8* %4, %struct.TYPE_4__** %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_4__**, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store %struct.TYPE_4__** %5, %struct.TYPE_4__*** %12, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = call %struct.TYPE_4__* @fz_new_link(i32* %14, i32 %15, i32* %16, i8* %17)
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %13, align 8
  %19 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %12, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %22, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %24 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %12, align 8
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %24, align 8
  ret void
}

declare dso_local %struct.TYPE_4__* @fz_new_link(i32*, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
