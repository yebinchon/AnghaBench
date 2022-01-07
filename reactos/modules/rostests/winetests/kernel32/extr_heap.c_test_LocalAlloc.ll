; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_heap.c_test_LocalAlloc.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_heap.c_test_LocalAlloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"LocalAlloc failed: error=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"LocalAlloc should return a big enough memory block\0A\00", align 1
@LMEM_ZEROINIT = common dso_local global i32 0, align 4
@LMEM_MOVEABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"LocalLock: error=%d\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [56 x i8] c"LocalAlloc should have zeroed out its allocated memory\0A\00", align 1
@NO_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"LocalUnlock Failed: rc=%d err=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"LocalFree failed: %p\0A\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"LocalAlloc failed to create moveable memory, error=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"LocalReAlloc failed, error=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"LocalReAlloc failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"LocalLock Failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [58 x i8] c"LocalReAlloc should have zeroed out its allocated memory\0A\00", align 1
@.str.11 = private unnamed_addr constant [66 x i8] c"LocalHandle didn't return the correct memory handle %p/%p for %p\0A\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"Discarded memory we shouldn't have\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"LocalUnlock Failed\0A\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"LocalFree failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_LocalAlloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_LocalAlloc() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 100000, i64* %1, align 8
  %9 = load i64, i64* %1, align 8
  %10 = call i32* @LocalAlloc(i32 0, i64 %9)
  store i32* %10, i32** %2, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = icmp ne i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 (...) @GetLastError()
  %15 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32*, i32** %2, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %0
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @LocalSize(i32* %19)
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* %1, align 8
  %23 = icmp uge i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %18, %0
  %27 = load i32, i32* @LMEM_ZEROINIT, align 4
  %28 = load i32, i32* @LMEM_MOVEABLE, align 4
  %29 = or i32 %27, %28
  %30 = load i64, i64* %1, align 8
  %31 = call i32* @LocalAlloc(i32 %29, i64 %30)
  store i32* %31, i32** %3, align 8
  %32 = load i32*, i32** %3, align 8
  %33 = icmp ne i32* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 (...) @GetLastError()
  %36 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32*, i32** %3, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %96

39:                                               ; preds = %26
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @LocalSize(i32* %40)
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %1, align 8
  %44 = icmp uge i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32*, i32** %3, align 8
  %48 = call i64* @LocalLock(i32* %47)
  store i64* %48, i64** %6, align 8
  %49 = load i64*, i64** %6, align 8
  %50 = icmp ne i64* %49, null
  %51 = zext i1 %50 to i32
  %52 = call i32 (...) @GetLastError()
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load i64*, i64** %6, align 8
  %55 = icmp ne i64* %54, null
  br i1 %55, label %56, label %95

56:                                               ; preds = %39
  %57 = load i64, i64* @FALSE, align 8
  store i64 %57, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %58

58:                                               ; preds = %71, %56
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* %1, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %58
  %63 = load i64*, i64** %6, align 8
  %64 = load i64, i64* %7, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i64, i64* @TRUE, align 8
  store i64 %69, i64* %8, align 8
  br label %70

70:                                               ; preds = %68, %62
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %7, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %7, align 8
  br label %58

74:                                               ; preds = %58
  %75 = load i64, i64* %8, align 8
  %76 = icmp ne i64 %75, 0
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  %80 = call i32 @SetLastError(i32 0)
  %81 = load i32*, i32** %3, align 8
  %82 = call i64 @LocalUnlock(i32* %81)
  store i64 %82, i64* %8, align 8
  %83 = load i64, i64* %8, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %74
  %86 = call i32 (...) @GetLastError()
  %87 = load i32, i32* @NO_ERROR, align 4
  %88 = icmp eq i32 %86, %87
  br label %89

89:                                               ; preds = %85, %74
  %90 = phi i1 [ false, %74 ], [ %88, %85 ]
  %91 = zext i1 %90 to i32
  %92 = load i64, i64* %8, align 8
  %93 = call i32 (...) @GetLastError()
  %94 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i64 %92, i32 %93)
  br label %95

