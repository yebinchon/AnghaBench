; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_convertbmp.c_bmp_read_rle4_data.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_convertbmp.c_bmp_read_rle4_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOF = common dso_local global i32 0, align 4
@OPJ_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32)* @bmp_read_rle4_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmp_read_rle4_data(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %10, align 4
  %23 = mul nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %20, i64 %24
  store i32* %25, i32** %14, align 8
  %26 = load i32*, i32** %7, align 8
  store i32* %26, i32** %13, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %188, %5
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %189

31:                                               ; preds = %27
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @getc(i32* %32)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* @EOF, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %189

38:                                               ; preds = %31
  %39 = load i32, i32* %15, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %82

41:                                               ; preds = %38
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @getc(i32* %42)
  store i32 %43, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %44

44:                                               ; preds = %74, %41
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* %15, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %44
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load i32*, i32** %13, align 8
  %54 = ptrtoint i32* %53 to i64
  %55 = load i32*, i32** %14, align 8
  %56 = ptrtoint i32* %55 to i64
  %57 = icmp slt i64 %54, %56
  br label %58

58:                                               ; preds = %52, %48, %44
  %59 = phi i1 [ false, %48 ], [ false, %44 ], [ %57, %52 ]
  br i1 %59, label %60, label %81

60:                                               ; preds = %58
  %61 = load i32, i32* %16, align 4
  %62 = and i32 %61, 1
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32, i32* %17, align 4
  %66 = and i32 %65, 15
  br label %71

67:                                               ; preds = %60
  %68 = load i32, i32* %17, align 4
  %69 = ashr i32 %68, 4
  %70 = and i32 %69, 15
  br label %71

71:                                               ; preds = %67, %64
  %72 = phi i32 [ %66, %64 ], [ %70, %67 ]
  %73 = load i32*, i32** %13, align 8
  store i32 %72, i32* %73, align 4
  br label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %16, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %11, align 4
  %79 = load i32*, i32** %13, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %13, align 8
  br label %44

81:                                               ; preds = %58
  br label %188

82:                                               ; preds = %38
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @getc(i32* %83)
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* @EOF, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %189

89:                                               ; preds = %82
  %90 = load i32, i32* %15, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %89
  store i32 0, i32* %11, align 4
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %12, align 4
  %95 = load i32*, i32** %7, align 8
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %8, align 4
  %98 = mul nsw i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %95, i64 %99
  store i32* %100, i32** %13, align 8
  br label %187

101:                                              ; preds = %89
  %102 = load i32, i32* %15, align 4
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  br label %189

105:                                              ; preds = %101
  %106 = load i32, i32* %15, align 4
  %107 = icmp eq i32 %106, 2
  br i1 %107, label %108, label %128

108:                                              ; preds = %105
  %109 = load i32*, i32** %6, align 8
  %110 = call i32 @getc(i32* %109)
  store i32 %110, i32* %15, align 4
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* %11, align 4
  %114 = load i32*, i32** %6, align 8
  %115 = call i32 @getc(i32* %114)
  store i32 %115, i32* %15, align 4
  %116 = load i32, i32* %15, align 4
  %117 = load i32, i32* %12, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %12, align 4
  %119 = load i32*, i32** %7, align 8
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* %8, align 4
  %122 = mul nsw i32 %120, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %119, i64 %123
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32* %127, i32** %13, align 8
  br label %185

128:                                              ; preds = %105
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %129

129:                                              ; preds = %166, %128
  %130 = load i32, i32* %18, align 4
  %131 = load i32, i32* %15, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %143

133:                                              ; preds = %129
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* %9, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %133
  %138 = load i32*, i32** %13, align 8
  %139 = ptrtoint i32* %138 to i64
  %140 = load i32*, i32** %14, align 8
  %141 = ptrtoint i32* %140 to i64
  %142 = icmp slt i64 %139, %141
  br label %143

143:                                              ; preds = %137, %133, %129
  %144 = phi i1 [ false, %133 ], [ false, %129 ], [ %142, %137 ]
  br i1 %144, label %145, label %173

145:                                              ; preds = %143
  %146 = load i32, i32* %18, align 4
  %147 = and i32 %146, 1
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %145
  %150 = load i32*, i32** %6, align 8
  %151 = call i32 @getc(i32* %150)
  store i32 %151, i32* %19, align 4
  br label %152

152:                                              ; preds = %149, %145
  %153 = load i32, i32* %18, align 4
  %154 = and i32 %153, 1
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %152
  %157 = load i32, i32* %19, align 4
  %158 = and i32 %157, 15
  br label %163

159:                                              ; preds = %152
  %160 = load i32, i32* %19, align 4
  %161 = ashr i32 %160, 4
  %162 = and i32 %161, 15
  br label %163

163:                                              ; preds = %159, %156
  %164 = phi i32 [ %158, %156 ], [ %162, %159 ]
  %165 = load i32*, i32** %13, align 8
  store i32 %164, i32* %165, align 4
  br label %166

166:                                              ; preds = %163
  %167 = load i32, i32* %18, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %18, align 4
  %169 = load i32, i32* %11, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %11, align 4
  %171 = load i32*, i32** %13, align 8
  %172 = getelementptr inbounds i32, i32* %171, i32 1
  store i32* %172, i32** %13, align 8
  br label %129

173:                                              ; preds = %143
  %174 = load i32, i32* %15, align 4
  %175 = and i32 %174, 3
  %176 = icmp eq i32 %175, 1
  br i1 %176, label %181, label %177

177:                                              ; preds = %173
  %178 = load i32, i32* %15, align 4
  %179 = and i32 %178, 3
  %180 = icmp eq i32 %179, 2
  br i1 %180, label %181, label %184

181:                                              ; preds = %177, %173
  %182 = load i32*, i32** %6, align 8
  %183 = call i32 @getc(i32* %182)
  br label %184

184:                                              ; preds = %181, %177
  br label %185

185:                                              ; preds = %184, %108
  br label %186

186:                                              ; preds = %185
  br label %187

187:                                              ; preds = %186, %92
  br label %188

188:                                              ; preds = %187, %81
  br label %27

189:                                              ; preds = %104, %88, %37, %27
  %190 = load i32, i32* @OPJ_TRUE, align 4
  ret i32 %190
}

declare dso_local i32 @getc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
