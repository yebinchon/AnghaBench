; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/binpatch/extr_patch.c_createPatch.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/binpatch/extr_patch.c_createPatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, i8* }
%struct.TYPE_6__ = type { %struct.TYPE_6__*, i8* }

@m_argc = common dso_local global i32 0, align 4
@m_argv = common dso_local global i8** null, align 8
@m_patch = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str = private unnamed_addr constant [16 x i8] c"Out of memory!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @createPatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @createPatch() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = load i32, i32* @m_argc, align 4
  %6 = icmp slt i32 %5, 6
  br i1 %6, label %11, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @m_argc, align 4
  %9 = srem i32 %8, 2
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %7, %0
  %12 = call i32 (...) @printUsage()
  store i32 -1, i32* %1, align 4
  br label %108

13:                                               ; preds = %7
  %14 = load i8**, i8*** @m_argv, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 3
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %4, align 8
  %17 = load i8**, i8*** @m_argv, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 2
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @m_patch, i32 0, i32 2), align 8
  %20 = load i32, i32* @m_argc, align 4
  %21 = sub nsw i32 %20, 4
  %22 = sdiv i32 %21, 2
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @m_patch, i32 0, i32 0), align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @m_patch, i32 0, i32 0), align 8
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = trunc i64 %25 to i32
  %27 = call %struct.TYPE_6__* @malloc(i32 %26)
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @m_patch, i32 0, i32 1), align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @m_patch, i32 0, i32 1), align 8
  %29 = icmp eq %struct.TYPE_6__* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %13
  %31 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %108

32:                                               ; preds = %13
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @m_patch, i32 0, i32 1), align 8
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @m_patch, i32 0, i32 0), align 8
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 4
  %37 = trunc i64 %36 to i32
  %38 = call i32 @memset(%struct.TYPE_6__* %33, i32 0, i32 %37)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %102, %32
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @m_patch, i32 0, i32 0), align 8
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %105

43:                                               ; preds = %39
  %44 = load i8**, i8*** @m_argv, align 8
  %45 = load i32, i32* %2, align 4
  %46 = mul nsw i32 %45, 2
  %47 = add nsw i32 4, %46
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %44, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @m_patch, i32 0, i32 1), align 8
  %53 = load i32, i32* %2, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  store i8* %51, i8** %56, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @m_patch, i32 0, i32 1), align 8
  %58 = load i32, i32* %2, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 %59
  %61 = load i8**, i8*** @m_argv, align 8
  %62 = load i32, i32* %2, align 4
  %63 = mul nsw i32 %62, 2
  %64 = add nsw i32 4, %63
  %65 = add nsw i32 %64, 0
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %61, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @compareFiles(%struct.TYPE_6__* %60, i8* %68)
  store i32 %69, i32* %3, align 4
  %70 = load i32, i32* %3, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %101

72:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %94, %72
  %74 = load i32, i32* %2, align 4
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @m_patch, i32 0, i32 0), align 8
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %97

77:                                               ; preds = %73
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @m_patch, i32 0, i32 1), align 8
  %79 = load i32, i32* %2, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = icmp ne %struct.TYPE_6__* %83, null
  br i1 %84, label %85, label %93

85:                                               ; preds = %77
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @m_patch, i32 0, i32 1), align 8
  %87 = load i32, i32* %2, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = call i32 @free(%struct.TYPE_6__* %91)
  br label %93

93:                                               ; preds = %85, %77
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %2, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %2, align 4
  br label %73

97:                                               ; preds = %73
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @m_patch, i32 0, i32 1), align 8
  %99 = call i32 @free(%struct.TYPE_6__* %98)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @m_patch, i32 0, i32 1), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @m_patch, i32 0, i32 0), align 8
  %100 = load i32, i32* %3, align 4
  store i32 %100, i32* %1, align 4
  br label %108

101:                                              ; preds = %43
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %2, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %2, align 4
  br label %39

105:                                              ; preds = %39
  %106 = load i8*, i8** %4, align 8
  %107 = call i32 @outputPatch(i8* %106)
  store i32 %107, i32* %1, align 4
  br label %108

108:                                              ; preds = %105, %97, %30, %11
  %109 = load i32, i32* %1, align 4
  ret i32 %109
}

declare dso_local i32 @printUsage(...) #1

declare dso_local %struct.TYPE_6__* @malloc(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @compareFiles(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

declare dso_local i32 @outputPatch(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
