; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm.c_asm_bufput.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm.c_asm_bufput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@lj_ir_callinfo = common dso_local global i32* null, align 8
@IRCALL_lj_buf_putstr = common dso_local global i64 0, align 8
@IR_KGC = common dso_local global i64 0, align 8
@ASMREF_TMP1 = common dso_local global i64 0, align 8
@IRCALL_lj_buf_putchar = common dso_local global i64 0, align 8
@IR_TOSTR = common dso_local global i64 0, align 8
@IRTOSTR_NUM = common dso_local global i64 0, align 8
@IRCALL_lj_strfmt_putnum = common dso_local global i64 0, align 8
@IRTOSTR_INT = common dso_local global i64 0, align 8
@IRCALL_lj_strfmt_putint = common dso_local global i64 0, align 8
@IR_SNEW = common dso_local global i64 0, align 8
@IRCALL_lj_buf_putmem = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_9__*)* @asm_bufput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_bufput(i32* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [3 x i64], align 16
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %11 = load i32*, i32** @lj_ir_callinfo, align 8
  %12 = load i64, i64* @IRCALL_lj_buf_putstr, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  store i32* %13, i32** %5, align 8
  store i32 -1, i32* %8, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  store i64 %16, i64* %17, align 16
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 1
  store i64 %20, i64* %21, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call %struct.TYPE_9__* @IR(i64 %24)
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %7, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @irt_isstr(i32 %28)
  %30 = call i32 @lua_assert(i32 %29)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @IR_KGC, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %2
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %38 = call %struct.TYPE_10__* @ir_kstr(%struct.TYPE_9__* %37)
  store %struct.TYPE_10__* %38, %struct.TYPE_10__** %9, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %53

43:                                               ; preds = %36
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %45 = call i32* @strdata(%struct.TYPE_10__* %44)
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %8, align 4
  %48 = load i64, i64* @ASMREF_TMP1, align 8
  %49 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 1
  store i64 %48, i64* %49, align 8
  %50 = load i32*, i32** @lj_ir_callinfo, align 8
  %51 = load i64, i64* @IRCALL_lj_buf_putchar, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32* %52, i32** %5, align 8
  br label %53

53:                                               ; preds = %43, %36
  br label %134

54:                                               ; preds = %2
  %55 = load i32*, i32** %3, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @mayfuse(i32* %55, i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %133

61:                                               ; preds = %54
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @ra_noreg(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %133

67:                                               ; preds = %61
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @IR_TOSTR, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %113

73:                                               ; preds = %67
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @IRTOSTR_NUM, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = load i64, i64* @ASMREF_TMP1, align 8
  %81 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 1
  store i64 %80, i64* %81, align 8
  %82 = load i32*, i32** @lj_ir_callinfo, align 8
  %83 = load i64, i64* @IRCALL_lj_strfmt_putnum, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32* %84, i32** %5, align 8
  br label %112

85:                                               ; preds = %73
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call %struct.TYPE_9__* @IR(i64 %88)
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @irt_isinteger(i32 %91)
  %93 = call i32 @lua_assert(i32 %92)
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 1
  store i64 %96, i64* %97, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @IRTOSTR_INT, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %85
  %104 = load i32*, i32** @lj_ir_callinfo, align 8
  %105 = load i64, i64* @IRCALL_lj_strfmt_putint, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  store i32* %106, i32** %5, align 8
  br label %111

107:                                              ; preds = %85
  %108 = load i32*, i32** @lj_ir_callinfo, align 8
  %109 = load i64, i64* @IRCALL_lj_buf_putchar, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  store i32* %110, i32** %5, align 8
  br label %111

111:                                              ; preds = %107, %103
  br label %112

112:                                              ; preds = %111, %79
  br label %132

113:                                              ; preds = %67
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @IR_SNEW, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %131

119:                                              ; preds = %113
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 1
  store i64 %122, i64* %123, align 8
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 2
  store i64 %126, i64* %127, align 16
  %128 = load i32*, i32** @lj_ir_callinfo, align 8
  %129 = load i64, i64* @IRCALL_lj_buf_putmem, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  store i32* %130, i32** %5, align 8
  br label %131

131:                                              ; preds = %119, %113
  br label %132

132:                                              ; preds = %131, %112
  br label %133

133:                                              ; preds = %132, %61, %54
  br label %134

134:                                              ; preds = %133, %53
  %135 = load i32*, i32** %3, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %137 = load i32*, i32** %5, align 8
  %138 = call i32 @asm_setupresult(i32* %135, %struct.TYPE_9__* %136, i32* %137)
  %139 = load i32*, i32** %3, align 8
  %140 = load i32*, i32** %5, align 8
  %141 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %142 = call i32 @asm_gencall(i32* %139, i32* %140, i64* %141)
  %143 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @ASMREF_TMP1, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %166

147:                                              ; preds = %134
  %148 = load i32*, i32** %3, align 8
  %149 = load i64, i64* @ASMREF_TMP1, align 8
  %150 = call i32 @ra_releasetmp(i32* %148, i64 %149)
  store i32 %150, i32* %10, align 4
  %151 = load i32, i32* %8, align 4
  %152 = icmp eq i32 %151, -1
  br i1 %152, label %153, label %160

153:                                              ; preds = %147
  %154 = load i32*, i32** %3, align 8
  %155 = load i32, i32* %10, align 4
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @asm_tvptr(i32* %154, i32 %155, i64 %158)
  br label %165

160:                                              ; preds = %147
  %161 = load i32*, i32** %3, align 8
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* %10, align 4
  %164 = call i32 @ra_allockreg(i32* %161, i32 %162, i32 %163)
  br label %165

165:                                              ; preds = %160, %153
  br label %166

166:                                              ; preds = %165, %134
  ret void
}

declare dso_local %struct.TYPE_9__* @IR(i64) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @irt_isstr(i32) #1

declare dso_local %struct.TYPE_10__* @ir_kstr(%struct.TYPE_9__*) #1

declare dso_local i32* @strdata(%struct.TYPE_10__*) #1

declare dso_local i64 @mayfuse(i32*, i64) #1

declare dso_local i64 @ra_noreg(i32) #1

declare dso_local i32 @irt_isinteger(i32) #1

declare dso_local i32 @asm_setupresult(i32*, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @asm_gencall(i32*, i32*, i64*) #1

declare dso_local i32 @ra_releasetmp(i32*, i64) #1

declare dso_local i32 @asm_tvptr(i32*, i32, i64) #1

declare dso_local i32 @ra_allockreg(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
