; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_typelib.c_SLTG_ProcessModule.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_typelib.c_SLTG_ProcessModule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@typelib = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_12__*, i8*, %struct.TYPE_11__*, %struct.TYPE_10__*, i32*)* @SLTG_ProcessModule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SLTG_ProcessModule(i8* %0, %struct.TYPE_12__* %1, i8* %2, %struct.TYPE_11__* %3, %struct.TYPE_10__* %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_10__* %4, %struct.TYPE_10__** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32* null, i32** %13, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %32

18:                                               ; preds = %6
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %20 = bitcast %struct.TYPE_11__* %19 to i8*
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %20, i64 %24
  %26 = bitcast i8* %25 to i32*
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %9, align 8
  %31 = call i32* @SLTG_DoRefs(i32* %26, i32 %29, i8* %30)
  store i32* %31, i32** %13, align 8
  br label %32

32:                                               ; preds = %18, %6
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 65535
  br i1 %36, label %37, label %53

37:                                               ; preds = %32
  %38 = load i8*, i8** %7, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %39, i64 %43
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %9, align 8
  %50 = load i32*, i32** %13, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = call i32 @SLTG_DoVars(i8* %38, i8* %44, %struct.TYPE_12__* %45, i32 %48, i8* %49, i32* %50, i32* %51)
  br label %53

53:                                               ; preds = %37, %32
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 65535
  br i1 %57, label %58, label %74

58:                                               ; preds = %53
  %59 = load i8*, i8** %7, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %60, i64 %64
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i8*, i8** %9, align 8
  %71 = load i32*, i32** %13, align 8
  %72 = load i32*, i32** %12, align 8
  %73 = call i32 @SLTG_DoFuncs(i8* %59, i8* %65, %struct.TYPE_12__* %66, i32 %69, i8* %70, i32* %71, i32* %72)
  br label %74

74:                                               ; preds = %58, %53
  %75 = load i32*, i32** %13, align 8
  %76 = call i32 @heap_free(i32* %75)
  %77 = load i32, i32* @typelib, align 4
  %78 = call i64 @TRACE_ON(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %82 = call i32 @dump_TypeInfo(%struct.TYPE_12__* %81)
  br label %83

83:                                               ; preds = %80, %74
  ret void
}

declare dso_local i32* @SLTG_DoRefs(i32*, i32, i8*) #1

declare dso_local i32 @SLTG_DoVars(i8*, i8*, %struct.TYPE_12__*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @SLTG_DoFuncs(i8*, i8*, %struct.TYPE_12__*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @heap_free(i32*) #1

declare dso_local i64 @TRACE_ON(i32) #1

declare dso_local i32 @dump_TypeInfo(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
