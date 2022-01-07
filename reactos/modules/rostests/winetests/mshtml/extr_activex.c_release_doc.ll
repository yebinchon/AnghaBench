; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_activex.c_release_doc.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_activex.c_release_doc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"ref = %d\0A\00", align 1
@client_site = common dso_local global i32* null, align 8
@plugin_hwnd = common dso_local global i32* null, align 8
@activex_refcnt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"activex_refcnt = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @release_doc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_doc(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = load i32, i32* @FALSE, align 4
  %6 = call i32 @set_client_site(i32* %4, i32 %5)
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @IHTMLDocument2_Release(i32* %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp eq i32 %12, 1
  %14 = zext i1 %13 to i32
  %15 = call i64 @broken(i32 %14)
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %11, %1
  %18 = phi i1 [ true, %1 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @ok(i32 %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32*, i32** @client_site, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32*, i32** @client_site, align 8
  %26 = call i32 @IOleClientSite_Release(i32* %25)
  store i32* null, i32** @client_site, align 8
  br label %27

27:                                               ; preds = %24, %17
  %28 = load i32*, i32** @plugin_hwnd, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32*, i32** @plugin_hwnd, align 8
  %32 = call i32 @DestroyWindow(i32* %31)
  store i32* null, i32** @plugin_hwnd, align 8
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i32, i32* @activex_refcnt, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* @activex_refcnt, align 4
  %39 = call i32 @ok(i32 %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  ret void
}

declare dso_local i32 @set_client_site(i32*, i32) #1

declare dso_local i32 @IHTMLDocument2_Release(i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @IOleClientSite_Release(i32*) #1

declare dso_local i32 @DestroyWindow(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
