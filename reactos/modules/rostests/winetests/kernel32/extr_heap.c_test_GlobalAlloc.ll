; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_heap.c_test_GlobalAlloc.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_heap.c_test_GlobalAlloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NO_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"GlobalAlloc failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"GlobalAlloc should return a big enough memory block\0A\00", align 1
@GMEM_ZEROINIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"GlobalAlloc failed: error=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c"GlobalLock should have returned the same memory as was allocated\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [57 x i8] c"GlobalAlloc should have zeroed out its allocated memory\0A\00", align 1
@GMEM_MODIFY = common dso_local global i32 0, align 4
@GMEM_MOVEABLE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [54 x i8] c"Converting from FIXED to MOVEABLE didn't REALLY work\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"GlobalReAlloc failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"GlobalLock Failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [59 x i8] c"GlobalReAlloc should have zeroed out its allocated memory\0A\00", align 1
@.str.9 = private unnamed_addr constant [67 x i8] c"GlobalHandle didn't return the correct memory handle %p/%p for %p\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"GlobalUnlock Failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"GlobalFree failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GlobalAlloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GlobalAlloc() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 100000, i64* %1, align 8
  %9 = load i64, i64* @NO_ERROR, align 8
  %10 = call i32 @SetLastError(i64 %9)
  %11 = load i64, i64* %1, align 8
  %12 = call i64* @GlobalAlloc(i32 0, i64 %11)
  store i64* %12, i64** %2, align 8
  %13 = load i64*, i64** %2, align 8
  %14 = icmp ne i64* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 (i32, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %17 = load i64*, i64** %2, align 8
  %18 = icmp ne i64* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %0
  %20 = load i64*, i64** %2, align 8
  %21 = call i32 @GlobalSize(i64* %20)
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* %1, align 8
  %24 = icmp uge i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %19, %0
  %28 = load i32, i32* @GMEM_ZEROINIT, align 4
  %29 = load i64, i64* %1, align 8
  %30 = call i64* @GlobalAlloc(i32 %28, i64 %29)
  store i64* %30, i64** %3, align 8
  %31 = load i64*, i64** %3, align 8
  %32 = icmp ne i64* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i64 (...) @GetLastError()
  %35 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %34)
  %36 = load i64*, i64** %3, align 8
  %37 = icmp ne i64* %36, null
  br i1 %37, label %38, label %80

38:                                               ; preds = %27
  %39 = load i64*, i64** %3, align 8
  %40 = call i32 @GlobalSize(i64* %39)
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %1, align 8
  %43 = icmp uge i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i64*, i64** %3, align 8
  %47 = call i64* @GlobalLock(i64* %46)
  store i64* %47, i64** %6, align 8
  %48 = load i64*, i64** %6, align 8
  %49 = load i64*, i64** %3, align 8
  %50 = icmp eq i64* %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0))
  %53 = load i64*, i64** %6, align 8
  %54 = icmp ne i64* %53, null
  br i1 %54, label %55, label %79

55:                                               ; preds = %38
  %56 = load i64, i64* @FALSE, align 8
  store i64 %56, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %57

57:                                               ; preds = %70, %55
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* %1, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %57
  %62 = load i64*, i64** %6, align 8
  %63 = load i64, i64* %7, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i64, i64* @TRUE, align 8
  store i64 %68, i64* %8, align 8
  br label %69

69:                                               ; preds = %67, %61
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %7, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %7, align 8
  br label %57

73:                                               ; preds = %57
  %74 = load i64, i64* %8, align 8
  %75 = icmp ne i64 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0))
  br label %79

79:                                               ; preds = %73, %38
  br label %80

80:                                               ; preds = %79, %27
  %81 = load i64*, i64** %3, align 8
  %82 = load i32, i32* @GMEM_MODIFY, align 4
  %83 = load i32, i32* @GMEM_MOVEABLE, align 4
  %84 = or i32 %82, %83
  %85 = call i64* @GlobalReAlloc(i64* %81, i32 0, i32 %84)
  store i64* %85, i64** %4, align 8
  %86 = load i64*, i64** %4, align 8
  %87 = icmp ne i64* %86, null
  br i1 %87, label %88, label %106

