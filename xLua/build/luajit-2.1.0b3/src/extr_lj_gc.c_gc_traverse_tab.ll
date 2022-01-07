; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_gc.c_gc_traverse_tab.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_gc.c_gc_traverse_tab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_22__ = type { i32, i64, i64, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32 }

@MM_mode = common dso_local global i32 0, align 4
@LJ_GC_WEAKKEY = common dso_local global i32 0, align 4
@LJ_GC_WEAKVAL = common dso_local global i32 0, align 4
@LJ_GC_WEAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_22__*)* @gc_traverse_tab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gc_traverse_tab(%struct.TYPE_20__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  store i32 0, i32* %6, align 4
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.TYPE_22__* @tabref(i32 %19)
  store %struct.TYPE_22__* %20, %struct.TYPE_22__** %8, align 8
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %22 = icmp ne %struct.TYPE_22__* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %26 = call i32 @gc_markobj(%struct.TYPE_20__* %24, %struct.TYPE_22__* %25)
  br label %27

27:                                               ; preds = %23, %2
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %30 = load i32, i32* @MM_mode, align 4
  %31 = call i32* @lj_meta_fastg(%struct.TYPE_20__* %28, %struct.TYPE_22__* %29, i32 %30)
  store i32* %31, i32** %7, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %93

34:                                               ; preds = %27
  %35 = load i32*, i32** %7, align 8
  %36 = call i64 @tvisstr(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %93

38:                                               ; preds = %34
  %39 = load i32*, i32** %7, align 8
  %40 = call i8* @strVdata(i32* %39)
  store i8* %40, i8** %9, align 8
  br label %41

41:                                               ; preds = %62, %38
  %42 = load i8*, i8** %9, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %9, align 8
  %44 = load i8, i8* %42, align 1
  %45 = sext i8 %44 to i32
  store i32 %45, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %41
  %48 = load i32, i32* %10, align 4
  %49 = icmp eq i32 %48, 107
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* @LJ_GC_WEAKKEY, align 4
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  br label %62

54:                                               ; preds = %47
  %55 = load i32, i32* %10, align 4
  %56 = icmp eq i32 %55, 118
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32, i32* @LJ_GC_WEAKVAL, align 4
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %57, %54
  br label %62

62:                                               ; preds = %61, %50
  br label %41

63:                                               ; preds = %41
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %92

66:                                               ; preds = %63
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @LJ_GC_WEAK, align 4
  %71 = xor i32 %70, -1
  %72 = and i32 %69, %71
  %73 = load i32, i32* %6, align 4
  %74 = or i32 %72, %73
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @setgcrefr(i32 %79, i32 %83)
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %90 = call i32 @obj2gco(%struct.TYPE_22__* %89)
  %91 = call i32 @setgcref(i32 %88, i32 %90)
  br label %92

92:                                               ; preds = %66, %63
  br label %93

93:                                               ; preds = %92, %34, %27
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @LJ_GC_WEAK, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  store i32 1, i32* %3, align 4
  br label %181

98:                                               ; preds = %93
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @LJ_GC_WEAKVAL, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %121, label %103

103:                                              ; preds = %98
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %12, align 8
  store i64 0, i64* %11, align 8
  br label %107

107:                                              ; preds = %117, %103
  %108 = load i64, i64* %11, align 8
  %109 = load i64, i64* %12, align 8
  %110 = icmp slt i64 %108, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %107
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %114 = load i64, i64* %11, align 8
  %115 = call i32* @arrayslot(%struct.TYPE_22__* %113, i64 %114)
  %116 = call i32 @gc_marktv(%struct.TYPE_20__* %112, i32* %115)
  br label %117

117:                                              ; preds = %111
  %118 = load i64, i64* %11, align 8
  %119 = add nsw i64 %118, 1
  store i64 %119, i64* %11, align 8
  br label %107

120:                                              ; preds = %107
  br label %121

121:                                              ; preds = %120, %98
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = icmp sgt i64 %124, 0
  br i1 %125, label %126, label %179

126:                                              ; preds = %121
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = call %struct.TYPE_21__* @noderef(i32 %129)
  store %struct.TYPE_21__* %130, %struct.TYPE_21__** %13, align 8
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %15, align 8
  store i64 0, i64* %14, align 8
  br label %134

134:                                              ; preds = %175, %126
  %135 = load i64, i64* %14, align 8
  %136 = load i64, i64* %15, align 8
  %137 = icmp sle i64 %135, %136
  br i1 %137, label %138, label %178

138:                                              ; preds = %134
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %140 = load i64, i64* %14, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i64 %140
  store %struct.TYPE_21__* %141, %struct.TYPE_21__** %16, align 8
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 0
  %144 = call i32 @tvisnil(i32* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %174, label %146

146:                                              ; preds = %138
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 1
  %149 = call i32 @tvisnil(i32* %148)
  %150 = icmp ne i32 %149, 0
  %151 = xor i1 %150, true
  %152 = zext i1 %151 to i32
  %153 = call i32 @lua_assert(i32 %152)
  %154 = load i32, i32* %6, align 4
  %155 = load i32, i32* @LJ_GC_WEAKKEY, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %146
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %160, i32 0, i32 1
  %162 = call i32 @gc_marktv(%struct.TYPE_20__* %159, i32* %161)
  br label %163

163:                                              ; preds = %158, %146
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* @LJ_GC_WEAKVAL, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %173, label %168

168:                                              ; preds = %163
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %170, i32 0, i32 0
  %172 = call i32 @gc_marktv(%struct.TYPE_20__* %169, i32* %171)
  br label %173

173:                                              ; preds = %168, %163
  br label %174

174:                                              ; preds = %173, %138
  br label %175

175:                                              ; preds = %174
  %176 = load i64, i64* %14, align 8
  %177 = add nsw i64 %176, 1
  store i64 %177, i64* %14, align 8
  br label %134

178:                                              ; preds = %134
  br label %179

179:                                              ; preds = %178, %121
  %180 = load i32, i32* %6, align 4
  store i32 %180, i32* %3, align 4
  br label %181

181:                                              ; preds = %179, %97
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local %struct.TYPE_22__* @tabref(i32) #1

declare dso_local i32 @gc_markobj(%struct.TYPE_20__*, %struct.TYPE_22__*) #1

declare dso_local i32* @lj_meta_fastg(%struct.TYPE_20__*, %struct.TYPE_22__*, i32) #1

declare dso_local i64 @tvisstr(i32*) #1

declare dso_local i8* @strVdata(i32*) #1

declare dso_local i32 @setgcrefr(i32, i32) #1

declare dso_local i32 @setgcref(i32, i32) #1

declare dso_local i32 @obj2gco(%struct.TYPE_22__*) #1

declare dso_local i32 @gc_marktv(%struct.TYPE_20__*, i32*) #1

declare dso_local i32* @arrayslot(%struct.TYPE_22__*, i64) #1

declare dso_local %struct.TYPE_21__* @noderef(i32) #1

declare dso_local i32 @tvisnil(i32*) #1

declare dso_local i32 @lua_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
