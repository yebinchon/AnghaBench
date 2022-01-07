; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_tree.c_xmlCopyPropInternal.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_tree.c_xmlCopyPropInternal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { i32* }
%struct.TYPE_32__ = type { i64, %struct.TYPE_33__*, %struct.TYPE_32__*, %struct.TYPE_32__* }
%struct.TYPE_34__ = type { %struct.TYPE_32__*, %struct.TYPE_33__*, %struct.TYPE_32__*, %struct.TYPE_32__*, %struct.TYPE_31__*, i32 }
%struct.TYPE_31__ = type { i32, i32 }

@XML_ELEMENT_NODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_34__* (%struct.TYPE_33__*, %struct.TYPE_32__*, %struct.TYPE_34__*)* @xmlCopyPropInternal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_34__* @xmlCopyPropInternal(%struct.TYPE_33__* %0, %struct.TYPE_32__* %1, %struct.TYPE_34__* %2) #0 {
  %4 = alloca %struct.TYPE_34__*, align 8
  %5 = alloca %struct.TYPE_33__*, align 8
  %6 = alloca %struct.TYPE_32__*, align 8
  %7 = alloca %struct.TYPE_34__*, align 8
  %8 = alloca %struct.TYPE_34__*, align 8
  %9 = alloca %struct.TYPE_31__*, align 8
  %10 = alloca %struct.TYPE_32__*, align 8
  %11 = alloca %struct.TYPE_32__*, align 8
  %12 = alloca %struct.TYPE_32__*, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %5, align 8
  store %struct.TYPE_32__* %1, %struct.TYPE_32__** %6, align 8
  store %struct.TYPE_34__* %2, %struct.TYPE_34__** %7, align 8
  %14 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %15 = icmp eq %struct.TYPE_34__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %4, align 8
  br label %292

17:                                               ; preds = %3
  %18 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %19 = icmp ne %struct.TYPE_32__* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @XML_ELEMENT_NODE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %4, align 8
  br label %292

27:                                               ; preds = %20, %17
  %28 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %29 = icmp ne %struct.TYPE_32__* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_33__*, %struct.TYPE_33__** %32, align 8
  %34 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.TYPE_34__* @xmlNewDocProp(%struct.TYPE_33__* %33, i32 %36, i32* null)
  store %struct.TYPE_34__* %37, %struct.TYPE_34__** %8, align 8
  br label %85

38:                                               ; preds = %27
  %39 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %40 = icmp ne %struct.TYPE_33__* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %43 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = call %struct.TYPE_34__* @xmlNewDocProp(%struct.TYPE_33__* %42, i32 %45, i32* null)
  store %struct.TYPE_34__* %46, %struct.TYPE_34__** %8, align 8
  br label %84

47:                                               ; preds = %38
  %48 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_32__*, %struct.TYPE_32__** %49, align 8
  %51 = icmp ne %struct.TYPE_32__* %50, null
  br i1 %51, label %52, label %62

52:                                               ; preds = %47
  %53 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_32__*, %struct.TYPE_32__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_33__*, %struct.TYPE_33__** %56, align 8
  %58 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = call %struct.TYPE_34__* @xmlNewDocProp(%struct.TYPE_33__* %57, i32 %60, i32* null)
  store %struct.TYPE_34__* %61, %struct.TYPE_34__** %8, align 8
  br label %83

62:                                               ; preds = %47
  %63 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_32__*, %struct.TYPE_32__** %64, align 8
  %66 = icmp ne %struct.TYPE_32__* %65, null
  br i1 %66, label %67, label %77

67:                                               ; preds = %62
  %68 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_32__*, %struct.TYPE_32__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_33__*, %struct.TYPE_33__** %71, align 8
  %73 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = call %struct.TYPE_34__* @xmlNewDocProp(%struct.TYPE_33__* %72, i32 %75, i32* null)
  store %struct.TYPE_34__* %76, %struct.TYPE_34__** %8, align 8
  br label %82