88:                                               ; preds = %80
  %89 = load i64*, i64** %4, align 8
  store i64* %89, i64** %3, align 8
  %90 = load i64*, i64** %4, align 8
  %91 = call i64* @GlobalLock(i64* %90)
  store i64* %91, i64** %6, align 8
  %92 = load i64*, i64** %6, align 8
  %93 = icmp ne i64* %92, null
  br i1 %93, label %94, label %102

94:                                               ; preds = %88
  %95 = load i64*, i64** %4, align 8
  %96 = call i32 @GlobalUnlock(i64* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %94
  %99 = call i64 (...) @GetLastError()
  %100 = load i64, i64* @NO_ERROR, align 8
  %101 = icmp eq i64 %99, %100
  br label %102

102:                                              ; preds = %98, %94, %88
  %103 = phi i1 [ false, %94 ], [ false, %88 ], [ %101, %98 ]
  %104 = zext i1 %103 to i32
  %105 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0))
  br label %106

106:                                              ; preds = %102, %80
  %107 = load i64*, i64** %3, align 8
  %108 = load i64, i64* %1, align 8
  %109 = mul i64 2, %108
  %110 = trunc i64 %109 to i32
  %111 = load i32, i32* @GMEM_MOVEABLE, align 4
  %112 = load i32, i32* @GMEM_ZEROINIT, align 4
  %113 = or i32 %111, %112
  %114 = call i64* @GlobalReAlloc(i64* %107, i32 %110, i32 %113)
  store i64* %114, i64** %4, align 8
  %115 = load i64*, i64** %4, align 8
  %116 = icmp ne i64* %115, null
  %117 = zext i1 %116 to i32
  %118 = call i32 (i32, i8*, ...) @ok(i32 %117, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %119 = load i64*, i64** %4, align 8
  %120 = icmp ne i64* %119, null
  br i1 %120, label %121, label %192

121:                                              ; preds = %106
  %122 = load i64*, i64** %4, align 8
  %123 = call i32 @GlobalSize(i64* %122)
  %124 = sext i32 %123 to i64
  %125 = load i64, i64* %1, align 8
  %126 = mul i64 2, %125
  %127 = icmp uge i64 %124, %126
  %128 = zext i1 %127 to i32
  %129 = call i32 (i32, i8*, ...) @ok(i32 %128, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %130 = load i64*, i64** %4, align 8
  %131 = call i64* @GlobalLock(i64* %130)
  store i64* %131, i64** %6, align 8
  %132 = load i64*, i64** %6, align 8
  %133 = icmp ne i64* %132, null
  %134 = zext i1 %133 to i32
  %135 = call i32 (i32, i8*, ...) @ok(i32 %134, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %136 = load i64*, i64** %6, align 8
  %137 = icmp ne i64* %136, null
  br i1 %137, label %138, label %191

138:                                              ; preds = %121
  %139 = load i64, i64* @FALSE, align 8
  store i64 %139, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %140

140:                                              ; preds = %155, %138
  %141 = load i64, i64* %7, align 8
  %142 = load i64, i64* %1, align 8
  %143 = icmp ult i64 %141, %142
  br i1 %143, label %144, label %158

144:                                              ; preds = %140
  %145 = load i64*, i64** %6, align 8
  %146 = load i64, i64* %1, align 8
  %147 = load i64, i64* %7, align 8
  %148 = add i64 %146, %147
  %149 = getelementptr inbounds i64, i64* %145, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %144
  %153 = load i64, i64* @TRUE, align 8
  store i64 %153, i64* %8, align 8
  br label %154

154:                                              ; preds = %152, %144
  br label %155

155:                                              ; preds = %154
  %156 = load i64, i64* %7, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %7, align 8
  br label %140

158:                                              ; preds = %140
  %159 = load i64, i64* %8, align 8
  %160 = icmp ne i64 %159, 0
  %161 = xor i1 %160, true
  %162 = zext i1 %161 to i32
  %163 = call i32 (i32, i8*, ...) @ok(i32 %162, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.8, i64 0, i64 0))
  %164 = load i64*, i64** %6, align 8
  %165 = call i64* @GlobalHandle(i64* %164)
  store i64* %165, i64** %5, align 8
  %166 = load i64*, i64** %5, align 8
  %167 = load i64*, i64** %4, align 8
  %168 = icmp eq i64* %166, %167
  %169 = zext i1 %168 to i32
  %170 = load i64*, i64** %4, align 8
  %171 = load i64*, i64** %5, align 8
  %172 = load i64*, i64** %6, align 8
  %173 = call i32 (i32, i8*, ...) @ok(i32 %169, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.9, i64 0, i64 0), i64* %170, i64* %171, i64* %172)
  %174 = load i64*, i64** %4, align 8
  %175 = call i64* @GlobalDiscard(i64* %174)
  store i64* %175, i64** %5, align 8
  %176 = load i64*, i64** %5, align 8
  %177 = icmp eq i64* %176, null
  br i1 %177, label %178, label %190

178:                                              ; preds = %158
  %179 = load i64*, i64** %4, align 8
  %180 = call i32 @GlobalUnlock(i64* %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %186, label %182

182:                                              ; preds = %178
  %183 = call i64 (...) @GetLastError()
  %184 = load i64, i64* @NO_ERROR, align 8
  %185 = icmp eq i64 %183, %184
  br label %186

186:                                              ; preds = %182, %178
  %187 = phi i1 [ false, %178 ], [ %185, %182 ]
  %188 = zext i1 %187 to i32
  %189 = call i32 (i32, i8*, ...) @ok(i32 %188, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  br label %190

190:                                              ; preds = %186, %158
  br label %191

191:                                              ; preds = %190, %121
  br label %192

192:                                              ; preds = %191, %106
  %193 = load i64*, i64** %2, align 8
  %194 = icmp ne i64* %193, null
  br i1 %194, label %195, label %201

195:                                              ; preds = %192
  %196 = load i64*, i64** %2, align 8
  %197 = call i32* @GlobalFree(i64* %196)
  %198 = icmp eq i32* %197, null
  %199 = zext i1 %198 to i32
  %200 = call i32 (i32, i8*, ...) @ok(i32 %199, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  br label %201

201:                                              ; preds = %195, %192
  %202 = load i64*, i64** %4, align 8
  %203 = icmp ne i64* %202, null
  br i1 %203, label %204, label %210

204:                                              ; preds = %201
  %205 = load i64*, i64** %4, align 8
  %206 = call i32* @GlobalFree(i64* %205)
  %207 = icmp eq i32* %206, null
  %208 = zext i1 %207 to i32
  %209 = call i32 (i32, i8*, ...) @ok(i32 %208, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  br label %216

210:                                              ; preds = %201
  %211 = load i64*, i64** %3, align 8
  %212 = call i32* @GlobalFree(i64* %211)
  %213 = icmp eq i32* %212, null
  %214 = zext i1 %213 to i32
  %215 = call i32 (i32, i8*, ...) @ok(i32 %214, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  br label %216

216:                                              ; preds = %210, %204
  ret void
}

declare dso_local i32 @SetLastError(i64) #1

declare dso_local i64* @GlobalAlloc(i32, i64) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GlobalSize(i64*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i64* @GlobalLock(i64*) #1

declare dso_local i64* @GlobalReAlloc(i64*, i32, i32) #1

declare dso_local i32 @GlobalUnlock(i64*) #1

declare dso_local i64* @GlobalHandle(i64*) #1

declare dso_local i64* @GlobalDiscard(i64*) #1

declare dso_local i32* @GlobalFree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
