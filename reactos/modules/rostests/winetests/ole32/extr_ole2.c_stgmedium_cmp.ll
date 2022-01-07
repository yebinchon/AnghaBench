; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_ole2.c_stgmedium_cmp.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_ole2.c_stgmedium_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@E_FAIL = common dso_local global i32 0, align 4
@TYMED_MFPICT = common dso_local global i64 0, align 8
@TYMED_ENHMF = common dso_local global i64 0, align 8
@TYMED_HGLOBAL = common dso_local global i64 0, align 8
@E_NOTIMPL = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_7__*)* @stgmedium_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stgmedium_cmp(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @E_FAIL, align 4
  store i32 %20, i32* %3, align 4
  br label %207

21:                                               ; preds = %2
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @TYMED_MFPICT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %73

27:                                               ; preds = %21
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = call %struct.TYPE_9__* @U(%struct.TYPE_7__* %28)
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @GlobalLock(i32 %31)
  %33 = bitcast i8* %32 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %10, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = call %struct.TYPE_9__* @U(%struct.TYPE_7__* %34)
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @GlobalLock(i32 %37)
  %39 = bitcast i8* %38 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %11, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @GetMetaFileBitsEx(i32 %42, i64 0, i32* null)
  store i64 %43, i64* %8, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @GetMetaFileBitsEx(i32 %46, i64 0, i32* null)
  store i64 %47, i64* %9, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* %9, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %27
  %52 = call i32 (...) @GetProcessHeap()
  %53 = load i64, i64* %8, align 8
  %54 = call i32* @HeapAlloc(i32 %52, i32 0, i64 %53)
  store i32* %54, i32** %6, align 8
  %55 = call i32 (...) @GetProcessHeap()
  %56 = load i64, i64* %9, align 8
  %57 = call i32* @HeapAlloc(i32 %55, i32 0, i64 %56)
  store i32* %57, i32** %7, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* %8, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = call i64 @GetMetaFileBitsEx(i32 %60, i64 %61, i32* %62)
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i64, i64* %9, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = call i64 @GetMetaFileBitsEx(i32 %66, i64 %67, i32* %68)
  br label %72

70:                                               ; preds = %27
  %71 = load i32, i32* @E_FAIL, align 4
  store i32 %71, i32* %3, align 4
  br label %207

72:                                               ; preds = %51
  br label %149

73:                                               ; preds = %21
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @TYMED_ENHMF, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %113

79:                                               ; preds = %73
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @GetEnhMetaFileBits(i32 %82, i64 0, i32* null)
  store i64 %83, i64* %8, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @GetEnhMetaFileBits(i32 %86, i64 0, i32* null)
  store i64 %87, i64* %9, align 8
  %88 = load i64, i64* %8, align 8
  %89 = load i64, i64* %9, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %110

91:                                               ; preds = %79
  %92 = call i32 (...) @GetProcessHeap()
  %93 = load i64, i64* %8, align 8
  %94 = call i32* @HeapAlloc(i32 %92, i32 0, i64 %93)
  store i32* %94, i32** %6, align 8
  %95 = call i32 (...) @GetProcessHeap()
  %96 = load i64, i64* %9, align 8
  %97 = call i32* @HeapAlloc(i32 %95, i32 0, i64 %96)
  store i32* %97, i32** %7, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load i64, i64* %8, align 8
  %102 = load i32*, i32** %6, align 8
  %103 = call i64 @GetEnhMetaFileBits(i32 %100, i64 %101, i32* %102)
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load i64, i64* %9, align 8
  %108 = load i32*, i32** %7, align 8
  %109 = call i64 @GetEnhMetaFileBits(i32 %106, i64 %107, i32* %108)
  br label %112

110:                                              ; preds = %79
  %111 = load i32, i32* @E_FAIL, align 4
  store i32 %111, i32* %3, align 4
  br label %207

112:                                              ; preds = %91
  br label %148

113:                                              ; preds = %73
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @TYMED_HGLOBAL, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %145

119:                                              ; preds = %113
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i64 @GlobalSize(i32 %122)
  store i64 %123, i64* %8, align 8
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i64 @GlobalSize(i32 %126)
  store i64 %127, i64* %9, align 8
  %128 = load i64, i64* %8, align 8
  %129 = load i64, i64* %9, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %142

131:                                              ; preds = %119
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = call i8* @GlobalLock(i32 %134)
  %136 = bitcast i8* %135 to i32*
  store i32* %136, i32** %6, align 8
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i8* @GlobalLock(i32 %139)
  %141 = bitcast i8* %140 to i32*
  store i32* %141, i32** %7, align 8
  br label %144

142:                                              ; preds = %119
  %143 = load i32, i32* @E_FAIL, align 4
  store i32 %143, i32* %3, align 4
  br label %207

144:                                              ; preds = %131
  br label %147

145:                                              ; preds = %113
  %146 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %146, i32* %3, align 4
  br label %207

147:                                              ; preds = %144
  br label %148

148:                                              ; preds = %147, %112
  br label %149

149:                                              ; preds = %148, %72
  %150 = load i32*, i32** %6, align 8
  %151 = load i32*, i32** %7, align 8
  %152 = load i64, i64* %8, align 8
  %153 = call i64 @memcmp(i32* %150, i32* %151, i64 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %149
  %156 = load i32, i32* @E_FAIL, align 4
  store i32 %156, i32* %3, align 4
  br label %207

157:                                              ; preds = %149
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @TYMED_HGLOBAL, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %174

163:                                              ; preds = %157
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %165 = call %struct.TYPE_9__* @U(%struct.TYPE_7__* %164)
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @GlobalUnlock(i32 %167)
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %170 = call %struct.TYPE_9__* @U(%struct.TYPE_7__* %169)
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @GlobalUnlock(i32 %172)
  br label %205

174:                                              ; preds = %157
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @TYMED_MFPICT, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %197

180:                                              ; preds = %174
  %181 = call i32 (...) @GetProcessHeap()
  %182 = load i32*, i32** %6, align 8
  %183 = call i32 @HeapFree(i32 %181, i32 0, i32* %182)
  %184 = call i32 (...) @GetProcessHeap()
  %185 = load i32*, i32** %7, align 8
  %186 = call i32 @HeapFree(i32 %184, i32 0, i32* %185)
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %188 = call %struct.TYPE_9__* @U(%struct.TYPE_7__* %187)
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @GlobalUnlock(i32 %190)
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %193 = call %struct.TYPE_9__* @U(%struct.TYPE_7__* %192)
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @GlobalUnlock(i32 %195)
  br label %204

197:                                              ; preds = %174
  %198 = call i32 (...) @GetProcessHeap()
  %199 = load i32*, i32** %6, align 8
  %200 = call i32 @HeapFree(i32 %198, i32 0, i32* %199)
  %201 = call i32 (...) @GetProcessHeap()
  %202 = load i32*, i32** %7, align 8
  %203 = call i32 @HeapFree(i32 %201, i32 0, i32* %202)
  br label %204

204:                                              ; preds = %197, %180
  br label %205

205:                                              ; preds = %204, %163
  %206 = load i32, i32* @S_OK, align 4
  store i32 %206, i32* %3, align 4
  br label %207

207:                                              ; preds = %205, %155, %145, %142, %110, %70, %19
  %208 = load i32, i32* %3, align 4
  ret i32 %208
}

declare dso_local i8* @GlobalLock(i32) #1

declare dso_local %struct.TYPE_9__* @U(%struct.TYPE_7__*) #1

declare dso_local i64 @GetMetaFileBitsEx(i32, i64, i32*) #1

declare dso_local i32* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @GetEnhMetaFileBits(i32, i64, i32*) #1

declare dso_local i64 @GlobalSize(i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i64) #1

declare dso_local i32 @GlobalUnlock(i32) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
