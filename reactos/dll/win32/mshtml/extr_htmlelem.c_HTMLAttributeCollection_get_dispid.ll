; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlelem.c_HTMLAttributeCollection_get_dispid.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlelem.c_HTMLAttributeCollection_get_dispid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"(%p)->(%s %x %p)\0A\00", align 1
@MSHTML_DISPID_CUSTOM_MIN = common dso_local global i64 0, align 8
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i64*)* @HTMLAttributeCollection_get_dispid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HTMLAttributeCollection_get_dispid(i32* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32* @HTMLAttributeCollection_from_DispatchEx(i32* %14)
  store i32* %15, i32** %10, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @debugstr_w(i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = load i64*, i64** %9, align 8
  %21 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %16, i32 %18, i32 %19, i64* %20)
  %22 = load i32*, i32** %10, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i64*, i64** %9, align 8
  %25 = call i32 @get_attr_dispid_by_name(i32* %22, i32 %23, i64* %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = call i64 @FAILED(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %13, align 4
  store i32 %30, i32* %5, align 4
  br label %50

31:                                               ; preds = %4
  %32 = load i32*, i32** %10, align 8
  %33 = load i64*, i64** %9, align 8
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @get_domattr(i32* %32, i64 %34, i64* %12, %struct.TYPE_3__** %11)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = call i64 @FAILED(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* %13, align 4
  store i32 %40, i32* %5, align 4
  br label %50

41:                                               ; preds = %31
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = call i32 @IHTMLDOMAttribute_Release(i32* %43)
  %45 = load i64, i64* @MSHTML_DISPID_CUSTOM_MIN, align 8
  %46 = load i64, i64* %12, align 8
  %47 = add nsw i64 %45, %46
  %48 = load i64*, i64** %9, align 8
  store i64 %47, i64* %48, align 8
  %49 = load i32, i32* @S_OK, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %41, %39, %29
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32* @HTMLAttributeCollection_from_DispatchEx(i32*) #1

declare dso_local i32 @TRACE(i8*, i32*, i32, i32, i64*) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i32 @get_attr_dispid_by_name(i32*, i32, i64*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @get_domattr(i32*, i64, i64*, %struct.TYPE_3__**) #1

declare dso_local i32 @IHTMLDOMAttribute_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
