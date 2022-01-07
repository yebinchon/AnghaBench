; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/ntgdi/extr_bezier.c_GDI_InternalBezier.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/ntgdi/extr_bezier.c_GDI_InternalBezier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i8* }

@PagedPool = common dso_local global i32 0, align 4
@TAG_BEZIER = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_9__**, i32*, i32*, i32)* @GDI_InternalBezier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GDI_InternalBezier(%struct.TYPE_9__* %0, %struct.TYPE_9__** %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [4 x %struct.TYPE_9__], align 16
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__** %1, %struct.TYPE_9__*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i32*, i32** %9, align 8
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** %8, align 8
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %37

17:                                               ; preds = %5
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 %19, 2
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* @PagedPool, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 16
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* @TAG_BEZIER, align 4
  %28 = call %struct.TYPE_9__* @ExAllocatePoolWithTag(i32 %21, i32 %26, i32 %27)
  %29 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %29, align 8
  %30 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = icmp eq %struct.TYPE_9__* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %17
  %34 = load i32, i32* @FALSE, align 4
  %35 = call i32 @NT_ASSERT(i32 %34)
  br label %245

36:                                               ; preds = %17
  br label %37

37:                                               ; preds = %36, %5
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %43 = call i64 @BezierCheck(i32 %41, %struct.TYPE_9__* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %97

45:                                               ; preds = %40, %37
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %45
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = call i8* @BEZIERSHIFTDOWN(i8* %53)
  %55 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  store i8* %54, i8** %58, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i8* @BEZIERSHIFTDOWN(i8* %62)
  %64 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  store i8* %63, i8** %67, align 8
  %68 = load i32*, i32** %9, align 8
  store i32 1, i32* %68, align 4
  br label %69

69:                                               ; preds = %49, %45
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i64 3
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = call i8* @BEZIERSHIFTDOWN(i8* %73)
  %75 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  store i8* %74, i8** %81, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i64 3
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i8* @BEZIERSHIFTDOWN(i8* %85)
  %87 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = load i32*, i32** %9, align 8
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  store i8* %86, i8** %93, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  br label %245

97:                                               ; preds = %40
  %98 = getelementptr inbounds [4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* %11, i64 0, i64 3
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i64 3
  %101 = bitcast %struct.TYPE_9__* %98 to i8*
  %102 = bitcast %struct.TYPE_9__* %100 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %101, i8* align 8 %102, i64 16, i1 false)
  %103 = getelementptr inbounds [4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* %11, i64 0, i64 2
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i64 2
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i64 3
  %108 = bitcast %struct.TYPE_9__* %103 to { i8*, i8* }*
  %109 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 16
  %111 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %108, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = bitcast %struct.TYPE_9__* %105 to { i8*, i8* }*
  %114 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %113, i32 0, i32 1
  %117 = load i8*, i8** %116, align 8
  %118 = bitcast %struct.TYPE_9__* %107 to { i8*, i8* }*
  %119 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %118, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @BEZIERMIDDLE(i8* %110, i8* %112, i8* %115, i8* %117, i8* %120, i8* %122)
  %124 = getelementptr inbounds [4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* %11, i64 0, i64 0
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i64 1
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i64 2
  %129 = bitcast %struct.TYPE_9__* %124 to { i8*, i8* }*
  %130 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 16
  %132 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %129, i32 0, i32 1
  %133 = load i8*, i8** %132, align 8
  %134 = bitcast %struct.TYPE_9__* %126 to { i8*, i8* }*
  %135 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %134, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  %139 = bitcast %struct.TYPE_9__* %128 to { i8*, i8* }*
  %140 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %139, i32 0, i32 1
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @BEZIERMIDDLE(i8* %131, i8* %133, i8* %136, i8* %138, i8* %141, i8* %143)
  %145 = getelementptr inbounds [4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* %11, i64 0, i64 1
  %146 = getelementptr inbounds [4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* %11, i64 0, i64 0
  %147 = getelementptr inbounds [4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* %11, i64 0, i64 2
  %148 = bitcast %struct.TYPE_9__* %145 to { i8*, i8* }*
  %149 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 16
  %151 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %148, i32 0, i32 1
  %152 = load i8*, i8** %151, align 8
  %153 = bitcast %struct.TYPE_9__* %146 to { i8*, i8* }*
  %154 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 16
  %156 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %153, i32 0, i32 1
  %157 = load i8*, i8** %156, align 8
  %158 = bitcast %struct.TYPE_9__* %147 to { i8*, i8* }*
  %159 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %158, i32 0, i32 0
  %160 = load i8*, i8** %159, align 16
  %161 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %158, i32 0, i32 1
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 @BEZIERMIDDLE(i8* %150, i8* %152, i8* %155, i8* %157, i8* %160, i8* %162)
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i64 1
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i64 0
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i64 1
  %170 = bitcast %struct.TYPE_9__* %165 to { i8*, i8* }*
  %171 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %170, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %170, i32 0, i32 1
  %174 = load i8*, i8** %173, align 8
  %175 = bitcast %struct.TYPE_9__* %167 to { i8*, i8* }*
  %176 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %175, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %175, i32 0, i32 1
  %179 = load i8*, i8** %178, align 8
  %180 = bitcast %struct.TYPE_9__* %169 to { i8*, i8* }*
  %181 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %180, i32 0, i32 0
  %182 = load i8*, i8** %181, align 8
  %183 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %180, i32 0, i32 1
  %184 = load i8*, i8** %183, align 8
  %185 = call i32 @BEZIERMIDDLE(i8* %172, i8* %174, i8* %177, i8* %179, i8* %182, i8* %184)
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i64 2
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i64 1
  %190 = getelementptr inbounds [4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* %11, i64 0, i64 0
  %191 = bitcast %struct.TYPE_9__* %187 to { i8*, i8* }*
  %192 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %191, i32 0, i32 0
  %193 = load i8*, i8** %192, align 8
  %194 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %191, i32 0, i32 1
  %195 = load i8*, i8** %194, align 8
  %196 = bitcast %struct.TYPE_9__* %189 to { i8*, i8* }*
  %197 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %196, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  %199 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %196, i32 0, i32 1
  %200 = load i8*, i8** %199, align 8
  %201 = bitcast %struct.TYPE_9__* %190 to { i8*, i8* }*
  %202 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %201, i32 0, i32 0
  %203 = load i8*, i8** %202, align 16
  %204 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %201, i32 0, i32 1
  %205 = load i8*, i8** %204, align 8
  %206 = call i32 @BEZIERMIDDLE(i8* %193, i8* %195, i8* %198, i8* %200, i8* %203, i8* %205)
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i64 3
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i64 2
  %211 = getelementptr inbounds [4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* %11, i64 0, i64 1
  %212 = bitcast %struct.TYPE_9__* %208 to { i8*, i8* }*
  %213 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %212, i32 0, i32 0
  %214 = load i8*, i8** %213, align 8
  %215 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %212, i32 0, i32 1
  %216 = load i8*, i8** %215, align 8
  %217 = bitcast %struct.TYPE_9__* %210 to { i8*, i8* }*
  %218 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %217, i32 0, i32 0
  %219 = load i8*, i8** %218, align 8
  %220 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %217, i32 0, i32 1
  %221 = load i8*, i8** %220, align 8
  %222 = bitcast %struct.TYPE_9__* %211 to { i8*, i8* }*
  %223 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %222, i32 0, i32 0
  %224 = load i8*, i8** %223, align 16
  %225 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %222, i32 0, i32 1
  %226 = load i8*, i8** %225, align 8
  %227 = call i32 @BEZIERMIDDLE(i8* %214, i8* %216, i8* %219, i8* %221, i8* %224, i8* %226)
  %228 = getelementptr inbounds [4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* %11, i64 0, i64 0
  %229 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %229, i64 3
  %231 = bitcast %struct.TYPE_9__* %228 to i8*
  %232 = bitcast %struct.TYPE_9__* %230 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %231, i8* align 8 %232, i64 16, i1 false)
  %233 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %234 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %235 = load i32*, i32** %8, align 8
  %236 = load i32*, i32** %9, align 8
  %237 = load i32, i32* %10, align 4
  %238 = sub nsw i32 %237, 1
  call void @GDI_InternalBezier(%struct.TYPE_9__* %233, %struct.TYPE_9__** %234, i32* %235, i32* %236, i32 %238)
  %239 = getelementptr inbounds [4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* %11, i64 0, i64 0
  %240 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %241 = load i32*, i32** %8, align 8
  %242 = load i32*, i32** %9, align 8
  %243 = load i32, i32* %10, align 4
  %244 = sub nsw i32 %243, 1
  call void @GDI_InternalBezier(%struct.TYPE_9__* %239, %struct.TYPE_9__** %240, i32* %241, i32* %242, i32 %244)
  br label %245

245:                                              ; preds = %33, %97, %69
  ret void
}

declare dso_local %struct.TYPE_9__* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i32 @NT_ASSERT(i32) #1

declare dso_local i64 @BezierCheck(i32, %struct.TYPE_9__*) #1

declare dso_local i8* @BEZIERSHIFTDOWN(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @BEZIERMIDDLE(i8*, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
