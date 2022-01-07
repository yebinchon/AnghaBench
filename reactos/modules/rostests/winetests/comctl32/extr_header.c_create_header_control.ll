; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_header.c_create_header_control.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_header.c_create_header_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@WC_HEADERA = common dso_local global i32 0, align 4
@WS_CHILD = common dso_local global i32 0, align 4
@WS_BORDER = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@HDS_BUTTONS = common dso_local global i32 0, align 4
@HDS_HORZ = common dso_local global i32 0, align 4
@hHeaderParentWnd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to create header window\0A\00", align 1
@winetest_interactive = common dso_local global i64 0, align 8
@SW_SHOW = common dso_local global i32 0, align 4
@HDM_LAYOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @create_header_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_header_control() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_4__, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__, align 4
  %5 = load i32, i32* @WC_HEADERA, align 4
  %6 = load i32, i32* @WS_CHILD, align 4
  %7 = load i32, i32* @WS_BORDER, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @WS_VISIBLE, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @HDS_BUTTONS, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @HDS_HORZ, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @hHeaderParentWnd, align 4
  %16 = call i32* @CreateWindowExA(i32 0, i32 %5, i32* null, i32 %14, i32 0, i32 0, i32 0, i32 0, i32 %15, i32* null, i32* null, i32* null)
  store i32* %16, i32** %1, align 8
  %17 = load i32*, i32** %1, align 8
  %18 = icmp ne i32* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @ok(i32 %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %21 = load i64, i64* @winetest_interactive, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %0
  %24 = load i32, i32* @hHeaderParentWnd, align 4
  %25 = load i32, i32* @SW_SHOW, align 4
  %26 = call i32 @ShowWindow(i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %0
  %28 = load i32, i32* @hHeaderParentWnd, align 4
  %29 = call i32 @GetClientRect(i32 %28, i32* %3)
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  store i32* %3, i32** %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %31, align 8
  %32 = load i32*, i32** %1, align 8
  %33 = load i32, i32* @HDM_LAYOUT, align 4
  %34 = ptrtoint %struct.TYPE_4__* %2 to i32
  %35 = call i32 @SendMessageA(i32* %32, i32 %33, i32 0, i32 %34)
  %36 = load i32*, i32** %1, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @SetWindowPos(i32* %36, i32 %38, i32 %40, i32 %42, i32 %44, i32 %46, i32 0)
  %48 = load i32*, i32** %1, align 8
  ret i32* %48
}

declare dso_local i32* @CreateWindowExA(i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @ShowWindow(i32, i32) #1

declare dso_local i32 @GetClientRect(i32, i32*) #1

declare dso_local i32 @SendMessageA(i32*, i32, i32, i32) #1

declare dso_local i32 @SetWindowPos(i32*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
