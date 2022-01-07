; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_CtxMenu_query_interfaces.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_CtxMenu_query_interfaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IContextMenu3 = common dso_local global i32 0, align 4
@NOERROR = common dso_local global i64 0, align 8
@s_pctxmenu3 = common dso_local global i64 0, align 8
@IID_IContextMenu2 = common dso_local global i32 0, align 4
@s_pctxmenu2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @CtxMenu_query_interfaces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @CtxMenu_query_interfaces(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* null, i32** %4, align 8
  %5 = call i32 (...) @CtxMenu_reset()
  %6 = load i32*, i32** %3, align 8
  %7 = bitcast i32** %4 to i8**
  %8 = call i64 @IContextMenu_QueryInterface(i32* %6, i32* @IID_IContextMenu3, i8** %7)
  %9 = load i64, i64* @NOERROR, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32*, i32** %4, align 8
  %13 = ptrtoint i32* %12 to i64
  store i64 %13, i64* @s_pctxmenu3, align 8
  br label %24

14:                                               ; preds = %1
  %15 = load i32*, i32** %3, align 8
  %16 = bitcast i32** %4 to i8**
  %17 = call i64 @IContextMenu_QueryInterface(i32* %15, i32* @IID_IContextMenu2, i8** %16)
  %18 = load i64, i64* @NOERROR, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32*, i32** %4, align 8
  %22 = ptrtoint i32* %21 to i64
  store i64 %22, i64* @s_pctxmenu2, align 8
  br label %23

23:                                               ; preds = %20, %14
  br label %24

24:                                               ; preds = %23, %11
  %25 = load i32*, i32** %4, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @IContextMenu_Release(i32* %28)
  %30 = load i32*, i32** %4, align 8
  store i32* %30, i32** %2, align 8
  br label %33

31:                                               ; preds = %24
  %32 = load i32*, i32** %3, align 8
  store i32* %32, i32** %2, align 8
  br label %33

33:                                               ; preds = %31, %27
  %34 = load i32*, i32** %2, align 8
  ret i32* %34
}

declare dso_local i32 @CtxMenu_reset(...) #1

declare dso_local i64 @IContextMenu_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IContextMenu_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
