; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemdisp/extr_locator.c_SWbemObject_create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemdisp/extr_locator.c_SWbemObject_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%struct.object = type { i32, %struct.TYPE_3__, i32, i32, i64, i32*, i32* }

@.str = private unnamed_addr constant [8 x i8] c"%p, %p\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@object_vtbl = common dso_local global i32 0, align 4
@DISPID_BASE = common dso_local global i32 0, align 4
@DISPID_BASE_METHOD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"returning iface %p\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__**)* @SWbemObject_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SWbemObject_create(i32* %0, %struct.TYPE_3__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__**, align 8
  %6 = alloca %struct.object*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__** %1, %struct.TYPE_3__*** %5, align 8
  %7 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.TYPE_3__** %7, i32* %8)
  %10 = call %struct.object* @heap_alloc(i32 48)
  store %struct.object* %10, %struct.object** %6, align 8
  %11 = icmp ne %struct.object* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %13, i32* %3, align 4
  br label %44

14:                                               ; preds = %2
  %15 = load %struct.object*, %struct.object** %6, align 8
  %16 = getelementptr inbounds %struct.object, %struct.object* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32* @object_vtbl, i32** %17, align 8
  %18 = load %struct.object*, %struct.object** %6, align 8
  %19 = getelementptr inbounds %struct.object, %struct.object* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = load %struct.object*, %struct.object** %6, align 8
  %22 = getelementptr inbounds %struct.object, %struct.object* %21, i32 0, i32 6
  store i32* %20, i32** %22, align 8
  %23 = load %struct.object*, %struct.object** %6, align 8
  %24 = getelementptr inbounds %struct.object, %struct.object* %23, i32 0, i32 6
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @IWbemClassObject_AddRef(i32* %25)
  %27 = load %struct.object*, %struct.object** %6, align 8
  %28 = getelementptr inbounds %struct.object, %struct.object* %27, i32 0, i32 5
  store i32* null, i32** %28, align 8
  %29 = load %struct.object*, %struct.object** %6, align 8
  %30 = getelementptr inbounds %struct.object, %struct.object* %29, i32 0, i32 4
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* @DISPID_BASE, align 4
  %32 = load %struct.object*, %struct.object** %6, align 8
  %33 = getelementptr inbounds %struct.object, %struct.object* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @DISPID_BASE_METHOD, align 4
  %35 = load %struct.object*, %struct.object** %6, align 8
  %36 = getelementptr inbounds %struct.object, %struct.object* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.object*, %struct.object** %6, align 8
  %38 = getelementptr inbounds %struct.object, %struct.object* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %5, align 8
  store %struct.TYPE_3__* %38, %struct.TYPE_3__** %39, align 8
  %40 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %5, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_3__* %41)
  %43 = load i32, i32* @S_OK, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %14, %12
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local %struct.object* @heap_alloc(i32) #1

declare dso_local i32 @IWbemClassObject_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
