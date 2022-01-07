; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_snap.c_snap_restoredata.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_snap.c_snap_restoredata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, i64, i32, i64, i32 }
%struct.TYPE_9__ = type { i32*, i32*, i64* }

@IR_KNUM = common dso_local global i64 0, align 8
@IR_KINT64 = common dso_local global i64 0, align 8
@IR_CONV = common dso_local global i64 0, align 8
@IRCONV_NUM_INT = common dso_local global i64 0, align 8
@RID_MIN_GPR = common dso_local global i64 0, align 8
@RID_MAX_GPR = common dso_local global i64 0, align 8
@RID_MIN_FPR = common dso_local global i64 0, align 8
@LJ_BE = common dso_local global i64 0, align 8
@LJ_64 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_9__*, i32, i32, i64, i8*, i32)* @snap_restoredata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snap_restoredata(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1, i32 %2, i32 %3, i64 %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = load i64, i64* %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i64 %23
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %15, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %16, align 4
  %28 = load i64, i64* %12, align 8
  %29 = call i64 @irref_isk(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %59

31:                                               ; preds = %7
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IR_KNUM, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @IR_KINT64, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37, %31
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i64 1
  %46 = bitcast %struct.TYPE_7__* %45 to i64*
  store i64* %46, i64** %17, align 8
  br label %58

47:                                               ; preds = %37
  %48 = load i32, i32* %14, align 4
  %49 = icmp eq i32 %48, 8
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %18, align 8
  store i64* %18, i64** %17, align 8
  br label %57

54:                                               ; preds = %47
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 4
  store i64* %56, i64** %17, align 8
  br label %57

57:                                               ; preds = %54, %50
  br label %58

58:                                               ; preds = %57, %43
  br label %178

59:                                               ; preds = %7
  %60 = load i32, i32* %11, align 4
  %61 = load i64, i64* %12, align 8
  %62 = call i32 @bloomtest(i32 %60, i64 %61)
  %63 = call i64 @LJ_UNLIKELY(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i64, i64* %12, align 8
  %69 = load i32, i32* %16, align 4
  %70 = call i32 @snap_renameref(%struct.TYPE_8__* %66, i32 %67, i64 %68, i32 %69)
  store i32 %70, i32* %16, align 4
  br label %71

71:                                               ; preds = %65, %59
  %72 = load i32, i32* %16, align 4
  %73 = call i64 @regsp_spill(i32 %72)
  %74 = call i64 @ra_hasspill(i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %95

76:                                               ; preds = %71
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 2
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %16, align 4
  %81 = call i64 @regsp_spill(i32 %80)
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  store i64* %82, i64** %17, align 8
  %83 = load i32, i32* %14, align 4
  %84 = icmp eq i32 %83, 8
  br i1 %84, label %85, label %94

85:                                               ; preds = %76
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @irt_is64(i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %85
  %92 = load i64*, i64** %17, align 8
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %18, align 8
  store i64* %18, i64** %17, align 8
  br label %94

94:                                               ; preds = %91, %85, %76
  br label %177

95:                                               ; preds = %71
  %96 = load i32, i32* %16, align 4
  %97 = call i64 @regsp_reg(i32 %96)
  store i64 %97, i64* %19, align 8
  %98 = load i64, i64* %19, align 8
  %99 = call i64 @ra_noreg(i64 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %133

101:                                              ; preds = %95
  %102 = load i32, i32* %14, align 4
  %103 = icmp eq i32 %102, 8
  br i1 %103, label %104, label %116

104:                                              ; preds = %101
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @IR_CONV, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %104
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @IRCONV_NUM_INT, align 8
  %115 = icmp eq i64 %113, %114
  br label %116

116:                                              ; preds = %110, %104, %101
  %117 = phi i1 [ false, %104 ], [ false, %101 ], [ %115, %110 ]
  %118 = zext i1 %117 to i32
  %119 = call i32 @lua_assert(i32 %118)
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* %11, align 4
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load i8*, i8** %13, align 8
  call void @snap_restoredata(%struct.TYPE_8__* %120, %struct.TYPE_9__* %121, i32 %122, i32 %123, i64 %126, i8* %127, i32 4)
  %128 = load i8*, i8** %13, align 8
  %129 = bitcast i8* %128 to i64*
  %130 = load i64, i64* %129, align 8
  %131 = load i8*, i8** %13, align 8
  %132 = bitcast i8* %131 to i64*
  store i64 %130, i64* %132, align 8
  br label %225

133:                                              ; preds = %95
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = load i64, i64* %19, align 8
  %138 = load i64, i64* @RID_MIN_GPR, align 8
  %139 = sub i64 %137, %138
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  %141 = bitcast i32* %140 to i64*
  store i64* %141, i64** %17, align 8
  %142 = load i64, i64* %19, align 8
  %143 = load i64, i64* @RID_MAX_GPR, align 8
  %144 = icmp uge i64 %142, %143
  br i1 %144, label %145, label %163

145:                                              ; preds = %133
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = load i64, i64* %19, align 8
  %150 = load i64, i64* @RID_MIN_FPR, align 8
  %151 = sub i64 %149, %150
  %152 = getelementptr inbounds i32, i32* %148, i64 %151
  %153 = bitcast i32* %152 to i64*
  store i64* %153, i64** %17, align 8
  %154 = load i64, i64* @LJ_BE, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %145
  %157 = load i32, i32* %14, align 4
  %158 = icmp eq i32 %157, 4
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load i64*, i64** %17, align 8
  %161 = getelementptr inbounds i64, i64* %160, i32 1
  store i64* %161, i64** %17, align 8
  br label %162

162:                                              ; preds = %159, %156, %145
  br label %176

163:                                              ; preds = %133
  %164 = load i64, i64* @LJ_64, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %175

166:                                              ; preds = %163
  %167 = load i64, i64* @LJ_BE, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %166
  %170 = load i32, i32* %14, align 4
  %171 = icmp eq i32 %170, 4
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load i64*, i64** %17, align 8
  %174 = getelementptr inbounds i64, i64* %173, i32 1
  store i64* %174, i64** %17, align 8
  br label %175

175:                                              ; preds = %172, %169, %166, %163
  br label %176

176:                                              ; preds = %175, %162
  br label %177

177:                                              ; preds = %176, %94
  br label %178

178:                                              ; preds = %177, %58
  %179 = load i32, i32* %14, align 4
  %180 = icmp eq i32 %179, 1
  br i1 %180, label %190, label %181

181:                                              ; preds = %178
  %182 = load i32, i32* %14, align 4
  %183 = icmp eq i32 %182, 2
  br i1 %183, label %190, label %184

184:                                              ; preds = %181
  %185 = load i32, i32* %14, align 4
  %186 = icmp eq i32 %185, 4
  br i1 %186, label %190, label %187

187:                                              ; preds = %184
  %188 = load i32, i32* %14, align 4
  %189 = icmp eq i32 %188, 8
  br label %190

190:                                              ; preds = %187, %184, %181, %178
  %191 = phi i1 [ true, %184 ], [ true, %181 ], [ true, %178 ], [ %189, %187 ]
  %192 = zext i1 %191 to i32
  %193 = call i32 @lua_assert(i32 %192)
  %194 = load i32, i32* %14, align 4
  %195 = icmp eq i32 %194, 4
  br i1 %195, label %196, label %201

196:                                              ; preds = %190
  %197 = load i64*, i64** %17, align 8
  %198 = load i64, i64* %197, align 8
  %199 = load i8*, i8** %13, align 8
  %200 = bitcast i8* %199 to i64*
  store i64 %198, i64* %200, align 8
  br label %225

201:                                              ; preds = %190
  %202 = load i32, i32* %14, align 4
  %203 = icmp eq i32 %202, 8
  br i1 %203, label %204, label %210

204:                                              ; preds = %201
  %205 = load i64*, i64** %17, align 8
  %206 = bitcast i64* %205 to i32*
  %207 = load i32, i32* %206, align 4
  %208 = load i8*, i8** %13, align 8
  %209 = bitcast i8* %208 to i32*
  store i32 %207, i32* %209, align 4
  br label %224

210:                                              ; preds = %201
  %211 = load i32, i32* %14, align 4
  %212 = icmp eq i32 %211, 1
  br i1 %212, label %213, label %218

213:                                              ; preds = %210
  %214 = load i64*, i64** %17, align 8
  %215 = load i64, i64* %214, align 8
  %216 = load i8*, i8** %13, align 8
  %217 = bitcast i8* %216 to i64*
  store i64 %215, i64* %217, align 8
  br label %223

218:                                              ; preds = %210
  %219 = load i64*, i64** %17, align 8
  %220 = load i64, i64* %219, align 8
  %221 = load i8*, i8** %13, align 8
  %222 = bitcast i8* %221 to i64*
  store i64 %220, i64* %222, align 8
  br label %223

223:                                              ; preds = %218, %213
  br label %224

224:                                              ; preds = %223, %204
  br label %225

225:                                              ; preds = %116, %224, %196
  ret void
}

declare dso_local i64 @irref_isk(i64) #1

declare dso_local i64 @LJ_UNLIKELY(i32) #1

declare dso_local i32 @bloomtest(i32, i64) #1

declare dso_local i32 @snap_renameref(%struct.TYPE_8__*, i32, i64, i32) #1

declare dso_local i64 @ra_hasspill(i64) #1

declare dso_local i64 @regsp_spill(i32) #1

declare dso_local i32 @irt_is64(i32) #1

declare dso_local i64 @regsp_reg(i32) #1

declare dso_local i64 @ra_noreg(i64) #1

declare dso_local i32 @lua_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
