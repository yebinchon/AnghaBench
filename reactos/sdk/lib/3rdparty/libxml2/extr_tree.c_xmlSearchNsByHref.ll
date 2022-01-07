; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_tree.c_xmlSearchNsByHref.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_tree.c_xmlSearchNsByHref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, i32*, %struct.TYPE_13__*, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_15__* }

@XML_NAMESPACE_DECL = common dso_local global i64 0, align 8
@XML_XML_NAMESPACE = common dso_local global i32* null, align 8
@XML_ELEMENT_NODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"searching namespace\00", align 1
@XML_LOCAL_NAMESPACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"xml\00", align 1
@XML_ATTRIBUTE_NODE = common dso_local global i64 0, align 8
@XML_ENTITY_REF_NODE = common dso_local global i64 0, align 8
@XML_ENTITY_NODE = common dso_local global i64 0, align 8
@XML_ENTITY_DECL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @xmlSearchNsByHref(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__* %11, %struct.TYPE_14__** %9, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %13 = icmp eq %struct.TYPE_14__* %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %3
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @XML_NAMESPACE_DECL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load i32*, i32** %7, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %14, %3
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %226

24:                                               ; preds = %20
  %25 = load i32*, i32** %7, align 8
  %26 = load i32*, i32** @XML_XML_NAMESPACE, align 8
  %27 = call i64 @xmlStrEqual(i32* %25, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %92

29:                                               ; preds = %24
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %31 = icmp eq %struct.TYPE_15__* %30, null
  br i1 %31, label %32, label %69

32:                                               ; preds = %29
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @XML_ELEMENT_NODE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %69

38:                                               ; preds = %32
  %39 = call i64 @xmlMalloc(i32 4)
  %40 = inttoptr i64 %39 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %40, %struct.TYPE_13__** %8, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %42 = icmp eq %struct.TYPE_13__* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = call i32 @xmlTreeErrMemory(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %226

45:                                               ; preds = %38
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %47 = call i32 @memset(%struct.TYPE_13__* %46, i32 0, i32 4)
  %48 = load i32, i32* @XML_LOCAL_NAMESPACE, align 4
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = load i32*, i32** @XML_XML_NAMESPACE, align 8
  %52 = call i8* @xmlStrdup(i32* %51)
  %53 = bitcast i8* %52 to i32*
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  store i32* %53, i32** %55, align 8
  %56 = call i8* @xmlStrdup(i32* bitcast ([4 x i8]* @.str.1 to i32*))
  %57 = bitcast i8* %56 to i32*
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  store i32* %57, i32** %59, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 3
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %61, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 2
  store %struct.TYPE_13__* %62, %struct.TYPE_13__** %64, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 3
  store %struct.TYPE_13__* %65, %struct.TYPE_13__** %67, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %68, %struct.TYPE_13__** %4, align 8
  br label %226

69:                                               ; preds = %32, %29
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %71 = icmp eq %struct.TYPE_15__* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %69
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 4
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %74, align 8
  store %struct.TYPE_15__* %75, %struct.TYPE_15__** %5, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %77 = icmp eq %struct.TYPE_15__* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %226

79:                                               ; preds = %72
  br label %80

80:                                               ; preds = %79, %69
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %82, align 8
  %84 = icmp eq %struct.TYPE_13__* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %87 = call %struct.TYPE_13__* @xmlTreeEnsureXMLDecl(%struct.TYPE_15__* %86)
  store %struct.TYPE_13__* %87, %struct.TYPE_13__** %4, align 8
  br label %226

88:                                               ; preds = %80
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %90, align 8
  store %struct.TYPE_13__* %91, %struct.TYPE_13__** %4, align 8
  br label %226

92:                                               ; preds = %24
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @XML_ATTRIBUTE_NODE, align 8
  %97 = icmp eq i64 %95, %96
  %98 = zext i1 %97 to i32
  store i32 %98, i32* %10, align 4
  br label %99

99:                                               ; preds = %221, %92
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %101 = icmp ne %struct.TYPE_14__* %100, null
  br i1 %101, label %102, label %225

102:                                              ; preds = %99
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @XML_ENTITY_REF_NODE, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %120, label %108

108:                                              ; preds = %102
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @XML_ENTITY_NODE, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %120, label %114

114:                                              ; preds = %108
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @XML_ENTITY_DECL, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %114, %108, %102
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %226

121:                                              ; preds = %114
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @XML_ELEMENT_NODE, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %221

127:                                              ; preds = %121
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 3
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %129, align 8
  store %struct.TYPE_13__* %130, %struct.TYPE_13__** %8, align 8
  br label %131

131:                                              ; preds = %169, %127
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %133 = icmp ne %struct.TYPE_13__* %132, null
  br i1 %133, label %134, label %173

134:                                              ; preds = %131
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %169

139:                                              ; preds = %134
  %140 = load i32*, i32** %7, align 8
  %141 = icmp ne i32* %140, null
  br i1 %141, label %142, label %169

142:                                              ; preds = %139
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = load i32*, i32** %7, align 8
  %147 = call i64 @xmlStrEqual(i32* %145, i32* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %169

149:                                              ; preds = %142
  %150 = load i32, i32* %10, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %149
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = icmp ne i32* %155, null
  br i1 %156, label %157, label %168

157:                                              ; preds = %152, %149
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = call i32 @xmlNsInScope(%struct.TYPE_15__* %158, %struct.TYPE_14__* %159, %struct.TYPE_14__* %160, i32* %163)
  %165 = icmp eq i32 %164, 1
  br i1 %165, label %166, label %168

166:                                              ; preds = %157
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %167, %struct.TYPE_13__** %4, align 8
  br label %226

168:                                              ; preds = %157, %152
  br label %169

169:                                              ; preds = %168, %142, %139, %134
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 2
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %171, align 8
  store %struct.TYPE_13__* %172, %struct.TYPE_13__** %8, align 8
  br label %131

173:                                              ; preds = %131
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %176 = icmp ne %struct.TYPE_14__* %174, %175
  br i1 %176, label %177, label %220

177:                                              ; preds = %173
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 2
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %179, align 8
  store %struct.TYPE_13__* %180, %struct.TYPE_13__** %8, align 8
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %182 = icmp ne %struct.TYPE_13__* %181, null
  br i1 %182, label %183, label %219

183:                                              ; preds = %177
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = icmp ne i32* %186, null
  br i1 %187, label %188, label %218

188:                                              ; preds = %183
  %189 = load i32*, i32** %7, align 8
  %190 = icmp ne i32* %189, null
  br i1 %190, label %191, label %218

191:                                              ; preds = %188
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 1
  %194 = load i32*, i32** %193, align 8
  %195 = load i32*, i32** %7, align 8
  %196 = call i64 @xmlStrEqual(i32* %194, i32* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %218

198:                                              ; preds = %191
  %199 = load i32, i32* %10, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %198
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 0
  %204 = load i32*, i32** %203, align 8
  %205 = icmp ne i32* %204, null
  br i1 %205, label %206, label %217

206:                                              ; preds = %201, %198
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 0
  %212 = load i32*, i32** %211, align 8
  %213 = call i32 @xmlNsInScope(%struct.TYPE_15__* %207, %struct.TYPE_14__* %208, %struct.TYPE_14__* %209, i32* %212)
  %214 = icmp eq i32 %213, 1
  br i1 %214, label %215, label %217

215:                                              ; preds = %206
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %216, %struct.TYPE_13__** %4, align 8
  br label %226

217:                                              ; preds = %206, %201
  br label %218

218:                                              ; preds = %217, %191, %188, %183
  br label %219

219:                                              ; preds = %218, %177
  br label %220

220:                                              ; preds = %219, %173
  br label %221

221:                                              ; preds = %220, %121
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 1
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %223, align 8
  store %struct.TYPE_14__* %224, %struct.TYPE_14__** %6, align 8
  br label %99

225:                                              ; preds = %99
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %226

226:                                              ; preds = %225, %215, %166, %120, %88, %85, %78, %45, %43, %23
  %227 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  ret %struct.TYPE_13__* %227
}

declare dso_local i64 @xmlStrEqual(i32*, i32*) #1

declare dso_local i64 @xmlMalloc(i32) #1

declare dso_local i32 @xmlTreeErrMemory(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i8* @xmlStrdup(i32*) #1

declare dso_local %struct.TYPE_13__* @xmlTreeEnsureXMLDecl(%struct.TYPE_15__*) #1

declare dso_local i32 @xmlNsInScope(%struct.TYPE_15__*, %struct.TYPE_14__*, %struct.TYPE_14__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
