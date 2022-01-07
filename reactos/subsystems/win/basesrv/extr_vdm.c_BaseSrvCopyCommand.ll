; ModuleID = '/home/carl/AnghaBench/reactos/subsystems/win/basesrv/extr_vdm.c_BaseSrvCopyCommand.c'
source_filename = "/home/carl/AnghaBench/reactos/subsystems/win/basesrv/extr_vdm.c_BaseSrvCopyCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@BaseSrvHeap = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BaseSrvCopyCommand(%struct.TYPE_9__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %8 = load i32, i32* @FALSE, align 4
  store i32 %8, i32* %6, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %7, align 8
  %9 = load i32, i32* @BaseSrvHeap, align 4
  %10 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %11 = call i8* @RtlAllocateHeap(i32 %9, i32 %10, i32 4)
  %12 = bitcast i8* %11 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %7, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %14 = icmp eq %struct.TYPE_8__* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %3, align 4
  br label %356

17:                                               ; preds = %2
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 21
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 23
  store i32 %20, i32* %22, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 22
  store i32 %25, i32* %27, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 20
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 21
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 19
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 20
  store i32 %35, i32* %37, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 18
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 19
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 17
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 18
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @BaseSrvHeap, align 4
  %49 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @RtlAllocateHeap(i32 %48, i32 %49, i32 %52)
  %54 = bitcast i8* %53 to i32*
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 17
  store i32* %54, i32** %56, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 17
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %17
  br label %348

62:                                               ; preds = %17
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 17
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 16
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @RtlMoveMemory(i32* %65, i32 %68, i32 %71)
  %73 = load i32, i32* @BaseSrvHeap, align 4
  %74 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @RtlAllocateHeap(i32 %73, i32 %74, i32 %77)
  %79 = bitcast i8* %78 to i32*
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 16
  store i32* %79, i32** %81, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 16
  %84 = load i32*, i32** %83, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %62
  br label %348

87:                                               ; preds = %62
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 16
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 15
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @RtlMoveMemory(i32* %90, i32 %93, i32 %96)
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %128

102:                                              ; preds = %87
  %103 = load i32, i32* @BaseSrvHeap, align 4
  %104 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i8* @RtlAllocateHeap(i32 %103, i32 %104, i32 %107)
  %109 = bitcast i8* %108 to i32*
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 15
  store i32* %109, i32** %111, align 8
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 15
  %114 = load i32*, i32** %113, align 8
  %115 = icmp eq i32* %114, null
  br i1 %115, label %116, label %117

116:                                              ; preds = %102
  br label %348

117:                                              ; preds = %102
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 15
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 14
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @RtlMoveMemory(i32* %120, i32 %123, i32 %126)
  br label %131

128:                                              ; preds = %87
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 15
  store i32* null, i32** %130, align 8
  br label %131

131:                                              ; preds = %128, %117
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %162

136:                                              ; preds = %131
  %137 = load i32, i32* @BaseSrvHeap, align 4
  %138 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = call i8* @RtlAllocateHeap(i32 %137, i32 %138, i32 %141)
  %143 = bitcast i8* %142 to i32*
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 14
  store i32* %143, i32** %145, align 8
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 14
  %148 = load i32*, i32** %147, align 8
  %149 = icmp eq i32* %148, null
  br i1 %149, label %150, label %151

150:                                              ; preds = %136
  br label %348

151:                                              ; preds = %136
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 14
  %154 = load i32*, i32** %153, align 8
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 13
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @RtlMoveMemory(i32* %154, i32 %157, i32 %160)
  br label %165

162:                                              ; preds = %131
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 14
  store i32* null, i32** %164, align 8
  br label %165

165:                                              ; preds = %162, %151
  %166 = load i32, i32* @BaseSrvHeap, align 4
  %167 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 4
  %171 = call i8* @RtlAllocateHeap(i32 %166, i32 %167, i32 %170)
  %172 = bitcast i8* %171 to i32*
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 13
  store i32* %172, i32** %174, align 8
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 13
  %177 = load i32*, i32** %176, align 8
  %178 = icmp eq i32* %177, null
  br i1 %178, label %179, label %180

179:                                              ; preds = %165
  br label %348

180:                                              ; preds = %165
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 13
  %183 = load i32*, i32** %182, align 8
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 12
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @RtlMoveMemory(i32* %183, i32 %186, i32 %189)
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  store i32 %193, i32* %195, align 8
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 12
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 11
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @RtlMoveMemory(i32* %197, i32 %200, i32 4)
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %232

206:                                              ; preds = %180
  %207 = load i32, i32* @BaseSrvHeap, align 4
  %208 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 5
  %211 = load i32, i32* %210, align 4
  %212 = call i8* @RtlAllocateHeap(i32 %207, i32 %208, i32 %211)
  %213 = bitcast i8* %212 to i32*
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 11
  store i32* %213, i32** %215, align 8
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 11
  %218 = load i32*, i32** %217, align 8
  %219 = icmp eq i32* %218, null
  br i1 %219, label %220, label %221

