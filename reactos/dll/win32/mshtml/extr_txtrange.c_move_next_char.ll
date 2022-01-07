; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_txtrange.c_move_next_char.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_txtrange.c_move_next_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }

@brW = common dso_local global i32 0, align 4
@hrW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.TYPE_6__*)* @move_next_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @move_next_char(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_6__, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i8 0, i8* %6, align 1
  br label %11

11:                                               ; preds = %158, %1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %157 [
    i32 128, label %15
    i32 129, label %94
  ]

15:                                               ; preds = %11
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @get_text_node_data(i32 %18, i32* %9, i8** %8)
  %20 = load i8*, i8** %8, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %20, i64 %24
  store i8* %25, i8** %7, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i8, i8* %26, align 1
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %15
  %30 = call i32 @nsAString_Finish(i32* %9)
  br label %157

31:                                               ; preds = %15
  %32 = load i8*, i8** %7, align 8
  %33 = load i8, i8* %32, align 1
  store i8 %33, i8* %10, align 1
  %34 = load i8, i8* %10, align 1
  %35 = call i32 @isspaceW(i8 signext %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %76

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %43, %37
  %39 = load i8*, i8** %7, align 8
  %40 = load i8, i8* %39, align 1
  %41 = call i32 @isspaceW(i8 signext %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %7, align 8
  br label %38

46:                                               ; preds = %38
  %47 = load i8, i8* %6, align 1
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = call i32 @free_rangepoint(%struct.TYPE_6__* %4)
  br label %52

51:                                               ; preds = %46
  store i8 32, i8* %6, align 1
  br label %52

52:                                               ; preds = %51, %49
  %53 = load i8*, i8** %7, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = ptrtoint i8* %53 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = trunc i64 %57 to i32
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load i8*, i8** %7, align 8
  %62 = load i8, i8* %61, align 1
  store i8 %62, i8* %10, align 1
  %63 = call i32 @nsAString_Finish(i32* %9)
  %64 = load i8, i8* %10, align 1
  %65 = icmp ne i8 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %52
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @init_rangepoint(%struct.TYPE_6__* %4, i32 %69, i32 %72)
  br label %157

74:                                               ; preds = %52
  %75 = load i8, i8* %6, align 1
  store i8 %75, i8* %2, align 1
  br label %164

76:                                               ; preds = %31
  %77 = call i32 @nsAString_Finish(i32* %9)
  br label %78

78:                                               ; preds = %76
  %79 = load i8, i8* %6, align 1
  %80 = icmp ne i8 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %78
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %83 = call i32 @free_rangepoint(%struct.TYPE_6__* %82)
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %85 = bitcast %struct.TYPE_6__* %84 to i8*
  %86 = bitcast %struct.TYPE_6__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %85, i8* align 4 %86, i64 12, i1 false)
  %87 = load i8, i8* %6, align 1
  store i8 %87, i8* %2, align 1
  br label %164

88:                                               ; preds = %78
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  %93 = load i8, i8* %10, align 1
  store i8 %93, i8* %2, align 1
  br label %164

94:                                               ; preds = %11
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32* @get_child_node(i32 %97, i32 %100)
  store i32* %101, i32** %5, align 8
  %102 = load i32*, i32** %5, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %94
  br label %157

105:                                              ; preds = %94
  %106 = load i32*, i32** %5, align 8
  %107 = load i32, i32* @brW, align 4
  %108 = call i32 @is_elem_tag(i32* %106, i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %131

110:                                              ; preds = %105
  %111 = load i8, i8* %6, align 1
  %112 = icmp ne i8 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %110
  %114 = load i32*, i32** %5, align 8
  %115 = call i32 @nsIDOMNode_Release(i32* %114)
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %117 = call i32 @free_rangepoint(%struct.TYPE_6__* %116)
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %119 = bitcast %struct.TYPE_6__* %118 to i8*
  %120 = bitcast %struct.TYPE_6__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %119, i8* align 4 %120, i64 12, i1 false)
  %121 = load i8, i8* %6, align 1
  store i8 %121, i8* %2, align 1
  br label %164

122:                                              ; preds = %110
  store i8 10, i8* %6, align 1
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, 1
  %130 = call i32 @init_rangepoint(%struct.TYPE_6__* %4, i32 %125, i32 %129)
  br label %154

131:                                              ; preds = %105
  %132 = load i32*, i32** %5, align 8
  %133 = load i32, i32* @hrW, align 4
  %134 = call i32 @is_elem_tag(i32* %132, i32 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %153

136:                                              ; preds = %131
  %137 = load i32*, i32** %5, align 8
  %138 = call i32 @nsIDOMNode_Release(i32* %137)
  %139 = load i8, i8* %6, align 1
  %140 = icmp ne i8 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %136
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %143 = call i32 @free_rangepoint(%struct.TYPE_6__* %142)
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %145 = bitcast %struct.TYPE_6__* %144 to i8*
  %146 = bitcast %struct.TYPE_6__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %145, i8* align 4 %146, i64 12, i1 false)
  %147 = load i8, i8* %6, align 1
  store i8 %147, i8* %2, align 1
  br label %164

148:                                              ; preds = %136
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 4
  store i8 10, i8* %2, align 1
  br label %164

153:                                              ; preds = %131
  br label %154

154:                                              ; preds = %153, %122
  %155 = load i32*, i32** %5, align 8
  %156 = call i32 @nsIDOMNode_Release(i32* %155)
  br label %157

157:                                              ; preds = %154, %11, %104, %66, %29
  br label %158

158:                                              ; preds = %157
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %160 = call i64 @rangepoint_next_node(%struct.TYPE_6__* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %11, label %162

162:                                              ; preds = %158
  %163 = load i8, i8* %6, align 1
  store i8 %163, i8* %2, align 1
  br label %164

164:                                              ; preds = %162, %148, %141, %113, %88, %81, %74
  %165 = load i8, i8* %2, align 1
  ret i8 %165
}

declare dso_local i32 @get_text_node_data(i32, i32*, i8**) #1

declare dso_local i32 @nsAString_Finish(i32*) #1

declare dso_local i32 @isspaceW(i8 signext) #1

declare dso_local i32 @free_rangepoint(%struct.TYPE_6__*) #1

declare dso_local i32 @init_rangepoint(%struct.TYPE_6__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @get_child_node(i32, i32) #1

declare dso_local i32 @is_elem_tag(i32*, i32) #1

declare dso_local i32 @nsIDOMNode_Release(i32*) #1

declare dso_local i64 @rangepoint_next_node(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
