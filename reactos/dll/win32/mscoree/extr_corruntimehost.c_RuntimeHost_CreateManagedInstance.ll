; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mscoree/extr_corruntimehost.c_RuntimeHost_CreateManagedInstance.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mscoree/extr_corruntimehost.c_RuntimeHost_CreateManagedInstance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32*)*, i32* (i32*, i32*)*, i32* (i32*)*, i32* (i8*, i32*)*, i32 (i32*)* }

@S_OK = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Cannot find type %s\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Cannot convert type %s to a class\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Cannot allocate object of type %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RuntimeHost_CreateManagedInstance(%struct.TYPE_6__* %0, i32 %1, i32* %2, i32** %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32** %3, i32*** %8, align 8
  %14 = load i32, i32* @S_OK, align 4
  store i32 %14, i32* %9, align 4
  store i8* null, i8** %10, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = call i32 @RuntimeHost_GetDefaultDomain(%struct.TYPE_6__* %18, i32** %7)
  store i32 %19, i32* %9, align 4
  br label %20

20:                                               ; preds = %17, %4
  %21 = load i32, i32* %9, align 4
  %22 = call i64 @SUCCEEDED(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = call i8* @WtoA(i32 %25)
  store i8* %26, i8** %10, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %29, %24
  br label %32

32:                                               ; preds = %31, %20
  %33 = load i32, i32* %9, align 4
  %34 = call i64 @SUCCEEDED(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %32
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 4
  %41 = load i32 (i32*)*, i32 (i32*)** %40, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 %41(i32* %42)
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 3
  %48 = load i32* (i8*, i32*)*, i32* (i8*, i32*)** %47, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = call i32* %48(i8* %49, i32* null)
  store i32* %50, i32** %11, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %36
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @debugstr_w(i32 %54)
  %56 = call i32 @ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @E_FAIL, align 4
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %53, %36
  br label %59

59:                                               ; preds = %58, %32
  %60 = load i32, i32* %9, align 4
  %61 = call i64 @SUCCEEDED(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %59
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  %68 = load i32* (i32*)*, i32* (i32*)** %67, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = call i32* %68(i32* %69)
  store i32* %70, i32** %12, align 8
  %71 = load i32*, i32** %12, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %63
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @debugstr_w(i32 %74)
  %76 = call i32 @ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @E_FAIL, align 4
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %73, %63
  br label %79

79:                                               ; preds = %78, %59
  %80 = load i32, i32* %9, align 4
  %81 = call i64 @SUCCEEDED(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %100

83:                                               ; preds = %79
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i32* (i32*, i32*)*, i32* (i32*, i32*)** %87, align 8
  %89 = load i32*, i32** %7, align 8
  %90 = load i32*, i32** %12, align 8
  %91 = call i32* %88(i32* %89, i32* %90)
  store i32* %91, i32** %13, align 8
  %92 = load i32*, i32** %13, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %99, label %94

94:                                               ; preds = %83
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @debugstr_w(i32 %95)
  %97 = call i32 @ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* @E_FAIL, align 4
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %94, %83
  br label %100

100:                                              ; preds = %99, %79
  %101 = load i32, i32* %9, align 4
  %102 = call i64 @SUCCEEDED(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %100
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32 (i32*)*, i32 (i32*)** %108, align 8
  %110 = load i32*, i32** %13, align 8
  %111 = call i32 %109(i32* %110)
  %112 = load i32*, i32** %13, align 8
  %113 = load i32**, i32*** %8, align 8
  store i32* %112, i32** %113, align 8
  br label %114

114:                                              ; preds = %104, %100
  %115 = call i32 (...) @GetProcessHeap()
  %116 = load i8*, i8** %10, align 8
  %117 = call i32 @HeapFree(i32 %115, i32 0, i8* %116)
  %118 = load i32, i32* %9, align 4
  ret i32 %118
}

declare dso_local i32 @RuntimeHost_GetDefaultDomain(%struct.TYPE_6__*, i32**) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i8* @WtoA(i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
