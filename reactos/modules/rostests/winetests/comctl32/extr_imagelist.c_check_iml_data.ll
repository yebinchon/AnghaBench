; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_imagelist.c_check_iml_data.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_imagelist.c_check_iml_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memstream = type { i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"%s: expected image count %d got %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"ImageList_GetIconSize failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"%s: wrong cx %d (expected %d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"%s: wrong cy %d (expected %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"%s: ImageList_Write failed\0A\00", align 1
@S_OK = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"%s: Failed to get hglobal, %#x\0A\00", align 1
@STATFLAG_NONAME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"Stat() failed, hr %#x.\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"%s: ImageList_Write didn't write any data\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"%s: ImageList_Write wrote not enough data\0A\00", align 1
@ILC_MASK = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [44 x i8] c"%s: extra data %u/%u but mask not expected\0A\00", align 1
@STREAM_SEEK_SET = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [37 x i8] c"%s: Failed to deserialize imagelist\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i64, i64, i64, i64, i64, i8*)* @check_iml_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_iml_data(i32* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i8* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.memstream, align 4
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_8__, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_7__, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  store i8* %7, i8** %16, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = call i64 @pImageList_GetImageCount(i32* %31)
  store i64 %32, i64* %17, align 8
  %33 = load i64, i64* %17, align 8
  %34 = load i64, i64* %12, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i8*, i8** %16, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* %17, align 8
  %40 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %37, i64 %38, i64 %39)
  %41 = load i32*, i32** %9, align 8
  %42 = call i64 @pImageList_GetIconSize(i32* %41, i64* %18, i64* %19)
  store i64 %42, i64* %17, align 8
  %43 = load i64, i64* %17, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i64, i64* %18, align 8
  %47 = load i64, i64* %10, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = load i8*, i8** %16, align 8
  %51 = load i64, i64* %18, align 8
  %52 = load i64, i64* %10, align 8
  %53 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %50, i64 %51, i64 %52)
  %54 = load i64, i64* %19, align 8
  %55 = load i64, i64* %11, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = load i8*, i8** %16, align 8
  %59 = load i64, i64* %19, align 8
  %60 = load i64, i64* %11, align 8
  %61 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %58, i64 %59, i64 %60)
  %62 = call i32 @init_memstream(%struct.memstream* %21)
  %63 = load i32*, i32** %9, align 8
  %64 = getelementptr inbounds %struct.memstream, %struct.memstream* %21, i32 0, i32 0
  %65 = call i32 @pImageList_Write(i32* %63, i32* %64)
  store i32 %65, i32* %30, align 4
  %66 = load i32, i32* %30, align 4
  %67 = load i8*, i8** %16, align 8
  %68 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %67)
  %69 = getelementptr inbounds %struct.memstream, %struct.memstream* %21, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @GetHGlobalFromStream(i32 %70, i32* %25)
  store i8* %71, i8** %28, align 8
  %72 = load i8*, i8** %28, align 8
  %73 = load i8*, i8** @S_OK, align 8
  %74 = icmp eq i8* %72, %73
  %75 = zext i1 %74 to i32
  %76 = load i8*, i8** %16, align 8
  %77 = load i8*, i8** %28, align 8
  %78 = call i32 (i32, i8*, ...) @ok(i32 %75, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* %76, i8* %77)
  %79 = getelementptr inbounds %struct.memstream, %struct.memstream* %21, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @STATFLAG_NONAME, align 4
  %82 = call i8* @IStream_Stat(i32 %80, %struct.TYPE_7__* %26, i32 %81)
  store i8* %82, i8** %28, align 8
  %83 = load i8*, i8** %28, align 8
  %84 = load i8*, i8** @S_OK, align 8
  %85 = icmp eq i8* %83, %84
  %86 = zext i1 %85 to i32
  %87 = load i8*, i8** %28, align 8
  %88 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %87)
  %89 = load i32, i32* %25, align 4
  %90 = call i8* @GlobalLock(i32 %89)
  store i8* %90, i8** %27, align 8
  %91 = load i8*, i8** %27, align 8
  %92 = icmp ne i8* %91, null
  %93 = zext i1 %92 to i32
  %94 = load i8*, i8** %16, align 8
  %95 = call i32 (i32, i8*, ...) @ok(i32 %93, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i8* %94)
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = icmp ugt i64 %99, 4
  %101 = zext i1 %100 to i32
  %102 = load i8*, i8** %16, align 8
  %103 = call i32 (i32, i8*, ...) @ok(i32 %101, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i8* %102)
  %104 = load i8*, i8** %27, align 8
  %105 = bitcast i8* %104 to i32*
  store i32* %105, i32** %22, align 8
  %106 = load i32*, i32** %22, align 8
  %107 = load i64, i64* %10, align 8
  %108 = load i64, i64* %11, align 8
  %109 = load i64, i64* %12, align 8
  %110 = load i64, i64* %13, align 8
  %111 = load i64, i64* %14, align 8
  %112 = load i64, i64* %15, align 8
  %113 = call i32 @check_ilhead_data(i32* %106, i64 %107, i64 %108, i64 %109, i64 %110, i64 %111, i64 %112)
  %114 = load i32*, i32** %22, align 8
  %115 = call i32 @imagelist_get_bitmap_size(i32* %114, i32* %29)
  %116 = load i32*, i32** %22, align 8
  %117 = load i8*, i8** %27, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 4
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = sub i64 %122, 4
  %124 = trunc i64 %123 to i32
  %125 = load i64, i64* %15, align 8
  %126 = and i64 %125, 254
  %127 = trunc i64 %126 to i32
  %128 = load i8*, i8** %16, align 8
  %129 = call i64 @check_bitmap_data(i32* %116, i8* %118, i32 %124, i32* %29, i32 %127, i8* %128)
  store i64 %129, i64* %20, align 8
  %130 = load i32*, i32** %22, align 8
  %131 = call i32 @is_v6_header(i32* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %167, label %133

133:                                              ; preds = %8
  %134 = load i64, i64* %20, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = sub i64 %138, 4
  %140 = icmp ult i64 %134, %139
  br i1 %140, label %141, label %167

141:                                              ; preds = %133
  %142 = load i64, i64* %15, align 8
  %143 = load i64, i64* @ILC_MASK, align 8
  %144 = and i64 %142, %143
  %145 = trunc i64 %144 to i32
  %146 = load i8*, i8** %16, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i64, i64* %20, align 8
  %151 = call i32 (i32, i8*, ...) @ok(i32 %145, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0), i8* %146, i32 %149, i64 %150)
  %152 = load i32*, i32** %22, align 8
  %153 = load i8*, i8** %27, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 4
  %155 = load i64, i64* %20, align 8
  %156 = getelementptr inbounds i8, i8* %154, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = sext i32 %159 to i64
  %161 = sub i64 %160, 4
  %162 = load i64, i64* %20, align 8
  %163 = sub i64 %161, %162
  %164 = trunc i64 %163 to i32
  %165 = load i8*, i8** %16, align 8
  %166 = call i64 @check_bitmap_data(i32* %152, i8* %156, i32 %164, i32* %29, i32 1, i8* %165)
  br label %167

