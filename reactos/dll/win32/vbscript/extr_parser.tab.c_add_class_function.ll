; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_parser.tab.c_add_class_function.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_parser.tab.c_add_class_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8* }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_9__*, %struct.TYPE_9__*, i32 }

@FUNC_SUB = common dso_local global i64 0, align 8
@FUNC_FUNCTION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Redefinition of %s::%s\0A\00", align 1
@E_FAIL = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (%struct.TYPE_8__*, %struct.TYPE_10__*, %struct.TYPE_9__*)* @add_class_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @add_class_function(%struct.TYPE_8__* %0, %struct.TYPE_10__* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %8, align 8
  br label %12

12:                                               ; preds = %87, %3
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %14 = icmp ne %struct.TYPE_9__* %13, null
  br i1 %14, label %15, label %91

15:                                               ; preds = %12
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @strcmpiW(i32 %18, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %86, label %24

24:                                               ; preds = %15
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @FUNC_SUB, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @FUNC_FUNCTION, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %30, %24
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @debugstr_w(i32 %39)
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @debugstr_w(i32 %43)
  %45 = call i32 @FIXME(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %44)
  %46 = load i8*, i8** @E_FAIL, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %101

49:                                               ; preds = %30
  br label %50

50:                                               ; preds = %49, %77
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %53, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %50
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @debugstr_w(i32 %61)
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @debugstr_w(i32 %65)
  %67 = call i32 @FIXME(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %66)
  %68 = load i8*, i8** @E_FAIL, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %101

71:                                               ; preds = %50
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = icmp ne %struct.TYPE_9__* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  br label %81

77:                                               ; preds = %71
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  store %struct.TYPE_9__* %80, %struct.TYPE_9__** %8, align 8
  br label %50

81:                                               ; preds = %76
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 2
  store %struct.TYPE_9__* %82, %struct.TYPE_9__** %84, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %85, %struct.TYPE_10__** %4, align 8
  br label %101

86:                                               ; preds = %15
  br label %87

87:                                               ; preds = %86
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  store %struct.TYPE_9__* %90, %struct.TYPE_9__** %8, align 8
  br label %12

91:                                               ; preds = %12
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  store %struct.TYPE_9__* %94, %struct.TYPE_9__** %96, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  store %struct.TYPE_9__* %97, %struct.TYPE_9__** %99, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %100, %struct.TYPE_10__** %4, align 8
  br label %101

101:                                              ; preds = %91, %81, %58, %36
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  ret %struct.TYPE_10__* %102
}

declare dso_local i32 @strcmpiW(i32, i32) #1

declare dso_local i32 @FIXME(i8*, i32, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
