; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/psaux/extr_psintrp.c_cf2_doStems.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/psaux/extr_psintrp.c_cf2_doStems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_6__ = type { i64, i64, i32, i8*, i8* }

@.str = private unnamed_addr constant [63 x i8] c"cf2_doStems (Type 1 mode): No width. Use hsbw/sbw as first op\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, i32, i8**, i64*, i8*)* @cf2_doStems to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cf2_doStems(%struct.TYPE_7__* %0, i32 %1, i32 %2, i8** %3, i64* %4, i8* %5) #0 {
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_6__, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i64* %4, i64** %11, align 8
  store i8* %5, i8** %12, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @cf2_stack_count(i32 %18)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = and i32 %20, 1
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %15, align 8
  %23 = load i8*, i8** %12, align 8
  store i8* %23, i8** %16, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %6
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %28
  %36 = load i64*, i64** %11, align 8
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = call i32 @FT_ERROR(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %35, %28, %6
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %62, label %46

46:                                               ; preds = %41
  %47 = load i64, i64* %15, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %46
  %50 = load i64*, i64** %11, align 8
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %8, align 4
  %55 = call i8* @cf2_stack_getReal(i32 %54, i32 0)
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = call i8* @cf2_getNominalWidthX(%struct.TYPE_8__* %58)
  %60 = call i8* @ADD_INT32(i8* %55, i8* %59)
  %61 = load i8**, i8*** %10, align 8
  store i8* %60, i8** %61, align 8
  br label %62

62:                                               ; preds = %53, %49, %46, %41
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %105

70:                                               ; preds = %62
  %71 = load i64, i64* %15, align 8
  %72 = icmp ne i64 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 1, i32 0
  store i32 %74, i32* %13, align 4
  br label %75

75:                                               ; preds = %99, %70
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %102

79:                                               ; preds = %75
  %80 = load i8*, i8** %16, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %13, align 4
  %83 = call i8* @cf2_stack_getReal(i32 %81, i32 %82)
  %84 = call i8* @ADD_INT32(i8* %80, i8* %83)
  store i8* %84, i8** %16, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 4
  store i8* %84, i8** %85, align 8
  %86 = load i8*, i8** %16, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %13, align 4
  %89 = add nsw i32 %88, 1
  %90 = call i8* @cf2_stack_getReal(i32 %87, i32 %89)
  %91 = call i8* @ADD_INT32(i8* %86, i8* %90)
  store i8* %91, i8** %16, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 3
  store i8* %91, i8** %92, align 8
  %93 = load i32, i32* @FALSE, align 4
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  store i32 %93, i32* %94, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store i64 0, i64* %95, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  store i64 0, i64* %96, align 8
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @cf2_arrstack_push(i32 %97, %struct.TYPE_6__* %17)
  br label %99

99:                                               ; preds = %79
  %100 = load i32, i32* %13, align 4
  %101 = add nsw i32 %100, 2
  store i32 %101, i32* %13, align 4
  br label %75

102:                                              ; preds = %75
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @cf2_stack_clear(i32 %103)
  br label %105

105:                                              ; preds = %102, %69
  %106 = load i64, i64* @TRUE, align 8
  %107 = load i64*, i64** %11, align 8
  store i64 %106, i64* %107, align 8
  ret void
}

declare dso_local i32 @cf2_stack_count(i32) #1

declare dso_local i32 @FT_ERROR(i8*) #1

declare dso_local i8* @ADD_INT32(i8*, i8*) #1

declare dso_local i8* @cf2_stack_getReal(i32, i32) #1

declare dso_local i8* @cf2_getNominalWidthX(%struct.TYPE_8__*) #1

declare dso_local i32 @cf2_arrstack_push(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @cf2_stack_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
