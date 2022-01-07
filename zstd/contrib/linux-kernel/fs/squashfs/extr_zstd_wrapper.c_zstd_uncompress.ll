; ModuleID = '/home/carl/AnghaBench/zstd/contrib/linux-kernel/fs/squashfs/extr_zstd_wrapper.c_zstd_uncompress.c'
source_filename = "/home/carl/AnghaBench/zstd/contrib/linux-kernel/fs/squashfs/extr_zstd_wrapper.c_zstd_uncompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.squashfs_sb_info = type { i64 }
%struct.buffer_head = type { i64 }
%struct.squashfs_page_actor = type { i32 }
%struct.workspace = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i64, i64, i32, i32, i32* }
%struct.TYPE_5__ = type { i64, i64, i32*, i32, i32, i32* }

@.str = private unnamed_addr constant [40 x i8] c"Failed to initialize zstd decompressor\0A\00", align 1
@PAGE_SIZE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"zstd decompression error: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.squashfs_sb_info*, i8*, %struct.buffer_head**, i32, i32, i32, %struct.squashfs_page_actor*)* @zstd_uncompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zstd_uncompress(%struct.squashfs_sb_info* %0, i8* %1, %struct.buffer_head** %2, i32 %3, i32 %4, i32 %5, %struct.squashfs_page_actor* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.squashfs_sb_info*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.buffer_head**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.squashfs_page_actor*, align 8
  %16 = alloca %struct.workspace*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_6__, align 8
  %22 = alloca %struct.TYPE_5__, align 8
  %23 = alloca i32, align 4
  store %struct.squashfs_sb_info* %0, %struct.squashfs_sb_info** %9, align 8
  store i8* %1, i8** %10, align 8
  store %struct.buffer_head** %2, %struct.buffer_head*** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.squashfs_page_actor* %6, %struct.squashfs_page_actor** %15, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = bitcast i8* %24 to %struct.workspace*
  store %struct.workspace* %25, %struct.workspace** %16, align 8
  store i64 0, i64* %18, align 8
  store i32 0, i32* %20, align 4
  %26 = bitcast %struct.TYPE_6__* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %26, i8 0, i64 40, i1 false)
  %27 = bitcast %struct.TYPE_5__* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 40, i1 false)
  %28 = load %struct.workspace*, %struct.workspace** %16, align 8
  %29 = getelementptr inbounds %struct.workspace, %struct.workspace* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.workspace*, %struct.workspace** %16, align 8
  %32 = getelementptr inbounds %struct.workspace, %struct.workspace* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.workspace*, %struct.workspace** %16, align 8
  %35 = getelementptr inbounds %struct.workspace, %struct.workspace* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32* @ZSTD_initDStream(i32 %30, i32 %33, i32 %36)
  store i32* %37, i32** %17, align 8
  %38 = load i32*, i32** %17, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %7
  %41 = call i32 (i8*, ...) @ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %165

42:                                               ; preds = %7
  %43 = load i8*, i8** @PAGE_SIZE, align 8
  %44 = ptrtoint i8* %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i64 %44, i64* %45, align 8
  %46 = load %struct.squashfs_page_actor*, %struct.squashfs_page_actor** %15, align 8
  %47 = call i32* @squashfs_first_page(%struct.squashfs_page_actor* %46)
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  store i32* %47, i32** %48, align 8
  br label %49

49:                                               ; preds = %144, %42
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %51, %53
  br i1 %54, label %55, label %86

55:                                               ; preds = %49
  %56 = load i32, i32* %20, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %86

59:                                               ; preds = %55
  %60 = load i32, i32* %14, align 4
  %61 = load %struct.squashfs_sb_info*, %struct.squashfs_sb_info** %9, align 8
  %62 = getelementptr inbounds %struct.squashfs_sb_info, %struct.squashfs_sb_info* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = sub nsw i64 %63, %65
  %67 = call i32 @min(i32 %60, i64 %66)
  store i32 %67, i32* %23, align 4
  %68 = load i32, i32* %23, align 4
  %69 = load i32, i32* %14, align 4
  %70 = sub nsw i32 %69, %68
  store i32 %70, i32* %14, align 4
  %71 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %72 = load i32, i32* %20, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %71, i64 %73
  %75 = load %struct.buffer_head*, %struct.buffer_head** %74, align 8
  %76 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %77, %79
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  store i64 %80, i64* %81, align 8
  %82 = load i32, i32* %23, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  store i64 %83, i64* %84, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i64 0, i64* %85, align 8
  store i32 0, i32* %13, align 4
  br label %86

86:                                               ; preds = %59, %55, %49
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %88, %90
  br i1 %91, label %92, label %107

