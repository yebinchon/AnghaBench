; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/templates/mdi/extr_framewnd.c_resize_frame_rect.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/templates/mdi/extr_framewnd.c_resize_frame_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i64 }

@hToolBar = common dso_local global i32 0, align 4
@WM_SIZE = common dso_local global i32 0, align 4
@hStatusBar = common dso_local global i32 0, align 4
@__const.resize_frame_rect.parts = private unnamed_addr constant [2 x i32] [i32 300, i32 500], align 4
@SB_SETPARTS = common dso_local global i32 0, align 4
@hMDIClient = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_6__*)* @resize_frame_rect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resize_frame_rect(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = alloca [2 x i32], align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %7 = load i32, i32* @hToolBar, align 4
  %8 = call i64 @IsWindowVisible(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %2
  %11 = load i32, i32* @hToolBar, align 4
  %12 = load i32, i32* @WM_SIZE, align 4
  %13 = call i32 @SendMessage(i32 %11, i32 %12, i32 0, i32 0)
  %14 = load i32, i32* @hToolBar, align 4
  %15 = call i32 @GetClientRect(i32 %14, %struct.TYPE_5__* %5)
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 3
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  store i64 %18, i64* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 3
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %26, %23
  store i64 %27, i64* %25, align 8
  br label %28

28:                                               ; preds = %10, %2
  %29 = load i32, i32* @hStatusBar, align 4
  %30 = call i64 @IsWindowVisible(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %28
  %33 = bitcast [2 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 bitcast ([2 x i32]* @__const.resize_frame_rect.parts to i8*), i64 8, i1 false)
  %34 = load i32, i32* @hStatusBar, align 4
  %35 = load i32, i32* @WM_SIZE, align 4
  %36 = call i32 @SendMessage(i32 %34, i32 %35, i32 0, i32 0)
  %37 = load i32, i32* @hStatusBar, align 4
  %38 = load i32, i32* @SB_SETPARTS, align 4
  %39 = ptrtoint [2 x i32]* %6 to i32
  %40 = call i32 @SendMessage(i32 %37, i32 %38, i32 2, i32 %39)
  %41 = load i32, i32* @hStatusBar, align 4
  %42 = call i32 @GetClientRect(i32 %41, %struct.TYPE_5__* %5)
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %47, %44
  store i64 %48, i64* %46, align 8
  br label %49

49:                                               ; preds = %32, %28
  %50 = load i32, i32* @hMDIClient, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %53, 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %57, 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, 2
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 1
  %67 = load i32, i32* @TRUE, align 4
  %68 = call i32 @MoveWindow(i32 %50, i64 %54, i64 %58, i64 %62, i64 %66, i32 %67)
  ret void
}

declare dso_local i64 @IsWindowVisible(i32) #1

declare dso_local i32 @SendMessage(i32, i32, i32, i32) #1

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_5__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @MoveWindow(i32, i64, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
