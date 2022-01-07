; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_tab.c_lj_tab_newkey.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_tab.c_lj_tab_newkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_38__ = type { i64, i32 }
%struct.TYPE_35__ = type { i64 }
%struct.TYPE_37__ = type { %struct.TYPE_35__, %struct.TYPE_35__, i32 }
%struct.TYPE_36__ = type { %struct.TYPE_37__ }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_35__* @lj_tab_newkey(i32* %0, %struct.TYPE_38__* %1, %struct.TYPE_35__* %2) #0 {
  %4 = alloca %struct.TYPE_35__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_38__*, align 8
  %7 = alloca %struct.TYPE_35__*, align 8
  %8 = alloca %struct.TYPE_37__*, align 8
  %9 = alloca %struct.TYPE_37__*, align 8
  %10 = alloca %struct.TYPE_37__*, align 8
  %11 = alloca %struct.TYPE_37__*, align 8
  %12 = alloca %struct.TYPE_37__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_38__* %1, %struct.TYPE_38__** %6, align 8
  store %struct.TYPE_35__* %2, %struct.TYPE_35__** %7, align 8
  %13 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %14 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %15 = call %struct.TYPE_37__* @hashkey(%struct.TYPE_38__* %13, %struct.TYPE_35__* %14)
  store %struct.TYPE_37__* %15, %struct.TYPE_37__** %8, align 8
  %16 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %16, i32 0, i32 0
  %18 = call i32 @tvisnil(%struct.TYPE_35__* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %189

25:                                               ; preds = %20, %3
  %26 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.TYPE_37__* @noderef(i32 %28)
  store %struct.TYPE_37__* %29, %struct.TYPE_37__** %9, align 8
  %30 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %31 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %32 = call %struct.TYPE_37__* @getfreetop(%struct.TYPE_38__* %30, %struct.TYPE_37__* %31)
  store %struct.TYPE_37__* %32, %struct.TYPE_37__** %11, align 8
  %33 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %34 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %35 = icmp uge %struct.TYPE_37__* %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %25
  %37 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %38 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %39 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %38, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %42, i64 1
  %44 = icmp ule %struct.TYPE_37__* %37, %43
  br label %45

45:                                               ; preds = %36, %25
  %46 = phi i1 [ false, %25 ], [ %44, %36 ]
  %47 = zext i1 %46 to i32
  %48 = call i32 @lua_assert(i32 %47)
  br label %49

49:                                               ; preds = %63, %45
  %50 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %51 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %52 = icmp eq %struct.TYPE_37__* %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %49
  %54 = load i32*, i32** %5, align 8
  %55 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %56 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %57 = call i32 @rehashtab(i32* %54, %struct.TYPE_38__* %55, %struct.TYPE_35__* %56)
  %58 = load i32*, i32** %5, align 8
  %59 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %60 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %61 = call %struct.TYPE_35__* @lj_tab_set(i32* %58, %struct.TYPE_38__* %59, %struct.TYPE_35__* %60)
  store %struct.TYPE_35__* %61, %struct.TYPE_35__** %4, align 8
  br label %215

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %64, i32 -1
  store %struct.TYPE_37__* %65, %struct.TYPE_37__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %65, i32 0, i32 1
  %67 = call i32 @tvisnil(%struct.TYPE_35__* %66)
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  br i1 %69, label %49, label %70

70:                                               ; preds = %63
  %71 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %72 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %73 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %74 = call i32 @setfreetop(%struct.TYPE_38__* %71, %struct.TYPE_37__* %72, %struct.TYPE_37__* %73)
  %75 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %76 = load i32*, i32** %5, align 8
  %77 = call %struct.TYPE_36__* @G(i32* %76)
  %78 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %77, i32 0, i32 0
  %79 = icmp ne %struct.TYPE_37__* %75, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @lua_assert(i32 %80)
  %82 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %83 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %83, i32 0, i32 1
  %85 = call %struct.TYPE_37__* @hashkey(%struct.TYPE_38__* %82, %struct.TYPE_35__* %84)
  store %struct.TYPE_37__* %85, %struct.TYPE_37__** %10, align 8
  %86 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %87 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %88 = icmp ne %struct.TYPE_37__* %86, %87
  br i1 %88, label %89, label %174

89:                                               ; preds = %70
  br label %90

90:                                               ; preds = %97, %89
  %91 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call %struct.TYPE_37__* @noderef(i32 %93)
  %95 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %96 = icmp ne %struct.TYPE_37__* %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %99 = call %struct.TYPE_37__* @nextnode(%struct.TYPE_37__* %98)
  store %struct.TYPE_37__* %99, %struct.TYPE_37__** %10, align 8
  br label %90

100:                                              ; preds = %90
  %101 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %105 = call i32 @setmref(i32 %103, %struct.TYPE_37__* %104)
  %106 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %108, i32 0, i32 0
  %110 = bitcast %struct.TYPE_35__* %107 to i8*
  %111 = bitcast %struct.TYPE_35__* %109 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %110, i8* align 8 %111, i64 8, i1 false)
  %112 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %114, i32 0, i32 1
  %116 = bitcast %struct.TYPE_35__* %113 to i8*
  %117 = bitcast %struct.TYPE_35__* %115 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %116, i8* align 8 %117, i64 8, i1 false)
  %118 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  %123 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @setmref(i32 %125, %struct.TYPE_37__* null)
  %127 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %127, i32 0, i32 0
  %129 = call i32 @setnilV(%struct.TYPE_35__* %128)
  br label %130

