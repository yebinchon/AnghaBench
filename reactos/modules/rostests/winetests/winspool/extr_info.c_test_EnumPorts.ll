; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/winspool/extr_info.c_test_EnumPorts.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/winspool/extr_info.c_test_EnumPorts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_INVALID_LEVEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [94 x i8] c"(%d) returned %d with %d and 0x%08x (expected '0' with ERROR_INVALID_LEVEL or '!=0' and 0x0)\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Level %d not supported\0A\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [72 x i8] c"(%d) returned %d with %d (expected '0' with ERROR_INSUFFICIENT_BUFFER)\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"(%d) returned %d with %d (expected '!=0')\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"(%d) returned %d (expected %d)\0A\00", align 1
@RPC_X_NULL_REF_POINTER = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [92 x i8] c"(%d) returned %d with %d (expected '0' with RPC_X_NULL_REF_POINTER or '!=0' with NO_ERROR)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_EnumPorts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_EnumPorts() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %7

7:                                                ; preds = %201, %0
  %8 = load i32, i32* %2, align 4
  %9 = icmp slt i32 %8, 4
  br i1 %9, label %10, label %204

10:                                               ; preds = %7
  store i32 -559038737, i32* %4, align 4
  store i32 -559038737, i32* %6, align 4
  %11 = call i32 @SetLastError(i32 -559038737)
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @EnumPortsA(i32* null, i32 %12, i32* null, i32 0, i32* %4, i32* %6)
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* %1, align 4
  %15 = call i32 (...) @GetLastError()
  %16 = call i64 @is_spooler_deactivated(i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  br label %204

19:                                               ; preds = %10
  %20 = load i32, i32* %2, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* %2, align 4
  %24 = icmp sgt i32 %23, 2
  br i1 %24, label %25, label %48

25:                                               ; preds = %22, %19
  %26 = load i32, i32* %1, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = call i32 (...) @GetLastError()
  %30 = load i32, i32* @ERROR_INVALID_LEVEL, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %40, label %32

32:                                               ; preds = %28, %25
  %33 = load i32, i32* %1, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 0
  br label %38

38:                                               ; preds = %35, %32
  %39 = phi i1 [ false, %32 ], [ %37, %35 ]
  br label %40

40:                                               ; preds = %38, %28
  %41 = phi i1 [ true, %28 ], [ %39, %38 ]
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* %1, align 4
  %45 = call i32 (...) @GetLastError()
  %46 = load i32, i32* %6, align 4
  %47 = call i32 (i32, i8*, i32, i32, i32, ...) @ok(i32 %42, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44, i32 %45, i32 %46)
  br label %201

48:                                               ; preds = %22
  %49 = load i32, i32* %1, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %48
  %52 = call i32 (...) @GetLastError()
  %53 = load i32, i32* @ERROR_INVALID_LEVEL, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* %2, align 4
  %57 = call i32 @skip(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  br label %201

58:                                               ; preds = %51, %48
  %59 = load i32, i32* %1, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = call i32 (...) @GetLastError()
  %63 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %64 = icmp eq i32 %62, %63
  br label %65

65:                                               ; preds = %61, %58
  %66 = phi i1 [ false, %58 ], [ %64, %61 ]
  %67 = zext i1 %66 to i32
  %68 = load i32, i32* %2, align 4
  %69 = load i32, i32* %1, align 4
  %70 = call i32 (...) @GetLastError()
  %71 = call i32 (i32, i8*, i32, i32, i32, ...) @ok(i32 %67, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i32 %68, i32 %69, i32 %70)
  %72 = call i32 (...) @GetProcessHeap()
  %73 = load i32, i32* %4, align 4
  %74 = mul nsw i32 %73, 2
  %75 = call i32* @HeapAlloc(i32 %72, i32 0, i32 %74)
  store i32* %75, i32** %3, align 8
  %76 = load i32*, i32** %3, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %65
  br label %201

79:                                               ; preds = %65
  store i32 -559038737, i32* %5, align 4
  %80 = call i32 @SetLastError(i32 -559038737)
  %81 = load i32, i32* %2, align 4
  %82 = load i32*, i32** %3, align 8
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @EnumPortsA(i32* null, i32 %81, i32* %82, i32 %83, i32* %5, i32* %6)
  store i32 %84, i32* %1, align 4
  %85 = load i32, i32* %1, align 4
  %86 = load i32, i32* %2, align 4
  %87 = load i32, i32* %1, align 4
  %88 = call i32 (...) @GetLastError()
  %89 = call i32 (i32, i8*, i32, i32, i32, ...) @ok(i32 %85, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %86, i32 %87, i32 %88)
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* %4, align 4
  %92 = icmp eq i32 %90, %91
  %93 = zext i1 %92 to i32
  %94 = load i32, i32* %2, align 4
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* %4, align 4
  %97 = call i32 (i32, i8*, i32, i32, i32, ...) @ok(i32 %93, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %94, i32 %95, i32 %96)
  store i32 -559038737, i32* %5, align 4
  store i32 -559038737, i32* %6, align 4
  %98 = call i32 @SetLastError(i32 -559038737)
  %99 = load i32, i32* %2, align 4
  %100 = load i32*, i32** %3, align 8
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %101, 1
  %103 = call i32 @EnumPortsA(i32* null, i32 %99, i32* %100, i32 %102, i32* %5, i32* %6)
  store i32 %103, i32* %1, align 4
  %104 = load i32, i32* %1, align 4
  %105 = load i32, i32* %2, align 4
  %106 = load i32, i32* %1, align 4
  %107 = call i32 (...) @GetLastError()
  %108 = call i32 (i32, i8*, i32, i32, i32, ...) @ok(i32 %104, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %105, i32 %106, i32 %107)
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* %4, align 4
  %111 = icmp eq i32 %109, %110
  %112 = zext i1 %111 to i32
  %113 = load i32, i32* %2, align 4
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* %4, align 4
  %116 = call i32 (i32, i8*, i32, i32, i32, ...) @ok(i32 %112, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %113, i32 %114, i32 %115)
  store i32 -559038737, i32* %5, align 4
  %117 = call i32 @SetLastError(i32 -559038737)
  %118 = load i32, i32* %2, align 4
  %119 = load i32*, i32** %3, align 8
  %120 = load i32, i32* %4, align 4
  %121 = sub nsw i32 %120, 1
  %122 = call i32 @EnumPortsA(i32* null, i32 %118, i32* %119, i32 %121, i32* %5, i32* %6)
  store i32 %122, i32* %1, align 4
  %123 = load i32, i32* %1, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %79
  %126 = call i32 (...) @GetLastError()
  %127 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %128 = icmp eq i32 %126, %127
  br label %129

129:                                              ; preds = %125, %79
  %130 = phi i1 [ false, %79 ], [ %128, %125 ]
  %131 = zext i1 %130 to i32
  %132 = load i32, i32* %2, align 4
  %133 = load i32, i32* %1, align 4
  %134 = call i32 (...) @GetLastError()
  %135 = call i32 (i32, i8*, i32, i32, i32, ...) @ok(i32 %131, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i32 %132, i32 %133, i32 %134)
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* %4, align 4
  %138 = icmp eq i32 %136, %137
  %139 = zext i1 %138 to i32
  %140 = load i32, i32* %2, align 4
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* %4, align 4
  %143 = call i32 (i32, i8*, i32, i32, i32, ...) @ok(i32 %139, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %140, i32 %141, i32 %142)
  %144 = call i32 @SetLastError(i32 -559038737)
  %145 = load i32, i32* %2, align 4
  %146 = load i32*, i32** %3, align 8
  %147 = load i32, i32* %4, align 4
  %148 = call i32 @EnumPortsA(i32* null, i32 %145, i32* %146, i32 %147, i32* null, i32* %6)
  store i32 %148, i32* %1, align 4
  %149 = load i32, i32* %1, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %129
  %152 = call i32 (...) @GetLastError()
  %153 = load i32, i32* @RPC_X_NULL_REF_POINTER, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %164, label %155

155:                                              ; preds = %151, %129
  %156 = load i32, i32* %1, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %155
  %159 = call i32 (...) @GetLastError()
  %160 = load i32, i32* @ERROR_SUCCESS, align 4
  %161 = icmp eq i32 %159, %160
  br label %162

162:                                              ; preds = %158, %155
  %163 = phi i1 [ false, %155 ], [ %161, %158 ]
  br label %164

164:                                              ; preds = %162, %151
  %165 = phi i1 [ true, %151 ], [ %163, %162 ]
  %166 = zext i1 %165 to i32
  %167 = load i32, i32* %2, align 4
  %168 = load i32, i32* %1, align 4
  %169 = call i32 (...) @GetLastError()
  %170 = call i32 (i32, i8*, i32, i32, i32, ...) @ok(i32 %166, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.5, i64 0, i64 0), i32 %167, i32 %168, i32 %169)
  %171 = call i32 @SetLastError(i32 -559038737)
  %172 = load i32, i32* %2, align 4
  %173 = load i32*, i32** %3, align 8
  %174 = load i32, i32* %4, align 4
  %175 = call i32 @EnumPortsA(i32* null, i32 %172, i32* %173, i32 %174, i32* %5, i32* null)
  store i32 %175, i32* %1, align 4
  %176 = load i32, i32* %1, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %182, label %178

178:                                              ; preds = %164
  %179 = call i32 (...) @GetLastError()
  %180 = load i32, i32* @RPC_X_NULL_REF_POINTER, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %191, label %182

182:                                              ; preds = %178, %164
  %183 = load i32, i32* %1, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %182
  %186 = call i32 (...) @GetLastError()
  %187 = load i32, i32* @ERROR_SUCCESS, align 4
  %188 = icmp eq i32 %186, %187
  br label %189

189:                                              ; preds = %185, %182
  %190 = phi i1 [ false, %182 ], [ %188, %185 ]
  br label %191

191:                                              ; preds = %189, %178
  %192 = phi i1 [ true, %178 ], [ %190, %189 ]
  %193 = zext i1 %192 to i32
  %194 = load i32, i32* %2, align 4
  %195 = load i32, i32* %1, align 4
  %196 = call i32 (...) @GetLastError()
  %197 = call i32 (i32, i8*, i32, i32, i32, ...) @ok(i32 %193, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.5, i64 0, i64 0), i32 %194, i32 %195, i32 %196)
  %198 = call i32 (...) @GetProcessHeap()
  %199 = load i32*, i32** %3, align 8
  %200 = call i32 @HeapFree(i32 %198, i32 0, i32* %199)
  br label %201

201:                                              ; preds = %191, %78, %55, %40
  %202 = load i32, i32* %2, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %2, align 4
  br label %7

204:                                              ; preds = %18, %7
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @EnumPortsA(i32*, i32, i32*, i32, i32*, i32*) #1

declare dso_local i64 @is_spooler_deactivated(i32, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @ok(i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @skip(i8*, i32) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
