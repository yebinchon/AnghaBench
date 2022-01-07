; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_navigate.c_start_binding.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_navigate.c_start_binding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"(%p %p %p)\0A\00", align 1
@IID_IStream = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"BindToStorage failed: %08x\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @start_binding(i32* %0, %struct.TYPE_4__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %10, %struct.TYPE_4__* %11, i32* %12)
  %14 = load i32*, i32** %5, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32* %14, i32** %16, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %3
  %20 = load i32*, i32** %7, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = call i32 @RegisterBindStatusCallback(i32* %20, i32* %22, i32* null, i32 0)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i64 @SUCCEEDED(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @IBindCtx_AddRef(i32* %28)
  br label %30

30:                                               ; preds = %27, %19
  br label %35

31:                                               ; preds = %3
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = call i32 @CreateAsyncBindCtx(i32 0, i32* %33, i32* null, i32** %7)
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %31, %30
  %36 = load i32, i32* %9, align 4
  %37 = call i64 @FAILED(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %69

43:                                               ; preds = %35
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = bitcast i32** %8 to i8**
  %49 = call i32 @IMoniker_BindToStorage(i32 %46, i32* %47, i32* null, i32* @IID_IStream, i8** %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @IBindCtx_Release(i32* %50)
  %52 = load i32, i32* %9, align 4
  %53 = call i64 @FAILED(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %43
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @WARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32* null, i32** %59, align 8
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %4, align 4
  br label %69

61:                                               ; preds = %43
  %62 = load i32*, i32** %8, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @IStream_Release(i32* %65)
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i32, i32* @S_OK, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %67, %55, %39
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @TRACE(i8*, i32*, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @RegisterBindStatusCallback(i32*, i32*, i32*, i32) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @IBindCtx_AddRef(i32*) #1

declare dso_local i32 @CreateAsyncBindCtx(i32, i32*, i32*, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IMoniker_BindToStorage(i32, i32*, i32*, i32*, i8**) #1

declare dso_local i32 @IBindCtx_Release(i32*) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @IStream_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