167:                                              ; preds = %141, %133, %8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  store i64 0, i64* %168, align 8
  %169 = getelementptr inbounds %struct.memstream, %struct.memstream* %21, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @STREAM_SEEK_SET, align 4
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = call i32 @IStream_Seek(i32 %170, i64 %173, i32 %171, i32* null)
  %175 = getelementptr inbounds %struct.memstream, %struct.memstream* %21, i32 0, i32 0
  %176 = call i32* @pImageList_Read(i32* %175)
  store i32* %176, i32** %24, align 8
  %177 = load i32*, i32** %24, align 8
  %178 = icmp ne i32* %177, null
  %179 = zext i1 %178 to i32
  %180 = load i8*, i8** %16, align 8
  %181 = call i32 (i32, i8*, ...) @ok(i32 %179, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i8* %180)
  %182 = load i32*, i32** %24, align 8
  %183 = call i32 @pImageList_Destroy(i32* %182)
  %184 = load i32, i32* %25, align 4
  %185 = call i32 @GlobalUnlock(i32 %184)
  %186 = call i32 @cleanup_memstream(%struct.memstream* %21)
  ret void
}

declare dso_local i64 @pImageList_GetImageCount(i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @pImageList_GetIconSize(i32*, i64*, i64*) #1

declare dso_local i32 @init_memstream(%struct.memstream*) #1

declare dso_local i32 @pImageList_Write(i32*, i32*) #1

declare dso_local i8* @GetHGlobalFromStream(i32, i32*) #1

declare dso_local i8* @IStream_Stat(i32, %struct.TYPE_7__*, i32) #1

declare dso_local i8* @GlobalLock(i32) #1

declare dso_local i32 @check_ilhead_data(i32*, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @imagelist_get_bitmap_size(i32*, i32*) #1

declare dso_local i64 @check_bitmap_data(i32*, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @is_v6_header(i32*) #1

declare dso_local i32 @IStream_Seek(i32, i64, i32, i32*) #1

declare dso_local i32* @pImageList_Read(i32*) #1

declare dso_local i32 @pImageList_Destroy(i32*) #1

declare dso_local i32 @GlobalUnlock(i32) #1

declare dso_local i32 @cleanup_memstream(%struct.memstream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
