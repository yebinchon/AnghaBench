; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_arc.c_arc_hdr_decrypt.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_arc.c_arc_hdr_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_21__, %struct.TYPE_20__ }
%struct.TYPE_21__ = type { i64, i32* }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32 }

@B_FALSE = common dso_local global i32 0, align 4
@DMU_BSWAP_NUMFUNCS = common dso_local global i64 0, align 8
@ZIO_COMPRESS_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, i32*, i32*)* @arc_hdr_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arc_hdr_decrypt(%struct.TYPE_22__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %9, align 8
  store i8* null, i8** %10, align 8
  %13 = load i32, i32* @B_FALSE, align 4
  store i32 %13, i32* %11, align 4
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DMU_BSWAP_NUMFUNCS, align 8
  %19 = icmp ne i64 %17, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %12, align 4
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %22 = call i32 @HDR_EMPTY_OR_LOCKED(%struct.TYPE_22__* %21)
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %25 = call i32 @HDR_ENCRYPTED(%struct.TYPE_22__* %24)
  %26 = call i32 @ASSERT(i32 %25)
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %28 = load i32, i32* @B_FALSE, align 4
  %29 = call i32 @arc_hdr_alloc_abd(%struct.TYPE_22__* %27, i32 %28)
  %30 = load i32, i32* @B_FALSE, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @B_FALSE, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %52 = call i32 @HDR_GET_PSIZE(%struct.TYPE_22__* %51)
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @spa_do_crypt_abd(i32 %30, i32* %31, i32* %32, i32 %36, i32 %37, i32 %38, i32 %42, i32 %46, i32 %50, i32 %52, i32* %56, i32 %60, i32* %11)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %3
  br label %139

65:                                               ; preds = %3
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %65
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %78 = call i32 @HDR_GET_PSIZE(%struct.TYPE_22__* %77)
  %79 = call i32 @abd_copy(i32* %72, i32 %76, i32 %78)
  br label %80

80:                                               ; preds = %68, %65
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %82 = call i64 @HDR_GET_COMPRESS(%struct.TYPE_22__* %81)
  %83 = load i64, i64* @ZIO_COMPRESS_OFF, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %138

85:                                               ; preds = %80
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %87 = call i32 @HDR_COMPRESSION_ENABLED(%struct.TYPE_22__* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %138, label %89

89:                                               ; preds = %85
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %92 = call i32 @arc_hdr_size(%struct.TYPE_22__* %91)
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %94 = call i32* @arc_get_data_abd(%struct.TYPE_22__* %90, i32 %92, %struct.TYPE_22__* %93)
  store i32* %94, i32** %9, align 8
  %95 = load i32*, i32** %9, align 8
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %97 = call i32 @arc_hdr_size(%struct.TYPE_22__* %96)
  %98 = call i8* @abd_borrow_buf(i32* %95, i32 %97)
  store i8* %98, i8** %10, align 8
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %100 = call i64 @HDR_GET_COMPRESS(%struct.TYPE_22__* %99)
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i8*, i8** %10, align 8
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %107 = call i32 @HDR_GET_PSIZE(%struct.TYPE_22__* %106)
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %109 = call i32 @HDR_GET_LSIZE(%struct.TYPE_22__* %108)
  %110 = call i32 @zio_decompress_data(i64 %100, i32* %104, i8* %105, i32 %107, i32 %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %89
  %114 = load i32*, i32** %9, align 8
  %115 = load i8*, i8** %10, align 8
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %117 = call i32 @arc_hdr_size(%struct.TYPE_22__* %116)
  %118 = call i32 @abd_return_buf(i32* %114, i8* %115, i32 %117)
  br label %139

119:                                              ; preds = %89
  %120 = load i32*, i32** %9, align 8
  %121 = load i8*, i8** %10, align 8
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %123 = call i32 @arc_hdr_size(%struct.TYPE_22__* %122)
  %124 = call i32 @abd_return_buf_copy(i32* %120, i8* %121, i32 %123)
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %131 = call i32 @arc_hdr_size(%struct.TYPE_22__* %130)
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %133 = call i32 @arc_free_data_abd(%struct.TYPE_22__* %125, i32* %129, i32 %131, %struct.TYPE_22__* %132)
  %134 = load i32*, i32** %9, align 8
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 1
  store i32* %134, i32** %137, align 8
  br label %138

138:                                              ; preds = %119, %85, %80
  store i32 0, i32* %4, align 4
  br label %154

139:                                              ; preds = %113, %64
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %141 = load i32, i32* @B_FALSE, align 4
  %142 = call i32 @arc_hdr_free_abd(%struct.TYPE_22__* %140, i32 %141)
  %143 = load i32*, i32** %9, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %145, label %152

145:                                              ; preds = %139
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %147 = load i32*, i32** %9, align 8
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %149 = call i32 @arc_hdr_size(%struct.TYPE_22__* %148)
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %151 = call i32 @arc_free_data_buf(%struct.TYPE_22__* %146, i32* %147, i32 %149, %struct.TYPE_22__* %150)
  br label %152

152:                                              ; preds = %145, %139
  %153 = load i32, i32* %8, align 4
  store i32 %153, i32* %4, align 4
  br label %154

154:                                              ; preds = %152, %138
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @HDR_EMPTY_OR_LOCKED(%struct.TYPE_22__*) #1

declare dso_local i32 @HDR_ENCRYPTED(%struct.TYPE_22__*) #1

declare dso_local i32 @arc_hdr_alloc_abd(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @spa_do_crypt_abd(i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @HDR_GET_PSIZE(%struct.TYPE_22__*) #1

declare dso_local i32 @abd_copy(i32*, i32, i32) #1

declare dso_local i64 @HDR_GET_COMPRESS(%struct.TYPE_22__*) #1

declare dso_local i32 @HDR_COMPRESSION_ENABLED(%struct.TYPE_22__*) #1

declare dso_local i32* @arc_get_data_abd(%struct.TYPE_22__*, i32, %struct.TYPE_22__*) #1

declare dso_local i32 @arc_hdr_size(%struct.TYPE_22__*) #1

declare dso_local i8* @abd_borrow_buf(i32*, i32) #1

declare dso_local i32 @zio_decompress_data(i64, i32*, i8*, i32, i32) #1

declare dso_local i32 @HDR_GET_LSIZE(%struct.TYPE_22__*) #1

declare dso_local i32 @abd_return_buf(i32*, i8*, i32) #1

declare dso_local i32 @abd_return_buf_copy(i32*, i8*, i32) #1

declare dso_local i32 @arc_free_data_abd(%struct.TYPE_22__*, i32*, i32, %struct.TYPE_22__*) #1

declare dso_local i32 @arc_hdr_free_abd(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @arc_free_data_buf(%struct.TYPE_22__*, i32*, i32, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
