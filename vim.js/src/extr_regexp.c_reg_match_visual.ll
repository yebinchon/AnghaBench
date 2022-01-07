; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_regexp.c_reg_match_visual.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_regexp.c_reg_match_visual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, %struct.TYPE_16__, %struct.TYPE_16__ }

@reg_win = common dso_local global %struct.TYPE_15__* null, align 8
@curwin = common dso_local global %struct.TYPE_15__* null, align 8
@reg_buf = common dso_local global %struct.TYPE_17__* null, align 8
@curbuf = common dso_local global %struct.TYPE_17__* null, align 8
@VIsual = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@FALSE = common dso_local global i32 0, align 4
@VIsual_active = common dso_local global i64 0, align 8
@VIsual_mode = common dso_local global i32 0, align 4
@reglnum = common dso_local global i64 0, align 8
@reg_firstlnum = common dso_local global i64 0, align 8
@reginput = common dso_local global i64 0, align 8
@regline = common dso_local global i64 0, align 8
@p_sel = common dso_local global i8* null, align 8
@Ctrl_V = common dso_local global i32 0, align 4
@MAXCOL = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @reg_match_visual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reg_match_visual() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_16__, align 8
  %3 = alloca %struct.TYPE_16__, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** @reg_win, align 8
  %14 = icmp eq %struct.TYPE_15__* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %0
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** @curwin, align 8
  br label %19

17:                                               ; preds = %0
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** @reg_win, align 8
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi %struct.TYPE_15__* [ %16, %15 ], [ %18, %17 ]
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %6, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** @reg_buf, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** @curbuf, align 8
  %23 = icmp ne %struct.TYPE_17__* %21, %22
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @VIsual, i32 0, i32 0), align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24, %19
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %1, align 4
  br label %214

29:                                               ; preds = %24
  %30 = load i64, i64* @VIsual_active, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %58

32:                                               ; preds = %29
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.TYPE_16__* @VIsual to { i64, i64 }*), i32 0, i32 0), align 8
  %36 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.TYPE_16__* @VIsual to { i64, i64 }*), i32 0, i32 1), align 8
  %37 = bitcast %struct.TYPE_16__* %34 to { i64, i64 }*
  %38 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %37, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @lt(i64 %35, i64 %36, i64 %39, i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %32
  %45 = bitcast %struct.TYPE_16__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 bitcast (%struct.TYPE_16__* @VIsual to i8*), i64 16, i1 false)
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = bitcast %struct.TYPE_16__* %3 to i8*
  %49 = bitcast %struct.TYPE_16__* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 8 %49, i64 16, i1 false)
  br label %56

50:                                               ; preds = %32
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = bitcast %struct.TYPE_16__* %2 to i8*
  %54 = bitcast %struct.TYPE_16__* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 16, i1 false)
  %55 = bitcast %struct.TYPE_16__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 bitcast (%struct.TYPE_16__* @VIsual to i8*), i64 16, i1 false)
  br label %56

56:                                               ; preds = %50, %44
  %57 = load i32, i32* @VIsual_mode, align 4
  store i32 %57, i32* %7, align 4
  br label %104

58:                                               ; preds = %29
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** @curbuf, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** @curbuf, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 2
  %65 = bitcast %struct.TYPE_16__* %61 to { i64, i64 }*
  %66 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %65, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = bitcast %struct.TYPE_16__* %64 to { i64, i64 }*
  %71 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %70, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @lt(i64 %67, i64 %69, i64 %72, i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %58
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** @curbuf, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 1
  %81 = bitcast %struct.TYPE_16__* %2 to i8*
  %82 = bitcast %struct.TYPE_16__* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %81, i8* align 8 %82, i64 16, i1 false)
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** @curbuf, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 2
  %86 = bitcast %struct.TYPE_16__* %3 to i8*
  %87 = bitcast %struct.TYPE_16__* %85 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %86, i8* align 8 %87, i64 16, i1 false)
  br label %99

88:                                               ; preds = %58
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** @curbuf, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 2
  %92 = bitcast %struct.TYPE_16__* %2 to i8*
  %93 = bitcast %struct.TYPE_16__* %91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %92, i8* align 8 %93, i64 16, i1 false)
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** @curbuf, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  %97 = bitcast %struct.TYPE_16__* %3 to i8*
  %98 = bitcast %struct.TYPE_16__* %96 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %97, i8* align 8 %98, i64 16, i1 false)
  br label %99

99:                                               ; preds = %88, %77
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** @curbuf, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %99, %56
  %105 = load i64, i64* @reglnum, align 8
  %106 = load i64, i64* @reg_firstlnum, align 8
  %107 = add nsw i64 %105, %106
  store i64 %107, i64* %4, align 8
  %108 = load i64, i64* %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp slt i64 %108, %110
  br i1 %111, label %117, label %112

