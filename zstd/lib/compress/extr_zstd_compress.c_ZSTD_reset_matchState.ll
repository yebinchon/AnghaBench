; ModuleID = '/home/carl/AnghaBench/zstd/lib/compress/extr_zstd_compress.c_ZSTD_reset_matchState.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/compress/extr_zstd_compress.c_ZSTD_reset_matchState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32*, i32*, i32*, %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_11__ }
%struct.TYPE_10__ = type { i64, i64, i64, i32, i32 }
%struct.TYPE_8__ = type { i32*, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_11__ = type { i32, i32, i64, i64 }

@ZSTD_fast = common dso_local global i64 0, align 8
@ZSTD_resetTarget_CCtx = common dso_local global i64 0, align 8
@ZSTD_HASHLOG3_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"reset indices : %u\00", align 1
@ZSTDirp_reset = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"reserving table space\00", align 1
@memory_allocation = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"failed a workspace allocation in ZSTD_reset_matchState\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"reset table : %u\00", align 1
@ZSTDcrp_leaveDirty = common dso_local global i64 0, align 8
@ZSTD_btopt = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"reserving optimal parser space\00", align 1
@Litbits = common dso_local global i32 0, align 4
@MaxLL = common dso_local global i32 0, align 4
@MaxML = common dso_local global i32 0, align 4
@MaxOff = common dso_local global i32 0, align 4
@ZSTD_OPT_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_9__*, i32*, %struct.TYPE_10__*, i64, i64, i64)* @ZSTD_reset_matchState to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_reset_matchState(%struct.TYPE_9__* %0, i32* %1, %struct.TYPE_10__* %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ZSTD_fast, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  br label %28

23:                                               ; preds = %6
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = shl i64 1, %26
  br label %28

28:                                               ; preds = %23, %22
  %29 = phi i64 [ 0, %22 ], [ %27, %23 ]
  store i64 %29, i64* %13, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = shl i64 1, %32
  store i64 %33, i64* %14, align 8
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* @ZSTD_resetTarget_CCtx, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %28
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 3
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i32, i32* @ZSTD_HASHLOG3_MAX, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @MIN(i32 %43, i32 %46)
  br label %49

48:                                               ; preds = %37, %28
  br label %49

49:                                               ; preds = %48, %42
  %50 = phi i32 [ %47, %42 ], [ 0, %48 ]
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %15, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* %15, align 4
  %55 = zext i32 %54 to i64
  %56 = shl i64 1, %55
  br label %58

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57, %53
  %59 = phi i64 [ %56, %53 ], [ 0, %57 ]
  store i64 %59, i64* %16, align 8
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* @ZSTDirp_reset, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 (i32, i8*, ...) @DEBUGLOG(i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* @ZSTDirp_reset, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %88

68:                                               ; preds = %58
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 6
  %71 = call i32 @memset(%struct.TYPE_11__* %70, i32 0, i32 24)
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 6
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 6
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  store i32 1, i32* %77, align 4
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 6
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, 1
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 6
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 3
  store i64 %82, i64* %85, align 8
  %86 = load i32*, i32** %8, align 8
  %87 = call i32 @ZSTD_cwksp_mark_tables_dirty(i32* %86)
  br label %88

88:                                               ; preds = %68, %58
  %89 = load i32, i32* %15, align 4
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %93 = call i32 @ZSTD_invalidateMatchState(%struct.TYPE_9__* %92)
  %94 = load i32*, i32** %8, align 8
  %95 = call i32 @ZSTD_cwksp_reserve_failed(i32* %94)
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = call i32 @assert(i32 %98)
  %100 = load i32*, i32** %8, align 8
  %101 = call i32 @ZSTD_cwksp_clear_tables(i32* %100)
  %102 = call i32 (i32, i8*, ...) @DEBUGLOG(i32 5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %103 = load i32*, i32** %8, align 8
  %104 = load i64, i64* %14, align 8
  %105 = mul i64 %104, 4
  %106 = call i64 @ZSTD_cwksp_reserve_table(i32* %103, i64 %105)
  %107 = inttoptr i64 %106 to i32*
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  store i32* %107, i32** %109, align 8
  %110 = load i32*, i32** %8, align 8
  %111 = load i64, i64* %13, align 8
  %112 = mul i64 %111, 4
  %113 = call i64 @ZSTD_cwksp_reserve_table(i32* %110, i64 %112)
  %114 = inttoptr i64 %113 to i32*
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 2
  store i32* %114, i32** %116, align 8
  %117 = load i32*, i32** %8, align 8
  %118 = load i64, i64* %16, align 8
  %119 = mul i64 %118, 4
  %120 = call i64 @ZSTD_cwksp_reserve_table(i32* %117, i64 %119)
  %121 = inttoptr i64 %120 to i32*
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 3
  store i32* %121, i32** %123, align 8
  %124 = load i32*, i32** %8, align 8
  %125 = call i32 @ZSTD_cwksp_reserve_failed(i32* %124)
  %126 = load i32, i32* @memory_allocation, align 4
  %127 = call i32 @RETURN_ERROR_IF(i32 %125, i32 %126, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %128 = load i64, i64* %10, align 8
  %129 = load i64, i64* @ZSTDcrp_leaveDirty, align 8
  %130 = icmp ne i64 %128, %129
  %131 = zext i1 %130 to i32
  %132 = call i32 (i32, i8*, ...) @DEBUGLOG(i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %131)
  %133 = load i64, i64* %10, align 8
  %134 = load i64, i64* @ZSTDcrp_leaveDirty, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %88
  %137 = load i32*, i32** %8, align 8
  %138 = call i32 @ZSTD_cwksp_clean_tables(i32* %137)
  br label %139

139:                                              ; preds = %136, %88
  %140 = load i64, i64* %12, align 8
  %141 = load i64, i64* @ZSTD_resetTarget_CCtx, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %217

143:                                              ; preds = %139
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @ZSTD_btopt, align 8
  %148 = icmp sge i64 %146, %147
  br i1 %148, label %149, label %217

149:                                              ; preds = %143
  %150 = call i32 (i32, i8*, ...) @DEBUGLOG(i32 4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %151 = load i32*, i32** %8, align 8
  %152 = load i32, i32* @Litbits, align 4
  %153 = shl i32 1, %152
  %154 = sext i32 %153 to i64
  %155 = mul i64 %154, 4
  %156 = trunc i64 %155 to i32
  %157 = call i64 @ZSTD_cwksp_reserve_aligned(i32* %151, i32 %156)
  %158 = inttoptr i64 %157 to i32*
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 5
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  store i32* %158, i32** %161, align 8
  %162 = load i32*, i32** %8, align 8
  %163 = load i32, i32* @MaxLL, align 4
  %164 = add nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  %166 = mul i64 %165, 4
  %167 = trunc i64 %166 to i32
  %168 = call i64 @ZSTD_cwksp_reserve_aligned(i32* %162, i32 %167)
  %169 = inttoptr i64 %168 to i32*
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 5
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 1
  store i32* %169, i32** %172, align 8
  %173 = load i32*, i32** %8, align 8
  %174 = load i32, i32* @MaxML, align 4
  %175 = add nsw i32 %174, 1
  %176 = sext i32 %175 to i64
  %177 = mul i64 %176, 4
  %178 = trunc i64 %177 to i32
  %179 = call i64 @ZSTD_cwksp_reserve_aligned(i32* %173, i32 %178)
  %180 = inttoptr i64 %179 to i32*
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 5
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 2
  store i32* %180, i32** %183, align 8
  %184 = load i32*, i32** %8, align 8
  %185 = load i32, i32* @MaxOff, align 4
  %186 = add nsw i32 %185, 1
  %187 = sext i32 %186 to i64
  %188 = mul i64 %187, 4
  %189 = trunc i64 %188 to i32
  %190 = call i64 @ZSTD_cwksp_reserve_aligned(i32* %184, i32 %189)
  %191 = inttoptr i64 %190 to i32*
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 5
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 3
  store i32* %191, i32** %194, align 8
  %195 = load i32*, i32** %8, align 8
  %196 = load i32, i32* @ZSTD_OPT_NUM, align 4
  %197 = add nsw i32 %196, 1
  %198 = sext i32 %197 to i64
  %199 = mul i64 %198, 4
  %200 = trunc i64 %199 to i32
  %201 = call i64 @ZSTD_cwksp_reserve_aligned(i32* %195, i32 %200)
  %202 = inttoptr i64 %201 to i32*
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 5
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 5
  store i32* %202, i32** %205, align 8
  %206 = load i32*, i32** %8, align 8
  %207 = load i32, i32* @ZSTD_OPT_NUM, align 4
  %208 = add nsw i32 %207, 1
  %209 = sext i32 %208 to i64
  %210 = mul i64 %209, 4
  %211 = trunc i64 %210 to i32
  %212 = call i64 @ZSTD_cwksp_reserve_aligned(i32* %206, i32 %211)
  %213 = inttoptr i64 %212 to i32*
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 5
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 4
  store i32* %213, i32** %216, align 8
  br label %217

217:                                              ; preds = %149, %143, %139
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 4
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %221 = bitcast %struct.TYPE_10__* %219 to i8*
  %222 = bitcast %struct.TYPE_10__* %220 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %221, i8* align 8 %222, i64 32, i1 false)
  %223 = load i32*, i32** %8, align 8
  %224 = call i32 @ZSTD_cwksp_reserve_failed(i32* %223)
  %225 = load i32, i32* @memory_allocation, align 4
  %226 = call i32 @RETURN_ERROR_IF(i32 %224, i32 %225, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  ret i64 0
}

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @DEBUGLOG(i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @ZSTD_cwksp_mark_tables_dirty(i32*) #1

declare dso_local i32 @ZSTD_invalidateMatchState(%struct.TYPE_9__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ZSTD_cwksp_reserve_failed(i32*) #1

declare dso_local i32 @ZSTD_cwksp_clear_tables(i32*) #1

declare dso_local i64 @ZSTD_cwksp_reserve_table(i32*, i64) #1

declare dso_local i32 @RETURN_ERROR_IF(i32, i32, i8*) #1

declare dso_local i32 @ZSTD_cwksp_clean_tables(i32*) #1

declare dso_local i64 @ZSTD_cwksp_reserve_aligned(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
