; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_lgc.c_traversetable.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_lgc.c_traversetable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32*, i32, i64 }

@TM_MODE = common dso_local global i32 0, align 4
@KEYWEAK = common dso_local global i32 0, align 4
@VALUEWEAK = common dso_local global i32 0, align 4
@KEYWEAKBIT = common dso_local global i32 0, align 4
@VALUEWEAKBIT = common dso_local global i32 0, align 4
@LUA_TDEADKEY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)* @traversetable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @traversetable(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @markobject(%struct.TYPE_11__* %16, i64 %19)
  br label %21

21:                                               ; preds = %15, %2
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* @TM_MODE, align 4
  %27 = call i32* @gfasttm(%struct.TYPE_11__* %22, i64 %25, i32 %26)
  store i32* %27, i32** %9, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %81

30:                                               ; preds = %21
  %31 = load i32*, i32** %9, align 8
  %32 = call i64 @ttisstring(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %81

34:                                               ; preds = %30
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @svalue(i32* %35)
  %37 = call i32* @strchr(i32 %36, i8 signext 107)
  %38 = icmp ne i32* %37, null
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %7, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @svalue(i32* %40)
  %42 = call i32* @strchr(i32 %41, i8 signext 118)
  %43 = icmp ne i32* %42, null
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %34
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %80

50:                                               ; preds = %47, %34
  %51 = load i32, i32* @KEYWEAK, align 4
  %52 = load i32, i32* @VALUEWEAK, align 4
  %53 = or i32 %51, %52
  %54 = xor i32 %53, -1
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @KEYWEAKBIT, align 4
  %61 = shl i32 %59, %60
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @VALUEWEAKBIT, align 4
  %64 = shl i32 %62, %63
  %65 = or i32 %61, %64
  %66 = call i32 @cast_byte(i32 %65)
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %77 = call i32 @obj2gco(%struct.TYPE_12__* %76)
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %50, %47
  br label %81

81:                                               ; preds = %80, %30, %21
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store i32 1, i32* %3, align 4
  br label %175

88:                                               ; preds = %84, %81
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %109, label %91

91:                                               ; preds = %88
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %99, %91
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %6, align 4
  %98 = icmp ne i32 %96, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %95
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = call i32 @markvalue(%struct.TYPE_11__* %100, i32* %106)
  br label %95

108:                                              ; preds = %95
  br label %109

109:                                              ; preds = %108, %88
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %111 = call i32 @sizenode(%struct.TYPE_12__* %110)
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %165, %109
  %113 = load i32, i32* %6, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %6, align 4
  %115 = icmp ne i32 %113, 0
  br i1 %115, label %116, label %166

116:                                              ; preds = %112
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %118 = load i32, i32* %6, align 4
  %119 = call i32* @gnode(%struct.TYPE_12__* %117, i32 %118)
  store i32* %119, i32** %10, align 8
  %120 = load i32*, i32** %10, align 8
  %121 = call i32* @gkey(i32* %120)
  %122 = call i64 @ttype(i32* %121)
  %123 = load i64, i64* @LUA_TDEADKEY, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %130, label %125

125:                                              ; preds = %116
  %126 = load i32*, i32** %10, align 8
  %127 = call i32* @gval(i32* %126)
  %128 = call i64 @ttisnil(i32* %127)
  %129 = icmp ne i64 %128, 0
  br label %130

130:                                              ; preds = %125, %116
  %131 = phi i1 [ true, %116 ], [ %129, %125 ]
  %132 = zext i1 %131 to i32
  %133 = call i32 @lua_assert(i32 %132)
  %134 = load i32*, i32** %10, align 8
  %135 = call i32* @gval(i32* %134)
  %136 = call i64 @ttisnil(i32* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %130
  %139 = load i32*, i32** %10, align 8
  %140 = call i32 @removeentry(i32* %139)
  br label %165

141:                                              ; preds = %130
  %142 = load i32*, i32** %10, align 8
  %143 = call i32* @gkey(i32* %142)
  %144 = call i64 @ttisnil(i32* %143)
  %145 = icmp ne i64 %144, 0
  %146 = xor i1 %145, true
  %147 = zext i1 %146 to i32
  %148 = call i32 @lua_assert(i32 %147)
  %149 = load i32, i32* %7, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %156, label %151

151:                                              ; preds = %141
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %153 = load i32*, i32** %10, align 8
  %154 = call i32* @gkey(i32* %153)
  %155 = call i32 @markvalue(%struct.TYPE_11__* %152, i32* %154)
  br label %156

156:                                              ; preds = %151, %141
  %157 = load i32, i32* %8, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %164, label %159

159:                                              ; preds = %156
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %161 = load i32*, i32** %10, align 8
  %162 = call i32* @gval(i32* %161)
  %163 = call i32 @markvalue(%struct.TYPE_11__* %160, i32* %162)
  br label %164

164:                                              ; preds = %159, %156
  br label %165

165:                                              ; preds = %164, %138
  br label %112

166:                                              ; preds = %112
  %167 = load i32, i32* %7, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %166
  %170 = load i32, i32* %8, align 4
  %171 = icmp ne i32 %170, 0
  br label %172

172:                                              ; preds = %169, %166
  %173 = phi i1 [ true, %166 ], [ %171, %169 ]
  %174 = zext i1 %173 to i32
  store i32 %174, i32* %3, align 4
  br label %175

175:                                              ; preds = %172, %87
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local i32 @markobject(%struct.TYPE_11__*, i64) #1

declare dso_local i32* @gfasttm(%struct.TYPE_11__*, i64, i32) #1

declare dso_local i64 @ttisstring(i32*) #1

declare dso_local i32* @strchr(i32, i8 signext) #1

declare dso_local i32 @svalue(i32*) #1

declare dso_local i32 @cast_byte(i32) #1

declare dso_local i32 @obj2gco(%struct.TYPE_12__*) #1

declare dso_local i32 @markvalue(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @sizenode(%struct.TYPE_12__*) #1

declare dso_local i32* @gnode(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @ttype(i32*) #1

declare dso_local i32* @gkey(i32*) #1

declare dso_local i64 @ttisnil(i32*) #1

declare dso_local i32* @gval(i32*) #1

declare dso_local i32 @removeentry(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
