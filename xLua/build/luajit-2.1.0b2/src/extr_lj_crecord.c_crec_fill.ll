; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_crecord.c_crec_fill.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_crecord.c_crec_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@CREC_FILL_MAXUNROLL = common dso_local global i32 0, align 4
@LJ_TARGET_UNALIGNED = common dso_local global i64 0, align 8
@CTSIZE_PTR = common dso_local global i32 0, align 4
@IRT_U8 = common dso_local global i64 0, align 8
@IRT_INT = common dso_local global i64 0, align 8
@IRT_U64 = common dso_local global i64 0, align 8
@IRT_U32 = common dso_local global i64 0, align 8
@IR_MUL = common dso_local global i32 0, align 4
@IRT_U16 = common dso_local global i64 0, align 8
@IRCALL_memset = common dso_local global i32 0, align 4
@IR_XBAR = common dso_local global i32 0, align 4
@IRT_NIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32)* @crec_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crec_fill(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i64 @tref_isk(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %128

19:                                               ; preds = %5
  %20 = load i32, i32* @CREC_FILL_MAXUNROLL, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %11, align 8
  %23 = alloca %struct.TYPE_5__, i64 %21, align 16
  store i64 %21, i64* %12, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @tref_ref(i32 %24)
  %26 = call %struct.TYPE_6__* @IR(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  store i32 1, i32* %15, align 4
  br label %124

32:                                               ; preds = %19
  %33 = load i64, i64* @LJ_TARGET_UNALIGNED, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @CTSIZE_PTR, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35, %32
  %40 = load i32, i32* @CTSIZE_PTR, align 4
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %39, %35
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @CREC_FILL_MAXUNROLL, align 4
  %44 = mul nsw i32 %42, %43
  %45 = load i32, i32* %14, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 2, i32* %15, align 4
  br label %124

48:                                               ; preds = %41
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @crec_fill_unroll(%struct.TYPE_5__* %23, i32 %49, i32 %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %48
  store i32 2, i32* %15, align 4
  br label %124

55:                                               ; preds = %48
  %56 = load i32, i32* %9, align 4
  %57 = call i64 @tref_isk(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 16
  %63 = load i64, i64* @IRT_U8, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %59, %55
  %66 = load i32, i32* %9, align 4
  %67 = load i64, i64* @IRT_INT, align 8
  %68 = load i64, i64* @IRT_U8, align 8
  %69 = call i32 @emitconv(i32 %66, i64 %67, i64 %68, i32 0)
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %65, %59
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 16
  %74 = load i64, i64* @IRT_U8, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %118

76:                                               ; preds = %70
  %77 = load i32, i32* @CTSIZE_PTR, align 4
  %78 = icmp eq i32 %77, 8
  br i1 %78, label %79, label %103

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 16
  %83 = load i64, i64* @IRT_U64, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %103

85:                                               ; preds = %79
  %86 = load i32, i32* %9, align 4
  %87 = call i64 @tref_isk(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = load i32, i32* %9, align 4
  %91 = load i64, i64* @IRT_U64, align 8
  %92 = load i64, i64* @IRT_U32, align 8
  %93 = call i32 @emitconv(i32 %90, i64 %91, i64 %92, i32 0)
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %89, %85
  %95 = load i32, i32* @IR_MUL, align 4
  %96 = load i64, i64* @IRT_U64, align 8
  %97 = call i32 @IRT(i32 %95, i64 %96)
  %98 = load i32, i32* %9, align 4
  %99 = load i32*, i32** %6, align 8
  %100 = call i32 @U64x(i32 266305, i32 266305)
  %101 = call i32 @lj_ir_kint64(i32* %99, i32 %100)
  %102 = call i32 @emitir(i32 %97, i32 %98, i32 %101)
  store i32 %102, i32* %9, align 4
  br label %117

103:                                              ; preds = %79, %76
  %104 = load i32, i32* @IR_MUL, align 4
  %105 = call i32 @IRTI(i32 %104)
  %106 = load i32, i32* %9, align 4
  %107 = load i32*, i32** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 0
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 16
  %111 = load i64, i64* @IRT_U16, align 8
  %112 = icmp eq i64 %110, %111
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i32 257, i32 16843009
  %115 = call i32 @lj_ir_kint(i32* %107, i32 %114)
  %116 = call i32 @emitir(i32 %105, i32 %106, i32 %115)
  store i32 %116, i32* %9, align 4
  br label %117

117:                                              ; preds = %103, %94
  br label %118

118:                                              ; preds = %117, %70
  %119 = load i32*, i32** %6, align 8
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @crec_fill_emit(i32* %119, %struct.TYPE_5__* %23, i32 %120, i32 %121, i32 %122)
  store i32 0, i32* %15, align 4
  br label %124

124:                                              ; preds = %54, %47, %118, %31
  %125 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %125)
  %126 = load i32, i32* %15, align 4
  switch i32 %126, label %142 [
    i32 0, label %127
    i32 1, label %141
    i32 2, label %129
  ]

127:                                              ; preds = %124
  br label %136

128:                                              ; preds = %5
  br label %129

129:                                              ; preds = %128, %124
  %130 = load i32*, i32** %6, align 8
  %131 = load i32, i32* @IRCALL_memset, align 4
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @lj_ir_call(i32* %130, i32 %131, i32 %132, i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %129, %127
  %137 = load i32, i32* @IR_XBAR, align 4
  %138 = load i64, i64* @IRT_NIL, align 8
  %139 = call i32 @IRT(i32 %137, i64 %138)
  %140 = call i32 @emitir(i32 %139, i32 0, i32 0)
  br label %141

141:                                              ; preds = %136, %124
  ret void

142:                                              ; preds = %124
  unreachable
}

declare dso_local i64 @tref_isk(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.TYPE_6__* @IR(i32) #1

declare dso_local i32 @tref_ref(i32) #1

declare dso_local i32 @crec_fill_unroll(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @emitconv(i32, i64, i64, i32) #1

declare dso_local i32 @emitir(i32, i32, i32) #1

declare dso_local i32 @IRT(i32, i64) #1

declare dso_local i32 @lj_ir_kint64(i32*, i32) #1

declare dso_local i32 @U64x(i32, i32) #1

declare dso_local i32 @IRTI(i32) #1

declare dso_local i32 @lj_ir_kint(i32*, i32) #1

declare dso_local i32 @crec_fill_emit(i32*, %struct.TYPE_5__*, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @lj_ir_call(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
