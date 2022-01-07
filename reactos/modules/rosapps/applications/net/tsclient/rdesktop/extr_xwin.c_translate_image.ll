; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xwin.c_translate_image.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xwin.c_translate_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_18__*, i32, i32, i32*)* @translate_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @translate_image(%struct.TYPE_18__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %54

18:                                               ; preds = %4
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 15
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 15
  br i1 %28, label %51, label %29

29:                                               ; preds = %24, %18
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 16
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 16
  br i1 %39, label %51, label %40

40:                                               ; preds = %35, %29
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 24
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 24
  br i1 %50, label %51, label %53

51:                                               ; preds = %46, %35, %24
  %52 = load i32*, i32** %9, align 8
  store i32* %52, i32** %5, align 8
  br label %178

53:                                               ; preds = %46, %40
  br label %54

54:                                               ; preds = %53, %4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = mul nsw i32 %55, %56
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = sdiv i32 %61, 8
  %63 = mul nsw i32 %57, %62
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i64 @xmalloc(i32 %64)
  %66 = inttoptr i64 %65 to i32*
  store i32* %66, i32** %11, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32* %70, i32** %12, align 8
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  switch i32 %73, label %176 [
    i32 24, label %74
    i32 16, label %98
    i32 15, label %122
    i32 8, label %146
  ]

74:                                               ; preds = %54
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  switch i32 %78, label %97 [
    i32 32, label %79
    i32 24, label %85
    i32 16, label %91
  ]

79:                                               ; preds = %74
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = load i32*, i32** %11, align 8
  %83 = load i32*, i32** %12, align 8
  %84 = call i32 @translate24to32(%struct.TYPE_18__* %80, i32* %81, i32* %82, i32* %83)
  br label %97

85:                                               ; preds = %74
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %87 = load i32*, i32** %9, align 8
  %88 = load i32*, i32** %11, align 8
  %89 = load i32*, i32** %12, align 8
  %90 = call i32 @translate24to24(%struct.TYPE_18__* %86, i32* %87, i32* %88, i32* %89)
  br label %97

91:                                               ; preds = %74
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %93 = load i32*, i32** %9, align 8
  %94 = load i32*, i32** %11, align 8
  %95 = load i32*, i32** %12, align 8
  %96 = call i32 @translate24to16(%struct.TYPE_18__* %92, i32* %93, i32* %94, i32* %95)
  br label %97

97:                                               ; preds = %74, %91, %85, %79
  br label %176

98:                                               ; preds = %54
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  switch i32 %102, label %121 [
    i32 32, label %103
    i32 24, label %109
    i32 16, label %115
  ]

103:                                              ; preds = %98
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %105 = load i32*, i32** %9, align 8
  %106 = load i32*, i32** %11, align 8
  %107 = load i32*, i32** %12, align 8
  %108 = call i32 @translate16to32(%struct.TYPE_18__* %104, i32* %105, i32* %106, i32* %107)
  br label %121

109:                                              ; preds = %98
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = load i32*, i32** %11, align 8
  %113 = load i32*, i32** %12, align 8
  %114 = call i32 @translate16to24(%struct.TYPE_18__* %110, i32* %111, i32* %112, i32* %113)
  br label %121

115:                                              ; preds = %98
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %117 = load i32*, i32** %9, align 8
  %118 = load i32*, i32** %11, align 8
  %119 = load i32*, i32** %12, align 8
  %120 = call i32 @translate16to16(%struct.TYPE_18__* %116, i32* %117, i32* %118, i32* %119)
  br label %121

121:                                              ; preds = %98, %115, %109, %103
  br label %176

122:                                              ; preds = %54
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  switch i32 %126, label %145 [
    i32 32, label %127
    i32 24, label %133
    i32 16, label %139
  ]

127:                                              ; preds = %122
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %129 = load i32*, i32** %9, align 8
  %130 = load i32*, i32** %11, align 8
  %131 = load i32*, i32** %12, align 8
  %132 = call i32 @translate15to32(%struct.TYPE_18__* %128, i32* %129, i32* %130, i32* %131)
  br label %145

133:                                              ; preds = %122
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %135 = load i32*, i32** %9, align 8
  %136 = load i32*, i32** %11, align 8
  %137 = load i32*, i32** %12, align 8
  %138 = call i32 @translate15to24(%struct.TYPE_18__* %134, i32* %135, i32* %136, i32* %137)
  br label %145

139:                                              ; preds = %122
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %141 = load i32*, i32** %9, align 8
  %142 = load i32*, i32** %11, align 8
  %143 = load i32*, i32** %12, align 8
  %144 = call i32 @translate15to16(%struct.TYPE_18__* %140, i32* %141, i32* %142, i32* %143)
  br label %145

145:                                              ; preds = %122, %139, %133, %127
  br label %176

146:                                              ; preds = %54
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  switch i32 %150, label %175 [
    i32 8, label %151
    i32 16, label %157
    i32 24, label %163
    i32 32, label %169
  ]

151:                                              ; preds = %146
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %153 = load i32*, i32** %9, align 8
  %154 = load i32*, i32** %11, align 8
  %155 = load i32*, i32** %12, align 8
  %156 = call i32 @translate8to8(%struct.TYPE_18__* %152, i32* %153, i32* %154, i32* %155)
  br label %175

157:                                              ; preds = %146
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %159 = load i32*, i32** %9, align 8
  %160 = load i32*, i32** %11, align 8
  %161 = load i32*, i32** %12, align 8
  %162 = call i32 @translate8to16(%struct.TYPE_18__* %158, i32* %159, i32* %160, i32* %161)
  br label %175

163:                                              ; preds = %146
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %165 = load i32*, i32** %9, align 8
  %166 = load i32*, i32** %11, align 8
  %167 = load i32*, i32** %12, align 8
  %168 = call i32 @translate8to24(%struct.TYPE_18__* %164, i32* %165, i32* %166, i32* %167)
  br label %175

169:                                              ; preds = %146
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %171 = load i32*, i32** %9, align 8
  %172 = load i32*, i32** %11, align 8
  %173 = load i32*, i32** %12, align 8
  %174 = call i32 @translate8to32(%struct.TYPE_18__* %170, i32* %171, i32* %172, i32* %173)
  br label %175

175:                                              ; preds = %146, %169, %163, %157, %151
  br label %176

176:                                              ; preds = %54, %175, %145, %121, %97
  %177 = load i32*, i32** %11, align 8
  store i32* %177, i32** %5, align 8
  br label %178

178:                                              ; preds = %176, %51
  %179 = load i32*, i32** %5, align 8
  ret i32* %179
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @translate24to32(%struct.TYPE_18__*, i32*, i32*, i32*) #1

declare dso_local i32 @translate24to24(%struct.TYPE_18__*, i32*, i32*, i32*) #1

declare dso_local i32 @translate24to16(%struct.TYPE_18__*, i32*, i32*, i32*) #1

declare dso_local i32 @translate16to32(%struct.TYPE_18__*, i32*, i32*, i32*) #1

declare dso_local i32 @translate16to24(%struct.TYPE_18__*, i32*, i32*, i32*) #1

declare dso_local i32 @translate16to16(%struct.TYPE_18__*, i32*, i32*, i32*) #1

declare dso_local i32 @translate15to32(%struct.TYPE_18__*, i32*, i32*, i32*) #1

declare dso_local i32 @translate15to24(%struct.TYPE_18__*, i32*, i32*, i32*) #1

declare dso_local i32 @translate15to16(%struct.TYPE_18__*, i32*, i32*, i32*) #1

declare dso_local i32 @translate8to8(%struct.TYPE_18__*, i32*, i32*, i32*) #1

declare dso_local i32 @translate8to16(%struct.TYPE_18__*, i32*, i32*, i32*) #1

declare dso_local i32 @translate8to24(%struct.TYPE_18__*, i32*, i32*, i32*) #1

declare dso_local i32 @translate8to32(%struct.TYPE_18__*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
