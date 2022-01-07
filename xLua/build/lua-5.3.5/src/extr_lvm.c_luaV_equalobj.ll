; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_lvm.c_luaV_equalobj.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_lvm.c_luaV_equalobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@LUA_TNUMBER = common dso_local global i64 0, align 8
@TM_EQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @luaV_equalobj(%struct.TYPE_7__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @ttype(i32* %11)
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @ttype(i32* %13)
  %15 = icmp ne i32 %12, %14
  br i1 %15, label %16, label %43

16:                                               ; preds = %3
  %17 = load i32*, i32** %6, align 8
  %18 = call i64 @ttnov(i32* %17)
  %19 = load i32*, i32** %7, align 8
  %20 = call i64 @ttnov(i32* %19)
  %21 = icmp ne i64 %18, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %16
  %23 = load i32*, i32** %6, align 8
  %24 = call i64 @ttnov(i32* %23)
  %25 = load i64, i64* @LUA_TNUMBER, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22, %16
  store i32 0, i32* %4, align 4
  br label %182

28:                                               ; preds = %22
  %29 = load i32*, i32** %6, align 8
  %30 = call i64 @tointeger(i32* %29, i64* %9)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load i32*, i32** %7, align 8
  %34 = call i64 @tointeger(i32* %33, i64* %10)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = icmp eq i64 %37, %38
  br label %40

40:                                               ; preds = %36, %32, %28
  %41 = phi i1 [ false, %32 ], [ false, %28 ], [ %39, %36 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %4, align 4
  br label %182

43:                                               ; preds = %3
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @ttype(i32* %44)
  switch i32 %45, label %155 [
    i32 133, label %46
    i32 131, label %47
    i32 132, label %54
    i32 137, label %60
    i32 135, label %67
    i32 136, label %74
    i32 130, label %81
    i32 134, label %87
    i32 128, label %93
    i32 129, label %124
  ]

46:                                               ; preds = %43
  store i32 1, i32* %4, align 4
  br label %182

47:                                               ; preds = %43
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @ivalue(i32* %48)
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @ivalue(i32* %50)
  %52 = icmp eq i32 %49, %51
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %4, align 4
  br label %182

54:                                               ; preds = %43
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @fltvalue(i32* %55)
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @fltvalue(i32* %57)
  %59 = call i32 @luai_numeq(i32 %56, i32 %58)
  store i32 %59, i32* %4, align 4
  br label %182

60:                                               ; preds = %43
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @bvalue(i32* %61)
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @bvalue(i32* %63)
  %65 = icmp eq i32 %62, %64
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %4, align 4
  br label %182

67:                                               ; preds = %43
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @pvalue(i32* %68)
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @pvalue(i32* %70)
  %72 = icmp eq i32 %69, %71
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %4, align 4
  br label %182

74:                                               ; preds = %43
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @fvalue(i32* %75)
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @fvalue(i32* %77)
  %79 = icmp eq i32 %76, %78
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %4, align 4
  br label %182

81:                                               ; preds = %43
  %82 = load i32*, i32** %6, align 8
  %83 = call i32 @tsvalue(i32* %82)
  %84 = load i32*, i32** %7, align 8
  %85 = call i32 @tsvalue(i32* %84)
  %86 = call i32 @eqshrstr(i32 %83, i32 %85)
  store i32 %86, i32* %4, align 4
  br label %182

87:                                               ; preds = %43
  %88 = load i32*, i32** %6, align 8
  %89 = call i32 @tsvalue(i32* %88)
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @tsvalue(i32* %90)
  %92 = call i32 @luaS_eqlngstr(i32 %89, i32 %91)
  store i32 %92, i32* %4, align 4
  br label %182

93:                                               ; preds = %43
  %94 = load i32*, i32** %6, align 8
  %95 = call %struct.TYPE_8__* @uvalue(i32* %94)
  %96 = load i32*, i32** %7, align 8
  %97 = call %struct.TYPE_8__* @uvalue(i32* %96)
  %98 = icmp eq %struct.TYPE_8__* %95, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  store i32 1, i32* %4, align 4
  br label %182

100:                                              ; preds = %93
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %102 = icmp eq %struct.TYPE_7__* %101, null
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  store i32 0, i32* %4, align 4
  br label %182

104:                                              ; preds = %100
  br label %105

105:                                              ; preds = %104
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %107 = load i32*, i32** %6, align 8
  %108 = call %struct.TYPE_8__* @uvalue(i32* %107)
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @TM_EQ, align 4
  %112 = call i32* @fasttm(%struct.TYPE_7__* %106, i32 %110, i32 %111)
  store i32* %112, i32** %8, align 8
  %113 = load i32*, i32** %8, align 8
  %114 = icmp eq i32* %113, null
  br i1 %114, label %115, label %123

115:                                              ; preds = %105
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %117 = load i32*, i32** %7, align 8
  %118 = call %struct.TYPE_8__* @uvalue(i32* %117)
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @TM_EQ, align 4
  %122 = call i32* @fasttm(%struct.TYPE_7__* %116, i32 %120, i32 %121)
  store i32* %122, i32** %8, align 8
  br label %123

123:                                              ; preds = %115, %105
  br label %162

124:                                              ; preds = %43
  %125 = load i32*, i32** %6, align 8
  %126 = call %struct.TYPE_9__* @hvalue(i32* %125)
  %127 = load i32*, i32** %7, align 8
  %128 = call %struct.TYPE_9__* @hvalue(i32* %127)
  %129 = icmp eq %struct.TYPE_9__* %126, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  store i32 1, i32* %4, align 4
  br label %182

131:                                              ; preds = %124
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %133 = icmp eq %struct.TYPE_7__* %132, null
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  store i32 0, i32* %4, align 4
  br label %182

135:                                              ; preds = %131
  br label %136

136:                                              ; preds = %135
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %138 = load i32*, i32** %6, align 8
  %139 = call %struct.TYPE_9__* @hvalue(i32* %138)
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @TM_EQ, align 4
  %143 = call i32* @fasttm(%struct.TYPE_7__* %137, i32 %141, i32 %142)
  store i32* %143, i32** %8, align 8
  %144 = load i32*, i32** %8, align 8
  %145 = icmp eq i32* %144, null
  br i1 %145, label %146, label %154

146:                                              ; preds = %136
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %148 = load i32*, i32** %7, align 8
  %149 = call %struct.TYPE_9__* @hvalue(i32* %148)
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @TM_EQ, align 4
  %153 = call i32* @fasttm(%struct.TYPE_7__* %147, i32 %151, i32 %152)
  store i32* %153, i32** %8, align 8
  br label %154

154:                                              ; preds = %146, %136
  br label %162

155:                                              ; preds = %43
  %156 = load i32*, i32** %6, align 8
  %157 = call i32 @gcvalue(i32* %156)
  %158 = load i32*, i32** %7, align 8
  %159 = call i32 @gcvalue(i32* %158)
  %160 = icmp eq i32 %157, %159
  %161 = zext i1 %160 to i32
  store i32 %161, i32* %4, align 4
  br label %182

162:                                              ; preds = %154, %123
  %163 = load i32*, i32** %8, align 8
  %164 = icmp eq i32* %163, null
  br i1 %164, label %165, label %166

165:                                              ; preds = %162
  store i32 0, i32* %4, align 4
  br label %182

166:                                              ; preds = %162
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %168 = load i32*, i32** %8, align 8
  %169 = load i32*, i32** %6, align 8
  %170 = load i32*, i32** %7, align 8
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @luaT_callTM(%struct.TYPE_7__* %167, i32* %168, i32* %169, i32* %170, i32 %173, i32 1)
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @l_isfalse(i32 %177)
  %179 = icmp ne i32 %178, 0
  %180 = xor i1 %179, true
  %181 = zext i1 %180 to i32
  store i32 %181, i32* %4, align 4
  br label %182

182:                                              ; preds = %166, %165, %155, %134, %130, %103, %99, %87, %81, %74, %67, %60, %54, %47, %46, %40, %27
  %183 = load i32, i32* %4, align 4
  ret i32 %183
}

declare dso_local i32 @ttype(i32*) #1

declare dso_local i64 @ttnov(i32*) #1

declare dso_local i64 @tointeger(i32*, i64*) #1

declare dso_local i32 @ivalue(i32*) #1

declare dso_local i32 @luai_numeq(i32, i32) #1

declare dso_local i32 @fltvalue(i32*) #1

declare dso_local i32 @bvalue(i32*) #1

declare dso_local i32 @pvalue(i32*) #1

declare dso_local i32 @fvalue(i32*) #1

declare dso_local i32 @eqshrstr(i32, i32) #1

declare dso_local i32 @tsvalue(i32*) #1

declare dso_local i32 @luaS_eqlngstr(i32, i32) #1

declare dso_local %struct.TYPE_8__* @uvalue(i32*) #1

declare dso_local i32* @fasttm(%struct.TYPE_7__*, i32, i32) #1

declare dso_local %struct.TYPE_9__* @hvalue(i32*) #1

declare dso_local i32 @gcvalue(i32*) #1

declare dso_local i32 @luaT_callTM(%struct.TYPE_7__*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @l_isfalse(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
