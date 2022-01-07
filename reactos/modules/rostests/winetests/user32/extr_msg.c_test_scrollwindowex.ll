; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_msg.c_test_scrollwindowex.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_msg.c_test_scrollwindowex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@__const.test_scrollwindowex.rect = private unnamed_addr constant %struct.TYPE_3__ { i32 0, i32 0, i32 130, i32 130 }, align 4
@.str = private unnamed_addr constant [16 x i8] c"TestWindowClass\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Test Scroll\00", align 1
@WS_VISIBLE = common dso_local global i32 0, align 4
@WS_OVERLAPPEDWINDOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to create overlapped window\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Test child\00", align 1
@WS_CAPTION = common dso_local global i32 0, align 4
@WS_CHILD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"Failed to create child\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"start scroll\0A\00", align 1
@SW_ERASE = common dso_local global i32 0, align 4
@SW_INVALIDATE = common dso_local global i32 0, align 4
@WmEmptySeq = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"ScrollWindowEx\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"end scroll\0A\00", align 1
@ScrollWindowPaint1 = common dso_local global i32 0, align 4
@ScrollWindowPaint2 = common dso_local global i32 0, align 4
@SW_SCROLLCHILDREN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"start scroll with ScrollWindow\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"ScrollWindow\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"failed to destroy window\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_scrollwindowex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_scrollwindowex() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = bitcast %struct.TYPE_3__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.TYPE_3__* @__const.test_scrollwindowex.rect to i8*), i64 16, i1 false)
  %5 = load i32, i32* @WS_VISIBLE, align 4
  %6 = load i32, i32* @WS_OVERLAPPEDWINDOW, align 4
  %7 = or i32 %5, %6
  %8 = call i64 @CreateWindowExA(i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %7, i32 100, i32 100, i32 200, i32 200, i64 0, i32 0, i32 0, i32* null)
  store i64 %8, i64* %1, align 8
  %9 = load i64, i64* %1, align 8
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %13 = load i32, i32* @WS_VISIBLE, align 4
  %14 = load i32, i32* @WS_CAPTION, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @WS_CHILD, align 4
  %17 = or i32 %15, %16
  %18 = load i64, i64* %1, align 8
  %19 = call i64 @CreateWindowExA(i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %17, i32 10, i32 10, i32 150, i32 150, i64 %18, i32 0, i32 0, i32* null)
  store i64 %19, i64* %2, align 8
  %20 = load i64, i64* %2, align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @ok(i32 %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %24 = load i64, i64* %1, align 8
  %25 = call i32 @UpdateWindow(i64 %24)
  %26 = call i32 (...) @flush_events()
  %27 = call i32 (...) @flush_sequence()
  %28 = call i32 @trace(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %29 = load i64, i64* %1, align 8
  %30 = load i32, i32* @SW_ERASE, align 4
  %31 = load i32, i32* @SW_INVALIDATE, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @ScrollWindowEx(i64 %29, i32 10, i32 10, %struct.TYPE_3__* %3, i32* null, i32* null, i32* null, i32 %32)
  %34 = load i32, i32* @WmEmptySeq, align 4
  %35 = load i32, i32* @FALSE, align 4
  %36 = call i32 @ok_sequence(i32 %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %35)
  %37 = call i32 @trace(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %38 = call i32 (...) @flush_sequence()
  %39 = call i32 (...) @flush_events()
  %40 = load i32, i32* @ScrollWindowPaint1, align 4
  %41 = load i32, i32* @FALSE, align 4
  %42 = call i32 @ok_sequence(i32 %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %41)
  %43 = call i32 (...) @flush_events()
  %44 = call i32 (...) @flush_sequence()
  %45 = call i32 @trace(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %46 = load i64, i64* %1, align 8
  %47 = load i32, i32* @SW_INVALIDATE, align 4
  %48 = call i32 @ScrollWindowEx(i64 %46, i32 10, i32 10, %struct.TYPE_3__* %3, i32* null, i32* null, i32* null, i32 %47)
  %49 = load i32, i32* @WmEmptySeq, align 4
  %50 = load i32, i32* @FALSE, align 4
  %51 = call i32 @ok_sequence(i32 %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %50)
  %52 = call i32 @trace(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %53 = call i32 (...) @flush_sequence()
  %54 = call i32 (...) @flush_events()
  %55 = load i32, i32* @ScrollWindowPaint2, align 4
  %56 = load i32, i32* @FALSE, align 4
  %57 = call i32 @ok_sequence(i32 %55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %56)
  %58 = call i32 (...) @flush_events()
  %59 = call i32 (...) @flush_sequence()
  %60 = call i32 @trace(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %61 = load i64, i64* %1, align 8
  %62 = load i32, i32* @SW_SCROLLCHILDREN, align 4
  %63 = load i32, i32* @SW_ERASE, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @SW_INVALIDATE, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @ScrollWindowEx(i64 %61, i32 10, i32 10, %struct.TYPE_3__* %3, i32* null, i32* null, i32* null, i32 %66)
  %68 = load i32, i32* @WmEmptySeq, align 4
  %69 = load i32, i32* @TRUE, align 4
  %70 = call i32 @ok_sequence(i32 %68, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %69)
  %71 = call i32 @trace(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %72 = call i32 (...) @flush_sequence()
  %73 = call i32 (...) @flush_events()
  %74 = load i32, i32* @ScrollWindowPaint1, align 4
  %75 = load i32, i32* @FALSE, align 4
  %76 = call i32 @ok_sequence(i32 %74, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %75)
  %77 = call i32 (...) @flush_events()
  %78 = call i32 (...) @flush_sequence()
  %79 = call i32 @trace(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  %80 = load i64, i64* %1, align 8
  %81 = call i32 @ScrollWindow(i64 %80, i32 5, i32 5, i32* null, i32* null)
  %82 = call i32 @trace(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %83 = call i32 (...) @flush_sequence()
  %84 = call i32 (...) @flush_events()
  %85 = load i32, i32* @ScrollWindowPaint1, align 4
  %86 = load i32, i32* @FALSE, align 4
  %87 = call i32 @ok_sequence(i32 %85, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %86)
  %88 = load i64, i64* %2, align 8
  %89 = call i32 @DestroyWindow(i64 %88)
  %90 = call i32 @ok(i32 %89, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  %91 = load i64, i64* %1, align 8
  %92 = call i32 @DestroyWindow(i64 %91)
  %93 = call i32 @ok(i32 %92, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  %94 = call i32 (...) @flush_sequence()
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @CreateWindowExA(i32, i8*, i8*, i32, i32, i32, i32, i32, i64, i32, i32, i32*) #2

declare dso_local i32 @ok(i32, i8*) #2

declare dso_local i32 @UpdateWindow(i64) #2

declare dso_local i32 @flush_events(...) #2

declare dso_local i32 @flush_sequence(...) #2

declare dso_local i32 @trace(i8*) #2

declare dso_local i32 @ScrollWindowEx(i64, i32, i32, %struct.TYPE_3__*, i32*, i32*, i32*, i32) #2

declare dso_local i32 @ok_sequence(i32, i8*, i32) #2

declare dso_local i32 @ScrollWindow(i64, i32, i32, i32*, i32*) #2

declare dso_local i32 @DestroyWindow(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
