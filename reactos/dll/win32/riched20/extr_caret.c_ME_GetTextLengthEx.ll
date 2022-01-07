; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_caret.c_ME_GetTextLengthEx.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_caret.c_ME_GetTextLengthEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }

@GTL_PRECISE = common dso_local global i32 0, align 4
@GTL_CLOSE = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i32 0, align 4
@GTL_NUMCHARS = common dso_local global i32 0, align 4
@GTL_NUMBYTES = common dso_local global i32 0, align 4
@ES_MULTILINE = common dso_local global i32 0, align 4
@GTL_USECRLF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"GTL_PRECISE flag unsupported. Using GTL_CLOSE\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Invalid codepage %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ME_GetTextLengthEx(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @GTL_PRECISE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @GTL_CLOSE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %22, i32* %3, align 4
  br label %124

23:                                               ; preds = %14, %2
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @GTL_NUMCHARS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %23
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @GTL_NUMBYTES, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %38, i32* %3, align 4
  br label %124

39:                                               ; preds = %30, %23
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = call i32 @ME_GetTextLength(%struct.TYPE_8__* %40)
  store i32 %41, i32* %6, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @ES_MULTILINE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %67

48:                                               ; preds = %39
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @GTL_USECRLF, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %48
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %55
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %63, 1
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %60, %55, %48, %39
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @GTL_NUMBYTES, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %88, label %74

74:                                               ; preds = %67
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @GTL_PRECISE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %122

81:                                               ; preds = %74
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @GTL_NUMCHARS, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %122, label %88

88:                                               ; preds = %81, %67
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 1200
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i32, i32* %6, align 4
  %95 = mul nsw i32 %94, 2
  store i32 %95, i32* %3, align 4
  br label %124

96:                                               ; preds = %88
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @GTL_PRECISE, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = call i32 @FIXME(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %96
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @GetCPInfo(i32 %108, %struct.TYPE_10__* %7)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %105
  %112 = load i32, i32* %6, align 4
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = mul nsw i32 %112, %114
  store i32 %115, i32* %3, align 4
  br label %124

116:                                              ; preds = %105
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %121, i32* %3, align 4
  br label %124

122:                                              ; preds = %81, %74
  %123 = load i32, i32* %6, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %122, %116, %111, %93, %37, %21
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @ME_GetTextLength(%struct.TYPE_8__*) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i64 @GetCPInfo(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
