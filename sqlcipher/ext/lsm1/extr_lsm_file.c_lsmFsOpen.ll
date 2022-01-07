; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_file.c_lsmFsOpen.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_file.c_lsmFsOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i8*, i8*, i32, i32, i32, i32, i32, i32, %struct.TYPE_11__*, i8*, %struct.TYPE_10__*, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@LSM_OK = common dso_local global i32 0, align 4
@LSM_DFLT_PAGE_SIZE = common dso_local global i32 0, align 4
@LSM_DFLT_BLOCK_SIZE = common dso_local global i32 0, align 4
@LSM_META_PAGE_SIZE = common dso_local global i32 0, align 4
@LSM_META_RW_PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"-log\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lsmFsOpen(%struct.TYPE_10__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @LSM_OK, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @strlen(i8* %13)
  store i32 %14, i32* %9, align 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %18 = icmp eq %struct.TYPE_12__* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br label %30

30:                                               ; preds = %25, %3
  %31 = phi i1 [ false, %3 ], [ %29, %25 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = add i64 80, %35
  %37 = add i64 %36, 1
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = add i64 %37, %39
  %41 = add i64 %40, 4
  %42 = add i64 %41, 1
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %10, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i8* @lsmMallocZeroRc(i32 %46, i32 %47, i32* %8)
  %49 = bitcast i8* %48 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %49, %struct.TYPE_12__** %7, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %51 = icmp ne %struct.TYPE_12__* %50, null
  br i1 %51, label %52, label %178

52:                                               ; preds = %30
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i64 1
  %55 = bitcast %struct.TYPE_12__* %54 to i8*
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %60, i64 %63
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = load i32, i32* @LSM_DFLT_PAGE_SIZE, align 4
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* @LSM_DFLT_BLOCK_SIZE, align 4
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 13
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* @LSM_META_PAGE_SIZE, align 4
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 12
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @LSM_META_RW_PAGE_SIZE, align 4
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 11
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 10
  store %struct.TYPE_10__* %79, %struct.TYPE_10__** %81, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 6
  store i32 %84, i32* %86, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = load i8*, i8** %5, align 8
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  %93 = call i32 @memcpy(i8* %89, i8* %90, i32 %92)
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = load i8*, i8** %5, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @memcpy(i8* %96, i8* %97, i32 %98)
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = call i32 @memcpy(i8* %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 5)
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = sdiv i32 2097152, %109
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 4
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 4
  store i32 4096, i32* %114, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = mul i64 8, %121
  %123 = trunc i64 %122 to i32
  %124 = call i8* @lsmMallocZeroRc(i32 %117, i32 %123, i32* %8)
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 9
  store i8* %124, i8** %126, align 8
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %128 = call %struct.TYPE_11__* @lsmDbRecycleFd(%struct.TYPE_10__* %127)
  store %struct.TYPE_11__* %128, %struct.TYPE_11__** %11, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %130 = icmp ne %struct.TYPE_11__* %129, null
  br i1 %130, label %131, label %142

131:                                              ; preds = %52
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 8
  store %struct.TYPE_11__* %132, %struct.TYPE_11__** %134, align 8
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 5
  store i32 %137, i32* %139, align 4
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %141 = call i32 @memset(%struct.TYPE_11__* %140, i32 0, i32 4)
  br label %160

142:                                              ; preds = %52
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = call i8* @lsmMallocZeroRc(i32 %145, i32 4, i32* %8)
  %147 = bitcast i8* %146 to %struct.TYPE_11__*
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 8
  store %struct.TYPE_11__* %147, %struct.TYPE_11__** %149, align 8
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* @LSM_OK, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %159

153:                                              ; preds = %142
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %155 = load i32, i32* %6, align 4
  %156 = call i32 @fsOpenFile(%struct.TYPE_12__* %154, i32 %155, i32 0, i32* %8)
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 5
  store i32 %156, i32* %158, align 4
  br label %159

159:                                              ; preds = %153, %142
  br label %160

160:                                              ; preds = %159, %131
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* @LSM_OK, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %160
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %166 = call i32 @lsmFsClose(%struct.TYPE_12__* %165)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %7, align 8
  br label %177

167:                                              ; preds = %160
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @lsmEnvSectorSize(i32 %170, i32 %173)
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 7
  store i32 %174, i32* %176, align 4
  br label %177

177:                                              ; preds = %167, %164
  br label %178

178:                                              ; preds = %177, %30
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 2
  store %struct.TYPE_12__* %179, %struct.TYPE_12__** %181, align 8
  %182 = load i32, i32* %8, align 4
  ret i32 %182
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @lsmMallocZeroRc(i32, i32, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_11__* @lsmDbRecycleFd(%struct.TYPE_10__*) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @fsOpenFile(%struct.TYPE_12__*, i32, i32, i32*) #1

declare dso_local i32 @lsmFsClose(%struct.TYPE_12__*) #1

declare dso_local i32 @lsmEnvSectorSize(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
