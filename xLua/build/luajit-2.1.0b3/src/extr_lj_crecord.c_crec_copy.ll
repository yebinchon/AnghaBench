; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_crecord.c_crec_copy.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_crecord.c_crec_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@CREC_COPY_MAXUNROLL = common dso_local global i32 0, align 4
@IRT_CDATA = common dso_local global i64 0, align 8
@CREC_COPY_MAXLEN = common dso_local global i32 0, align 4
@lj_ir_type_size = common dso_local global i32* null, align 8
@CTF_UNION = common dso_local global i32 0, align 4
@LJ_TARGET_UNALIGNED = common dso_local global i64 0, align 8
@CTSIZE_PTR = common dso_local global i32 0, align 4
@IR_XBAR = common dso_local global i32 0, align 4
@IRT_NIL = common dso_local global i32 0, align 4
@IRCALL_memcpy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, %struct.TYPE_8__*)* @crec_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crec_copy(i32* %0, i32 %1, i32 %2, i32 %3, %struct.TYPE_8__* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_8__* %4, %struct.TYPE_8__** %10, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i64 @tref_isk(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %149

24:                                               ; preds = %5
  %25 = load i32, i32* @CREC_COPY_MAXUNROLL, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %11, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i32 1, i32* %14, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @tref_ref(i32 %29)
  %31 = call %struct.TYPE_9__* @IR(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %15, align 4
  %34 = load i64, i64* @IRT_CDATA, align 8
  store i64 %34, i64* %16, align 8
  store i32 0, i32* %17, align 4
  %35 = load i32, i32* %15, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  store i32 1, i32* %18, align 4
  br label %145

38:                                               ; preds = %24
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* @CREC_COPY_MAXLEN, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 2, i32* %18, align 4
  br label %145

43:                                               ; preds = %38
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %45 = icmp ne %struct.TYPE_8__* %44, null
  br i1 %45, label %46, label %111

46:                                               ; preds = %43
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @J2G(i32* %47)
  %49 = call i32* @ctype_ctsG(i32 %48)
  store i32* %49, i32** %19, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @ctype_isarray(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %46
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @ctype_isstruct(i32 %58)
  %60 = icmp ne i64 %59, 0
  br label %61

61:                                               ; preds = %55, %46
  %62 = phi i1 [ true, %46 ], [ %60, %55 ]
  %63 = zext i1 %62 to i32
  %64 = call i32 @lua_assert(i32 %63)
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @ctype_isarray(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %93

70:                                               ; preds = %61
  %71 = load i32*, i32** %19, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %73 = call %struct.TYPE_8__* @ctype_rawchild(i32* %71, %struct.TYPE_8__* %72)
  store %struct.TYPE_8__* %73, %struct.TYPE_8__** %20, align 8
  %74 = load i32*, i32** %19, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %76 = call i64 @crec_ct2irt(i32* %74, %struct.TYPE_8__* %75)
  store i64 %76, i64* %16, align 8
  %77 = load i64, i64* %16, align 8
  %78 = load i64, i64* @IRT_CDATA, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  br label %112

81:                                               ; preds = %70
  %82 = load i32*, i32** @lj_ir_type_size, align 8
  %83 = load i64, i64* %16, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* %14, align 4
  %88 = sub nsw i32 %87, 1
  %89 = and i32 %86, %88
  %90 = icmp eq i32 %89, 0
  %91 = zext i1 %90 to i32
  %92 = call i32 @lua_assert(i32 %91)
  br label %110

93:                                               ; preds = %61
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @CTF_UNION, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %93
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @ctype_align(i32 %103)
  %105 = shl i32 1, %104
  store i32 %105, i32* %14, align 4
  br label %112

106:                                              ; preds = %93
  %107 = load i32*, i32** %19, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %109 = call i64 @crec_copy_struct(i32* %28, i32* %107, %struct.TYPE_8__* %108)
  store i64 %109, i64* %13, align 8
  br label %127

110:                                              ; preds = %81
  br label %122

111:                                              ; preds = %43
  br label %112

112:                                              ; preds = %111, %100, %80
  store i32 1, i32* %17, align 4
  %113 = load i64, i64* @LJ_TARGET_UNALIGNED, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %112
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* @CTSIZE_PTR, align 4
  %118 = icmp sge i32 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %115, %112
  %120 = load i32, i32* @CTSIZE_PTR, align 4
  store i32 %120, i32* %14, align 4
  br label %121

121:                                              ; preds = %119, %115
  br label %122

122:                                              ; preds = %121, %110
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* %14, align 4
  %125 = load i64, i64* %16, align 8
  %126 = call i64 @crec_copy_unroll(i32* %28, i32 %123, i32 %124, i64 %125)
  store i64 %126, i64* %13, align 8
  br label %127

127:                                              ; preds = %122, %106
  %128 = load i64, i64* %13, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %144

130:                                              ; preds = %127
  %131 = load i32*, i32** %6, align 8
  %132 = load i64, i64* %13, align 8
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @crec_copy_emit(i32* %131, i32* %28, i64 %132, i32 %133, i32 %134)
  %136 = load i32, i32* %17, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %130
  %139 = load i32, i32* @IR_XBAR, align 4
  %140 = load i32, i32* @IRT_NIL, align 4
  %141 = call i32 @IRT(i32 %139, i32 %140)
  %142 = call i32 @emitir(i32 %141, i32 0, i32 0)
  br label %143

143:                                              ; preds = %138, %130
  store i32 1, i32* %18, align 4
  br label %145

144:                                              ; preds = %127
  store i32 0, i32* %18, align 4
  br label %145

145:                                              ; preds = %42, %144, %143, %37
  %146 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %146)
  %147 = load i32, i32* %18, align 4
  switch i32 %147, label %162 [
    i32 0, label %148
    i32 1, label %161
    i32 2, label %150
  ]

148:                                              ; preds = %145
  br label %149

149:                                              ; preds = %148, %5
  br label %150

150:                                              ; preds = %149, %145
  %151 = load i32*, i32** %6, align 8
  %152 = load i32, i32* @IRCALL_memcpy, align 4
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* %9, align 4
  %156 = call i32 @lj_ir_call(i32* %151, i32 %152, i32 %153, i32 %154, i32 %155)
  %157 = load i32, i32* @IR_XBAR, align 4
  %158 = load i32, i32* @IRT_NIL, align 4
  %159 = call i32 @IRT(i32 %157, i32 %158)
  %160 = call i32 @emitir(i32 %159, i32 0, i32 0)
  br label %161

161:                                              ; preds = %150, %145
  ret void

162:                                              ; preds = %145
  unreachable
}

declare dso_local i64 @tref_isk(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.TYPE_9__* @IR(i32) #1

declare dso_local i32 @tref_ref(i32) #1

declare dso_local i32* @ctype_ctsG(i32) #1

declare dso_local i32 @J2G(i32*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @ctype_isarray(i32) #1

declare dso_local i64 @ctype_isstruct(i32) #1

declare dso_local %struct.TYPE_8__* @ctype_rawchild(i32*, %struct.TYPE_8__*) #1

declare dso_local i64 @crec_ct2irt(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @ctype_align(i32) #1

declare dso_local i64 @crec_copy_struct(i32*, i32*, %struct.TYPE_8__*) #1

declare dso_local i64 @crec_copy_unroll(i32*, i32, i32, i64) #1

declare dso_local i32 @crec_copy_emit(i32*, i32*, i64, i32, i32) #1

declare dso_local i32 @emitir(i32, i32, i32) #1

declare dso_local i32 @IRT(i32, i32) #1

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
