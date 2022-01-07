; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/mpeg/extr_ps.c_Mux.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/mpeg/extr_ps.c_Mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_23__**, %struct.TYPE_22__* }
%struct.TYPE_23__ = type { %struct.TYPE_20__*, i32, i64 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_22__ = type { i32, i64, i32, i32, i32, i32 }
%struct.TYPE_24__ = type { i64, i32 }
%struct.TYPE_25__ = type { i64, %struct.TYPE_25__*, i32 }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@INT64_MAX = common dso_local global i64 0, align 8
@SPU_ES = common dso_local global i64 0, align 8
@BLOCK_FLAG_HEADER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*)* @Mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Mux(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_24__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  store %struct.TYPE_22__* %17, %struct.TYPE_22__** %3, align 8
  br label %18

18:                                               ; preds = %229, %1
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %20 = call i32 @sout_MuxGetStream(%struct.TYPE_21__* %19, i32 1, i64* %8)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @VLC_SUCCESS, align 4
  ret i32 %24

25:                                               ; preds = %18
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %28, i64 %30
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %31, align 8
  store %struct.TYPE_23__* %32, %struct.TYPE_23__** %4, align 8
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %36, %struct.TYPE_24__** %5, align 8
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %6, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = srem i32 %42, 30
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %151

45:                                               ; preds = %25
  %46 = load i64, i64* @INT64_MAX, align 8
  store i64 %46, i64* %10, align 8
  store i32 0, i32* %11, align 4
  br label %47

47:                                               ; preds = %87, %45
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %90

53:                                               ; preds = %47
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %57, %struct.TYPE_24__** %12, align 8
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SPU_ES, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %53
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp sgt i32 %68, 1
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %87

71:                                               ; preds = %65, %53
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp sge i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %71
  %77 = load i64, i64* %10, align 8
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp sgt i64 %77, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %10, align 8
  br label %86

86:                                               ; preds = %82, %76, %71
  br label %87

87:                                               ; preds = %86, %70
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  br label %47

90:                                               ; preds = %47
  %91 = load i64, i64* %10, align 8
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp sgt i64 %91, %94
  br i1 %95, label %96, label %150

96:                                               ; preds = %90
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %136

101:                                              ; preds = %96
  %102 = load i64, i64* %8, align 8
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = sub nsw i64 %102, %105
  %107 = call i64 @VLC_TICK_FROM_SEC(i32 1)
  %108 = icmp sgt i64 %106, %107
  br i1 %108, label %109, label %136

109:                                              ; preds = %101
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = mul nsw i32 %112, 8000000
  %114 = sext i32 %113 to i64
  %115 = load i64, i64* %8, align 8
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = sub nsw i64 %115, %118
  %120 = sdiv i64 %114, %119
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %13, align 4
  %122 = load i32, i32* %13, align 4
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, %122
  store i32 %126, i32* %124, align 4
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = sdiv i32 %129, 2
  store i32 %130, i32* %128, align 4
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 2
  store i32 0, i32* %132, align 8
  %133 = load i64, i64* %8, align 8
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 1
  store i64 %133, i64* %135, align 8
  br label %146

136:                                              ; preds = %101, %96
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %136
  %142 = load i64, i64* %8, align 8
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 0, i32 1
  store i64 %142, i64* %144, align 8
  br label %145

145:                                              ; preds = %141, %136
  br label %146

146:                                              ; preds = %145, %109
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %148 = load i64, i64* %8, align 8
  %149 = call i32 @MuxWritePackHeader(%struct.TYPE_21__* %147, %struct.TYPE_25__** %6, i64 %148)
  br label %150

150:                                              ; preds = %146, %90
  br label %151

151:                                              ; preds = %150, %25
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = srem i32 %154, 300
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %176

157:                                              ; preds = %151
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %159 = load i64, i64* %8, align 8
  %160 = call i32 @MuxWriteSystemHeader(%struct.TYPE_21__* %158, %struct.TYPE_25__** %6, i64 %159)
  %161 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  store %struct.TYPE_25__* %161, %struct.TYPE_25__** %14, align 8
  br label %162

162:                                              ; preds = %171, %157
  %163 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %164 = icmp ne %struct.TYPE_25__* %163, null
  br i1 %164, label %165, label %175

165:                                              ; preds = %162
  %166 = load i32, i32* @BLOCK_FLAG_HEADER, align 4
  %167 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %168 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 8
  br label %171

171:                                              ; preds = %165
  %172 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %173 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_25__*, %struct.TYPE_25__** %173, align 8
  store %struct.TYPE_25__* %174, %struct.TYPE_25__** %14, align 8
  br label %162

175:                                              ; preds = %162
  br label %176

176:                                              ; preds = %175, %151
  %177 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %191

181:                                              ; preds = %176
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = srem i32 %184, 300
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %181
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %189 = load i64, i64* %8, align 8
  %190 = call i32 @MuxWritePSM(%struct.TYPE_21__* %188, %struct.TYPE_25__** %6, i64 %189)
  br label %191

191:                                              ; preds = %187, %181, %176
  %192 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = call %struct.TYPE_25__* @block_FifoGet(i32 %194)
  store %struct.TYPE_25__* %195, %struct.TYPE_25__** %7, align 8
  %196 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_20__*, %struct.TYPE_20__** %197, align 8
  %199 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @EStoPES(%struct.TYPE_25__** %7, %struct.TYPE_20__* %198, i32 %201, i32 %204, i32 0, i32 0, i32 %207, i32 0)
  %209 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %210 = call i32 @block_ChainAppend(%struct.TYPE_25__** %6, %struct.TYPE_25__* %209)
  %211 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  store %struct.TYPE_25__* %211, %struct.TYPE_25__** %7, align 8
  br label %212

212:                                              ; preds = %225, %191
  %213 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %214 = icmp ne %struct.TYPE_25__* %213, null
  br i1 %214, label %215, label %229

215:                                              ; preds = %212
  %216 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = sext i32 %221 to i64
  %223 = add nsw i64 %222, %218
  %224 = trunc i64 %223 to i32
  store i32 %224, i32* %220, align 8
  br label %225

225:                                              ; preds = %215
  %226 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %226, i32 0, i32 1
  %228 = load %struct.TYPE_25__*, %struct.TYPE_25__** %227, align 8
  store %struct.TYPE_25__* %228, %struct.TYPE_25__** %7, align 8
  br label %212

229:                                              ; preds = %212
  %230 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %231 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %234 = call i32 @sout_AccessOutWrite(i32 %232, %struct.TYPE_25__* %233)
  %235 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %236, align 8
  br label %18
}

declare dso_local i32 @sout_MuxGetStream(%struct.TYPE_21__*, i32, i64*) #1

declare dso_local i64 @VLC_TICK_FROM_SEC(i32) #1

declare dso_local i32 @MuxWritePackHeader(%struct.TYPE_21__*, %struct.TYPE_25__**, i64) #1

declare dso_local i32 @MuxWriteSystemHeader(%struct.TYPE_21__*, %struct.TYPE_25__**, i64) #1

declare dso_local i32 @MuxWritePSM(%struct.TYPE_21__*, %struct.TYPE_25__**, i64) #1

declare dso_local %struct.TYPE_25__* @block_FifoGet(i32) #1

declare dso_local i32 @EStoPES(%struct.TYPE_25__**, %struct.TYPE_20__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @block_ChainAppend(%struct.TYPE_25__**, %struct.TYPE_25__*) #1

declare dso_local i32 @sout_AccessOutWrite(i32, %struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
