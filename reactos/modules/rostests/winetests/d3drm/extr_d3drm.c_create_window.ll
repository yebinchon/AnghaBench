; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/d3drm/extr_d3drm.c_create_window.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/d3drm/extr_d3drm.c_create_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i64, i64, i64, i32, i32 }

@WS_OVERLAPPEDWINDOW = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"d3drm_test\00", align 1
@CW_USEDEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @create_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_window() #0 {
  %1 = alloca %struct.TYPE_3__, align 8
  %2 = bitcast %struct.TYPE_3__* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 48, i1 false)
  %3 = bitcast i8* %2 to %struct.TYPE_3__*
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  store i64 640, i64* %4, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 3
  store i64 480, i64* %5, align 8
  %6 = load i32, i32* @WS_OVERLAPPEDWINDOW, align 4
  %7 = load i32, i32* @WS_VISIBLE, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @FALSE, align 4
  %10 = call i32 @AdjustWindowRect(%struct.TYPE_3__* %1, i32 %8, i32 %9)
  %11 = load i32, i32* @WS_OVERLAPPEDWINDOW, align 4
  %12 = load i32, i32* @WS_VISIBLE, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @CW_USEDEFAULT, align 4
  %15 = load i32, i32* @CW_USEDEFAULT, align 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %17, %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %22, %24
  %26 = call i32 @CreateWindowA(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %13, i32 %14, i32 %15, i64 %20, i64 %25, i32* null, i32* null, i32* null, i32* null)
  ret i32 %26
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @AdjustWindowRect(%struct.TYPE_3__*, i32, i32) #2

declare dso_local i32 @CreateWindowA(i8*, i8*, i32, i32, i32, i64, i64, i32*, i32*, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