220:                                              ; preds = %206
  br label %348

221:                                              ; preds = %206
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 11
  %224 = load i32*, i32** %223, align 8
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 10
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 5
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @RtlMoveMemory(i32* %224, i32 %227, i32 %230)
  br label %235

232:                                              ; preds = %180
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 11
  store i32* null, i32** %234, align 8
  br label %235

235:                                              ; preds = %232, %221
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 5
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 1
  store i32 %238, i32* %240, align 4
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 6
  %243 = load i32, i32* %242, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %271

245:                                              ; preds = %235
  %246 = load i32, i32* @BaseSrvHeap, align 4
  %247 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 6
  %250 = load i32, i32* %249, align 4
  %251 = call i8* @RtlAllocateHeap(i32 %246, i32 %247, i32 %250)
  %252 = bitcast i8* %251 to i32*
  %253 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 10
  store i32* %252, i32** %254, align 8
  %255 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 10
  %257 = load i32*, i32** %256, align 8
  %258 = icmp eq i32* %257, null
  br i1 %258, label %259, label %260

259:                                              ; preds = %245
  br label %348

260:                                              ; preds = %245
  %261 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 10
  %263 = load i32*, i32** %262, align 8
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 9
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 6
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @RtlMoveMemory(i32* %263, i32 %266, i32 %269)
  br label %274

271:                                              ; preds = %235
  %272 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 10
  store i32* null, i32** %273, align 8
  br label %274

274:                                              ; preds = %271, %260
  %275 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 6
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i32 0, i32 2
  store i32 %277, i32* %279, align 8
  %280 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %280, i32 0, i32 7
  %282 = load i32, i32* %281, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %310

284:                                              ; preds = %274
  %285 = load i32, i32* @BaseSrvHeap, align 4
  %286 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %287 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %287, i32 0, i32 7
  %289 = load i32, i32* %288, align 4
  %290 = call i8* @RtlAllocateHeap(i32 %285, i32 %286, i32 %289)
  %291 = bitcast i8* %290 to i32*
  %292 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 9
  store i32* %291, i32** %293, align 8
  %294 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %295 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %294, i32 0, i32 9
  %296 = load i32*, i32** %295, align 8
  %297 = icmp eq i32* %296, null
  br i1 %297, label %298, label %299

298:                                              ; preds = %284
  br label %348

299:                                              ; preds = %284
  %300 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i32 0, i32 9
  %302 = load i32*, i32** %301, align 8
  %303 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %303, i32 0, i32 8
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %307 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %306, i32 0, i32 7
  %308 = load i32, i32* %307, align 4
  %309 = call i32 @RtlMoveMemory(i32* %302, i32 %305, i32 %308)
  br label %313

310:                                              ; preds = %274
  %311 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %312 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %311, i32 0, i32 9
  store i32* null, i32** %312, align 8
  br label %313

313:                                              ; preds = %310, %299
  %314 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %314, i32 0, i32 7
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %318 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %317, i32 0, i32 3
  store i32 %316, i32* %318, align 4
  %319 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %320 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 4
  %322 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %323 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %322, i32 0, i32 4
  store i32 %321, i32* %323, align 8
  %324 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %325 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %328 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %327, i32 0, i32 5
  store i32 %326, i32* %328, align 4
  %329 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %329, i32 0, i32 2
  %331 = load i32, i32* %330, align 4
  %332 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %333 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %332, i32 0, i32 6
  store i32 %331, i32* %333, align 8
  %334 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %335 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %334, i32 0, i32 3
  %336 = load i32, i32* %335, align 4
  %337 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %338 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %337, i32 0, i32 7
  store i32 %336, i32* %338, align 4
  %339 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %340 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 8
  %342 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %343 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %342, i32 0, i32 8
  store i32 %341, i32* %343, align 8
  %344 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %345 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %346 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %345, i32 0, i32 0
  store %struct.TYPE_8__* %344, %struct.TYPE_8__** %346, align 8
  %347 = load i32, i32* @TRUE, align 4
  store i32 %347, i32* %6, align 4
  br label %348

348:                                              ; preds = %313, %298, %259, %220, %179, %150, %116, %86, %61
  %349 = load i32, i32* %6, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %354, label %351

351:                                              ; preds = %348
  %352 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %353 = call i32 @BaseSrvFreeVDMInfo(%struct.TYPE_8__* %352)
  br label %354

354:                                              ; preds = %351, %348
  %355 = load i32, i32* %6, align 4
  store i32 %355, i32* %3, align 4
  br label %356

356:                                              ; preds = %354, %15
  %357 = load i32, i32* %3, align 4
  ret i32 %357
}

declare dso_local i8* @RtlAllocateHeap(i32, i32, i32) #1

declare dso_local i32 @RtlMoveMemory(i32*, i32, i32) #1

declare dso_local i32 @BaseSrvFreeVDMInfo(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
