; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_get_class_support_data.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_get_class_support_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msxmlsupported_data_t = type { i32*, i32**, i32, i64 }

@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"class %s, iface %s not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msxmlsupported_data_t*)* @get_class_support_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_class_support_data(%struct.msxmlsupported_data_t* %0) #0 {
  %2 = alloca %struct.msxmlsupported_data_t*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.msxmlsupported_data_t* %0, %struct.msxmlsupported_data_t** %2, align 8
  br label %6

6:                                                ; preds = %81, %1
  %7 = load %struct.msxmlsupported_data_t*, %struct.msxmlsupported_data_t** %2, align 8
  %8 = getelementptr inbounds %struct.msxmlsupported_data_t, %struct.msxmlsupported_data_t* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %84

11:                                               ; preds = %6
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %78, %11
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.msxmlsupported_data_t*, %struct.msxmlsupported_data_t** %2, align 8
  %15 = getelementptr inbounds %struct.msxmlsupported_data_t, %struct.msxmlsupported_data_t* %14, i32 0, i32 1
  %16 = load i32**, i32*** %15, align 8
  %17 = call i32 @ARRAY_SIZE(i32** %16)
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %12
  %20 = load %struct.msxmlsupported_data_t*, %struct.msxmlsupported_data_t** %2, align 8
  %21 = getelementptr inbounds %struct.msxmlsupported_data_t, %struct.msxmlsupported_data_t* %20, i32 0, i32 1
  %22 = load i32**, i32*** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32*, i32** %22, i64 %24
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br label %28

28:                                               ; preds = %19, %12
  %29 = phi i1 [ false, %12 ], [ %27, %19 ]
  br i1 %29, label %30, label %81

30:                                               ; preds = %28
  %31 = load %struct.msxmlsupported_data_t*, %struct.msxmlsupported_data_t** %2, align 8
  %32 = getelementptr inbounds %struct.msxmlsupported_data_t, %struct.msxmlsupported_data_t* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %35 = load %struct.msxmlsupported_data_t*, %struct.msxmlsupported_data_t** %2, align 8
  %36 = getelementptr inbounds %struct.msxmlsupported_data_t, %struct.msxmlsupported_data_t* %35, i32 0, i32 1
  %37 = load i32**, i32*** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = bitcast i32** %3 to i8**
  %43 = call i64 @CoCreateInstance(i64 %33, i32* null, i32 %34, i32* %41, i8** %42)
  store i64 %43, i64* %4, align 8
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* @S_OK, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %30
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @IUnknown_Release(i32* %48)
  br label %50

50:                                               ; preds = %47, %30
  %51 = load i64, i64* %4, align 8
  %52 = load i64, i64* @S_OK, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load %struct.msxmlsupported_data_t*, %struct.msxmlsupported_data_t** %2, align 8
  %56 = getelementptr inbounds %struct.msxmlsupported_data_t, %struct.msxmlsupported_data_t* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %54, i32* %60, align 4
  %61 = load i64, i64* %4, align 8
  %62 = load i64, i64* @S_OK, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %50
  %65 = load %struct.msxmlsupported_data_t*, %struct.msxmlsupported_data_t** %2, align 8
  %66 = getelementptr inbounds %struct.msxmlsupported_data_t, %struct.msxmlsupported_data_t* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.msxmlsupported_data_t*, %struct.msxmlsupported_data_t** %2, align 8
  %69 = getelementptr inbounds %struct.msxmlsupported_data_t, %struct.msxmlsupported_data_t* %68, i32 0, i32 1
  %70 = load i32**, i32*** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32*, i32** %70, i64 %72
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @debugstr_msxml_guid(i32* %74)
  %76 = call i32 @win_skip(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %75)
  br label %77

77:                                               ; preds = %64, %50
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %12

81:                                               ; preds = %28
  %82 = load %struct.msxmlsupported_data_t*, %struct.msxmlsupported_data_t** %2, align 8
  %83 = getelementptr inbounds %struct.msxmlsupported_data_t, %struct.msxmlsupported_data_t* %82, i32 1
  store %struct.msxmlsupported_data_t* %83, %struct.msxmlsupported_data_t** %2, align 8
  br label %6

84:                                               ; preds = %6
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i64 @CoCreateInstance(i64, i32*, i32, i32*, i8**) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i32 @win_skip(i8*, i32, i32) #1

declare dso_local i32 @debugstr_msxml_guid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
