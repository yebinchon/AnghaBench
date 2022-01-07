; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_txtrange.c_move_prev_char.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_txtrange.c_move_prev_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }

@brW = common dso_local global i32 0, align 4
@hrW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.TYPE_6__*)* @move_prev_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @move_prev_char(%struct.TYPE_6__* %0) #0 {
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

11:                                               ; preds = %165, %1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %164 [
    i32 128, label %15
    i32 129, label %101
  ]

15:                                               ; preds = %11
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %164

21:                                               ; preds = %15
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @get_text_node_data(i32 %24, i32* %9, i8** %8)
  %26 = load i8*, i8** %8, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %26, i64 %30
  %32 = getelementptr inbounds i8, i8* %31, i64 -1
  store i8* %32, i8** %7, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %10, align 1
  %35 = load i8, i8* %10, align 1
  %36 = call i32 @isspaceW(i8 signext %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %83

38:                                               ; preds = %21
  br label %39

39:                                               ; preds = %51, %38
  %40 = load i8*, i8** %7, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = icmp ugt i8* %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 -1
  %46 = load i8, i8* %45, align 1
  %47 = call i32 @isspaceW(i8 signext %46)
  %48 = icmp ne i32 %47, 0
  br label %49

49:                                               ; preds = %43, %39
  %50 = phi i1 [ false, %39 ], [ %48, %43 ]
  br i1 %50, label %51, label %54

51:                                               ; preds = %49
  %52 = load i8*, i8** %7, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 -1
  store i8* %53, i8** %7, align 8
  br label %39

54:                                               ; preds = %49
  %55 = load i8, i8* %6, align 1
  %56 = icmp ne i8 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = call i32 @free_rangepoint(%struct.TYPE_6__* %4)
  br label %60

59:                                               ; preds = %54
  store i8 32, i8* %6, align 1
  br label %60

60:                                               ; preds = %59, %57
  %61 = load i8*, i8** %7, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = ptrtoint i8* %61 to i64
  %64 = ptrtoint i8* %62 to i64
  %65 = sub i64 %63, %64
  %66 = trunc i64 %65 to i32
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = call i32 @nsAString_Finish(i32* %9)
  %70 = load i8*, i8** %7, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = icmp eq i8* %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %60
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @init_rangepoint(%struct.TYPE_6__* %4, i32 %76, i32 %79)
  br label %164

81:                                               ; preds = %60
  %82 = load i8, i8* %6, align 1
  store i8 %82, i8* %2, align 1
  br label %180

83:                                               ; preds = %21
  %84 = call i32 @nsAString_Finish(i32* %9)
  br label %85

85:                                               ; preds = %83
  %86 = load i8, i8* %6, align 1
  %87 = icmp ne i8 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %90 = call i32 @free_rangepoint(%struct.TYPE_6__* %89)
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %92 = bitcast %struct.TYPE_6__* %91 to i8*
  %93 = bitcast %struct.TYPE_6__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %92, i8* align 4 %93, i64 12, i1 false)
  %94 = load i8, i8* %6, align 1
  store i8 %94, i8* %2, align 1
  br label %180

95:                                               ; preds = %85
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %97, align 4
  %100 = load i8, i8* %10, align 1
  store i8 %100, i8* %2, align 1
  br label %180

101:                                              ; preds = %11
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %101
  br label %164

107:                                              ; preds = %101
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = sub nsw i32 %113, 1
  %115 = call i32* @get_child_node(i32 %110, i32 %114)
  store i32* %115, i32** %5, align 8
  %116 = load i32*, i32** %5, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %107
  br label %164

119:                                              ; preds = %107
  %120 = load i32*, i32** %5, align 8
  %121 = load i32, i32* @brW, align 4
  %122 = call i32 @is_elem_tag(i32* %120, i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %138

124:                                              ; preds = %119
  %125 = load i8, i8* %6, align 1
  %126 = icmp ne i8 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = call i32 @free_rangepoint(%struct.TYPE_6__* %4)
  br label %129

129:                                              ; preds = %127, %124
  store i8 10, i8* %6, align 1
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = sub nsw i32 %135, 1
  %137 = call i32 @init_rangepoint(%struct.TYPE_6__* %4, i32 %132, i32 %136)
  br label %161

138:                                              ; preds = %119
  %139 = load i32*, i32** %5, align 8
  %140 = load i32, i32* @hrW, align 4
  %141 = call i32 @is_elem_tag(i32* %139, i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %160

143:                                              ; preds = %138
  %144 = load i32*, i32** %5, align 8
  %145 = call i32 @nsIDOMNode_Release(i32* %144)
  %146 = load i8, i8* %6, align 1
  %147 = icmp ne i8 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %143
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %150 = call i32 @free_rangepoint(%struct.TYPE_6__* %149)
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %152 = bitcast %struct.TYPE_6__* %151 to i8*
  %153 = bitcast %struct.TYPE_6__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %152, i8* align 4 %153, i64 12, i1 false)
  %154 = load i8, i8* %6, align 1
  store i8 %154, i8* %2, align 1
  br label %180

155:                                              ; preds = %143
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, -1
  store i32 %159, i32* %157, align 4
  store i8 10, i8* %2, align 1
  br label %180

160:                                              ; preds = %138
  br label %161

161:                                              ; preds = %160, %129
  %162 = load i32*, i32** %5, align 8
  %163 = call i32 @nsIDOMNode_Release(i32* %162)
  br label %164

164:                                              ; preds = %161, %11, %118, %106, %73, %20
  br label %165

165:                                              ; preds = %164
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %167 = call i64 @rangepoint_prev_node(%struct.TYPE_6__* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %11, label %169

169:                                              ; preds = %165
  %170 = load i8, i8* %6, align 1
  %171 = icmp ne i8 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %169
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %174 = call i32 @free_rangepoint(%struct.TYPE_6__* %173)
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %176 = bitcast %struct.TYPE_6__* %175 to i8*
  %177 = bitcast %struct.TYPE_6__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %176, i8* align 4 %177, i64 12, i1 false)
  %178 = load i8, i8* %6, align 1
  store i8 %178, i8* %2, align 1
  br label %180

179:                                              ; preds = %169
  store i8 0, i8* %2, align 1
  br label %180

180:                                              ; preds = %179, %172, %155, %148, %95, %88, %81
  %181 = load i8, i8* %2, align 1
  ret i8 %181
}

declare dso_local i32 @get_text_node_data(i32, i32*, i8**) #1

declare dso_local i32 @isspaceW(i8 signext) #1

declare dso_local i32 @free_rangepoint(%struct.TYPE_6__*) #1

declare dso_local i32 @nsAString_Finish(i32*) #1

declare dso_local i32 @init_rangepoint(%struct.TYPE_6__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @get_child_node(i32, i32) #1

declare dso_local i32 @is_elem_tag(i32*, i32) #1

declare dso_local i32 @nsIDOMNode_Release(i32*) #1

declare dso_local i64 @rangepoint_prev_node(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
