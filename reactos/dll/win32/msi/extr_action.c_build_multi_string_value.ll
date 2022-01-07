; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_build_multi_string_value.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_build_multi_string_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JOIN_OP_REPLACE = common dso_local global i32 0, align 4
@JOIN_OP_APPEND = common dso_local global i32 0, align 4
@JOIN_OP_PREPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i32*, i32, i32*)* @build_multi_string_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @build_multi_string_value(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*********, align 8
  %17 = alloca i32*********, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32**********, align 8
  %20 = alloca i32**********, align 8
  %21 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32********* null, i32********** %16, align 8
  store i32********* null, i32********** %17, align 8
  %22 = load i32, i32* @JOIN_OP_REPLACE, align 4
  store i32 %22, i32* %18, align 4
  store i32********** null, i32*********** %19, align 8
  store i32********** null, i32*********** %20, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = udiv i64 %24, 8
  %26 = sub i64 %25, 1
  %27 = icmp ugt i64 %26, 1
  br i1 %27, label %28, label %100

28:                                               ; preds = %5
  %29 = load i32*, i32** %8, align 8
  %30 = bitcast i32* %29 to i32*********
  store i32********* %30, i32********** %16, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = udiv i64 %32, 8
  %34 = sub i64 %33, 1
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %13, align 4
  %36 = load i32*********, i32********** %16, align 8
  %37 = getelementptr inbounds i32********, i32********* %36, i64 0
  %38 = load i32********, i32********* %37, align 8
  %39 = icmp ne i32******** %38, null
  br i1 %39, label %54, label %40

40:                                               ; preds = %28
  %41 = load i32*********, i32********** %16, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32********, i32********* %41, i64 %44
  %46 = load i32********, i32********* %45, align 8
  %47 = icmp ne i32******** %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = load i32, i32* @JOIN_OP_APPEND, align 4
  store i32 %49, i32* %18, align 4
  %50 = load i32, i32* %13, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %13, align 4
  %52 = load i32*********, i32********** %16, align 8
  %53 = getelementptr inbounds i32********, i32********* %52, i32 1
  store i32********* %53, i32********** %16, align 8
  br label %95

54:                                               ; preds = %40, %28
  %55 = load i32*********, i32********** %16, align 8
  %56 = getelementptr inbounds i32********, i32********* %55, i64 0
  %57 = load i32********, i32********* %56, align 8
  %58 = icmp ne i32******** %57, null
  br i1 %58, label %59, label %71

59:                                               ; preds = %54
  %60 = load i32*********, i32********** %16, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32********, i32********* %60, i64 %63
  %65 = load i32********, i32********* %64, align 8
  %66 = icmp ne i32******** %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %59
  %68 = load i32, i32* @JOIN_OP_PREPEND, align 4
  store i32 %68, i32* %18, align 4
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %13, align 4
  br label %94

71:                                               ; preds = %59, %54
  %72 = load i32, i32* %13, align 4
  %73 = icmp sgt i32 %72, 2
  br i1 %73, label %74, label %93

74:                                               ; preds = %71
  %75 = load i32*********, i32********** %16, align 8
  %76 = getelementptr inbounds i32********, i32********* %75, i64 0
  %77 = load i32********, i32********* %76, align 8
  %78 = icmp ne i32******** %77, null
  br i1 %78, label %93, label %79

79:                                               ; preds = %74
  %80 = load i32*********, i32********** %16, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32********, i32********* %80, i64 %83
  %85 = load i32********, i32********* %84, align 8
  %86 = icmp ne i32******** %85, null
  br i1 %86, label %93, label %87

87:                                               ; preds = %79
  %88 = load i32, i32* @JOIN_OP_REPLACE, align 4
  store i32 %88, i32* %18, align 4
  %89 = load i32, i32* %13, align 4
  %90 = sub nsw i32 %89, 2
  store i32 %90, i32* %13, align 4
  %91 = load i32*********, i32********** %16, align 8
  %92 = getelementptr inbounds i32********, i32********* %91, i32 1
  store i32********* %92, i32********** %16, align 8
  br label %93

93:                                               ; preds = %87, %79, %74, %71
  br label %94

94:                                               ; preds = %93, %67
  br label %95

95:                                               ; preds = %94, %48
  %96 = load i32*********, i32********** %16, align 8
  %97 = load i32, i32* %13, align 4
  %98 = call i32************** @split_multi_string_values(i32********* %96, i32 %97, i32* %15)
  %99 = bitcast i32************** %98 to i32**********
  store i32********** %99, i32*********** %20, align 8
  br label %100

100:                                              ; preds = %95, %5
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = udiv i64 %102, 8
  %104 = sub i64 %103, 1
  %105 = icmp ugt i64 %104, 1
  br i1 %105, label %106, label %118

106:                                              ; preds = %100
  %107 = load i32*, i32** %6, align 8
  %108 = bitcast i32* %107 to i32*********
  store i32********* %108, i32********** %17, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = udiv i64 %110, 8
  %112 = sub i64 %111, 1
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %12, align 4
  %114 = load i32*********, i32********** %17, align 8
  %115 = load i32, i32* %12, align 4
  %116 = call i32************** @split_multi_string_values(i32********* %114, i32 %115, i32* %14)
  %117 = bitcast i32************** %116 to i32**********
  store i32********** %117, i32*********** %19, align 8
  br label %118

118:                                              ; preds = %106, %100
  %119 = load i32, i32* %18, align 4
  %120 = load i32**********, i32*********** %19, align 8
  %121 = load i32, i32* %14, align 4
  %122 = load i32**********, i32*********** %20, align 8
  %123 = load i32, i32* %15, align 4
  %124 = load i32*, i32** %10, align 8
  %125 = call i64 @join_multi_string_values(i32 %119, i32********** %120, i32 %121, i32********** %122, i32 %123, i32* %124)
  %126 = inttoptr i64 %125 to i32*
  store i32* %126, i32** %21, align 8
  store i32 0, i32* %11, align 4
  br label %127

127:                                              ; preds = %139, %118
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* %14, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %142

131:                                              ; preds = %127
  %132 = load i32**********, i32*********** %19, align 8
  %133 = load i32, i32* %11, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32*********, i32********** %132, i64 %134
  %136 = load i32*********, i32********** %135, align 8
  %137 = bitcast i32********* %136 to i32**********
  %138 = call i32 @msi_free(i32********** %137)
  br label %139

139:                                              ; preds = %131
  %140 = load i32, i32* %11, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %11, align 4
  br label %127

142:                                              ; preds = %127
  store i32 0, i32* %11, align 4
  br label %143

143:                                              ; preds = %155, %142
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* %15, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %158

147:                                              ; preds = %143
  %148 = load i32**********, i32*********** %20, align 8
  %149 = load i32, i32* %11, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32*********, i32********** %148, i64 %150
  %152 = load i32*********, i32********** %151, align 8
  %153 = bitcast i32********* %152 to i32**********
  %154 = call i32 @msi_free(i32********** %153)
  br label %155

155:                                              ; preds = %147
  %156 = load i32, i32* %11, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %11, align 4
  br label %143

158:                                              ; preds = %143
  %159 = load i32**********, i32*********** %19, align 8
  %160 = call i32 @msi_free(i32********** %159)
  %161 = load i32**********, i32*********** %20, align 8
  %162 = call i32 @msi_free(i32********** %161)
  %163 = load i32*, i32** %21, align 8
  ret i32* %163
}

declare dso_local i32************** @split_multi_string_values(i32*********, i32, i32*) #1

declare dso_local i64 @join_multi_string_values(i32, i32**********, i32, i32**********, i32, i32*) #1

declare dso_local i32 @msi_free(i32**********) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
