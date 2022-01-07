; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_encode.c_test_decodeExtensions.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_encode.c_test_decodeExtensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64*, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }

@exts = common dso_local global %struct.TYPE_15__* null, align 8
@X509_EXTENSIONS = common dso_local global i32 0, align 4
@CRYPT_DECODE_ALLOC_FLAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"CryptDecodeObjectEx failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Expected %d extensions, see %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Expected OID %s, got %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Unexpected value\0A\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @test_decodeExtensions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_decodeExtensions(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  store i64 0, i64* %3, align 8
  br label %9

9:                                                ; preds = %207, %1
  %10 = load i64, i64* %3, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** @exts, align 8
  %12 = call i64 @ARRAY_SIZE(%struct.TYPE_15__* %11)
  %13 = icmp ult i64 %10, %12
  br i1 %13, label %14, label %210

14:                                               ; preds = %9
  store i32* null, i32** %5, align 8
  store i64 0, i64* %6, align 8
  %15 = load i64, i64* %2, align 8
  %16 = load i32, i32* @X509_EXTENSIONS, align 4
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** @exts, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** @exts, align 8
  %23 = load i64, i64* %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 1
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 2
  %30 = load i32, i32* @CRYPT_DECODE_ALLOC_FLAG, align 4
  %31 = bitcast i32** %5 to i32*
  %32 = call i32 @pCryptDecodeObjectEx(i64 %15, i32 %16, i64* %21, i64 %29, i32 %30, i32* null, i32* %31, i64* %6)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 (...) @GetLastError()
  %35 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %156

38:                                               ; preds = %14
  %39 = load i32*, i32** %5, align 8
  %40 = bitcast i32* %39 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %40, %struct.TYPE_14__** %7, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** @exts, align 8
  %45 = load i64, i64* %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %43, %49
  %51 = zext i1 %50 to i32
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** @exts, align 8
  %53 = load i64, i64* %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %57, i64 %60)
  store i64 0, i64* %8, align 8
  br label %62

62:                                               ; preds = %150, %38
  %63 = load i64, i64* %8, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** @exts, align 8
  %68 = load i64, i64* %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i64 @min(i64 %66, i64 %72)
  %74 = icmp ult i64 %63, %73
  br i1 %74, label %75, label %153

75:                                               ; preds = %62
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = load i64, i64* %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** @exts, align 8
  %84 = load i64, i64* %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  %89 = load i64, i64* %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @strcmp(i32 %82, i32 %92)
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** @exts, align 8
  %98 = load i64, i64* %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %101, align 8
  %103 = load i64, i64* %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  %110 = load i64, i64* %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (i32, i8*, ...) @ok(i32 %96, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %106, i32 %113)
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  %118 = load i64, i64* %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** @exts, align 8
  %124 = load i64, i64* %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %127, align 8
  %129 = load i64, i64* %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** @exts, align 8
  %135 = load i64, i64* %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %138, align 8
  %140 = load i64, i64* %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @memcmp(i32 %122, i32 %133, i32 %144)
  %146 = icmp ne i32 %145, 0
  %147 = xor i1 %146, true
  %148 = zext i1 %147 to i32
  %149 = call i32 (i32, i8*, ...) @ok(i32 %148, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %150

150:                                              ; preds = %75
  %151 = load i64, i64* %8, align 8
  %152 = add i64 %151, 1
  store i64 %152, i64* %8, align 8
  br label %62

153:                                              ; preds = %62
  %154 = load i32*, i32** %5, align 8
  %155 = call i32 @LocalFree(i32* %154)
  br label %156

156:                                              ; preds = %153, %14
  %157 = load i64, i64* %2, align 8
  %158 = load i32, i32* @X509_EXTENSIONS, align 4
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** @exts, align 8
  %160 = load i64, i64* %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 0
  %163 = load i64*, i64** %162, align 8
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** @exts, align 8
  %165 = load i64, i64* %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 0
  %168 = load i64*, i64** %167, align 8
  %169 = getelementptr inbounds i64, i64* %168, i64 1
  %170 = load i64, i64* %169, align 8
  %171 = add nsw i64 %170, 2
  %172 = call i32 @pCryptDecodeObjectEx(i64 %157, i32 %158, i64* %163, i64 %171, i32 0, i32* null, i32* null, i64* %6)
  store i32 %172, i32* %4, align 4
  %173 = load i32, i32* %4, align 4
  %174 = call i32 (...) @GetLastError()
  %175 = call i32 (i32, i8*, ...) @ok(i32 %173, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %174)
  %176 = call i32 (...) @GetProcessHeap()
  %177 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %178 = load i64, i64* %6, align 8
  %179 = call i32* @HeapAlloc(i32 %176, i32 %177, i64 %178)
  store i32* %179, i32** %5, align 8
  %180 = load i32*, i32** %5, align 8
  %181 = icmp ne i32* %180, null
  br i1 %181, label %182, label %206

182:                                              ; preds = %156
  %183 = load i64, i64* %2, align 8
  %184 = load i32, i32* @X509_EXTENSIONS, align 4
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** @exts, align 8
  %186 = load i64, i64* %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 0
  %189 = load i64*, i64** %188, align 8
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** @exts, align 8
  %191 = load i64, i64* %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 0
  %194 = load i64*, i64** %193, align 8
  %195 = getelementptr inbounds i64, i64* %194, i64 1
  %196 = load i64, i64* %195, align 8
  %197 = add nsw i64 %196, 2
  %198 = load i32*, i32** %5, align 8
  %199 = call i32 @pCryptDecodeObjectEx(i64 %183, i32 %184, i64* %189, i64 %197, i32 0, i32* null, i32* %198, i64* %6)
  store i32 %199, i32* %4, align 4
  %200 = load i32, i32* %4, align 4
  %201 = call i32 (...) @GetLastError()
  %202 = call i32 (i32, i8*, ...) @ok(i32 %200, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %201)
  %203 = call i32 (...) @GetProcessHeap()
  %204 = load i32*, i32** %5, align 8
  %205 = call i32 @HeapFree(i32 %203, i32 0, i32* %204)
  br label %206

206:                                              ; preds = %182, %156
  br label %207

207:                                              ; preds = %206
  %208 = load i64, i64* %3, align 8
  %209 = add i64 %208, 1
  store i64 %209, i64* %3, align 8
  br label %9

210:                                              ; preds = %9
  ret void
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_15__*) #1

declare dso_local i32 @pCryptDecodeObjectEx(i64, i32, i64*, i64, i32, i32*, i32*, i64*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @LocalFree(i32*) #1

declare dso_local i32* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
