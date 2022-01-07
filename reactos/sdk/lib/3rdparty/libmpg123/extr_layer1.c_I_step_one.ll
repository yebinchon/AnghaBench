; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_layer1.c_I_step_one.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_layer1.c_I_step_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@SBLIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_5__*)* @I_step_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @I_step_one(i32* %0, i32* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  %13 = load i32, i32* @SBLIMIT, align 4
  %14 = zext i32 %13 to i64
  %15 = load i32*, i32** %5, align 8
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %6, align 8
  store i32* %16, i32** %9, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %124

21:                                               ; preds = %3
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %40, %21
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %25
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %31 = call i8* @getbits(%struct.TYPE_5__* %30, i32 4)
  %32 = ptrtoint i8* %31 to i32
  %33 = load i32*, i32** %8, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %8, align 8
  store i32 %32, i32* %33, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %36 = call i8* @getbits(%struct.TYPE_5__* %35, i32 4)
  %37 = ptrtoint i8* %36 to i32
  %38 = load i32*, i32** %8, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %8, align 8
  store i32 %37, i32* %38, align 4
  br label %40

40:                                               ; preds = %29
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  br label %25

43:                                               ; preds = %25
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %55, %43
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @SBLIMIT, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %51 = call i8* @getbits(%struct.TYPE_5__* %50, i32 4)
  %52 = ptrtoint i8* %51 to i32
  %53 = load i32*, i32** %8, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %8, align 8
  store i32 %52, i32* %53, align 4
  br label %55

55:                                               ; preds = %49
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  br label %45

58:                                               ; preds = %45
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = call i64 @check_balloc(%struct.TYPE_5__* %59, i32* %60, i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 -1, i32* %4, align 4
  br label %168

65:                                               ; preds = %58
  %66 = load i32*, i32** %5, align 8
  store i32* %66, i32** %8, align 8
  store i32 0, i32* %10, align 4
  br label %67

67:                                               ; preds = %94, %65
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %97

71:                                               ; preds = %67
  %72 = load i32*, i32** %8, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %8, align 8
  %74 = load i32, i32* %72, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %78 = call i8* @getbits(%struct.TYPE_5__* %77, i32 6)
  %79 = ptrtoint i8* %78 to i32
  %80 = load i32*, i32** %9, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %9, align 8
  store i32 %79, i32* %80, align 4
  br label %82

82:                                               ; preds = %76, %71
  %83 = load i32*, i32** %8, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %8, align 8
  %85 = load i32, i32* %83, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %89 = call i8* @getbits(%struct.TYPE_5__* %88, i32 6)
  %90 = ptrtoint i8* %89 to i32
  %91 = load i32*, i32** %9, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %9, align 8
  store i32 %90, i32* %91, align 4
  br label %93

93:                                               ; preds = %87, %82
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  br label %67

97:                                               ; preds = %67
  %98 = load i32, i32* %11, align 4
  store i32 %98, i32* %10, align 4
  br label %99

99:                                               ; preds = %120, %97
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @SBLIMIT, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %123

103:                                              ; preds = %99
  %104 = load i32*, i32** %8, align 8
  %105 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %105, i32** %8, align 8
  %106 = load i32, i32* %104, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %103
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %110 = call i8* @getbits(%struct.TYPE_5__* %109, i32 6)
  %111 = ptrtoint i8* %110 to i32
  %112 = load i32*, i32** %9, align 8
  %113 = getelementptr inbounds i32, i32* %112, i32 1
  store i32* %113, i32** %9, align 8
  store i32 %111, i32* %112, align 4
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %115 = call i8* @getbits(%struct.TYPE_5__* %114, i32 6)
  %116 = ptrtoint i8* %115 to i32
  %117 = load i32*, i32** %9, align 8
  %118 = getelementptr inbounds i32, i32* %117, i32 1
  store i32* %118, i32** %9, align 8
  store i32 %116, i32* %117, align 4
  br label %119

119:                                              ; preds = %108, %103
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %10, align 4
  br label %99

123:                                              ; preds = %99
  br label %167

124:                                              ; preds = %3
  store i32 0, i32* %12, align 4
  br label %125

125:                                              ; preds = %135, %124
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* @SBLIMIT, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %138

129:                                              ; preds = %125
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %131 = call i8* @getbits(%struct.TYPE_5__* %130, i32 4)
  %132 = ptrtoint i8* %131 to i32
  %133 = load i32*, i32** %8, align 8
  %134 = getelementptr inbounds i32, i32* %133, i32 1
  store i32* %134, i32** %8, align 8
  store i32 %132, i32* %133, align 4
  br label %135

135:                                              ; preds = %129
  %136 = load i32, i32* %12, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %12, align 4
  br label %125

138:                                              ; preds = %125
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %140 = load i32*, i32** %5, align 8
  %141 = load i32*, i32** %8, align 8
  %142 = call i64 @check_balloc(%struct.TYPE_5__* %139, i32* %140, i32* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  store i32 -1, i32* %4, align 4
  br label %168

145:                                              ; preds = %138
  %146 = load i32*, i32** %5, align 8
  store i32* %146, i32** %8, align 8
  store i32 0, i32* %12, align 4
  br label %147

147:                                              ; preds = %163, %145
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* @SBLIMIT, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %166

151:                                              ; preds = %147
  %152 = load i32*, i32** %8, align 8
  %153 = getelementptr inbounds i32, i32* %152, i32 1
  store i32* %153, i32** %8, align 8
  %154 = load i32, i32* %152, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %151
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %158 = call i8* @getbits(%struct.TYPE_5__* %157, i32 6)
  %159 = ptrtoint i8* %158 to i32
  %160 = load i32*, i32** %9, align 8
  %161 = getelementptr inbounds i32, i32* %160, i32 1
  store i32* %161, i32** %9, align 8
  store i32 %159, i32* %160, align 4
  br label %162

162:                                              ; preds = %156, %151
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %12, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %12, align 4
  br label %147

166:                                              ; preds = %147
  br label %167

167:                                              ; preds = %166, %123
  store i32 0, i32* %4, align 4
  br label %168

168:                                              ; preds = %167, %144, %64
  %169 = load i32, i32* %4, align 4
  ret i32 %169
}

declare dso_local i8* @getbits(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @check_balloc(%struct.TYPE_5__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
