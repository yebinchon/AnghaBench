; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_cproxy.c_StdProxy_Construct.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_cproxy.c_StdProxy_Construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i64*, %struct.TYPE_13__**, %struct.TYPE_18__**, i32* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_14__, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_15__ = type { i32, i32*, i32*, i64, %struct.TYPE_17__, i32*, i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [21 x i8] c"(%p,%p,%p,%p,%p) %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"stubless vtbl %p: count=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"IID mismatch during proxy creation\0A\00", align 1
@RPC_E_UNEXPECTED = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@StdProxy_Vtbl = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [66 x i8] c"iid=%s this %p proxy %p obj %p vtbl %p base proxy %p base obj %p\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StdProxy_Construct(i32 %0, i32* %1, %struct.TYPE_16__* %2, i32 %3, i32 %4, %struct.TYPE_17__** %5, i64** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_17__**, align 8
  %15 = alloca i64**, align 8
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_18__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32* %1, i32** %10, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.TYPE_17__** %5, %struct.TYPE_17__*** %14, align 8
  store i64** %6, i64*** %15, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 4
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %12, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %17, align 4
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %29, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %30, i64 %32
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %33, align 8
  store %struct.TYPE_18__* %34, %struct.TYPE_18__** %18, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = ptrtoint i32* %35 to i32
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %38 = load i32, i32* %13, align 4
  %39 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %14, align 8
  %40 = load i64**, i64*** %15, align 8
  %41 = load i32, i32* %17, align 4
  %42 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %36, %struct.TYPE_18__* %37, i32 %38, %struct.TYPE_17__** %39, i64** %40, i32 %41)
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %47, label %74

47:                                               ; preds = %7
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %49, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %50, i64 %52
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %19, align 4
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %59 = bitcast %struct.TYPE_18__* %58 to i8**
  %60 = getelementptr inbounds i8*, i8** %59, i64 1
  %61 = bitcast i8** %60 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %61, %struct.TYPE_18__** %18, align 8
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = load i32, i32* %19, align 4
  %67 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %66)
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i32*
  %72 = load i32, i32* %19, align 4
  %73 = call i32 @fill_stubless_table(i32* %71, i32 %72)
  br label %74

74:                                               ; preds = %47, %7
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @IsEqualGUID(i32 %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %74
  %83 = call i32 @ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %84 = load i32, i32* @RPC_E_UNEXPECTED, align 4
  store i32 %84, i32* %8, align 4
  br label %198

85:                                               ; preds = %74
  %86 = call i32 (...) @GetProcessHeap()
  %87 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %88 = call %struct.TYPE_15__* @HeapAlloc(i32 %86, i32 %87, i32 72)
  store %struct.TYPE_15__* %88, %struct.TYPE_15__** %16, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %90 = icmp ne %struct.TYPE_15__* %89, null
  br i1 %90, label %93, label %91

91:                                               ; preds = %85
  %92 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %92, i32* %8, align 4
  br label %198

93:                                               ; preds = %85
  %94 = load i32*, i32** %10, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %98 = bitcast %struct.TYPE_15__* %97 to i32*
  store i32* %98, i32** %10, align 8
  br label %99

99:                                               ; preds = %96, %93
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 0
  store i32* @StdProxy_Vtbl, i32** %102, align 8
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 3
  store i64 %105, i64* %107, align 8
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  store i32 1, i32* %109, align 8
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 9
  store i32 %113, i32* %115, align 8
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 1
  store i32* null, i32** %117, align 8
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 2
  store i32* null, i32** %119, align 8
  %120 = load i32*, i32** %10, align 8
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 8
  store i32* %120, i32** %122, align 8
  %123 = load i32, i32* %17, align 4
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 7
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* %13, align 4
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 6
  store i32 %126, i32* %128, align 8
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 5
  store i32* null, i32** %130, align 8
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 1
  %133 = load i64*, i64** %132, align 8
  %134 = icmp ne i64* %133, null
  br i1 %134, label %135, label %167

135:                                              ; preds = %99
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 1
  %138 = load i64*, i64** %137, align 8
  %139 = load i32, i32* %12, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %138, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %167

144:                                              ; preds = %135
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 1
  %147 = load i64*, i64** %146, align 8
  %148 = load i32, i32* %12, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i64, i64* %147, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 2
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 1
  %156 = bitcast i32** %155 to i8**
  %157 = call i32 @create_proxy(i64 %151, i32* null, i32** %153, i8** %156)
  store i32 %157, i32* %20, align 4
  %158 = load i32, i32* %20, align 4
  %159 = call i64 @FAILED(i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %144
  %162 = call i32 (...) @GetProcessHeap()
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %164 = call i32 @HeapFree(i32 %162, i32 0, %struct.TYPE_15__* %163)
  %165 = load i32, i32* %20, align 4
  store i32 %165, i32* %8, align 4
  br label %198

166:                                              ; preds = %144
  br label %167

167:                                              ; preds = %166, %135, %99
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 4
  %170 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %14, align 8
  store %struct.TYPE_17__* %169, %struct.TYPE_17__** %170, align 8
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 3
  %173 = load i64**, i64*** %15, align 8
  store i64* %172, i64** %173, align 8
  %174 = load i64**, i64*** %15, align 8
  %175 = load i64*, i64** %174, align 8
  %176 = bitcast i64* %175 to i32*
  %177 = call i32 @IUnknown_AddRef(i32* %176)
  %178 = load i32, i32* %13, align 4
  %179 = call i32 @IPSFactoryBuffer_AddRef(i32 %178)
  %180 = load i32, i32* %9, align 4
  %181 = call i32 @debugstr_guid(i32 %180)
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %183 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %14, align 8
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %183, align 8
  %185 = load i64**, i64*** %15, align 8
  %186 = load i64*, i64** %185, align 8
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 2
  %192 = load i32*, i32** %191, align 8
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 1
  %195 = load i32*, i32** %194, align 8
  %196 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i32 %181, %struct.TYPE_15__* %182, %struct.TYPE_17__* %184, i64* %186, i64 %189, i32* %192, i32* %195)
  %197 = load i32, i32* @S_OK, align 4
  store i32 %197, i32* %8, align 4
  br label %198

198:                                              ; preds = %167, %161, %91, %82
  %199 = load i32, i32* %8, align 4
  ret i32 %199
}

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @fill_stubless_table(i32*, i32) #1

declare dso_local i32 @IsEqualGUID(i32, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local %struct.TYPE_15__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @create_proxy(i64, i32*, i32**, i8**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @IUnknown_AddRef(i32*) #1

declare dso_local i32 @IPSFactoryBuffer_AddRef(i32) #1

declare dso_local i32 @debugstr_guid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
