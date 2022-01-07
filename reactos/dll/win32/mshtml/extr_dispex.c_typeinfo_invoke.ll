; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_dispex.c_typeinfo_invoke.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_dispex.c_typeinfo_invoke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Could not get type info: %08x\0A\00", align 1
@tid_ids = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Could not get iface %s: %08x\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_5__*, i32, i32*, i32*, i32*)* @typeinfo_invoke to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @typeinfo_invoke(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %16, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @get_typeinfo(i64 %20, i32** %14)
  store i32 %21, i32* %17, align 4
  %22 = load i32, i32* %17, align 4
  %23 = call i64 @FAILED(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %6
  %26 = load i32, i32* %17, align 4
  %27 = call i32 (i8*, i32, ...) @ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %17, align 4
  store i32 %28, i32* %7, align 4
  br label %69

29:                                               ; preds = %6
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** @tid_ids, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = bitcast i32** %15 to i8**
  %40 = call i32 @IUnknown_QueryInterface(i32 %32, i32 %38, i8** %39)
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* %17, align 4
  %42 = call i64 @FAILED(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %29
  %45 = load i32*, i32** @tid_ids, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @debugstr_mshtml_guid(i32 %50)
  %52 = load i32, i32* %17, align 4
  %53 = call i32 (i8*, i32, ...) @ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load i32, i32* @E_FAIL, align 4
  store i32 %54, i32* %7, align 4
  br label %69

55:                                               ; preds = %29
  %56 = load i32*, i32** %14, align 8
  %57 = load i32*, i32** %15, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32*, i32** %11, align 8
  %63 = load i32*, i32** %12, align 8
  %64 = load i32*, i32** %13, align 8
  %65 = call i32 @ITypeInfo_Invoke(i32* %56, i32* %57, i32 %60, i32 %61, i32* %62, i32* %63, i32* %64, i32* %16)
  store i32 %65, i32* %17, align 4
  %66 = load i32*, i32** %15, align 8
  %67 = call i32 @IUnknown_Release(i32* %66)
  %68 = load i32, i32* %17, align 4
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %55, %44, %25
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local i32 @get_typeinfo(i64, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @ERR(i8*, i32, ...) #1

declare dso_local i32 @IUnknown_QueryInterface(i32, i32, i8**) #1

declare dso_local i32 @debugstr_mshtml_guid(i32) #1

declare dso_local i32 @ITypeInfo_Invoke(i32*, i32*, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
