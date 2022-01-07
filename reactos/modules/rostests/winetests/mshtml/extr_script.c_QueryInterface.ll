; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_script.c_QueryInterface.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_script.c_QueryInterface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IUnknown = common dso_local global i32 0, align 4
@IID_IOleClientSite = common dso_local global i32 0, align 4
@ClientSite = common dso_local global i32 0, align 4
@IID_IOleDocumentSite = common dso_local global i32 0, align 4
@DocumentSite = common dso_local global i32 0, align 4
@IID_IOleWindow = common dso_local global i32 0, align 4
@IID_IOleInPlaceSite = common dso_local global i32 0, align 4
@InPlaceSite = common dso_local global i32 0, align 4
@IID_IDocHostUIHandler = common dso_local global i32 0, align 4
@IID_IDocHostUIHandler2 = common dso_local global i32 0, align 4
@DocHostUIHandler = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@E_NOINTERFACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @QueryInterface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @QueryInterface(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %5 = load i8**, i8*** %4, align 8
  store i8* null, i8** %5, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @IsEqualGUID(i32* @IID_IUnknown, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @IsEqualGUID(i32* @IID_IOleClientSite, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9, %2
  %14 = load i8**, i8*** %4, align 8
  store i8* bitcast (i32* @ClientSite to i8*), i8** %14, align 8
  br label %44

15:                                               ; preds = %9
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @IsEqualGUID(i32* @IID_IOleDocumentSite, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i8**, i8*** %4, align 8
  store i8* bitcast (i32* @DocumentSite to i8*), i8** %20, align 8
  br label %43

21:                                               ; preds = %15
  %22 = load i32, i32* %3, align 4
  %23 = call i64 @IsEqualGUID(i32* @IID_IOleWindow, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %3, align 4
  %27 = call i64 @IsEqualGUID(i32* @IID_IOleInPlaceSite, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25, %21
  %30 = load i8**, i8*** %4, align 8
  store i8* bitcast (i32* @InPlaceSite to i8*), i8** %30, align 8
  br label %42

31:                                               ; preds = %25
  %32 = load i32, i32* %3, align 4
  %33 = call i64 @IsEqualGUID(i32* @IID_IDocHostUIHandler, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %3, align 4
  %37 = call i64 @IsEqualGUID(i32* @IID_IDocHostUIHandler2, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35, %31
  %40 = load i8**, i8*** %4, align 8
  store i8* bitcast (i32* @DocHostUIHandler to i8*), i8** %40, align 8
  br label %41

41:                                               ; preds = %39, %35
  br label %42

42:                                               ; preds = %41, %29
  br label %43

43:                                               ; preds = %42, %19
  br label %44

44:                                               ; preds = %43, %13
  %45 = load i8**, i8*** %4, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* @S_OK, align 4
  br label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @E_NOINTERFACE, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  ret i32 %53
}

declare dso_local i64 @IsEqualGUID(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
