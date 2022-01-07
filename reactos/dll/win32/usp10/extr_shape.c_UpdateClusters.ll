; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_UpdateClusters.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_UpdateClusters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"Unable to find target glyph\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32*)* @UpdateClusters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UpdateClusters(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  br label %179

20:                                               ; preds = %5
  %21 = load i32*, i32** %10, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %23, %29
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 1, i32 -1
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %8, align 4
  %35 = sub nsw i32 %33, %34
  store i32 %35, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %20
  %39 = load i32, i32* %8, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = sub nsw i32 %42, %43
  store i32 %44, i32* %13, align 4
  br label %50

45:                                               ; preds = %38
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  %49 = add nsw i32 %46, %48
  store i32 %49, i32* %13, align 4
  br label %50

50:                                               ; preds = %45, %41
  br label %51

51:                                               ; preds = %50, %20
  %52 = load i32*, i32** %10, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @USP10_FindGlyphInLogClust(i32* %52, i32 %53, i32 %54)
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = call i32 @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %179

60:                                               ; preds = %51
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %154

63:                                               ; preds = %60
  %64 = load i32, i32* %14, align 4
  store i32 %64, i32* %12, align 4
  br label %65

65:                                               ; preds = %117, %63
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32, i32* %12, align 4
  %71 = icmp sge i32 %70, 0
  br label %72

72:                                               ; preds = %69, %65
  %73 = phi i1 [ false, %65 ], [ %71, %69 ]
  br i1 %73, label %74, label %121

74:                                               ; preds = %72
  %75 = load i32*, i32** %10, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %117

83:                                               ; preds = %74
  %84 = load i32*, i32** %10, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %15, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %83
  %92 = load i32, i32* %13, align 4
  %93 = load i32*, i32** %10, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 %92, i32* %96, align 4
  br label %116

97:                                               ; preds = %83
  %98 = load i32, i32* %16, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %16, align 4
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp sge i32 %100, %101
  br i1 %102, label %103, label %114

103:                                              ; preds = %97
  %104 = load i32*, i32** %10, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %15, align 4
  %109 = load i32, i32* %13, align 4
  %110 = load i32*, i32** %10, align 8
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 %109, i32* %113, align 4
  br label %115

114:                                              ; preds = %97
  br label %121

115:                                              ; preds = %103
  br label %116

116:                                              ; preds = %115, %91
  br label %117

117:                                              ; preds = %116, %82
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %12, align 4
  %120 = add nsw i32 %119, %118
  store i32 %120, i32* %12, align 4
  br label %65

121:                                              ; preds = %114, %72
  %122 = load i32, i32* %14, align 4
  store i32 %122, i32* %12, align 4
  br label %123

123:                                              ; preds = %149, %121
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %9, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load i32, i32* %12, align 4
  %129 = icmp sge i32 %128, 0
  br label %130

130:                                              ; preds = %127, %123
  %131 = phi i1 [ false, %123 ], [ %129, %127 ]
  br i1 %131, label %132, label %153

132:                                              ; preds = %130
  %133 = load i32*, i32** %10, align 8
  %134 = load i32, i32* %12, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %13, align 4
  %139 = icmp ne i32 %137, %138
  br i1 %139, label %140, label %148

140:                                              ; preds = %132
  %141 = load i32, i32* %7, align 4
  %142 = load i32*, i32** %10, align 8
  %143 = load i32, i32* %12, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, %141
  store i32 %147, i32* %145, align 4
  br label %148

148:                                              ; preds = %140, %132
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* %12, align 4
  %152 = add nsw i32 %151, %150
  store i32 %152, i32* %12, align 4
  br label %123

153:                                              ; preds = %130
  br label %178

154:                                              ; preds = %60
  %155 = load i32, i32* %14, align 4
  store i32 %155, i32* %12, align 4
  br label %156

156:                                              ; preds = %173, %154
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* %9, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %156
  %161 = load i32, i32* %12, align 4
  %162 = icmp sge i32 %161, 0
  br label %163

163:                                              ; preds = %160, %156
  %164 = phi i1 [ false, %156 ], [ %162, %160 ]
  br i1 %164, label %165, label %177

165:                                              ; preds = %163
  %166 = load i32, i32* %7, align 4
  %167 = load i32*, i32** %10, align 8
  %168 = load i32, i32* %12, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, %166
  store i32 %172, i32* %170, align 4
  br label %173

173:                                              ; preds = %165
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* %12, align 4
  %176 = add nsw i32 %175, %174
  store i32 %176, i32* %12, align 4
  br label %156

177:                                              ; preds = %163
  br label %178

178:                                              ; preds = %177, %153
  br label %179

179:                                              ; preds = %19, %58, %178
  ret void
}

declare dso_local i32 @USP10_FindGlyphInLogClust(i32*, i32, i32) #1

declare dso_local i32 @ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
