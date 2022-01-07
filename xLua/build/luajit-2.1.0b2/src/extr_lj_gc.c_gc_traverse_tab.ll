; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_gc.c_gc_traverse_tab.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_gc.c_gc_traverse_tab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_19__ = type { i32, i64, i64, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }

@MM_mode = common dso_local global i32 0, align 4
@LJ_GC_WEAKKEY = common dso_local global i32 0, align 4
@LJ_GC_WEAKVAL = common dso_local global i32 0, align 4
@LJ_GC_WEAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_19__*)* @gc_traverse_tab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gc_traverse_tab(%struct.TYPE_17__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  store i32 0, i32* %6, align 4
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.TYPE_19__* @tabref(i32 %19)
  store %struct.TYPE_19__* %20, %struct.TYPE_19__** %8, align 8
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %22 = icmp ne %struct.TYPE_19__* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %26 = call i32 @gc_markobj(%struct.TYPE_17__* %24, %struct.TYPE_19__* %25)
  br label %27

27:                                               ; preds = %23, %2
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %30 = load i32, i32* @MM_mode, align 4
  %31 = call i32* @lj_meta_fastg(%struct.TYPE_17__* %28, %struct.TYPE_19__* %29, i32 %30)
  store i32* %31, i32** %7, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %101

34:                                               ; preds = %27
  %35 = load i32*, i32** %7, align 8
  %36 = call i64 @tvisstr(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %101

38:                                               ; preds = %34
  %39 = load i32*, i32** %7, align 8
  %40 = call i8* @strVdata(i32* %39)
  store i8* %40, i8** %9, align 8
  br label %41

41:                                               ; preds = %70, %38
  %42 = load i8*, i8** %9, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %9, align 8
  %44 = load i8, i8* %42, align 1
  %45 = sext i8 %44 to i32
  store i32 %45, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %71

47:                                               ; preds = %41
  %48 = load i32, i32* %10, align 4
  %49 = icmp eq i32 %48, 107
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* @LJ_GC_WEAKKEY, align 4
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  br label %70

54:                                               ; preds = %47
  %55 = load i32, i32* %10, align 4
  %56 = icmp eq i32 %55, 118
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32, i32* @LJ_GC_WEAKVAL, align 4
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %6, align 4
  br label %69

61:                                               ; preds = %54
  %62 = load i32, i32* %10, align 4
  %63 = icmp eq i32 %62, 75
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i32, i32* @LJ_GC_WEAKVAL, align 4
  %66 = xor i32 %65, -1
  %67 = and i32 -1, %66
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %64, %61
  br label %69

69:                                               ; preds = %68, %57
  br label %70

70:                                               ; preds = %69, %50
  br label %41

71:                                               ; preds = %41
  %72 = load i32, i32* %6, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %100

74:                                               ; preds = %71
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @LJ_GC_WEAK, align 4
  %79 = xor i32 %78, -1
  %80 = and i32 %77, %79
  %81 = load i32, i32* %6, align 4
  %82 = or i32 %80, %81
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @setgcrefr(i32 %87, i32 %91)
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %98 = call i32 @obj2gco(%struct.TYPE_19__* %97)
  %99 = call i32 @setgcref(i32 %96, i32 %98)
  br label %100

100:                                              ; preds = %74, %71
  br label %101

101:                                              ; preds = %100, %34, %27
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @LJ_GC_WEAK, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  store i32 1, i32* %3, align 4
  br label %189

106:                                              ; preds = %101
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @LJ_GC_WEAKVAL, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %129, label %111

111:                                              ; preds = %106
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %12, align 8
  store i64 0, i64* %11, align 8
  br label %115

115:                                              ; preds = %125, %111
  %116 = load i64, i64* %11, align 8
  %117 = load i64, i64* %12, align 8
  %118 = icmp slt i64 %116, %117
  br i1 %118, label %119, label %128

119:                                              ; preds = %115
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %122 = load i64, i64* %11, align 8
  %123 = call i32* @arrayslot(%struct.TYPE_19__* %121, i64 %122)
  %124 = call i32 @gc_marktv(%struct.TYPE_17__* %120, i32* %123)
  br label %125

125:                                              ; preds = %119
  %126 = load i64, i64* %11, align 8
  %127 = add nsw i64 %126, 1
  store i64 %127, i64* %11, align 8
  br label %115

128:                                              ; preds = %115
  br label %129

129:                                              ; preds = %128, %106
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = icmp sgt i64 %132, 0
  br i1 %133, label %134, label %187

134:                                              ; preds = %129
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = call %struct.TYPE_18__* @noderef(i32 %137)
  store %struct.TYPE_18__* %138, %struct.TYPE_18__** %13, align 8
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  store i64 %141, i64* %15, align 8
  store i64 0, i64* %14, align 8
  br label %142

142:                                              ; preds = %183, %134
  %143 = load i64, i64* %14, align 8
  %144 = load i64, i64* %15, align 8
  %145 = icmp sle i64 %143, %144
  br i1 %145, label %146, label %186

146:                                              ; preds = %142
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %148 = load i64, i64* %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i64 %148
  store %struct.TYPE_18__* %149, %struct.TYPE_18__** %16, align 8
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 0
  %152 = call i32 @tvisnil(i32* %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %182, label %154

154:                                              ; preds = %146
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 1
  %157 = call i32 @tvisnil(i32* %156)
  %158 = icmp ne i32 %157, 0
  %159 = xor i1 %158, true
  %160 = zext i1 %159 to i32
  %161 = call i32 @lua_assert(i32 %160)
  %162 = load i32, i32* %6, align 4
  %163 = load i32, i32* @LJ_GC_WEAKKEY, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %154
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 1
  %170 = call i32 @gc_marktv(%struct.TYPE_17__* %167, i32* %169)
  br label %171

171:                                              ; preds = %166, %154
  %172 = load i32, i32* %6, align 4
  %173 = load i32, i32* @LJ_GC_WEAKVAL, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %181, label %176

176:                                              ; preds = %171
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 0
  %180 = call i32 @gc_marktv(%struct.TYPE_17__* %177, i32* %179)
  br label %181

181:                                              ; preds = %176, %171
  br label %182

182:                                              ; preds = %181, %146
  br label %183

183:                                              ; preds = %182
  %184 = load i64, i64* %14, align 8
  %185 = add nsw i64 %184, 1
  store i64 %185, i64* %14, align 8
  br label %142

186:                                              ; preds = %142
  br label %187

187:                                              ; preds = %186, %129
  %188 = load i32, i32* %6, align 4
  store i32 %188, i32* %3, align 4
  br label %189

189:                                              ; preds = %187, %105
  %190 = load i32, i32* %3, align 4
  ret i32 %190
}

declare dso_local %struct.TYPE_19__* @tabref(i32) #1

declare dso_local i32 @gc_markobj(%struct.TYPE_17__*, %struct.TYPE_19__*) #1

declare dso_local i32* @lj_meta_fastg(%struct.TYPE_17__*, %struct.TYPE_19__*, i32) #1

declare dso_local i64 @tvisstr(i32*) #1

declare dso_local i8* @strVdata(i32*) #1

declare dso_local i32 @setgcrefr(i32, i32) #1

declare dso_local i32 @setgcref(i32, i32) #1

declare dso_local i32 @obj2gco(%struct.TYPE_19__*) #1

declare dso_local i32 @gc_marktv(%struct.TYPE_17__*, i32*) #1

declare dso_local i32* @arrayslot(%struct.TYPE_19__*, i64) #1

declare dso_local %struct.TYPE_18__* @noderef(i32) #1

declare dso_local i32 @tvisnil(i32*) #1

declare dso_local i32 @lua_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
