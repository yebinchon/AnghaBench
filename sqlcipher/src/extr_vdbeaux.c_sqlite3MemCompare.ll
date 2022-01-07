; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_vdbeaux.c_sqlite3MemCompare.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_vdbeaux.c_sqlite3MemCompare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i64, %struct.TYPE_15__*, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_17__ = type { i64 }

@MEM_Null = common dso_local global i32 0, align 4
@MEM_Int = common dso_local global i32 0, align 4
@MEM_Real = common dso_local global i32 0, align 4
@MEM_Str = common dso_local global i32 0, align 4
@SQLITE_UTF8 = common dso_local global i64 0, align 8
@SQLITE_UTF16LE = common dso_local global i64 0, align 8
@SQLITE_UTF16BE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3MemCompare(%struct.TYPE_16__* %0, %struct.TYPE_16__* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %8, align 4
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %10, align 4
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %21 = call i32 @sqlite3VdbeMemIsRowSet(%struct.TYPE_16__* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %3
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %25 = call i32 @sqlite3VdbeMemIsRowSet(%struct.TYPE_16__* %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %23, %3
  %29 = phi i1 [ false, %3 ], [ %27, %23 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @MEM_Null, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %28
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @MEM_Null, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @MEM_Null, align 4
  %42 = and i32 %40, %41
  %43 = sub nsw i32 %39, %42
  store i32 %43, i32* %4, align 4
  br label %235

44:                                               ; preds = %28
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @MEM_Int, align 4
  %47 = load i32, i32* @MEM_Real, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %45, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %155

51:                                               ; preds = %44
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* @MEM_Int, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %81

58:                                               ; preds = %51
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp slt i64 %62, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  store i32 -1, i32* %4, align 4
  br label %235

69:                                               ; preds = %58
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp sgt i64 %73, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %69
  store i32 1, i32* %4, align 4
  br label %235

80:                                               ; preds = %69
  store i32 0, i32* %4, align 4
  br label %235

81:                                               ; preds = %51
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %9, align 4
  %84 = and i32 %82, %83
  %85 = load i32, i32* @MEM_Real, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %111

88:                                               ; preds = %81
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp slt i64 %92, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %88
  store i32 -1, i32* %4, align 4
  br label %235

99:                                               ; preds = %88
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp sgt i64 %103, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %99
  store i32 1, i32* %4, align 4
  br label %235

110:                                              ; preds = %99
  store i32 0, i32* %4, align 4
  br label %235

111:                                              ; preds = %81
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @MEM_Int, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %132

116:                                              ; preds = %111
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* @MEM_Real, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %116
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @sqlite3IntFloatCompare(i64 %125, i64 %129)
  store i32 %130, i32* %4, align 4
  br label %235

131:                                              ; preds = %116
  store i32 -1, i32* %4, align 4
  br label %235

132:                                              ; preds = %111
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* @MEM_Real, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %154

137:                                              ; preds = %132
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* @MEM_Int, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %153

142:                                              ; preds = %137
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @sqlite3IntFloatCompare(i64 %146, i64 %150)
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %4, align 4
  br label %235

153:                                              ; preds = %137
  store i32 -1, i32* %4, align 4
  br label %235

154:                                              ; preds = %132
  store i32 1, i32* %4, align 4
  br label %235

155:                                              ; preds = %44
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* @MEM_Str, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %231

160:                                              ; preds = %155
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* @MEM_Str, align 4
  %163 = and i32 %161, %162
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %160
  store i32 1, i32* %4, align 4
  br label %235

166:                                              ; preds = %160
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* @MEM_Str, align 4
  %169 = and i32 %167, %168
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %166
  store i32 -1, i32* %4, align 4
  br label %235

172:                                              ; preds = %166
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = icmp eq i64 %175, %178
  br i1 %179, label %187, label %180

180:                                              ; preds = %172
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 2
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br label %187

187:                                              ; preds = %180, %172
  %188 = phi i1 [ true, %172 ], [ %186, %180 ]
  %189 = zext i1 %188 to i32
  %190 = call i32 @assert(i32 %189)
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @SQLITE_UTF8, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %208, label %196

196:                                              ; preds = %187
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @SQLITE_UTF16LE, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %208, label %202

202:                                              ; preds = %196
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @SQLITE_UTF16BE, align 8
  %207 = icmp eq i64 %205, %206
  br label %208

208:                                              ; preds = %202, %196, %187
  %209 = phi i1 [ true, %196 ], [ true, %187 ], [ %207, %202 ]
  %210 = zext i1 %209 to i32
  %211 = call i32 @assert(i32 %210)
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %213 = icmp ne %struct.TYPE_17__* %212, null
  br i1 %213, label %214, label %219

214:                                              ; preds = %208
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br label %219

219:                                              ; preds = %214, %208
  %220 = phi i1 [ true, %208 ], [ %218, %214 ]
  %221 = zext i1 %220 to i32
  %222 = call i32 @assert(i32 %221)
  %223 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %224 = icmp ne %struct.TYPE_17__* %223, null
  br i1 %224, label %225, label %230

225:                                              ; preds = %219
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %229 = call i32 @vdbeCompareMemString(%struct.TYPE_16__* %226, %struct.TYPE_16__* %227, %struct.TYPE_17__* %228, i32 0)
  store i32 %229, i32* %4, align 4
  br label %235

230:                                              ; preds = %219
  br label %231

231:                                              ; preds = %230, %155
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %234 = call i32 @sqlite3BlobCompare(%struct.TYPE_16__* %232, %struct.TYPE_16__* %233)
  store i32 %234, i32* %4, align 4
  br label %235

235:                                              ; preds = %231, %225, %171, %165, %154, %153, %142, %131, %121, %110, %109, %98, %80, %79, %68, %36
  %236 = load i32, i32* %4, align 4
  ret i32 %236
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3VdbeMemIsRowSet(%struct.TYPE_16__*) #1

declare dso_local i32 @sqlite3IntFloatCompare(i64, i64) #1

declare dso_local i32 @vdbeCompareMemString(%struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @sqlite3BlobCompare(%struct.TYPE_16__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
