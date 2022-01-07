; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_typelib.c_SLTG_ProcessInterface.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_typelib.c_SLTG_ProcessInterface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }

@SLTG_IMPL_MAGIC = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@typelib = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_13__*, i8*, %struct.TYPE_12__*, %struct.TYPE_11__*, i32*)* @SLTG_ProcessInterface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SLTG_ProcessInterface(i8* %0, %struct.TYPE_13__* %1, i8* %2, %struct.TYPE_12__* %3, %struct.TYPE_11__* %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_11__* %4, %struct.TYPE_11__** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32* null, i32** %14, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %33

19:                                               ; preds = %6
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %21 = bitcast %struct.TYPE_12__* %20 to i8*
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %21, i64 %25
  %27 = bitcast i8* %26 to i32*
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = call i32* @SLTG_DoRefs(i32* %27, i32 %30, i8* %31)
  store i32* %32, i32** %14, align 8
  br label %33

33:                                               ; preds = %19, %6
  %34 = load i8*, i8** %7, align 8
  store i8* %34, i8** %13, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = bitcast i8* %35 to i64*
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SLTG_IMPL_MAGIC, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load i8*, i8** %13, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %43 = load i32, i32* @TRUE, align 4
  %44 = load i32*, i32** %14, align 8
  %45 = call i32 @SLTG_DoImpls(i8* %41, %struct.TYPE_13__* %42, i32 %43, i32* %44)
  br label %46

46:                                               ; preds = %40, %33
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 65535
  br i1 %50, label %51, label %67

51:                                               ; preds = %46
  %52 = load i8*, i8** %7, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %53, i64 %57
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %9, align 8
  %64 = load i32*, i32** %14, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = call i32 @SLTG_DoFuncs(i8* %52, i8* %58, %struct.TYPE_13__* %59, i32 %62, i8* %63, i32* %64, i32* %65)
  br label %67

67:                                               ; preds = %51, %46
  %68 = load i32*, i32** %14, align 8
  %69 = call i32 @heap_free(i32* %68)
  %70 = load i32, i32* @typelib, align 4
  %71 = call i64 @TRACE_ON(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %67
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @dump_TLBFuncDesc(i32 %76, i32 %80)
  br label %82

82:                                               ; preds = %73, %67
  ret void
}

declare dso_local i32* @SLTG_DoRefs(i32*, i32, i8*) #1

declare dso_local i32 @SLTG_DoImpls(i8*, %struct.TYPE_13__*, i32, i32*) #1

declare dso_local i32 @SLTG_DoFuncs(i8*, i8*, %struct.TYPE_13__*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @heap_free(i32*) #1

declare dso_local i64 @TRACE_ON(i32) #1

declare dso_local i32 @dump_TLBFuncDesc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
