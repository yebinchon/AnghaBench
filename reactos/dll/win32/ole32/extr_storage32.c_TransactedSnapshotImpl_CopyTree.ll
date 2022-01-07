; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_TransactedSnapshotImpl_CopyTree.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_TransactedSnapshotImpl_CopyTree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_19__*, i32, i32, %struct.TYPE_15__ }
%struct.TYPE_19__ = type { i64, i64, i64, %struct.TYPE_21__, i32, i64, i32, i32 }
%struct.TYPE_21__ = type { i64, i64, i64, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_20__ = type { i64, i64, i64, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }

@S_OK = common dso_local global i32 0, align 4
@DIRENTRY_NULL = common dso_local global i64 0, align 8
@BLOCK_END_OF_CHAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*)* @TransactedSnapshotImpl_CopyTree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TransactedSnapshotImpl_CopyTree(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_20__, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %8 = load i32, i32* @S_OK, align 4
  store i32 %8, i32* %6, align 4
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %4, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i64 %16
  store %struct.TYPE_19__* %17, %struct.TYPE_19__** %5, align 8
  %18 = load i64, i64* @DIRENTRY_NULL, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DIRENTRY_NULL, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* @S_OK, align 4
  store i32 %33, i32* %2, align 4
  br label %234

34:                                               ; preds = %1
  %35 = load i64, i64* @DIRENTRY_NULL, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %37, align 8
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 0
  store i64 %35, i64* %44, align 8
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @TransactedSnapshotImpl_FindFirstChild(%struct.TYPE_18__* %45, i64 %49)
  store i64 %50, i64* %4, align 8
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %52, align 8
  %54 = load i64, i64* %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i64 %54
  store %struct.TYPE_19__* %55, %struct.TYPE_19__** %5, align 8
  br label %56

56:                                               ; preds = %223, %34
  %57 = load i64, i64* %4, align 8
  %58 = load i64, i64* @DIRENTRY_NULL, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %232

60:                                               ; preds = %56
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %99

65:                                               ; preds = %60
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %105, label %70

70:                                               ; preds = %65
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 5
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %105, label %75

75:                                               ; preds = %70
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @TransactedSnapshotImpl_MadeCopy(%struct.TYPE_18__* %76, i64 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %105, label %83

83:                                               ; preds = %75
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @TransactedSnapshotImpl_MadeCopy(%struct.TYPE_18__* %84, i64 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %105, label %91

91:                                               ; preds = %83
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @TransactedSnapshotImpl_MadeCopy(%struct.TYPE_18__* %92, i64 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %91, %60
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 1
  store i64 %102, i64* %104, align 8
  br label %223

105:                                              ; preds = %91, %83, %75, %70, %65
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 3
  %108 = call i32 @memcpy(%struct.TYPE_20__* %7, %struct.TYPE_21__* %107, i32 40)
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  store i64 0, i64* %110, align 8
  %111 = load i32, i32* @BLOCK_END_OF_CHAIN, align 4
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 3
  store i32 %111, i32* %112, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @DIRENTRY_NULL, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %127

117:                                              ; preds = %105
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  store i64 %125, i64* %126, align 8
  br label %127

127:                                              ; preds = %117, %105
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @DIRENTRY_NULL, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %142

132:                                              ; preds = %127
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  store i64 %140, i64* %141, align 8
  br label %142

142:                                              ; preds = %132, %127
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @DIRENTRY_NULL, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %147, label %157

147:                                              ; preds = %142
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 2
  store i64 %155, i64* %156, align 8
  br label %157

157:                                              ; preds = %147, %142
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 1
  %163 = call i32 @StorageBaseImpl_CreateDirEntry(i32 %160, %struct.TYPE_20__* %7, i64* %162)
  store i32 %163, i32* %6, align 4
  %164 = load i32, i32* %6, align 4
  %165 = call i64 @FAILED(i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %157
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %169 = load i64, i64* %4, align 8
  %170 = call i32 @TransactedSnapshotImpl_DestroyTemporaryCopy(%struct.TYPE_18__* %168, i64 %169)
  %171 = load i32, i32* %6, align 4
  store i32 %171, i32* %2, align 4
  br label %234

172:                                              ; preds = %157
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 5
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %191

177:                                              ; preds = %172
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @StorageBaseImpl_CopyStream(i32 %180, i64 %183, i32 %186, i32 %189)
  store i32 %190, i32* %6, align 4
  br label %210

191:                                              ; preds = %172
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i32 0, i32 3
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %209

198:                                              ; preds = %191
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = call i32 @StorageBaseImpl_StreamLink(i32 %201, i64 %204, i64 %207)
  store i32 %208, i32* %6, align 4
  br label %209

209:                                              ; preds = %198, %191
  br label %210

210:                                              ; preds = %209, %177
  %211 = load i32, i32* %6, align 4
  %212 = call i64 @FAILED(i32 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %222

214:                                              ; preds = %210
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %216 = load i64, i64* %4, align 8
  %217 = call i64 @TransactedSnapshotImpl_FindNextChild(%struct.TYPE_18__* %215, i64 %216)
  store i64 %217, i64* %4, align 8
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %219 = load i64, i64* %4, align 8
  %220 = call i32 @TransactedSnapshotImpl_DestroyTemporaryCopy(%struct.TYPE_18__* %218, i64 %219)
  %221 = load i32, i32* %6, align 4
  store i32 %221, i32* %2, align 4
  br label %234

222:                                              ; preds = %210
  br label %223

223:                                              ; preds = %222, %99
  %224 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %225 = load i64, i64* %4, align 8
  %226 = call i64 @TransactedSnapshotImpl_FindNextChild(%struct.TYPE_18__* %224, i64 %225)
  store i64 %226, i64* %4, align 8
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_19__*, %struct.TYPE_19__** %228, align 8
  %230 = load i64, i64* %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %229, i64 %230
  store %struct.TYPE_19__* %231, %struct.TYPE_19__** %5, align 8
  br label %56

232:                                              ; preds = %56
  %233 = load i32, i32* %6, align 4
  store i32 %233, i32* %2, align 4
  br label %234

234:                                              ; preds = %232, %214, %167, %32
  %235 = load i32, i32* %2, align 4
  ret i32 %235
}

declare dso_local i64 @TransactedSnapshotImpl_FindFirstChild(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @TransactedSnapshotImpl_MadeCopy(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @memcpy(%struct.TYPE_20__*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @StorageBaseImpl_CreateDirEntry(i32, %struct.TYPE_20__*, i64*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @TransactedSnapshotImpl_DestroyTemporaryCopy(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @StorageBaseImpl_CopyStream(i32, i64, i32, i32) #1

declare dso_local i32 @StorageBaseImpl_StreamLink(i32, i64, i64) #1

declare dso_local i64 @TransactedSnapshotImpl_FindNextChild(%struct.TYPE_18__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