130:                                              ; preds = %172, %100
  %131 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %132 = call %struct.TYPE_37__* @nextnode(%struct.TYPE_37__* %131)
  %133 = icmp ne %struct.TYPE_37__* %132, null
  br i1 %133, label %134, label %173

134:                                              ; preds = %130
  %135 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %136 = call %struct.TYPE_37__* @nextnode(%struct.TYPE_37__* %135)
  store %struct.TYPE_37__* %136, %struct.TYPE_37__** %12, align 8
  %137 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %137, i32 0, i32 1
  %139 = call i64 @tvisstr(%struct.TYPE_35__* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %170

141:                                              ; preds = %134
  %142 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %142, i32 0, i32 0
  %144 = call i32 @tvisnil(%struct.TYPE_35__* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %170, label %146

146:                                              ; preds = %141
  %147 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %148 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %148, i32 0, i32 1
  %150 = call i32 @strV(%struct.TYPE_35__* %149)
  %151 = call %struct.TYPE_37__* @hashstr(%struct.TYPE_38__* %147, i32 %150)
  %152 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %153 = icmp eq %struct.TYPE_37__* %151, %152
  br i1 %153, label %154, label %170

154:                                              ; preds = %146
  %155 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 8
  %160 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 8
  %165 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %169 = call i32 @setmref(i32 %167, %struct.TYPE_37__* %168)
  br label %172

170:                                              ; preds = %146, %141, %134
  %171 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  store %struct.TYPE_37__* %171, %struct.TYPE_37__** %11, align 8
  br label %172

172:                                              ; preds = %170, %154
  br label %130

173:                                              ; preds = %130
  br label %188

174:                                              ; preds = %70
  %175 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %176 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @setmrefr(i32 %177, i32 %180)
  %182 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %186 = call i32 @setmref(i32 %184, %struct.TYPE_37__* %185)
  %187 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  store %struct.TYPE_37__* %187, %struct.TYPE_37__** %8, align 8
  br label %188

188:                                              ; preds = %174, %173
  br label %189

189:                                              ; preds = %188, %20
  %190 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %194, i32 0, i32 0
  store i64 %192, i64* %195, align 8
  %196 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %196, i32 0, i32 1
  %198 = call i32 @tvismzero(%struct.TYPE_35__* %197)
  %199 = call i64 @LJ_UNLIKELY(i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %189
  %202 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %203, i32 0, i32 0
  store i64 0, i64* %204, align 8
  br label %205

205:                                              ; preds = %201, %189
  %206 = load i32*, i32** %5, align 8
  %207 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %208 = call i32 @lj_gc_anybarriert(i32* %206, %struct.TYPE_38__* %207)
  %209 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %209, i32 0, i32 0
  %211 = call i32 @tvisnil(%struct.TYPE_35__* %210)
  %212 = call i32 @lua_assert(i32 %211)
  %213 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %213, i32 0, i32 0
  store %struct.TYPE_35__* %214, %struct.TYPE_35__** %4, align 8
  br label %215

215:                                              ; preds = %205, %53
  %216 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  ret %struct.TYPE_35__* %216
}

declare dso_local %struct.TYPE_37__* @hashkey(%struct.TYPE_38__*, %struct.TYPE_35__*) #1

declare dso_local i32 @tvisnil(%struct.TYPE_35__*) #1

declare dso_local %struct.TYPE_37__* @noderef(i32) #1

declare dso_local %struct.TYPE_37__* @getfreetop(%struct.TYPE_38__*, %struct.TYPE_37__*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @rehashtab(i32*, %struct.TYPE_38__*, %struct.TYPE_35__*) #1

declare dso_local %struct.TYPE_35__* @lj_tab_set(i32*, %struct.TYPE_38__*, %struct.TYPE_35__*) #1

declare dso_local i32 @setfreetop(%struct.TYPE_38__*, %struct.TYPE_37__*, %struct.TYPE_37__*) #1

declare dso_local %struct.TYPE_36__* @G(i32*) #1

declare dso_local %struct.TYPE_37__* @nextnode(%struct.TYPE_37__*) #1

declare dso_local i32 @setmref(i32, %struct.TYPE_37__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @setnilV(%struct.TYPE_35__*) #1

declare dso_local i64 @tvisstr(%struct.TYPE_35__*) #1

declare dso_local %struct.TYPE_37__* @hashstr(%struct.TYPE_38__*, i32) #1

declare dso_local i32 @strV(%struct.TYPE_35__*) #1

declare dso_local i32 @setmrefr(i32, i32) #1

declare dso_local i64 @LJ_UNLIKELY(i32) #1

declare dso_local i32 @tvismzero(%struct.TYPE_35__*) #1

declare dso_local i32 @lj_gc_anybarriert(i32*, %struct.TYPE_38__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