77:                                               ; preds = %62
  %78 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 8
  %81 = call %struct.TYPE_34__* @xmlNewDocProp(%struct.TYPE_33__* null, i32 %80, i32* null)
  store %struct.TYPE_34__* %81, %struct.TYPE_34__** %8, align 8
  br label %82

82:                                               ; preds = %77, %67
  br label %83

83:                                               ; preds = %82, %52
  br label %84

84:                                               ; preds = %83, %41
  br label %85

85:                                               ; preds = %84, %30
  %86 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %87 = icmp eq %struct.TYPE_34__* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %4, align 8
  br label %292

89:                                               ; preds = %85
  %90 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %91 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %91, i32 0, i32 2
  store %struct.TYPE_32__* %90, %struct.TYPE_32__** %92, align 8
  %93 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %93, i32 0, i32 4
  %95 = load %struct.TYPE_31__*, %struct.TYPE_31__** %94, align 8
  %96 = icmp ne %struct.TYPE_31__* %95, null
  br i1 %96, label %97, label %189

97:                                               ; preds = %89
  %98 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %99 = icmp ne %struct.TYPE_32__* %98, null
  br i1 %99, label %100, label %189

100:                                              ; preds = %97
  %101 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_33__*, %struct.TYPE_33__** %102, align 8
  %104 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %105 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %105, i32 0, i32 4
  %107 = load %struct.TYPE_31__*, %struct.TYPE_31__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call %struct.TYPE_31__* @xmlSearchNs(%struct.TYPE_33__* %103, %struct.TYPE_32__* %104, i32 %109)
  store %struct.TYPE_31__* %110, %struct.TYPE_31__** %9, align 8
  %111 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %112 = icmp eq %struct.TYPE_31__* %111, null
  br i1 %112, label %113, label %161

113:                                              ; preds = %100
  %114 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_33__*, %struct.TYPE_33__** %115, align 8
  %117 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_32__*, %struct.TYPE_32__** %118, align 8
  %120 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %120, i32 0, i32 4
  %122 = load %struct.TYPE_31__*, %struct.TYPE_31__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call %struct.TYPE_31__* @xmlSearchNs(%struct.TYPE_33__* %116, %struct.TYPE_32__* %119, i32 %124)
  store %struct.TYPE_31__* %125, %struct.TYPE_31__** %9, align 8
  %126 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %127 = icmp ne %struct.TYPE_31__* %126, null
  br i1 %127, label %128, label %160

128:                                              ; preds = %113
  %129 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  store %struct.TYPE_32__* %129, %struct.TYPE_32__** %10, align 8
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %11, align 8
  br label %130

130:                                              ; preds = %135, %128
  %131 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %131, i32 0, i32 3
  %133 = load %struct.TYPE_32__*, %struct.TYPE_32__** %132, align 8
  %134 = icmp ne %struct.TYPE_32__* %133, null
  br i1 %134, label %135, label %140

135:                                              ; preds = %130
  %136 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  store %struct.TYPE_32__* %136, %struct.TYPE_32__** %11, align 8
  %137 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %137, i32 0, i32 3
  %139 = load %struct.TYPE_32__*, %struct.TYPE_32__** %138, align 8
  store %struct.TYPE_32__* %139, %struct.TYPE_32__** %10, align 8
  br label %130

140:                                              ; preds = %130
  %141 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %142 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_33__*, %struct.TYPE_33__** %143, align 8
  %145 = bitcast %struct.TYPE_33__* %144 to %struct.TYPE_32__*
  %146 = icmp eq %struct.TYPE_32__* %141, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %140
  %148 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  store %struct.TYPE_32__* %148, %struct.TYPE_32__** %10, align 8
  br label %149

149:                                              ; preds = %147, %140
  %150 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %151 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call %struct.TYPE_31__* @xmlNewNs(%struct.TYPE_32__* %150, i32 %153, i32 %156)
  %158 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %158, i32 0, i32 4
  store %struct.TYPE_31__* %157, %struct.TYPE_31__** %159, align 8
  br label %160

160:                                              ; preds = %149, %113
  br label %188

