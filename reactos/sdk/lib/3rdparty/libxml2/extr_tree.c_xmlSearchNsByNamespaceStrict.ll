; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_tree.c_xmlSearchNsByNamespaceStrict.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_tree.c_xmlSearchNsByNamespaceStrict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_9__*, %struct.TYPE_8__*, i32* }
%struct.TYPE_8__ = type { i32*, i32*, %struct.TYPE_8__* }

@XML_NAMESPACE_DECL = common dso_local global i64 0, align 8
@XML_XML_NAMESPACE = common dso_local global i32* null, align 8
@XML_ELEMENT_NODE = common dso_local global i64 0, align 8
@XML_ENTITY_NODE = common dso_local global i64 0, align 8
@XML_ENTITY_DECL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__*, i32*, %struct.TYPE_8__**, i32)* @xmlSearchNsByNamespaceStrict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xmlSearchNsByNamespaceStrict(i32* %0, %struct.TYPE_9__* %1, i32* %2, %struct.TYPE_8__** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_8__**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_8__** %3, %struct.TYPE_8__*** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %14, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %5
  %21 = load i32*, i32** %9, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  %25 = icmp eq %struct.TYPE_8__** %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %20, %5
  store i32 -1, i32* %6, align 4
  br label %203

27:                                               ; preds = %23
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %29 = icmp eq %struct.TYPE_9__* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @XML_NAMESPACE_DECL, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30, %27
  store i32 -1, i32* %6, align 4
  br label %203

37:                                               ; preds = %30
  %38 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %38, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = load i32*, i32** @XML_XML_NAMESPACE, align 8
  %41 = call i64 @xmlStrEqual(i32* %39, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load i32*, i32** %7, align 8
  %45 = call %struct.TYPE_8__* @xmlTreeEnsureXMLDecl(i32* %44)
  %46 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  store %struct.TYPE_8__* %45, %struct.TYPE_8__** %46, align 8
  %47 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = icmp eq %struct.TYPE_8__* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store i32 -1, i32* %6, align 4
  br label %203

51:                                               ; preds = %43
  store i32 1, i32* %6, align 4
  br label %203

52:                                               ; preds = %37
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %53, %struct.TYPE_9__** %12, align 8
  br label %54

54:                                               ; preds = %200, %52
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @XML_ELEMENT_NODE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %172

60:                                               ; preds = %54
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = icmp ne %struct.TYPE_8__* %63, null
  br i1 %64, label %65, label %171

65:                                               ; preds = %60
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  store %struct.TYPE_8__* %68, %struct.TYPE_8__** %15, align 8
  br label %69

69:                                               ; preds = %164, %65
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %71 = icmp ne %struct.TYPE_8__* %70, null
  br i1 %71, label %72, label %168

72:                                               ; preds = %69
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %164

81:                                               ; preds = %75, %72
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %83 = icmp ne %struct.TYPE_9__* %82, null
  br i1 %83, label %84, label %128

84:                                               ; preds = %81
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  store %struct.TYPE_8__* %87, %struct.TYPE_8__** %16, align 8
  br label %88

88:                                               ; preds = %120, %84
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = icmp eq i32* %91, %94
  br i1 %95, label %115, label %96

96:                                               ; preds = %88
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %116

101:                                              ; preds = %96
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %116

106:                                              ; preds = %101
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = call i64 @xmlStrEqual(i32* %109, i32* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %106, %88
  br label %123

116:                                              ; preds = %106, %101, %96
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  store %struct.TYPE_8__* %119, %struct.TYPE_8__** %16, align 8
  br label %120

120:                                              ; preds = %116
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %122 = icmp ne %struct.TYPE_8__* %121, null
  br i1 %122, label %88, label %123

123:                                              ; preds = %120, %115
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %125 = icmp ne %struct.TYPE_8__* %124, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  br label %164

127:                                              ; preds = %123
  br label %128

128:                                              ; preds = %127, %81
  %129 = load i32*, i32** %9, align 8
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = icmp eq i32* %129, %132
  br i1 %133, label %141, label %134

134:                                              ; preds = %128
  %135 = load i32*, i32** %9, align 8
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = call i64 @xmlStrEqual(i32* %135, i32* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %163

141:                                              ; preds = %134, %128
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %143 = icmp ne %struct.TYPE_9__* %142, null
  br i1 %143, label %144, label %160

144:                                              ; preds = %141
  %145 = load i32*, i32** %7, align 8
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = call i32 @xmlNsInScope(i32* %145, %struct.TYPE_9__* %146, %struct.TYPE_9__* %147, i32* %150)
  store i32 %151, i32* %17, align 4
  %152 = load i32, i32* %17, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %144
  store i32 -1, i32* %6, align 4
  br label %203

155:                                              ; preds = %144
  %156 = load i32, i32* %17, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %155
  br label %164

159:                                              ; preds = %155
  br label %160

160:                                              ; preds = %159, %141
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %162 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  store %struct.TYPE_8__* %161, %struct.TYPE_8__** %162, align 8
  store i32 1, i32* %6, align 4
  br label %203

163:                                              ; preds = %134
  br label %164

164:                                              ; preds = %163, %158, %126, %80
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 2
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %166, align 8
  store %struct.TYPE_8__* %167, %struct.TYPE_8__** %15, align 8
  br label %69

168:                                              ; preds = %69
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* %169, %struct.TYPE_9__** %14, align 8
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %170, %struct.TYPE_9__** %13, align 8
  br label %171

171:                                              ; preds = %168, %60
  br label %186

172:                                              ; preds = %54
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @XML_ENTITY_NODE, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %184, label %178

178:                                              ; preds = %172
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @XML_ENTITY_DECL, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %178, %172
  store i32 0, i32* %6, align 4
  br label %203

185:                                              ; preds = %178
  br label %186

186:                                              ; preds = %185, %171
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %188, align 8
  store %struct.TYPE_9__* %189, %struct.TYPE_9__** %12, align 8
  br label %190

190:                                              ; preds = %186
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %192 = icmp ne %struct.TYPE_9__* %191, null
  br i1 %192, label %193, label %200

193:                                              ; preds = %190
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 3
  %196 = load i32*, i32** %195, align 8
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %198 = bitcast %struct.TYPE_9__* %197 to i32*
  %199 = icmp ne i32* %196, %198
  br label %200

200:                                              ; preds = %193, %190
  %201 = phi i1 [ false, %190 ], [ %199, %193 ]
  br i1 %201, label %54, label %202

202:                                              ; preds = %200
  store i32 0, i32* %6, align 4
  br label %203

203:                                              ; preds = %202, %184, %160, %154, %51, %50, %36, %26
  %204 = load i32, i32* %6, align 4
  ret i32 %204
}

declare dso_local i64 @xmlStrEqual(i32*, i32*) #1

declare dso_local %struct.TYPE_8__* @xmlTreeEnsureXMLDecl(i32*) #1

declare dso_local i32 @xmlNsInScope(i32*, %struct.TYPE_9__*, %struct.TYPE_9__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