95:                                               ; preds = %89, %39
  br label %96

96:                                               ; preds = %95, %26
  %97 = load i32*, i32** %3, align 8
  %98 = call i32* @LocalFree(i32* %97)
  store i32* %98, i32** %4, align 8
  %99 = load i32*, i32** %4, align 8
  %100 = icmp eq i32* %99, null
  %101 = zext i1 %100 to i32
  %102 = load i32*, i32** %4, align 8
  %103 = call i32 (i32, i8*, ...) @ok(i32 %101, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32* %102)
  %104 = load i32, i32* @LMEM_MOVEABLE, align 4
  %105 = load i32, i32* @LMEM_ZEROINIT, align 4
  %106 = or i32 %104, %105
  %107 = load i64, i64* %1, align 8
  %108 = call i32* @LocalAlloc(i32 %106, i64 %107)
  store i32* %108, i32** %3, align 8
  %109 = load i32*, i32** %3, align 8
  %110 = icmp ne i32* %109, null
  %111 = zext i1 %110 to i32
  %112 = call i32 (...) @GetLastError()
  %113 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0), i32 %112)
  %114 = load i32*, i32** %3, align 8
  %115 = load i64, i64* %1, align 8
  %116 = mul i64 2, %115
  %117 = trunc i64 %116 to i32
  %118 = load i32, i32* @LMEM_MOVEABLE, align 4
  %119 = load i32, i32* @LMEM_ZEROINIT, align 4
  %120 = or i32 %118, %119
  %121 = call i32* @LocalReAlloc(i32* %114, i32 %117, i32 %120)
  store i32* %121, i32** %4, align 8
  %122 = load i32*, i32** %4, align 8
  %123 = icmp ne i32* %122, null
  %124 = zext i1 %123 to i32
  %125 = call i32 (...) @GetLastError()
  %126 = call i32 (i32, i8*, ...) @ok(i32 %124, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %125)
  %127 = load i32*, i32** %4, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %202