92:                                               ; preds = %86
  %93 = load %struct.squashfs_page_actor*, %struct.squashfs_page_actor** %15, align 8
  %94 = call i32* @squashfs_next_page(%struct.squashfs_page_actor* %93)
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  store i32* %94, i32** %95, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = icmp eq i32* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %92
  %100 = load %struct.squashfs_page_actor*, %struct.squashfs_page_actor** %15, align 8
  %101 = call i32 @squashfs_finish_page(%struct.squashfs_page_actor* %100)
  br label %165

102:                                              ; preds = %92
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  store i64 0, i64* %103, align 8
  %104 = load i8*, i8** @PAGE_SIZE, align 8
  %105 = ptrtoint i8* %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i64 %105, i64* %106, align 8
  br label %107

107:                                              ; preds = %102, %86
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %18, align 8
  %111 = sub i64 %110, %109
  store i64 %111, i64* %18, align 8
  %112 = load i32*, i32** %17, align 8
  %113 = call i64 @ZSTD_decompressStream(i32* %112, %struct.TYPE_5__* %22, %struct.TYPE_6__* %21)
  store i64 %113, i64* %19, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %18, align 8
  %117 = add i64 %116, %115
  store i64 %117, i64* %18, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %119, %121
  br i1 %122, label %123, label %135

123:                                              ; preds = %107
  %124 = load i32, i32* %20, align 4
  %125 = load i32, i32* %12, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %135

127:                                              ; preds = %123
  %128 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %129 = load i32, i32* %20, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %20, align 4
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %128, i64 %131
  %133 = load %struct.buffer_head*, %struct.buffer_head** %132, align 8
  %134 = call i32 @put_bh(%struct.buffer_head* %133)
  br label %135

135:                                              ; preds = %127, %123, %107
  br label %136

136:                                              ; preds = %135
  %137 = load i64, i64* %19, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %136
  %140 = load i64, i64* %19, align 8
  %141 = call i64 @ZSTD_isError(i64 %140)
  %142 = icmp ne i64 %141, 0
  %143 = xor i1 %142, true
  br label %144

144:                                              ; preds = %139, %136
  %145 = phi i1 [ false, %136 ], [ %143, %139 ]
  br i1 %145, label %49, label %146

146:                                              ; preds = %144
  %147 = load %struct.squashfs_page_actor*, %struct.squashfs_page_actor** %15, align 8
  %148 = call i32 @squashfs_finish_page(%struct.squashfs_page_actor* %147)
  %149 = load i64, i64* %19, align 8
  %150 = call i64 @ZSTD_isError(i64 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %146
  %153 = load i64, i64* %19, align 8
  %154 = call i64 @ZSTD_getErrorCode(i64 %153)
  %155 = trunc i64 %154 to i32
  %156 = call i32 (i8*, ...) @ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %155)
  br label %165

157:                                              ; preds = %146
  %158 = load i32, i32* %20, align 4
  %159 = load i32, i32* %12, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %157
  br label %165

162:                                              ; preds = %157
  %163 = load i64, i64* %18, align 8
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %8, align 4
  br label %183

165:                                              ; preds = %161, %152, %99, %40
  br label %166

166:                                              ; preds = %177, %165
  %167 = load i32, i32* %20, align 4
  %168 = load i32, i32* %12, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %180

170:                                              ; preds = %166
  %171 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %172 = load i32, i32* %20, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %171, i64 %173
  %175 = load %struct.buffer_head*, %struct.buffer_head** %174, align 8
  %176 = call i32 @put_bh(%struct.buffer_head* %175)
  br label %177

177:                                              ; preds = %170
  %178 = load i32, i32* %20, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %20, align 4
  br label %166

180:                                              ; preds = %166
  %181 = load i32, i32* @EIO, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %8, align 4
  br label %183

183:                                              ; preds = %180, %162
  %184 = load i32, i32* %8, align 4
  ret i32 %184
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @ZSTD_initDStream(i32, i32, i32) #2

declare dso_local i32 @ERROR(i8*, ...) #2

declare dso_local i32* @squashfs_first_page(%struct.squashfs_page_actor*) #2

declare dso_local i32 @min(i32, i64) #2

declare dso_local i32* @squashfs_next_page(%struct.squashfs_page_actor*) #2

declare dso_local i32 @squashfs_finish_page(%struct.squashfs_page_actor*) #2

declare dso_local i64 @ZSTD_decompressStream(i32*, %struct.TYPE_5__*, %struct.TYPE_6__*) #2

declare dso_local i32 @put_bh(%struct.buffer_head*) #2

declare dso_local i64 @ZSTD_isError(i64) #2

declare dso_local i64 @ZSTD_getErrorCode(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
