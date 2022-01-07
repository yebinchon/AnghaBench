; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msafd/misc/extr_helpers.c_SockGetTdiName.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msafd/misc/extr_helpers.c_SockGetTdiName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i64*, i32 (i32*, i32*, i32*, i32, i32, i32, i32*, i32)*, i32 (i32*, i32*, i32*, i32, i32*, i32)* }

@.str = private unnamed_addr constant [135 x i8] c"AddressFamily %p, SocketType %p, Protocol %p, Group %u, Flags %lx, TransportName %p, HelperDllContext %p, HelperDllData %p, Events %p\0A\00", align 1
@SockHelpersListHead = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@HELPER_DATA = common dso_local global i32 0, align 4
@NO_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Can't get transport list\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Transport: %S\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Can't get mapping for %S\0A\00", align 1
@GlobalHeap = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"Can't load helper DLL for Transport %S.\0A\00", align 1
@WSAEINVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @SockGetTdiName(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32* %6, %struct.TYPE_10__** %7, i32 %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_10__**, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_10__*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i64*, align 8
  %23 = alloca i64*, align 8
  %24 = alloca %struct.TYPE_9__*, align 8
  %25 = alloca i64, align 8
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32* %6, i32** %17, align 8
  store %struct.TYPE_10__** %7, %struct.TYPE_10__*** %18, align 8
  store i32 %8, i32* %19, align 4
  %26 = load i32*, i32** %11, align 8
  %27 = bitcast i32* %26 to i64*
  %28 = load i32*, i32** %12, align 8
  %29 = load i32*, i32** %13, align 8
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* %16, align 4
  %33 = load i32*, i32** %17, align 8
  %34 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %18, align 8
  %35 = load i32, i32* %19, align 4
  %36 = call i32 (i8*, i64*, ...) @TRACE(i8* getelementptr inbounds ([135 x i8], [135 x i8]* @.str, i64 0, i64 0), i64* %27, i32* %28, i32* %29, i32 %30, i32 %31, i32 %32, i32* %33, %struct.TYPE_10__** %34, i32 %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @SockHelpersListHead, i32 0, i32 0), align 8
  store %struct.TYPE_9__* %37, %struct.TYPE_9__** %24, align 8
  br label %38

38:                                               ; preds = %91, %9
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %40 = icmp ne %struct.TYPE_9__* %39, @SockHelpersListHead
  br i1 %40, label %41, label %95

41:                                               ; preds = %38
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %43 = load i32, i32* @HELPER_DATA, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %45 = call %struct.TYPE_10__* @CONTAINING_RECORD(%struct.TYPE_9__* %42, i32 %43, %struct.TYPE_9__* %44)
  store %struct.TYPE_10__* %45, %struct.TYPE_10__** %20, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %12, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %13, align 8
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @SockIsTripleInMapping(i64* %48, i32 %50, i32 %52, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %90

57:                                               ; preds = %41
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load i32 (i32*, i32*, i32*, i32, i32, i32, i32*, i32)*, i32 (i32*, i32*, i32*, i32, i32, i32, i32*, i32)** %59, align 8
  %61 = icmp eq i32 (i32*, i32*, i32*, i32, i32, i32, i32*, i32)* %60, null
  br i1 %61, label %62, label %73

62:                                               ; preds = %57
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  %65 = load i32 (i32*, i32*, i32*, i32, i32*, i32)*, i32 (i32*, i32*, i32*, i32, i32*, i32)** %64, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = load i32*, i32** %12, align 8
  %68 = load i32*, i32** %13, align 8
  %69 = load i32, i32* %16, align 4
  %70 = load i32*, i32** %17, align 8
  %71 = load i32, i32* %19, align 4
  %72 = call i32 %65(i32* %66, i32* %67, i32* %68, i32 %69, i32* %70, i32 %71)
  br label %86

73:                                               ; preds = %57
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load i32 (i32*, i32*, i32*, i32, i32, i32, i32*, i32)*, i32 (i32*, i32*, i32*, i32, i32, i32, i32*, i32)** %75, align 8
  %77 = load i32*, i32** %11, align 8
  %78 = load i32*, i32** %12, align 8
  %79 = load i32*, i32** %13, align 8
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* %16, align 4
  %83 = load i32*, i32** %17, align 8
  %84 = load i32, i32* %19, align 4
  %85 = call i32 %76(i32* %77, i32* %78, i32* %79, i32 %80, i32 %81, i32 %82, i32* %83, i32 %84)
  br label %86

86:                                               ; preds = %73, %62
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %88 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %18, align 8
  store %struct.TYPE_10__* %87, %struct.TYPE_10__** %88, align 8
  %89 = load i64, i64* @NO_ERROR, align 8
  store i64 %89, i64* %10, align 8
  br label %196

90:                                               ; preds = %41
  br label %91

91:                                               ; preds = %90
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  store %struct.TYPE_9__* %94, %struct.TYPE_9__** %24, align 8
  br label %38

95:                                               ; preds = %38
  %96 = call i64 @SockLoadTransportList(i64** %21)
  store i64 %96, i64* %25, align 8
  %97 = load i64, i64* %25, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = call i32 @WARN(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %101 = load i64, i64* %25, align 8
  store i64 %101, i64* %10, align 8
  br label %196

102:                                              ; preds = %95
  %103 = load i64*, i64** %21, align 8
  store i64* %103, i64** %22, align 8
  br label %104

104:                                              ; preds = %185, %102
  %105 = load i64*, i64** %21, align 8
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %191

108:                                              ; preds = %104
  %109 = load i64*, i64** %21, align 8
  %110 = call i32 (i8*, i64*, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i64* %109)
  %111 = load i64*, i64** %22, align 8
  %112 = call i64 @SockLoadTransportMapping(i64* %111, i64** %23)
  store i64 %112, i64* %25, align 8
  %113 = load i64, i64* %25, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %108
  %116 = load i64*, i64** %21, align 8
  %117 = call i32 @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64* %116)
  %118 = load i32, i32* @GlobalHeap, align 4
  %119 = load i64*, i64** %21, align 8
  %120 = call i32 @HeapFree(i32 %118, i32 0, i64* %119)
  %121 = load i64, i64* %25, align 8
  store i64 %121, i64* %10, align 8
  br label %196

122:                                              ; preds = %108
  %123 = load i64*, i64** %23, align 8
  %124 = load i32*, i32** %11, align 8
  %125 = load i32, i32* %124, align 4
  %126 = load i32*, i32** %12, align 8
  %127 = load i32, i32* %126, align 4
  %128 = load i32*, i32** %13, align 8
  %129 = load i32, i32* %128, align 4
  %130 = call i64 @SockIsTripleInMapping(i64* %123, i32 %125, i32 %127, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %181

132:                                              ; preds = %122
  %133 = load i64*, i64** %22, align 8
  %134 = load i64*, i64** %23, align 8
  %135 = call i64 @SockLoadHelperDll(i64* %133, i64* %134, %struct.TYPE_10__** %20)
  store i64 %135, i64* %25, align 8
  %136 = load i64, i64* %25, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %148

138:                                              ; preds = %132
  %139 = load i64*, i64** %22, align 8
  %140 = call i32 @ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i64* %139)
  %141 = load i32, i32* @GlobalHeap, align 4
  %142 = load i64*, i64** %21, align 8
  %143 = call i32 @HeapFree(i32 %141, i32 0, i64* %142)
  %144 = load i32, i32* @GlobalHeap, align 4
  %145 = load i64*, i64** %23, align 8
  %146 = call i32 @HeapFree(i32 %144, i32 0, i64* %145)
  %147 = load i64, i64* %25, align 8
  store i64 %147, i64* %10, align 8
  br label %196

148:                                              ; preds = %132
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 1
  %151 = load i32 (i32*, i32*, i32*, i32, i32, i32, i32*, i32)*, i32 (i32*, i32*, i32*, i32, i32, i32, i32*, i32)** %150, align 8
  %152 = icmp eq i32 (i32*, i32*, i32*, i32, i32, i32, i32*, i32)* %151, null
  br i1 %152, label %153, label %164

153:                                              ; preds = %148
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 2
  %156 = load i32 (i32*, i32*, i32*, i32, i32*, i32)*, i32 (i32*, i32*, i32*, i32, i32*, i32)** %155, align 8
  %157 = load i32*, i32** %11, align 8
  %158 = load i32*, i32** %12, align 8
  %159 = load i32*, i32** %13, align 8
  %160 = load i32, i32* %16, align 4
  %161 = load i32*, i32** %17, align 8
  %162 = load i32, i32* %19, align 4
  %163 = call i32 %156(i32* %157, i32* %158, i32* %159, i32 %160, i32* %161, i32 %162)
  br label %177

164:                                              ; preds = %148
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 1
  %167 = load i32 (i32*, i32*, i32*, i32, i32, i32, i32*, i32)*, i32 (i32*, i32*, i32*, i32, i32, i32, i32*, i32)** %166, align 8
  %168 = load i32*, i32** %11, align 8
  %169 = load i32*, i32** %12, align 8
  %170 = load i32*, i32** %13, align 8
  %171 = load i32, i32* %14, align 4
  %172 = load i32, i32* %15, align 4
  %173 = load i32, i32* %16, align 4
  %174 = load i32*, i32** %17, align 8
  %175 = load i32, i32* %19, align 4
  %176 = call i32 %167(i32* %168, i32* %169, i32* %170, i32 %171, i32 %172, i32 %173, i32* %174, i32 %175)
  br label %177

177:                                              ; preds = %164, %153
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %179 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %18, align 8
  store %struct.TYPE_10__* %178, %struct.TYPE_10__** %179, align 8
  %180 = load i64, i64* @NO_ERROR, align 8
  store i64 %180, i64* %10, align 8
  br label %196

181:                                              ; preds = %122
  %182 = load i32, i32* @GlobalHeap, align 4
  %183 = load i64*, i64** %23, align 8
  %184 = call i32 @HeapFree(i32 %182, i32 0, i64* %183)
  br label %185

185:                                              ; preds = %181
  %186 = load i64*, i64** %22, align 8
  %187 = call i64 @wcslen(i64* %186)
  %188 = add nsw i64 %187, 1
  %189 = load i64*, i64** %22, align 8
  %190 = getelementptr inbounds i64, i64* %189, i64 %188
  store i64* %190, i64** %22, align 8
  br label %104

191:                                              ; preds = %104
  %192 = load i32, i32* @GlobalHeap, align 4
  %193 = load i64*, i64** %21, align 8
  %194 = call i32 @HeapFree(i32 %192, i32 0, i64* %193)
  %195 = load i64, i64* @WSAEINVAL, align 8
  store i64 %195, i64* %10, align 8
  br label %196

196:                                              ; preds = %191, %177, %138, %115, %99, %86
  %197 = load i64, i64* %10, align 8
  ret i64 %197
}

declare dso_local i32 @TRACE(i8*, i64*, ...) #1

declare dso_local %struct.TYPE_10__* @CONTAINING_RECORD(%struct.TYPE_9__*, i32, %struct.TYPE_9__*) #1

declare dso_local i64 @SockIsTripleInMapping(i64*, i32, i32, i32) #1

declare dso_local i64 @SockLoadTransportList(i64**) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i64 @SockLoadTransportMapping(i64*, i64**) #1

declare dso_local i32 @ERR(i8*, i64*) #1

declare dso_local i32 @HeapFree(i32, i32, i64*) #1

declare dso_local i64 @SockLoadHelperDll(i64*, i64*, %struct.TYPE_10__**) #1

declare dso_local i64 @wcslen(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
