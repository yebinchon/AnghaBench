; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_nsio.c_get_uri_string.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_nsio.c_get_uri_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@NS_ERROR_UNEXPECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"GetPropertyBSTR failed: %08x\0A\00", align 1
@NS_ERROR_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"ret %s\0A\00", align 1
@NS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32*)* @get_uri_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_uri_string(%struct.TYPE_4__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = call i32 @ensure_uri(%struct.TYPE_4__* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @NS_ERROR_UNEXPECTED, align 4
  store i32 %15, i32* %4, align 4
  br label %48

16:                                               ; preds = %3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @IUri_GetPropertyBSTR(i32 %19, i32 %20, i32* %9, i32 0)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call i64 @FAILED(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @WARN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @NS_ERROR_UNEXPECTED, align 4
  store i32 %28, i32* %4, align 4
  br label %48

29:                                               ; preds = %16
  %30 = load i32, i32* %9, align 4
  %31 = call i8* @heap_strdupWtoU(i32 %30)
  store i8* %31, i8** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @SysFreeString(i32 %32)
  %34 = load i8*, i8** %8, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @NS_ERROR_OUT_OF_MEMORY, align 4
  store i32 %37, i32* %4, align 4
  br label %48

38:                                               ; preds = %29
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @debugstr_a(i8* %39)
  %41 = call i32 @TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32*, i32** %7, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @nsACString_SetData(i32* %42, i8* %43)
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @heap_free(i8* %45)
  %47 = load i32, i32* @NS_OK, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %38, %36, %25, %14
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @ensure_uri(%struct.TYPE_4__*) #1

declare dso_local i32 @IUri_GetPropertyBSTR(i32, i32, i32*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i8* @heap_strdupWtoU(i32) #1

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_a(i8*) #1

declare dso_local i32 @nsACString_SetData(i32*, i8*) #1

declare dso_local i32 @heap_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
