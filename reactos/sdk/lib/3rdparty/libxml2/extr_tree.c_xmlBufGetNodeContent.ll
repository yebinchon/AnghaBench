; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_tree.c_xmlBufGetNodeContent.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_tree.c_xmlBufGetNodeContent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_9__*, %struct.TYPE_9__*, i32, i32, i32*, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlBufGetNodeContent(i32* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %12 = icmp eq %struct.TYPE_9__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %2
  store i32 -1, i32* %3, align 4
  br label %214

17:                                               ; preds = %13
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %213 [
    i32 146, label %21
    i32 130, label %21
    i32 143, label %27
    i32 138, label %27
    i32 147, label %112
    i32 145, label %141
    i32 131, label %141
    i32 135, label %147
    i32 136, label %173
    i32 141, label %173
    i32 132, label %173
    i32 140, label %173
    i32 128, label %173
    i32 129, label %173
    i32 142, label %174
    i32 134, label %174
    i32 133, label %205
    i32 139, label %212
    i32 148, label %212
    i32 137, label %212
  ]

21:                                               ; preds = %17, %17
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 5
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @xmlBufCat(i32* %22, i32* %25)
  br label %213

27:                                               ; preds = %17, %17
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %6, align 8
  br label %29

29:                                               ; preds = %110, %80, %65, %27
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %31 = icmp ne %struct.TYPE_9__* %30, null
  br i1 %31, label %32, label %111

32:                                               ; preds = %29
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %52 [
    i32 146, label %36
    i32 130, label %36
    i32 135, label %48
  ]

36:                                               ; preds = %32, %32
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 5
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i32*, i32** %4, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 5
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @xmlBufCat(i32* %42, i32* %45)
  br label %47

47:                                               ; preds = %41, %36
  br label %53

48:                                               ; preds = %32
  %49 = load i32*, i32** %4, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %51 = call i32 @xmlBufGetNodeContent(i32* %49, %struct.TYPE_9__* %50)
  br label %53

52:                                               ; preds = %32
  br label %53

53:                                               ; preds = %52, %48, %47
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = icmp ne %struct.TYPE_9__* %56, null
  br i1 %57, label %58, label %70

58:                                               ; preds = %53
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 137
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  store %struct.TYPE_9__* %68, %struct.TYPE_9__** %6, align 8
  br label %29

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %69, %53
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %73 = icmp eq %struct.TYPE_9__* %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %111

75:                                               ; preds = %70
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = icmp ne %struct.TYPE_9__* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  store %struct.TYPE_9__* %83, %struct.TYPE_9__** %6, align 8
  br label %29

84:                                               ; preds = %75
  br label %85

85:                                               ; preds = %107, %84
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 6
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  store %struct.TYPE_9__* %88, %struct.TYPE_9__** %6, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %90 = icmp eq %struct.TYPE_9__* %89, null
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %110

92:                                               ; preds = %85
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %95 = icmp eq %struct.TYPE_9__* %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %6, align 8
  br label %110

97:                                               ; preds = %92
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = icmp ne %struct.TYPE_9__* %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  store %struct.TYPE_9__* %105, %struct.TYPE_9__** %6, align 8
  br label %110

106:                                              ; preds = %97
  br label %107

107:                                              ; preds = %106
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %109 = icmp ne %struct.TYPE_9__* %108, null
  br i1 %109, label %85, label %110

110:                                              ; preds = %107, %102, %96, %91
  br label %29

111:                                              ; preds = %74, %29
  br label %213

112:                                              ; preds = %17
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %114 = bitcast %struct.TYPE_9__* %113 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %114, %struct.TYPE_11__** %7, align 8
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %116, align 8
  store %struct.TYPE_9__* %117, %struct.TYPE_9__** %8, align 8
  br label %118

118:                                              ; preds = %136, %112
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %120 = icmp ne %struct.TYPE_9__* %119, null
  br i1 %120, label %121, label %140

121:                                              ; preds = %118
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp eq i32 %124, 130
  br i1 %125, label %126, label %132

126:                                              ; preds = %121
  %127 = load i32*, i32** %4, align 8
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 5
  %130 = load i32*, i32** %129, align 8
  %131 = call i32 @xmlBufCat(i32* %127, i32* %130)
  br label %136

132:                                              ; preds = %121
  %133 = load i32*, i32** %4, align 8
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %135 = call i32 @xmlBufGetNodeContent(i32* %133, %struct.TYPE_9__* %134)
  br label %136

136:                                              ; preds = %132, %126
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %138, align 8
  store %struct.TYPE_9__* %139, %struct.TYPE_9__** %8, align 8
  br label %118

140:                                              ; preds = %118
  br label %213

141:                                              ; preds = %17, %17
  %142 = load i32*, i32** %4, align 8
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 5
  %145 = load i32*, i32** %144, align 8
  %146 = call i32 @xmlBufCat(i32* %142, i32* %145)
  br label %213

147:                                              ; preds = %17
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = call %struct.TYPE_10__* @xmlGetDocEntity(i32 %150, i32 %153)
  store %struct.TYPE_10__* %154, %struct.TYPE_10__** %9, align 8
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %156 = icmp eq %struct.TYPE_10__* %155, null
  br i1 %156, label %157, label %158

157:                                              ; preds = %147
  store i32 -1, i32* %3, align 4
  br label %214

158:                                              ; preds = %147
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %160, align 8
  store %struct.TYPE_9__* %161, %struct.TYPE_9__** %10, align 8
  br label %162

162:                                              ; preds = %165, %158
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %164 = icmp ne %struct.TYPE_9__* %163, null
  br i1 %164, label %165, label %172

165:                                              ; preds = %162
  %166 = load i32*, i32** %4, align 8
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %168 = call i32 @xmlBufGetNodeContent(i32* %166, %struct.TYPE_9__* %167)
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %170, align 8
  store %struct.TYPE_9__* %171, %struct.TYPE_9__** %10, align 8
  br label %162

172:                                              ; preds = %162
  br label %213

173:                                              ; preds = %17, %17, %17, %17, %17, %17
  br label %213

174:                                              ; preds = %17, %17
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 2
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %176, align 8
  store %struct.TYPE_9__* %177, %struct.TYPE_9__** %5, align 8
  br label %178

178:                                              ; preds = %200, %174
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %180 = icmp ne %struct.TYPE_9__* %179, null
  br i1 %180, label %181, label %204

181:                                              ; preds = %178
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = icmp eq i32 %184, 138
  br i1 %185, label %196, label %186

186:                                              ; preds = %181
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = icmp eq i32 %189, 130
  br i1 %190, label %196, label %191

191:                                              ; preds = %186
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = icmp eq i32 %194, 146
  br i1 %195, label %196, label %200

196:                                              ; preds = %191, %186, %181
  %197 = load i32*, i32** %4, align 8
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %199 = call i32 @xmlBufGetNodeContent(i32* %197, %struct.TYPE_9__* %198)
  br label %200

200:                                              ; preds = %196, %191
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %202, align 8
  store %struct.TYPE_9__* %203, %struct.TYPE_9__** %5, align 8
  br label %178

204:                                              ; preds = %178
  br label %213

205:                                              ; preds = %17
  %206 = load i32*, i32** %4, align 8
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %208 = bitcast %struct.TYPE_9__* %207 to %struct.TYPE_8__*
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = call i32 @xmlBufCat(i32* %206, i32* %210)
  br label %213

212:                                              ; preds = %17, %17, %17
  br label %213

213:                                              ; preds = %17, %212, %205, %204, %173, %172, %141, %140, %111, %21
  store i32 0, i32* %3, align 4
  br label %214

214:                                              ; preds = %213, %157, %16
  %215 = load i32, i32* %3, align 4
  ret i32 %215
}

declare dso_local i32 @xmlBufCat(i32*, i32*) #1

declare dso_local %struct.TYPE_10__* @xmlGetDocEntity(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
