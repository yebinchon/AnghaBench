; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_ndr_stubless.c_calc_arg_size.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_ndr_stubless.c_calc_arg_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@FC_SIMPLE_POINTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unhandled conformant description\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"conformance = %ld\0A\00", align 1
@FC_STRING_SIZED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Unhandled type %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*)* @calc_arg_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_arg_size(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %129 [
    i32 134, label %8
    i32 131, label %26
    i32 135, label %26
    i32 146, label %30
    i32 145, label %41
    i32 143, label %41
    i32 133, label %54
    i32 132, label %54
    i32 138, label %58
    i32 137, label %58
    i32 147, label %62
    i32 129, label %88
    i32 144, label %92
    i32 128, label %96
    i32 142, label %103
    i32 141, label %103
    i32 130, label %133
    i32 136, label %133
    i32 140, label %133
    i32 139, label %133
  ]

8:                                                ; preds = %2
  %9 = load i32*, i32** %4, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @FC_SIMPLE_POINTER, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  store i32 0, i32* %5, align 4
  br label %134

16:                                               ; preds = %8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %19, i64 %23
  %25 = call i32 @calc_arg_size(%struct.TYPE_6__* %17, i32* %24)
  store i32 %25, i32* %5, align 4
  br label %134

26:                                               ; preds = %2, %2
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %5, align 4
  br label %134

30:                                               ; preds = %2
  %31 = load i32*, i32** %4, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %5, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 4
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %30
  br label %134

41:                                               ; preds = %2, %2
  %42 = load i32*, i32** %4, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %5, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 4
  %48 = call i32* @ComputeConformance(%struct.TYPE_6__* %45, i32* null, i32* %47, i32 0)
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %5, align 4
  %53 = mul nsw i32 %52, %51
  store i32 %53, i32* %5, align 4
  br label %134

54:                                               ; preds = %2, %2
  %55 = load i32*, i32** %4, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %5, align 4
  br label %134

58:                                               ; preds = %2, %2
  %59 = load i32*, i32** %4, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %5, align 4
  br label %134

62:                                               ; preds = %2
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %64 = load i32*, i32** %4, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 4
  %66 = load i32*, i32** %4, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32* @ComputeConformance(%struct.TYPE_6__* %63, i32* null, i32* %65, i32 %68)
  store i32* %69, i32** %4, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %75 = load i32*, i32** %4, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32* @ComputeVariance(%struct.TYPE_6__* %74, i32* null, i32* %75, i32 %78)
  store i32* %79, i32** %4, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %81 = load i32*, i32** %4, align 8
  %82 = call i32 @ComplexStructSize(%struct.TYPE_6__* %80, i32* %81)
  store i32 %82, i32* %5, align 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %5, align 4
  %87 = mul nsw i32 %86, %85
  store i32 %87, i32* %5, align 4
  br label %134

88:                                               ; preds = %2
  %89 = load i32*, i32** %4, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 4
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %5, align 4
  br label %134

92:                                               ; preds = %2
  %93 = load i32*, i32** %4, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 2
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %5, align 4
  br label %134

96:                                               ; preds = %2
  %97 = load i32*, i32** %4, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 2
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = mul i64 %100, 4
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %5, align 4
  br label %134

103:                                              ; preds = %2, %2
  %104 = load i32*, i32** %4, align 8
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 142
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  store i32 4, i32* %5, align 4
  br label %109

108:                                              ; preds = %103
  store i32 4, i32* %5, align 4
  br label %109

109:                                              ; preds = %108, %107
  %110 = load i32*, i32** %4, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @FC_STRING_SIZED, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %109
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %117 = load i32*, i32** %4, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 2
  %119 = call i32* @ComputeConformance(%struct.TYPE_6__* %116, i32* null, i32* %118, i32 0)
  br label %123

120:                                              ; preds = %109
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  store i32 0, i32* %122, align 4
  br label %123

123:                                              ; preds = %120, %115
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %5, align 4
  %128 = mul nsw i32 %127, %126
  store i32 %128, i32* %5, align 4
  br label %134

129:                                              ; preds = %2
  %130 = load i32*, i32** %4, align 8
  %131 = load i32, i32* %130, align 4
  %132 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %2, %2, %2, %2, %129
  store i32 8, i32* %5, align 4
  br label %134

134:                                              ; preds = %133, %123, %96, %92, %88, %62, %58, %54, %41, %40, %26, %16, %15
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i32* @ComputeConformance(%struct.TYPE_6__*, i32*, i32*, i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32* @ComputeVariance(%struct.TYPE_6__*, i32*, i32*, i32) #1

declare dso_local i32 @ComplexStructSize(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