161:                                              ; preds = %100
  %162 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %165, i32 0, i32 4
  %167 = load %struct.TYPE_31__*, %struct.TYPE_31__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i64 @xmlStrEqual(i32 %164, i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %161
  %173 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %174 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %174, i32 0, i32 4
  store %struct.TYPE_31__* %173, %struct.TYPE_31__** %175, align 8
  br label %187

176:                                              ; preds = %161
  %177 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_33__*, %struct.TYPE_33__** %178, align 8
  %180 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %181 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %181, i32 0, i32 4
  %183 = load %struct.TYPE_31__*, %struct.TYPE_31__** %182, align 8
  %184 = call %struct.TYPE_31__* @xmlNewReconciliedNs(%struct.TYPE_33__* %179, %struct.TYPE_32__* %180, %struct.TYPE_31__* %183)
  %185 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %185, i32 0, i32 4
  store %struct.TYPE_31__* %184, %struct.TYPE_31__** %186, align 8
  br label %187

187:                                              ; preds = %176, %172
  br label %188

188:                                              ; preds = %187, %160
  br label %192

189:                                              ; preds = %97, %89
  %190 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %190, i32 0, i32 4
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %191, align 8
  br label %192

192:                                              ; preds = %189, %188
  %193 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_32__*, %struct.TYPE_32__** %194, align 8
  %196 = icmp ne %struct.TYPE_32__* %195, null
  br i1 %196, label %197, label %231

197:                                              ; preds = %192
  %198 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_32__*, %struct.TYPE_32__** %199, align 8
  %201 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_33__*, %struct.TYPE_33__** %202, align 8
  %204 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %205 = bitcast %struct.TYPE_34__* %204 to %struct.TYPE_32__*
  %206 = call %struct.TYPE_32__* @xmlStaticCopyNodeList(%struct.TYPE_32__* %200, %struct.TYPE_33__* %203, %struct.TYPE_32__* %205)
  %207 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %207, i32 0, i32 0
  store %struct.TYPE_32__* %206, %struct.TYPE_32__** %208, align 8
  %209 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %209, i32 0, i32 3
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %210, align 8
  %211 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %211, i32 0, i32 0
  %213 = load %struct.TYPE_32__*, %struct.TYPE_32__** %212, align 8
  store %struct.TYPE_32__* %213, %struct.TYPE_32__** %12, align 8
  br label %214

214:                                              ; preds = %226, %197
  %215 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %216 = icmp ne %struct.TYPE_32__* %215, null
  br i1 %216, label %217, label %230

217:                                              ; preds = %214
  %218 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %219 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %218, i32 0, i32 2
  %220 = load %struct.TYPE_32__*, %struct.TYPE_32__** %219, align 8
  %221 = icmp eq %struct.TYPE_32__* %220, null
  br i1 %221, label %222, label %226

222:                                              ; preds = %217
  %223 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %224 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %225 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %224, i32 0, i32 3
  store %struct.TYPE_32__* %223, %struct.TYPE_32__** %225, align 8
  br label %226

226:                                              ; preds = %222, %217
  %227 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %228 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %227, i32 0, i32 2
  %229 = load %struct.TYPE_32__*, %struct.TYPE_32__** %228, align 8
  store %struct.TYPE_32__* %229, %struct.TYPE_32__** %12, align 8
  br label %214

230:                                              ; preds = %214
  br label %231

231:                                              ; preds = %230, %192
  %232 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %233 = icmp ne %struct.TYPE_32__* %232, null
  br i1 %233, label %234, label %290

234:                                              ; preds = %231
  %235 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %236 = icmp ne %struct.TYPE_34__* %235, null
  br i1 %236, label %237, label %290

237:                                              ; preds = %234
  %238 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %238, i32 0, i32 1
  %240 = load %struct.TYPE_33__*, %struct.TYPE_33__** %239, align 8
  %241 = icmp ne %struct.TYPE_33__* %240, null
  br i1 %241, label %242, label %290

242:                                              ; preds = %237
  %243 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %243, i32 0, i32 1
  %245 = load %struct.TYPE_33__*, %struct.TYPE_33__** %244, align 8
  %246 = icmp ne %struct.TYPE_33__* %245, null
  br i1 %246, label %247, label %290

247:                                              ; preds = %242
  %248 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %248, i32 0, i32 1
  %250 = load %struct.TYPE_33__*, %struct.TYPE_33__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %250, i32 0, i32 0
  %252 = load i32*, i32** %251, align 8
  %253 = icmp ne i32* %252, null
  br i1 %253, label %254, label %290

254:                                              ; preds = %247
  %255 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %255, i32 0, i32 2
  %257 = load %struct.TYPE_32__*, %struct.TYPE_32__** %256, align 8
  %258 = icmp ne %struct.TYPE_32__* %257, null
  br i1 %258, label %259, label %290

259:                                              ; preds = %254
  %260 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %260, i32 0, i32 1
  %262 = load %struct.TYPE_33__*, %struct.TYPE_33__** %261, align 8
  %263 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %264 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %263, i32 0, i32 2
  %265 = load %struct.TYPE_32__*, %struct.TYPE_32__** %264, align 8
  %266 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %267 = call i64 @xmlIsID(%struct.TYPE_33__* %262, %struct.TYPE_32__* %265, %struct.TYPE_34__* %266)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %289

269:                                              ; preds = %259
  %270 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %270, i32 0, i32 1
  %272 = load %struct.TYPE_33__*, %struct.TYPE_33__** %271, align 8
  %273 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %273, i32 0, i32 0
  %275 = load %struct.TYPE_32__*, %struct.TYPE_32__** %274, align 8
  %276 = call i32* @xmlNodeListGetString(%struct.TYPE_33__* %272, %struct.TYPE_32__* %275, i32 1)
  store i32* %276, i32** %13, align 8
  %277 = load i32*, i32** %13, align 8
  %278 = icmp ne i32* %277, null
  br i1 %278, label %279, label %288

279:                                              ; preds = %269
  %280 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %280, i32 0, i32 1
  %282 = load %struct.TYPE_33__*, %struct.TYPE_33__** %281, align 8
  %283 = load i32*, i32** %13, align 8
  %284 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %285 = call i32 @xmlAddID(i32* null, %struct.TYPE_33__* %282, i32* %283, %struct.TYPE_34__* %284)
  %286 = load i32*, i32** %13, align 8
  %287 = call i32 @xmlFree(i32* %286)
  br label %288

288:                                              ; preds = %279, %269
  br label %289

289:                                              ; preds = %288, %259
  br label %290

290:                                              ; preds = %289, %254, %247, %242, %237, %234, %231
  %291 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  store %struct.TYPE_34__* %291, %struct.TYPE_34__** %4, align 8
  br label %292

292:                                              ; preds = %290, %88, %26, %16
  %293 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  ret %struct.TYPE_34__* %293
}

declare dso_local %struct.TYPE_34__* @xmlNewDocProp(%struct.TYPE_33__*, i32, i32*) #1

declare dso_local %struct.TYPE_31__* @xmlSearchNs(%struct.TYPE_33__*, %struct.TYPE_32__*, i32) #1

declare dso_local %struct.TYPE_31__* @xmlNewNs(%struct.TYPE_32__*, i32, i32) #1

declare dso_local i64 @xmlStrEqual(i32, i32) #1

declare dso_local %struct.TYPE_31__* @xmlNewReconciliedNs(%struct.TYPE_33__*, %struct.TYPE_32__*, %struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_32__* @xmlStaticCopyNodeList(%struct.TYPE_32__*, %struct.TYPE_33__*, %struct.TYPE_32__*) #1

declare dso_local i64 @xmlIsID(%struct.TYPE_33__*, %struct.TYPE_32__*, %struct.TYPE_34__*) #1

declare dso_local i32* @xmlNodeListGetString(%struct.TYPE_33__*, %struct.TYPE_32__*, i32) #1

declare dso_local i32 @xmlAddID(i32*, %struct.TYPE_33__*, i32*, %struct.TYPE_34__*) #1

declare dso_local i32 @xmlFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
