; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_cwebp.c_DumpPicture.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_cwebp.c_DumpPicture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"P5\0A%d %d\0A255\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*)* @DumpPicture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DumpPicture(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 1
  %21 = sdiv i32 %20, 2
  store i32 %21, i32* %7, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  %26 = sdiv i32 %25, 2
  store i32 %26, i32* %8, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  %31 = and i32 %30, -2
  store i32 %31, i32* %9, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 8
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %10, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 7
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %11, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 6
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %12, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 5
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %13, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %45 = call i64 @WebPPictureHasTransparency(%struct.TYPE_4__* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  br label %52

51:                                               ; preds = %2
  br label %52

52:                                               ; preds = %51, %47
  %53 = phi i32 [ %50, %47 ], [ 0, %51 ]
  store i32 %53, i32* %14, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %56, %57
  %59 = load i32, i32* %14, align 4
  %60 = add nsw i32 %58, %59
  store i32 %60, i32* %15, align 4
  %61 = load i8*, i8** %5, align 8
  %62 = call i32* @WFOPEN(i8* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %62, i32** %16, align 8
  %63 = load i32*, i32** %16, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %176

66:                                               ; preds = %52
  %67 = load i32*, i32** %16, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %15, align 4
  %70 = call i32 @fprintf(i32* %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %69)
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %102, %66
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %105

77:                                               ; preds = %71
  %78 = load i32*, i32** %10, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32*, i32** %16, align 8
  %83 = call i32 @fwrite(i32* %78, i32 %81, i32 1, i32* %82)
  %84 = icmp ne i32 %83, 1
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  store i32 0, i32* %3, align 4
  br label %176

86:                                               ; preds = %77
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = and i32 %89, 1
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load i32*, i32** %16, align 8
  %94 = call i32 @fputc(i32 0, i32* %93)
  br label %95

95:                                               ; preds = %92, %86
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = load i32*, i32** %10, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  store i32* %101, i32** %10, align 8
  br label %102

102:                                              ; preds = %95
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %6, align 4
  br label %71

105:                                              ; preds = %71
  store i32 0, i32* %6, align 4
  br label %106

106:                                              ; preds = %137, %105
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %140

110:                                              ; preds = %106
  %111 = load i32*, i32** %11, align 8
  %112 = load i32, i32* %7, align 4
  %113 = load i32*, i32** %16, align 8
  %114 = call i32 @fwrite(i32* %111, i32 %112, i32 1, i32* %113)
  %115 = icmp ne i32 %114, 1
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  store i32 0, i32* %3, align 4
  br label %176

117:                                              ; preds = %110
  %118 = load i32*, i32** %12, align 8
  %119 = load i32, i32* %7, align 4
  %120 = load i32*, i32** %16, align 8
  %121 = call i32 @fwrite(i32* %118, i32 %119, i32 1, i32* %120)
  %122 = icmp ne i32 %121, 1
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  store i32 0, i32* %3, align 4
  br label %176

124:                                              ; preds = %117
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load i32*, i32** %11, align 8
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  store i32* %130, i32** %11, align 8
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** %12, align 8
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  store i32* %136, i32** %12, align 8
  br label %137

137:                                              ; preds = %124
  %138 = load i32, i32* %6, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %6, align 4
  br label %106

140:                                              ; preds = %106
  store i32 0, i32* %6, align 4
  br label %141

141:                                              ; preds = %170, %140
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* %14, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %173

145:                                              ; preds = %141
  %146 = load i32*, i32** %13, align 8
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32*, i32** %16, align 8
  %151 = call i32 @fwrite(i32* %146, i32 %149, i32 1, i32* %150)
  %152 = icmp ne i32 %151, 1
  br i1 %152, label %153, label %154

153:                                              ; preds = %145
  store i32 0, i32* %3, align 4
  br label %176

154:                                              ; preds = %145
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = and i32 %157, 1
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %154
  %161 = load i32*, i32** %16, align 8
  %162 = call i32 @fputc(i32 0, i32* %161)
  br label %163

163:                                              ; preds = %160, %154
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load i32*, i32** %13, align 8
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  store i32* %169, i32** %13, align 8
  br label %170

170:                                              ; preds = %163
  %171 = load i32, i32* %6, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %6, align 4
  br label %141

173:                                              ; preds = %141
  %174 = load i32*, i32** %16, align 8
  %175 = call i32 @fclose(i32* %174)
  store i32 1, i32* %3, align 4
  br label %176

176:                                              ; preds = %173, %153, %123, %116, %85, %65
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

declare dso_local i64 @WebPPictureHasTransparency(%struct.TYPE_4__*) #1

declare dso_local i32* @WFOPEN(i8*, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, i32, i32) #1

declare dso_local i32 @fwrite(i32*, i32, i32, i32*) #1

declare dso_local i32 @fputc(i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
