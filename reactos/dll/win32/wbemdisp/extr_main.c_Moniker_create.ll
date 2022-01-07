; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemdisp/extr_main.c_Moniker_create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemdisp/extr_main.c_Moniker_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.moniker = type { i32, %struct.TYPE_4__, i32* }

@.str = private unnamed_addr constant [8 x i8] c"%p, %p\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@moniker_vtbl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"returning iface %p\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__**)* @Moniker_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Moniker_create(i32* %0, %struct.TYPE_4__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__**, align 8
  %6 = alloca %struct.moniker*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__** %1, %struct.TYPE_4__*** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = bitcast i32* %7 to %struct.TYPE_4__*
  %9 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %10 = call i32 (i8*, %struct.TYPE_4__*, ...) @TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %8, %struct.TYPE_4__** %9)
  %11 = call %struct.moniker* @heap_alloc(i32 24)
  store %struct.moniker* %11, %struct.moniker** %6, align 8
  %12 = icmp ne %struct.moniker* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %14, i32* %3, align 4
  br label %35

15:                                               ; preds = %2
  %16 = load %struct.moniker*, %struct.moniker** %6, align 8
  %17 = getelementptr inbounds %struct.moniker, %struct.moniker* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32* @moniker_vtbl, i32** %18, align 8
  %19 = load %struct.moniker*, %struct.moniker** %6, align 8
  %20 = getelementptr inbounds %struct.moniker, %struct.moniker* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.moniker*, %struct.moniker** %6, align 8
  %23 = getelementptr inbounds %struct.moniker, %struct.moniker* %22, i32 0, i32 2
  store i32* %21, i32** %23, align 8
  %24 = load %struct.moniker*, %struct.moniker** %6, align 8
  %25 = getelementptr inbounds %struct.moniker, %struct.moniker* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @IUnknown_AddRef(i32* %26)
  %28 = load %struct.moniker*, %struct.moniker** %6, align 8
  %29 = getelementptr inbounds %struct.moniker, %struct.moniker* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** %30, align 8
  %31 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = call i32 (i8*, %struct.TYPE_4__*, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_4__* %32)
  %34 = load i32, i32* @S_OK, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %15, %13
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_4__*, ...) #1

declare dso_local %struct.moniker* @heap_alloc(i32) #1

declare dso_local i32 @IUnknown_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
