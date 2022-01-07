; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_saxreader.c_get_class_support_data.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_saxreader.c_get_class_support_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msxmlsupported_data_t = type { i32, i32, i64 }

@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"class %s not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msxmlsupported_data_t*, i32)* @get_class_support_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_class_support_data(%struct.msxmlsupported_data_t* %0, i32 %1) #0 {
  %3 = alloca %struct.msxmlsupported_data_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.msxmlsupported_data_t* %0, %struct.msxmlsupported_data_t** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %7

7:                                                ; preds = %41, %2
  %8 = load %struct.msxmlsupported_data_t*, %struct.msxmlsupported_data_t** %3, align 8
  %9 = getelementptr inbounds %struct.msxmlsupported_data_t, %struct.msxmlsupported_data_t* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %44

12:                                               ; preds = %7
  %13 = load %struct.msxmlsupported_data_t*, %struct.msxmlsupported_data_t** %3, align 8
  %14 = getelementptr inbounds %struct.msxmlsupported_data_t, %struct.msxmlsupported_data_t* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %17 = load i32, i32* %4, align 4
  %18 = bitcast i32** %5 to i8**
  %19 = call i64 @CoCreateInstance(i64 %15, i32* null, i32 %16, i32 %17, i8** %18)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @S_OK, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %12
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @IUnknown_Release(i32* %24)
  br label %26

26:                                               ; preds = %23, %12
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @S_OK, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load %struct.msxmlsupported_data_t*, %struct.msxmlsupported_data_t** %3, align 8
  %32 = getelementptr inbounds %struct.msxmlsupported_data_t, %struct.msxmlsupported_data_t* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @S_OK, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %26
  %37 = load %struct.msxmlsupported_data_t*, %struct.msxmlsupported_data_t** %3, align 8
  %38 = getelementptr inbounds %struct.msxmlsupported_data_t, %struct.msxmlsupported_data_t* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @win_skip(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %36, %26
  %42 = load %struct.msxmlsupported_data_t*, %struct.msxmlsupported_data_t** %3, align 8
  %43 = getelementptr inbounds %struct.msxmlsupported_data_t, %struct.msxmlsupported_data_t* %42, i32 1
  store %struct.msxmlsupported_data_t* %43, %struct.msxmlsupported_data_t** %3, align 8
  br label %7

44:                                               ; preds = %7
  ret void
}

declare dso_local i64 @CoCreateInstance(i64, i32*, i32, i32, i8**) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i32 @win_skip(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