112:                                              ; preds = %104
  %113 = load i64, i64* %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp sgt i64 %113, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %112, %104
  %118 = load i32, i32* @FALSE, align 4
  store i32 %118, i32* %1, align 4
  br label %214

119:                                              ; preds = %112
  %120 = load i32, i32* %7, align 4
  %121 = icmp eq i32 %120, 118
  br i1 %121, label %122, label %155

122:                                              ; preds = %119
  %123 = load i64, i64* @reginput, align 8
  %124 = load i64, i64* @regline, align 8
  %125 = sub nsw i64 %123, %124
  store i64 %125, i64* %5, align 8
  %126 = load i64, i64* %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp eq i64 %126, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %122
  %131 = load i64, i64* %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp slt i64 %131, %133
  br i1 %134, label %152, label %135

135:                                              ; preds = %130, %122
  %136 = load i64, i64* %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp eq i64 %136, %138
  br i1 %139, label %140, label %154

140:                                              ; preds = %135
  %141 = load i64, i64* %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i8*, i8** @p_sel, align 8
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp ne i32 %146, 101
  %148 = zext i1 %147 to i32
  %149 = sext i32 %148 to i64
  %150 = add nsw i64 %143, %149
  %151 = icmp sge i64 %141, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %140, %130
  %153 = load i32, i32* @FALSE, align 4
  store i32 %153, i32* %1, align 4
  br label %214

154:                                              ; preds = %140, %135
  br label %212

155:                                              ; preds = %119
  %156 = load i32, i32* %7, align 4
  %157 = load i32, i32* @Ctrl_V, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %211

159:                                              ; preds = %155
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %161 = call i32 @getvvcol(%struct.TYPE_15__* %160, %struct.TYPE_16__* %2, i64* %8, i32* null, i64* %9)
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %163 = call i32 @getvvcol(%struct.TYPE_15__* %162, %struct.TYPE_16__* %3, i64* %10, i32* null, i64* %11)
  %164 = load i64, i64* %10, align 8
  %165 = load i64, i64* %8, align 8
  %166 = icmp slt i64 %164, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %159
  %168 = load i64, i64* %10, align 8
  store i64 %168, i64* %8, align 8
  br label %169

169:                                              ; preds = %167, %159
  %170 = load i64, i64* %11, align 8
  %171 = load i64, i64* %9, align 8
  %172 = icmp sgt i64 %170, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %169
  %174 = load i64, i64* %11, align 8
  store i64 %174, i64* %9, align 8
  br label %175

175:                                              ; preds = %173, %169
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @MAXCOL, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %185, label %180

180:                                              ; preds = %175
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @MAXCOL, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %187

185:                                              ; preds = %180, %175
  %186 = load i64, i64* @MAXCOL, align 8
  store i64 %186, i64* %9, align 8
  br label %187

187:                                              ; preds = %185, %180
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %189 = load i64, i64* @regline, align 8
  %190 = load i64, i64* @reginput, align 8
  %191 = load i64, i64* @regline, align 8
  %192 = sub nsw i64 %190, %191
  %193 = call i64 @win_linetabsize(%struct.TYPE_15__* %188, i64 %189, i64 %192)
  store i64 %193, i64* %12, align 8
  %194 = load i64, i64* %12, align 8
  %195 = load i64, i64* %8, align 8
  %196 = icmp slt i64 %194, %195
  br i1 %196, label %208, label %197

197:                                              ; preds = %187
  %198 = load i64, i64* %12, align 8
  %199 = load i64, i64* %9, align 8
  %200 = load i8*, i8** @p_sel, align 8
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp eq i32 %202, 101
  %204 = zext i1 %203 to i32
  %205 = sext i32 %204 to i64
  %206 = sub nsw i64 %199, %205
  %207 = icmp sgt i64 %198, %206
  br i1 %207, label %208, label %210

208:                                              ; preds = %197, %187
  %209 = load i32, i32* @FALSE, align 4
  store i32 %209, i32* %1, align 4
  br label %214

210:                                              ; preds = %197
  br label %211

211:                                              ; preds = %210, %155
  br label %212

212:                                              ; preds = %211, %154
  %213 = load i32, i32* @TRUE, align 4
  store i32 %213, i32* %1, align 4
  br label %214

214:                                              ; preds = %212, %208, %152, %117, %27
  %215 = load i32, i32* %1, align 4
  ret i32 %215
}

declare dso_local i64 @lt(i64, i64, i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @getvvcol(%struct.TYPE_15__*, %struct.TYPE_16__*, i64*, i32*, i64*) #1

declare dso_local i64 @win_linetabsize(%struct.TYPE_15__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
