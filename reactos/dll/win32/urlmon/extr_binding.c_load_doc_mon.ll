; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_binding.c_load_doc_mon.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_binding.c_load_doc_mon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"CreateAsyncBindCtxEx failed: %08x\0A\00", align 1
@bscb_holderW = common dso_local global i32 0, align 4
@cbinding_contextW = common dso_local global i32 0, align 4
@END_DOWNLOAD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"Load failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*)* @load_doc_mon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_doc_mon(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @CreateAsyncBindCtxEx(i32 %9, i32 0, i32* null, i32* null, i32** %5, i32 0)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i64 @FAILED(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @WARN(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %49

17:                                               ; preds = %2
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* @bscb_holderW, align 4
  %20 = call i32 @IBindCtx_RevokeObjectParam(i32* %18, i32 %19)
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* @cbinding_contextW, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = call i32 @IBindCtx_RegisterObjectParam(i32* %21, i32 %22, i32* %24)
  %26 = load i32*, i32** %4, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @END_DOWNLOAD, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @IPersistMoniker_Load(i32* %26, i32 %32, i32 %35, i32* %36, i32 18)
  store i32 %37, i32* %6, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* @cbinding_contextW, align 4
  %40 = call i32 @IBindCtx_RevokeObjectParam(i32* %38, i32 %39)
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @IBindCtx_Release(i32* %41)
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @FAILED(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %17
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @FIXME(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %14, %46, %17
  ret void
}

declare dso_local i32 @CreateAsyncBindCtxEx(i32, i32, i32*, i32*, i32**, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @IBindCtx_RevokeObjectParam(i32*, i32) #1

declare dso_local i32 @IBindCtx_RegisterObjectParam(i32*, i32, i32*) #1

declare dso_local i32 @IPersistMoniker_Load(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @IBindCtx_Release(i32*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
