; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mlang/extr_mlang.c_test_EnumScripts.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mlang/extr_mlang.c_test_EnumScripts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }

@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"IMultiLanguage2_GetNumberOfScripts: expected S_OK/!0, got %08x/%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"total mlang supported scripts %u\0A\00", align 1
@LANG_NEUTRAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"IMultiLanguage2_EnumScripts: expected S_OK/!NULL, got %08x/%p\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"IEnumScript_Reset: expected S_OK, got %08x\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"IEnumScript_Next: expected 65536/E_FAIL, got %u/%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"IEnumScript_Next: expected E_FAIL, got %08x\0A\00", align 1
@S_FALSE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [51 x i8] c"IEnumScript_Next: expected S_FALSE/0, got %08x/%u\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"IEnumScript_Next: expected S_OK, got %08x/%u\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"flags %08x, enumerated scripts %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"IEnumScript_Next: expected %u, got %u\0A\00", align 1
@pGetCPInfoExA = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [48 x i8] c"IEnumScript_Next: expected 1/S_OK, got %u/%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @test_EnumScripts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_EnumScripts(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %5, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @IMultiLanguage2_GetNumberOfScripts(i32* %12, i32* %11)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @S_OK, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br label %20

20:                                               ; preds = %17, %2
  %21 = phi i1 [ false, %2 ], [ %19, %17 ]
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i32 (i32, i8*, i32, ...) @ok(i32 %22, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load i32, i32* %11, align 4
  %27 = call i32 (i8*, i32, ...) @trace(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @LANG_NEUTRAL, align 4
  %31 = call i32 @IMultiLanguage2_EnumScripts(i32* %28, i32 %29, i32 %30, i32** %5)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @S_OK, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %20
  %36 = load i32*, i32** %5, align 8
  %37 = icmp ne i32* %36, null
  br label %38

38:                                               ; preds = %35, %20
  %39 = phi i1 [ false, %20 ], [ %37, %35 ]
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* %8, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 (i32, i8*, i32, ...) @ok(i32 %40, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 %41, i32* %42)
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @IEnumScript_Reset(i32* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @S_OK, align 4
  %48 = icmp eq i32 %46, %47
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* %8, align 4
  %51 = call i32 (i32, i8*, i32, ...) @ok(i32 %49, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  store i32 65536, i32* %10, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @IEnumScript_Next(i32* %52, i32 0, %struct.TYPE_7__* null, i32* %10)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 %54, 65536
  br i1 %55, label %56, label %60

56:                                               ; preds = %38
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @E_FAIL, align 4
  %59 = icmp eq i32 %57, %58
  br label %60

60:                                               ; preds = %56, %38
  %61 = phi i1 [ false, %38 ], [ %59, %56 ]
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 (i32, i8*, i32, ...) @ok(i32 %62, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %63, i32 %64)
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @IEnumScript_Next(i32* %66, i32 0, %struct.TYPE_7__* null, i32* null)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @E_FAIL, align 4
  %70 = icmp eq i32 %68, %69
  %71 = zext i1 %70 to i32
  %72 = load i32, i32* %8, align 4
  %73 = call i32 (i32, i8*, i32, ...) @ok(i32 %71, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %72)
  %74 = call i32 (...) @GetProcessHeap()
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = mul i64 20, %76
  %78 = mul i64 %77, 2
  %79 = trunc i64 %78 to i32
  %80 = call %struct.TYPE_7__* @HeapAlloc(i32 %74, i32 0, i32 %79)
  store %struct.TYPE_7__* %80, %struct.TYPE_7__** %6, align 8
  %81 = load i32, i32* %11, align 4
  %82 = mul nsw i32 %81, 2
  store i32 %82, i32* %10, align 4
  %83 = load i32*, i32** %5, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %85 = call i32 @IEnumScript_Next(i32* %83, i32 0, %struct.TYPE_7__* %84, i32* %10)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @S_FALSE, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %60
  %90 = load i32, i32* %10, align 4
  %91 = icmp eq i32 %90, 0
  br label %92

92:                                               ; preds = %89, %60
  %93 = phi i1 [ false, %60 ], [ %91, %89 ]
  %94 = zext i1 %93 to i32
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %10, align 4
  %97 = call i32 (i32, i8*, i32, ...) @ok(i32 %94, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i32 %95, i32 %96)
  %98 = load i32, i32* %11, align 4
  %99 = mul nsw i32 %98, 2
  store i32 %99, i32* %10, align 4
  %100 = load i32*, i32** %5, align 8
  %101 = load i32, i32* %10, align 4
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %103 = call i32 @IEnumScript_Next(i32* %100, i32 %101, %struct.TYPE_7__* %102, i32* %10)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @S_OK, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %92
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br label %110

110:                                              ; preds = %107, %92
  %111 = phi i1 [ false, %92 ], [ %109, %107 ]
  %112 = zext i1 %111 to i32
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %10, align 4
  %115 = call i32 (i32, i8*, i32, ...) @ok(i32 %112, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i32 %113, i32 %114)
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* %10, align 4
  %118 = call i32 (i8*, i32, ...) @trace(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %116, i32 %117)
  %119 = load i32, i32* %4, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %129, label %121

121:                                              ; preds = %110
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* %11, align 4
  %124 = icmp eq i32 %122, %123
  %125 = zext i1 %124 to i32
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %10, align 4
  %128 = call i32 (i32, i8*, i32, ...) @ok(i32 %125, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %121, %110
  %130 = load i32, i32* %10, align 4
  store i32 %130, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %131

131:                                              ; preds = %141, %129
  %132 = load i64, i64* @pGetCPInfoExA, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %131
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* %10, align 4
  %137 = icmp slt i32 %135, %136
  br label %138

138:                                              ; preds = %134, %131
  %139 = phi i1 [ false, %131 ], [ %137, %134 ]
  br i1 %139, label %140, label %144

140:                                              ; preds = %138
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %9, align 4
  br label %131

144:                                              ; preds = %138
  store i32 1, i32* %10, align 4
  %145 = load i32*, i32** %5, align 8
  %146 = call i32 @IEnumScript_Next(i32* %145, i32 1, %struct.TYPE_7__* %7, i32* %10)
  store i32 %146, i32* %8, align 4
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* @S_FALSE, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %144
  %151 = load i32, i32* %10, align 4
  %152 = icmp eq i32 %151, 0
  br label %153

153:                                              ; preds = %150, %144
  %154 = phi i1 [ false, %144 ], [ %152, %150 ]
  %155 = zext i1 %154 to i32
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* %10, align 4
  %158 = call i32 (i32, i8*, i32, ...) @ok(i32 %155, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i32 %156, i32 %157)
  %159 = load i32*, i32** %5, align 8
  %160 = call i32 @IEnumScript_Reset(i32* %159)
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* @S_OK, align 4
  %163 = icmp eq i32 %161, %162
  %164 = zext i1 %163 to i32
  %165 = load i32, i32* %8, align 4
  %166 = call i32 (i32, i8*, i32, ...) @ok(i32 %164, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %165)
  store i32 0, i32* %10, align 4
  %167 = load i32*, i32** %5, align 8
  %168 = call i32 @IEnumScript_Next(i32* %167, i32 1, %struct.TYPE_7__* %7, i32* %10)
  store i32 %168, i32* %8, align 4
  %169 = load i32, i32* %10, align 4
  %170 = icmp eq i32 %169, 1
  br i1 %170, label %171, label %175

171:                                              ; preds = %153
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* @S_OK, align 4
  %174 = icmp eq i32 %172, %173
  br label %175

175:                                              ; preds = %171, %153
  %176 = phi i1 [ false, %153 ], [ %174, %171 ]
  %177 = zext i1 %176 to i32
  %178 = load i32, i32* %10, align 4
  %179 = load i32, i32* %8, align 4
  %180 = call i32 (i32, i8*, i32, ...) @ok(i32 %177, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0), i32 %178, i32 %179)
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %182 = call i32 @scriptinfo_cmp(%struct.TYPE_7__* %181, %struct.TYPE_7__* %7)
  store i32 0, i32* %9, align 4
  br label %183

183:                                              ; preds = %209, %175
  %184 = load i32, i32* %9, align 4
  %185 = load i32, i32* %11, align 4
  %186 = sub nsw i32 %185, 1
  %187 = icmp slt i32 %184, %186
  br i1 %187, label %188, label %212

188:                                              ; preds = %183
  store i32 0, i32* %10, align 4
  %189 = load i32*, i32** %5, align 8
  %190 = call i32 @IEnumScript_Next(i32* %189, i32 1, %struct.TYPE_7__* %7, i32* %10)
  store i32 %190, i32* %8, align 4
  %191 = load i32, i32* %10, align 4
  %192 = icmp eq i32 %191, 1
  br i1 %192, label %193, label %197

193:                                              ; preds = %188
  %194 = load i32, i32* %8, align 4
  %195 = load i32, i32* @S_OK, align 4
  %196 = icmp eq i32 %194, %195
  br label %197

197:                                              ; preds = %193, %188
  %198 = phi i1 [ false, %188 ], [ %196, %193 ]
  %199 = zext i1 %198 to i32
  %200 = load i32, i32* %10, align 4
  %201 = load i32, i32* %8, align 4
  %202 = call i32 (i32, i8*, i32, ...) @ok(i32 %199, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0), i32 %200, i32 %201)
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %204 = load i32, i32* %9, align 4
  %205 = add nsw i32 %204, 1
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i64 %206
  %208 = call i32 @scriptinfo_cmp(%struct.TYPE_7__* %207, %struct.TYPE_7__* %7)
  br label %209

209:                                              ; preds = %197
  %210 = load i32, i32* %9, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %9, align 4
  br label %183

212:                                              ; preds = %183
  %213 = call i32 (...) @GetProcessHeap()
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %215 = call i32 @HeapFree(i32 %213, i32 0, %struct.TYPE_7__* %214)
  %216 = load i32*, i32** %5, align 8
  %217 = call i32 @IEnumScript_Release(i32* %216)
  ret void
}

declare dso_local i32 @IMultiLanguage2_GetNumberOfScripts(i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @trace(i8*, i32, ...) #1

declare dso_local i32 @IMultiLanguage2_EnumScripts(i32*, i32, i32, i32**) #1

declare dso_local i32 @IEnumScript_Reset(i32*) #1

declare dso_local i32 @IEnumScript_Next(i32*, i32, %struct.TYPE_7__*, i32*) #1

declare dso_local %struct.TYPE_7__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @scriptinfo_cmp(%struct.TYPE_7__*, %struct.TYPE_7__*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @IEnumScript_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
