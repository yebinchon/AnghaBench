; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/lsasrv/extr_lookup.c_LsapCreateSid.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/lsasrv/extr_lookup.c_LsapCreateSid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_12__*, i32, i32, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_12__* }

@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@WellKnownSidListHead = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LsapCreateSid(i32 %0, i64 %1, i32* %2, i32 %3, i32 %4, i32 %5, %struct.TYPE_12__** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_12__**, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  store i32 %0, i32* %9, align 4
  store i64 %1, i64* %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.TYPE_12__** %6, %struct.TYPE_12__*** %15, align 8
  %19 = call i32 (...) @RtlGetProcessHeap()
  %20 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %21 = call i8* @RtlAllocateHeap(i32 %19, i32 %20, i32 4)
  %22 = bitcast i8* %21 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %16, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %24 = icmp eq %struct.TYPE_12__* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %7
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %8, align 4
  br label %194

27:                                               ; preds = %7
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = call i32 @InitializeListHead(i32* %29)
  %31 = call i32 (...) @RtlGetProcessHeap()
  %32 = load i64, i64* %10, align 8
  %33 = call i32 @RtlLengthRequiredSid(i64 %32)
  %34 = call i8* @RtlAllocateHeap(i32 %31, i32 0, i32 %33)
  %35 = bitcast i8* %34 to %struct.TYPE_12__*
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  store %struct.TYPE_12__* %35, %struct.TYPE_12__** %37, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = icmp eq %struct.TYPE_12__* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %27
  %43 = call i32 (...) @RtlGetProcessHeap()
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %45 = call i32 @RtlFreeHeap(i32 %43, i32 0, %struct.TYPE_12__* %44)
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %8, align 4
  br label %194

47:                                               ; preds = %27
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i64, i64* %10, align 8
  %53 = call i32 @RtlInitializeSid(%struct.TYPE_12__* %50, i32 %51, i64 %52)
  store i64 0, i64* %18, align 8
  br label %54

54:                                               ; preds = %69, %47
  %55 = load i64, i64* %18, align 8
  %56 = load i64, i64* %10, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %54
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  %62 = load i64, i64* %18, align 8
  %63 = call i32* @RtlSubAuthoritySid(%struct.TYPE_12__* %61, i64 %62)
  store i32* %63, i32** %17, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = load i64, i64* %18, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %17, align 8
  store i32 %67, i32* %68, align 4
  br label %69

69:                                               ; preds = %58
  %70 = load i64, i64* %18, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %18, align 8
  br label %54

72:                                               ; preds = %54
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @wcslen(i32 %73)
  %75 = sext i32 %74 to i64
  %76 = mul i64 %75, 4
  %77 = trunc i64 %76 to i32
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = add i64 %85, 4
  %87 = trunc i64 %86 to i32
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  store i32 %87, i32* %90, align 4
  %91 = call i32 (...) @RtlGetProcessHeap()
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @RtlAllocateHeap(i32 %91, i32 0, i32 %95)
  %97 = bitcast i8* %96 to %struct.TYPE_12__*
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 2
  store %struct.TYPE_12__* %97, %struct.TYPE_12__** %100, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %103, align 8
  %105 = icmp eq %struct.TYPE_12__* %104, null
  br i1 %105, label %106, label %116

106:                                              ; preds = %72
  %107 = call i32 (...) @RtlGetProcessHeap()
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %109, align 8
  %111 = call i32 @RtlFreeHeap(i32 %107, i32 0, %struct.TYPE_12__* %110)
  %112 = call i32 (...) @RtlGetProcessHeap()
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %114 = call i32 @RtlFreeHeap(i32 %112, i32 0, %struct.TYPE_12__* %113)
  %115 = load i32, i32* @FALSE, align 4
  store i32 %115, i32* %8, align 4
  br label %194

116:                                              ; preds = %72
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %119, align 8
  %121 = load i32, i32* %12, align 4
  %122 = call i32 @wcscpy(%struct.TYPE_12__* %120, i32 %121)
  %123 = load i32, i32* %13, align 4
  %124 = call i32 @wcslen(i32 %123)
  %125 = sext i32 %124 to i64
  %126 = mul i64 %125, 4
  %127 = trunc i64 %126 to i32
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  store i32 %127, i32* %130, align 8
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = sext i32 %134 to i64
  %136 = add i64 %135, 4
  %137 = trunc i64 %136 to i32
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 1
  store i32 %137, i32* %140, align 4
  %141 = call i32 (...) @RtlGetProcessHeap()
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i8* @RtlAllocateHeap(i32 %141, i32 0, i32 %145)
  %147 = bitcast i8* %146 to %struct.TYPE_12__*
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 2
  store %struct.TYPE_12__* %147, %struct.TYPE_12__** %150, align 8
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 2
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %153, align 8
  %155 = icmp eq %struct.TYPE_12__* %154, null
  br i1 %155, label %156, label %172

156:                                              ; preds = %116
  %157 = call i32 (...) @RtlGetProcessHeap()
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 4
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 2
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %160, align 8
  %162 = call i32 @RtlFreeHeap(i32 %157, i32 0, %struct.TYPE_12__* %161)
  %163 = call i32 (...) @RtlGetProcessHeap()
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %165, align 8
  %167 = call i32 @RtlFreeHeap(i32 %163, i32 0, %struct.TYPE_12__* %166)
  %168 = call i32 (...) @RtlGetProcessHeap()
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %170 = call i32 @RtlFreeHeap(i32 %168, i32 0, %struct.TYPE_12__* %169)
  %171 = load i32, i32* @FALSE, align 4
  store i32 %171, i32* %8, align 4
  br label %194

172:                                              ; preds = %116
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 2
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %175, align 8
  %177 = load i32, i32* %13, align 4
  %178 = call i32 @wcscpy(%struct.TYPE_12__* %176, i32 %177)
  %179 = load i32, i32* %14, align 4
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 2
  store i32 %179, i32* %181, align 4
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 1
  %184 = call i32 @InsertTailList(i32* @WellKnownSidListHead, i32* %183)
  %185 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %15, align 8
  %186 = icmp ne %struct.TYPE_12__** %185, null
  br i1 %186, label %187, label %192

187:                                              ; preds = %172
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %189, align 8
  %191 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %15, align 8
  store %struct.TYPE_12__* %190, %struct.TYPE_12__** %191, align 8
  br label %192

192:                                              ; preds = %187, %172
  %193 = load i32, i32* @TRUE, align 4
  store i32 %193, i32* %8, align 4
  br label %194

194:                                              ; preds = %192, %156, %106, %42, %25
  %195 = load i32, i32* %8, align 4
  ret i32 %195
}

declare dso_local i8* @RtlAllocateHeap(i32, i32, i32) #1

declare dso_local i32 @RtlGetProcessHeap(...) #1

declare dso_local i32 @InitializeListHead(i32*) #1

declare dso_local i32 @RtlLengthRequiredSid(i64) #1

declare dso_local i32 @RtlFreeHeap(i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @RtlInitializeSid(%struct.TYPE_12__*, i32, i64) #1

declare dso_local i32* @RtlSubAuthoritySid(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @wcslen(i32) #1

declare dso_local i32 @wcscpy(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @InsertTailList(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
