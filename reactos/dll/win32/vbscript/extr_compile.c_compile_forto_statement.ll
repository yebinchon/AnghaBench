; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_compile.c_compile_forto_statement.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_compile.c_compile_forto_statement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_11__ = type { i32, i64, i64, i64, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i8*, i64 }
%struct.TYPE_8__ = type { i8*, i64 }

@__const.compile_forto_statement.loop_ctx = private unnamed_addr constant %struct.TYPE_10__ { i32 2, i64 0 }, align 8
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@OP_assign_ident = common dso_local global i32 0, align 4
@OP_val = common dso_local global i32 0, align 4
@OP_short = common dso_local global i32 0, align 4
@OP_step = common dso_local global i32 0, align 4
@OP_incc = common dso_local global i32 0, align 4
@OP_jmp = common dso_local global i32 0, align 4
@OP_pop = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_11__*)* @compile_forto_statement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compile_forto_statement(i32* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %11 = bitcast %struct.TYPE_10__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.TYPE_10__* @__const.compile_forto_statement.loop_ctx to i8*), i64 16, i1 false)
  %12 = load i32*, i32** %4, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call i8* @alloc_bstr_arg(i32* %12, i32 %15)
  store i8* %16, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %20, i32* %3, align 4
  br label %195

21:                                               ; preds = %2
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @compile_expression(i32* %22, i64 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i64 @FAILED(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %3, align 4
  br label %195

32:                                               ; preds = %21
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* @OP_assign_ident, align 4
  %35 = call i32 @push_instr(i32* %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %39, i32* %3, align 4
  br label %195

40:                                               ; preds = %32
  %41 = load i8*, i8** %9, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call %struct.TYPE_12__* @instr_ptr(i32* %42, i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  store i8* %41, i8** %46, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call %struct.TYPE_12__* @instr_ptr(i32* %47, i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load i32*, i32** %4, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @compile_expression(i32* %52, i64 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i64 @FAILED(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %40
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %3, align 4
  br label %195

62:                                               ; preds = %40
  %63 = load i32*, i32** %4, align 8
  %64 = load i32, i32* @OP_val, align 4
  %65 = call i32 @push_instr(i32* %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %68, i32* %3, align 4
  br label %195

69:                                               ; preds = %62
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %93

74:                                               ; preds = %69
  %75 = load i32*, i32** %4, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @compile_expression(i32* %75, i64 %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i64 @FAILED(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %74
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %3, align 4
  br label %195

85:                                               ; preds = %74
  %86 = load i32*, i32** %4, align 8
  %87 = load i32, i32* @OP_val, align 4
  %88 = call i32 @push_instr(i32* %86, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %85
  %91 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %91, i32* %3, align 4
  br label %195

92:                                               ; preds = %85
  br label %103

93:                                               ; preds = %69
  %94 = load i32*, i32** %4, align 8
  %95 = load i32, i32* @OP_short, align 4
  %96 = call i32 @push_instr_int(i32* %94, i32 %95, i32 1)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = call i64 @FAILED(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %3, align 4
  br label %195

102:                                              ; preds = %93
  br label %103

103:                                              ; preds = %102, %92
  %104 = load i32*, i32** %4, align 8
  %105 = call i64 @alloc_label(i32* %104)
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  store i64 %105, i64* %106, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %103
  %111 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %111, i32* %3, align 4
  br label %195

112:                                              ; preds = %103
  %113 = load i32*, i32** %4, align 8
  %114 = load i32, i32* @OP_step, align 4
  %115 = call i32 @push_instr(i32* %113, i32 %114)
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %112
  %119 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %119, i32* %3, align 4
  br label %195

120:                                              ; preds = %112
  %121 = load i8*, i8** %9, align 8
  %122 = load i32*, i32** %4, align 8
  %123 = load i32, i32* %7, align 4
  %124 = call %struct.TYPE_12__* @instr_ptr(i32* %122, i32 %123)
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  store i8* %121, i8** %126, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i32*, i32** %4, align 8
  %130 = load i32, i32* %7, align 4
  %131 = call %struct.TYPE_12__* @instr_ptr(i32* %129, i32 %130)
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  store i64 %128, i64* %133, align 8
  %134 = load i32*, i32** %4, align 8
  %135 = call i32 @emit_catch(i32* %134, i32 2)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %120
  %138 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %138, i32* %3, align 4
  br label %195

139:                                              ; preds = %120
  %140 = load i32*, i32** %4, align 8
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @compile_statement(i32* %140, %struct.TYPE_10__* %6, i32 %143)
  store i32 %144, i32* %10, align 4
  %145 = load i32, i32* %10, align 4
  %146 = call i64 @FAILED(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %139
  %149 = load i32, i32* %10, align 4
  store i32 %149, i32* %3, align 4
  br label %195

150:                                              ; preds = %139
  %151 = load i32*, i32** %4, align 8
  %152 = load i32, i32* @OP_incc, align 4
  %153 = call i32 @push_instr(i32* %151, i32 %152)
  store i32 %153, i32* %8, align 4
  %154 = load i32, i32* %8, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %158, label %156

156:                                              ; preds = %150
  %157 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %157, i32* %3, align 4
  br label %195

158:                                              ; preds = %150
  %159 = load i8*, i8** %9, align 8
  %160 = load i32*, i32** %4, align 8
  %161 = load i32, i32* %8, align 4
  %162 = call %struct.TYPE_12__* @instr_ptr(i32* %160, i32 %161)
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 0
  store i8* %159, i8** %164, align 8
  %165 = load i32*, i32** %4, align 8
  %166 = load i32, i32* @OP_jmp, align 4
  %167 = load i32, i32* %7, align 4
  %168 = call i32 @push_instr_addr(i32* %165, i32 %166, i32 %167)
  store i32 %168, i32* %10, align 4
  %169 = load i32, i32* %10, align 4
  %170 = call i64 @FAILED(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %158
  %173 = load i32, i32* %10, align 4
  store i32 %173, i32* %3, align 4
  br label %195

174:                                              ; preds = %158
  %175 = load i32*, i32** %4, align 8
  %176 = load i32, i32* @OP_pop, align 4
  %177 = call i32 @push_instr_uint(i32* %175, i32 %176, i32 2)
  store i32 %177, i32* %10, align 4
  %178 = load i32, i32* %10, align 4
  %179 = call i64 @FAILED(i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %174
  %182 = load i32, i32* %10, align 4
  store i32 %182, i32* %3, align 4
  br label %195

183:                                              ; preds = %174
  %184 = load i32*, i32** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = call i32 @label_set_addr(i32* %184, i64 %186)
  %188 = load i32*, i32** %4, align 8
  %189 = call i32 @emit_catch(i32* %188, i32 0)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %193, label %191

191:                                              ; preds = %183
  %192 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %192, i32* %3, align 4
  br label %195

193:                                              ; preds = %183
  %194 = load i32, i32* @S_OK, align 4
  store i32 %194, i32* %3, align 4
  br label %195

195:                                              ; preds = %193, %191, %181, %172, %156, %148, %137, %118, %110, %100, %90, %83, %67, %60, %38, %30, %19
  %196 = load i32, i32* %3, align 4
  ret i32 %196
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @alloc_bstr_arg(i32*, i32) #2

declare dso_local i32 @compile_expression(i32*, i64) #2

declare dso_local i64 @FAILED(i32) #2

declare dso_local i32 @push_instr(i32*, i32) #2

declare dso_local %struct.TYPE_12__* @instr_ptr(i32*, i32) #2

declare dso_local i32 @push_instr_int(i32*, i32, i32) #2

declare dso_local i64 @alloc_label(i32*) #2

declare dso_local i32 @emit_catch(i32*, i32) #2

declare dso_local i32 @compile_statement(i32*, %struct.TYPE_10__*, i32) #2

declare dso_local i32 @push_instr_addr(i32*, i32, i32) #2

declare dso_local i32 @push_instr_uint(i32*, i32, i32) #2

declare dso_local i32 @label_set_addr(i32*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
