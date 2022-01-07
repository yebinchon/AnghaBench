; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv/condrv/extr_text.c_ConioMoveRegion.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv/condrv/extr_text.c_ConioMoveRegion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__*, i32)* @ConioMoveRegion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ConioMoveRegion(i32 %0, %struct.TYPE_7__* %1, %struct.TYPE_7__* %2, %struct.TYPE_7__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %10, align 8
  store i32 %4, i32* %11, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %26 = call i32 @ConioRectWidth(%struct.TYPE_7__* %25)
  store i32 %26, i32* %12, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %28 = call i32 @ConioRectHeight(%struct.TYPE_7__* %27)
  store i32 %28, i32* %13, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %15, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %17, align 4
  store i32 1, i32* %19, align 4
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* %17, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %5
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %15, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %17, align 4
  store i32 -1, i32* %19, align 4
  br label %45

45:                                               ; preds = %38, %5
  store i32 0, i32* %20, align 4
  br label %46

46:                                               ; preds = %160, %45
  %47 = load i32, i32* %20, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %163

50:                                               ; preds = %46
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %15, align 4
  %53 = call i32* @ConioCoordToPointer(i32 %51, i32 0, i32 %52)
  store i32* %53, i32** %22, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %17, align 4
  %56 = call i32* @ConioCoordToPointer(i32 %54, i32 0, i32 %55)
  store i32* %56, i32** %23, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %14, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %16, align 4
  store i32 1, i32* %18, align 4
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %16, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %50
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %14, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %16, align 4
  store i32 -1, i32* %18, align 4
  br label %73

73:                                               ; preds = %66, %50
  store i32 0, i32* %21, align 4
  br label %74

74:                                               ; preds = %150, %73
  %75 = load i32, i32* %21, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %153

78:                                               ; preds = %74
  %79 = load i32*, i32** %22, align 8
  %80 = load i32, i32* %14, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %24, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = icmp sge i32 %84, %87
  br i1 %88, label %89, label %113

89:                                               ; preds = %78
  %90 = load i32, i32* %14, align 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = icmp sle i32 %90, %93
  br i1 %94, label %95, label %113

95:                                               ; preds = %89
  %96 = load i32, i32* %15, align 4
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp sge i32 %96, %99
  br i1 %100, label %101, label %113

101:                                              ; preds = %95
  %102 = load i32, i32* %15, align 4
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp sle i32 %102, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %101
  %108 = load i32, i32* %11, align 4
  %109 = load i32*, i32** %22, align 8
  %110 = load i32, i32* %14, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 %108, i32* %112, align 4
  br label %113

113:                                              ; preds = %107, %101, %95, %89, %78
  %114 = load i32, i32* %16, align 4
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = icmp sge i32 %114, %117
  br i1 %118, label %119, label %143

119:                                              ; preds = %113
  %120 = load i32, i32* %16, align 4
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = icmp sle i32 %120, %123
  br i1 %124, label %125, label %143

125:                                              ; preds = %119
  %126 = load i32, i32* %17, align 4
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp sge i32 %126, %129
  br i1 %130, label %131, label %143

131:                                              ; preds = %125
  %132 = load i32, i32* %17, align 4
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = icmp sle i32 %132, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %131
  %138 = load i32, i32* %24, align 4
  %139 = load i32*, i32** %23, align 8
  %140 = load i32, i32* %16, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  store i32 %138, i32* %142, align 4
  br label %143

143:                                              ; preds = %137, %131, %125, %119, %113
  %144 = load i32, i32* %18, align 4
  %145 = load i32, i32* %14, align 4
  %146 = add nsw i32 %145, %144
  store i32 %146, i32* %14, align 4
  %147 = load i32, i32* %18, align 4
  %148 = load i32, i32* %16, align 4
  %149 = add nsw i32 %148, %147
  store i32 %149, i32* %16, align 4
  br label %150

150:                                              ; preds = %143
  %151 = load i32, i32* %21, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %21, align 4
  br label %74

153:                                              ; preds = %74
  %154 = load i32, i32* %19, align 4
  %155 = load i32, i32* %15, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* %15, align 4
  %157 = load i32, i32* %19, align 4
  %158 = load i32, i32* %17, align 4
  %159 = add nsw i32 %158, %157
  store i32 %159, i32* %17, align 4
  br label %160

160:                                              ; preds = %153
  %161 = load i32, i32* %20, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %20, align 4
  br label %46

163:                                              ; preds = %46
  %164 = load i32, i32* %6, align 4
  ret i32 %164
}

declare dso_local i32 @ConioRectWidth(%struct.TYPE_7__*) #1

declare dso_local i32 @ConioRectHeight(%struct.TYPE_7__*) #1

declare dso_local i32* @ConioCoordToPointer(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
