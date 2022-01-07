; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_fs_fixup_k.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_fs_fixup_k.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_12__ = type { i64, i64, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@BCMAX_D = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"constants\00", align 1
@LJ_DUALNUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_13__*, i8*)* @fs_fixup_k to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fs_fixup_k(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i8* %2, i8** %6, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* @BCMAX_D, align 8
  %24 = add nsw i64 %23, 1
  %25 = call i32 @checklimitgt(%struct.TYPE_14__* %19, i32 %22, i64 %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i64, i64* @BCMAX_D, align 8
  %31 = add nsw i64 %30, 1
  %32 = call i32 @checklimitgt(%struct.TYPE_14__* %26, i32 %29, i64 %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @setmref(i32 %35, i8* %36)
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  store %struct.TYPE_12__* %50, %struct.TYPE_12__** %7, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32* @tvref(i32 %53)
  store i32* %54, i32** %8, align 8
  store i64 0, i64* %10, align 8
  br label %55

55:                                               ; preds = %87, %3
  %56 = load i64, i64* %10, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ult i64 %56, %59
  br i1 %60, label %61, label %90

61:                                               ; preds = %55
  %62 = load i32*, i32** %8, align 8
  %63 = load i64, i64* %10, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = call i64 @tvhaskslot(i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %86

67:                                               ; preds = %61
  %68 = load i8*, i8** %6, align 8
  %69 = bitcast i8* %68 to i32*
  %70 = load i32*, i32** %8, align 8
  %71 = load i64, i64* %10, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = call i64 @tvkslot(i32* %72)
  %74 = getelementptr inbounds i32, i32* %69, i64 %73
  store i32* %74, i32** %12, align 8
  %75 = load i64, i64* @LJ_DUALNUM, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %67
  %78 = load i32*, i32** %12, align 8
  %79 = load i64, i64* %10, align 8
  %80 = call i32 @setintV(i32* %78, i64 %79)
  br label %85

81:                                               ; preds = %67
  %82 = load i32*, i32** %12, align 8
  %83 = load i64, i64* %10, align 8
  %84 = call i32 @setnumV(i32* %82, i64 %83)
  br label %85

85:                                               ; preds = %81, %77
  br label %86

86:                                               ; preds = %85, %61
  br label %87

87:                                               ; preds = %86
  %88 = load i64, i64* %10, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %10, align 8
  br label %55

90:                                               ; preds = %55
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call %struct.TYPE_11__* @noderef(i32 %93)
  store %struct.TYPE_11__* %94, %struct.TYPE_11__** %9, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %98

98:                                               ; preds = %194, %90
  %99 = load i64, i64* %10, align 8
  %100 = load i64, i64* %11, align 8
  %101 = icmp ule i64 %99, %100
  br i1 %101, label %102, label %197

102:                                              ; preds = %98
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %104 = load i64, i64* %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i64 %104
  store %struct.TYPE_11__* %105, %struct.TYPE_11__** %13, align 8
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  %108 = call i64 @tvhaskslot(i32* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %193

110:                                              ; preds = %102
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  %113 = call i64 @tvkslot(i32* %112)
  store i64 %113, i64* %14, align 8
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = call i32 @tvisint(i32* %115)
  %117 = icmp ne i32 %116, 0
  %118 = xor i1 %117, true
  %119 = zext i1 %118 to i32
  %120 = call i32 @lua_assert(i32 %119)
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = call i64 @tvisnum(i32* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %164

125:                                              ; preds = %110
  %126 = load i8*, i8** %6, align 8
  %127 = bitcast i8* %126 to i32*
  %128 = load i64, i64* %14, align 8
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  store i32* %129, i32** %15, align 8
  %130 = load i64, i64* @LJ_DUALNUM, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %158

132:                                              ; preds = %125
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = call i64 @numV(i32* %134)
  store i64 %135, i64* %16, align 8
  %136 = load i64, i64* %16, align 8
  %137 = call i64 @lj_num2int(i64 %136)
  store i64 %137, i64* %17, align 8
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = call i32 @tvismzero(i32* %139)
  %141 = icmp ne i32 %140, 0
  %142 = xor i1 %141, true
  %143 = zext i1 %142 to i32
  %144 = call i32 @lua_assert(i32 %143)
  %145 = load i64, i64* %17, align 8
  %146 = load i64, i64* %16, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %132
  %149 = load i32*, i32** %15, align 8
  %150 = load i64, i64* %17, align 8
  %151 = call i32 @setintV(i32* %149, i64 %150)
  br label %157

152:                                              ; preds = %132
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32*, i32** %15, align 8
  store i32 %155, i32* %156, align 4
  br label %157

157:                                              ; preds = %152, %148
  br label %163

158:                                              ; preds = %125
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32*, i32** %15, align 8
  store i32 %161, i32* %162, align 4
  br label %163

163:                                              ; preds = %158, %157
  br label %192

164:                                              ; preds = %110
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 0
  %167 = call i32* @gcV(i32* %166)
  store i32* %167, i32** %18, align 8
  %168 = load i8*, i8** %6, align 8
  %169 = bitcast i8* %168 to i32*
  %170 = load i64, i64* %14, align 8
  %171 = xor i64 %170, -1
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load i32*, i32** %18, align 8
  %175 = call i32 @setgcref(i32 %173, i32* %174)
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %180 = load i32*, i32** %18, align 8
  %181 = call i32 @lj_gc_objbarrier(i32 %178, %struct.TYPE_13__* %179, i32* %180)
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 0
  %184 = call i64 @tvisproto(i32* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %164
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %188 = load i32*, i32** %18, align 8
  %189 = call i32 @gco2pt(i32* %188)
  %190 = call i32 @fs_fixup_uv2(%struct.TYPE_14__* %187, i32 %189)
  br label %191

191:                                              ; preds = %186, %164
  br label %192

192:                                              ; preds = %191, %163
  br label %193

193:                                              ; preds = %192, %102
  br label %194

194:                                              ; preds = %193
  %195 = load i64, i64* %10, align 8
  %196 = add i64 %195, 1
  store i64 %196, i64* %10, align 8
  br label %98

197:                                              ; preds = %98
  ret void
}

declare dso_local i32 @checklimitgt(%struct.TYPE_14__*, i32, i64, i8*) #1

declare dso_local i32 @setmref(i32, i8*) #1

declare dso_local i32* @tvref(i32) #1

declare dso_local i64 @tvhaskslot(i32*) #1

declare dso_local i64 @tvkslot(i32*) #1

declare dso_local i32 @setintV(i32*, i64) #1

declare dso_local i32 @setnumV(i32*, i64) #1

declare dso_local %struct.TYPE_11__* @noderef(i32) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @tvisint(i32*) #1

declare dso_local i64 @tvisnum(i32*) #1

declare dso_local i64 @numV(i32*) #1

declare dso_local i64 @lj_num2int(i64) #1

declare dso_local i32 @tvismzero(i32*) #1

declare dso_local i32* @gcV(i32*) #1

declare dso_local i32 @setgcref(i32, i32*) #1

declare dso_local i32 @lj_gc_objbarrier(i32, %struct.TYPE_13__*, i32*) #1

declare dso_local i64 @tvisproto(i32*) #1

declare dso_local i32 @fs_fixup_uv2(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @gco2pt(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
