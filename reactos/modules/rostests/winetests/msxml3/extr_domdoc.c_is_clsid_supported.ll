; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_is_clsid_supported.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_is_clsid_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msxmlsupported_data_t = type { i32*, i32**, i32* }

@domdoc_support_data = common dso_local global %struct.msxmlsupported_data_t* null, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @is_clsid_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_clsid_supported(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.msxmlsupported_data_t*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.msxmlsupported_data_t*, %struct.msxmlsupported_data_t** @domdoc_support_data, align 8
  store %struct.msxmlsupported_data_t* %8, %struct.msxmlsupported_data_t** %6, align 8
  br label %9

9:                                                ; preds = %62, %2
  %10 = load %struct.msxmlsupported_data_t*, %struct.msxmlsupported_data_t** %6, align 8
  %11 = getelementptr inbounds %struct.msxmlsupported_data_t, %struct.msxmlsupported_data_t* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %65

14:                                               ; preds = %9
  %15 = load %struct.msxmlsupported_data_t*, %struct.msxmlsupported_data_t** %6, align 8
  %16 = getelementptr inbounds %struct.msxmlsupported_data_t, %struct.msxmlsupported_data_t* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = icmp eq i32* %17, %18
  br i1 %19, label %20, label %62

20:                                               ; preds = %14
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %58, %20
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.msxmlsupported_data_t*, %struct.msxmlsupported_data_t** %6, align 8
  %24 = getelementptr inbounds %struct.msxmlsupported_data_t, %struct.msxmlsupported_data_t* %23, i32 0, i32 1
  %25 = load i32**, i32*** %24, align 8
  %26 = call i32 @ARRAY_SIZE(i32** %25)
  %27 = icmp slt i32 %22, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %21
  %29 = load %struct.msxmlsupported_data_t*, %struct.msxmlsupported_data_t** %6, align 8
  %30 = getelementptr inbounds %struct.msxmlsupported_data_t, %struct.msxmlsupported_data_t* %29, i32 0, i32 1
  %31 = load i32**, i32*** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br label %37

37:                                               ; preds = %28, %21
  %38 = phi i1 [ false, %21 ], [ %36, %28 ]
  br i1 %38, label %39, label %61

39:                                               ; preds = %37
  %40 = load %struct.msxmlsupported_data_t*, %struct.msxmlsupported_data_t** %6, align 8
  %41 = getelementptr inbounds %struct.msxmlsupported_data_t, %struct.msxmlsupported_data_t* %40, i32 0, i32 1
  %42 = load i32**, i32*** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = icmp eq i32* %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %39
  %50 = load %struct.msxmlsupported_data_t*, %struct.msxmlsupported_data_t** %6, align 8
  %51 = getelementptr inbounds %struct.msxmlsupported_data_t, %struct.msxmlsupported_data_t* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %3, align 4
  br label %67

57:                                               ; preds = %39
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %21

61:                                               ; preds = %37
  br label %62

62:                                               ; preds = %61, %14
  %63 = load %struct.msxmlsupported_data_t*, %struct.msxmlsupported_data_t** %6, align 8
  %64 = getelementptr inbounds %struct.msxmlsupported_data_t, %struct.msxmlsupported_data_t* %63, i32 1
  store %struct.msxmlsupported_data_t* %64, %struct.msxmlsupported_data_t** %6, align 8
  br label %9

65:                                               ; preds = %9
  %66 = load i32, i32* @FALSE, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %65, %49
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @ARRAY_SIZE(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
