; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_editor.c_ME_RTFReadObjectGroup.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_editor.c_ME_RTFReadObjectGroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i32 }

@rtfEOF = common dso_local global i64 0, align 8
@rtfGroup = common dso_local global i64 0, align 8
@rtfEndGroup = common dso_local global i64 0, align 8
@rtfBeginGroup = common dso_local global i64 0, align 8
@rtfControl = common dso_local global i64 0, align 8
@rtfDestination = common dso_local global i32 0, align 4
@rtfObjResult = common dso_local global i32 0, align 4
@rtfObjAttr = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Non supported attribute: %d %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @ME_RTFReadObjectGroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ME_RTFReadObjectGroup(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  br label %4

4:                                                ; preds = %101, %83, %1
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = call i64 @RTFGetToken(%struct.TYPE_8__* %5)
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @rtfEOF, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  br label %105

13:                                               ; preds = %4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %15 = load i64, i64* @rtfGroup, align 8
  %16 = load i64, i64* @rtfEndGroup, align 8
  %17 = call i64 @RTFCheckCM(%struct.TYPE_8__* %14, i64 %15, i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %102

20:                                               ; preds = %13
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %22 = load i64, i64* @rtfGroup, align 8
  %23 = load i64, i64* @rtfBeginGroup, align 8
  %24 = call i64 @RTFCheckCM(%struct.TYPE_8__* %21, i64 %22, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %84

26:                                               ; preds = %20
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %28 = call i64 @RTFGetToken(%struct.TYPE_8__* %27)
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @rtfEOF, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %105

35:                                               ; preds = %26
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %37 = load i64, i64* @rtfControl, align 8
  %38 = load i32, i32* @rtfDestination, align 4
  %39 = load i32, i32* @rtfObjResult, align 4
  %40 = call i64 @RTFCheckCMM(%struct.TYPE_8__* %36, i64 %37, i32 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %80

42:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %43

43:                                               ; preds = %76, %42
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %45 = call i64 @RTFGetToken(%struct.TYPE_8__* %44)
  %46 = load i64, i64* @rtfEOF, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %79

48:                                               ; preds = %43
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @rtfGroup, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %76

54:                                               ; preds = %48
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @rtfBeginGroup, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %75

63:                                               ; preds = %54
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @rtfEndGroup, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %3, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %79

74:                                               ; preds = %69, %63
  br label %75

75:                                               ; preds = %74, %60
  br label %76

76:                                               ; preds = %75, %48
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %78 = call i32 @RTFRouteToken(%struct.TYPE_8__* %77)
  br label %43

79:                                               ; preds = %73, %43
  br label %83

80:                                               ; preds = %35
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %82 = call i32 @RTFSkipGroup(%struct.TYPE_8__* %81)
  br label %83

83:                                               ; preds = %80, %79
  br label %4

84:                                               ; preds = %20
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %86 = load i64, i64* @rtfControl, align 8
  %87 = load i64, i64* @rtfObjAttr, align 8
  %88 = call i64 @RTFCheckCM(%struct.TYPE_8__* %85, i64 %86, i64 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %101, label %90

90:                                               ; preds = %84
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @FIXME(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %93, i64 %96, i32 %99)
  br label %105

101:                                              ; preds = %84
  br label %4

102:                                              ; preds = %19
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %104 = call i32 @RTFRouteToken(%struct.TYPE_8__* %103)
  br label %105

105:                                              ; preds = %102, %90, %34, %12
  ret void
}

declare dso_local i64 @RTFGetToken(%struct.TYPE_8__*) #1

declare dso_local i64 @RTFCheckCM(%struct.TYPE_8__*, i64, i64) #1

declare dso_local i64 @RTFCheckCMM(%struct.TYPE_8__*, i64, i32, i32) #1

declare dso_local i32 @RTFRouteToken(%struct.TYPE_8__*) #1

declare dso_local i32 @RTFSkipGroup(%struct.TYPE_8__*) #1

declare dso_local i32 @FIXME(i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