129:                                              ; preds = %96
  %130 = load i32*, i32** %4, align 8
  %131 = call i32 @LocalSize(i32* %130)
  %132 = sext i32 %131 to i64
  %133 = load i64, i64* %1, align 8
  %134 = mul i64 2, %133
  %135 = icmp uge i64 %132, %134
  %136 = zext i1 %135 to i32
  %137 = call i32 (i32, i8*, ...) @ok(i32 %136, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %138 = load i32*, i32** %4, align 8
  %139 = call i64* @LocalLock(i32* %138)
  store i64* %139, i64** %6, align 8
  %140 = load i64*, i64** %6, align 8
  %141 = icmp ne i64* %140, null
  %142 = zext i1 %141 to i32
  %143 = call i32 (i32, i8*, ...) @ok(i32 %142, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %144 = load i64*, i64** %6, align 8
  %145 = icmp ne i64* %144, null
  br i1 %145, label %146, label %201

146:                                              ; preds = %129
  %147 = load i64, i64* @FALSE, align 8
  store i64 %147, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %148

148:                                              ; preds = %163, %146
  %149 = load i64, i64* %7, align 8
  %150 = load i64, i64* %1, align 8
  %151 = icmp ult i64 %149, %150
  br i1 %151, label %152, label %166

152:                                              ; preds = %148
  %153 = load i64*, i64** %6, align 8
  %154 = load i64, i64* %1, align 8
  %155 = load i64, i64* %7, align 8
  %156 = add i64 %154, %155
  %157 = getelementptr inbounds i64, i64* %153, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %152
  %161 = load i64, i64* @TRUE, align 8
  store i64 %161, i64* %8, align 8
  br label %162

162:                                              ; preds = %160, %152
  br label %163

163:                                              ; preds = %162
  %164 = load i64, i64* %7, align 8
  %165 = add i64 %164, 1
  store i64 %165, i64* %7, align 8
  br label %148

166:                                              ; preds = %148
  %167 = load i64, i64* %8, align 8
  %168 = icmp ne i64 %167, 0
  %169 = xor i1 %168, true
  %170 = zext i1 %169 to i32
  %171 = call i32 (i32, i8*, ...) @ok(i32 %170, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.10, i64 0, i64 0))
  %172 = load i64*, i64** %6, align 8
  %173 = call i32* @LocalHandle(i64* %172)
  store i32* %173, i32** %5, align 8
  %174 = load i32*, i32** %5, align 8
  %175 = load i32*, i32** %4, align 8
  %176 = icmp eq i32* %174, %175
  %177 = zext i1 %176 to i32
  %178 = load i32*, i32** %4, align 8
  %179 = load i32*, i32** %5, align 8
  %180 = load i64*, i64** %6, align 8
  %181 = call i32 (i32, i8*, ...) @ok(i32 %177, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.11, i64 0, i64 0), i32* %178, i32* %179, i64* %180)
  %182 = load i32*, i32** %4, align 8
  %183 = call i32* @LocalDiscard(i32* %182)
  store i32* %183, i32** %5, align 8
  %184 = load i32*, i32** %5, align 8
  %185 = icmp eq i32* %184, null
  %186 = zext i1 %185 to i32
  %187 = call i32 (i32, i8*, ...) @ok(i32 %186, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0))
  %188 = load i32, i32* @NO_ERROR, align 4
  %189 = call i32 @SetLastError(i32 %188)
  %190 = load i32*, i32** %4, align 8
  %191 = call i64 @LocalUnlock(i32* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %197, label %193

193:                                              ; preds = %166
  %194 = call i32 (...) @GetLastError()
  %195 = load i32, i32* @NO_ERROR, align 4
  %196 = icmp eq i32 %194, %195
  br label %197

197:                                              ; preds = %193, %166
  %198 = phi i1 [ false, %166 ], [ %196, %193 ]
  %199 = zext i1 %198 to i32
  %200 = call i32 (i32, i8*, ...) @ok(i32 %199, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  br label %201

201:                                              ; preds = %197, %129
  br label %202

202:                                              ; preds = %201, %96
  %203 = load i32*, i32** %2, align 8
  %204 = icmp ne i32* %203, null
  br i1 %204, label %205, label %211

205:                                              ; preds = %202
  %206 = load i32*, i32** %2, align 8
  %207 = call i32* @LocalFree(i32* %206)
  %208 = icmp eq i32* %207, null
  %209 = zext i1 %208 to i32
  %210 = call i32 (i32, i8*, ...) @ok(i32 %209, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0))
  br label %211

211:                                              ; preds = %205, %202
  %212 = load i32*, i32** %4, align 8
  %213 = icmp ne i32* %212, null
  br i1 %213, label %214, label %220

214:                                              ; preds = %211
  %215 = load i32*, i32** %4, align 8
  %216 = call i32* @LocalFree(i32* %215)
  %217 = icmp eq i32* %216, null
  %218 = zext i1 %217 to i32
  %219 = call i32 (i32, i8*, ...) @ok(i32 %218, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0))
  br label %226

220:                                              ; preds = %211
  %221 = load i32*, i32** %3, align 8
  %222 = call i32* @LocalFree(i32* %221)
  %223 = icmp eq i32* %222, null
  %224 = zext i1 %223 to i32
  %225 = call i32 (i32, i8*, ...) @ok(i32 %224, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0))
  br label %226

226:                                              ; preds = %220, %214
  ret void
}

declare dso_local i32* @LocalAlloc(i32, i64) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @LocalSize(i32*) #1

declare dso_local i64* @LocalLock(i32*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @LocalUnlock(i32*) #1

declare dso_local i32* @LocalFree(i32*) #1

declare dso_local i32* @LocalReAlloc(i32*, i32, i32) #1

declare dso_local i32* @LocalHandle(i64*) #1

declare dso_local i32* @LocalDiscard(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
