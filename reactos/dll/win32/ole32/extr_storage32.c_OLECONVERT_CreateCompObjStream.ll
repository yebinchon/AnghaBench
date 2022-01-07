; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_OLECONVERT_CreateCompObjStream.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_OLECONVERT_CreateCompObjStream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32, i32*, i32, i32*, i32, i32*, i32 }

@S_OK = common dso_local global i64 0, align 8
@OLECONVERT_CreateCompObjStream.wstrStreamName = internal constant [9 x i32] [i32 1, i32 67, i32 111, i32 109, i32 112, i32 79, i32 98, i32 106, i32 0], align 16
@OLESTREAM_MAX_STR_LEN = common dso_local global i32 0, align 4
@OLECONVERT_CreateCompObjStream.pCompObjUnknown1 = internal constant [12 x i32] [i32 1, i32 0, i32 254, i32 255, i32 3, i32 10, i32 0, i32 0, i32 255, i32 255, i32 255, i32 255], align 16
@OLECONVERT_CreateCompObjStream.pCompObjUnknown2 = internal constant [4 x i32] [i32 244, i32 57, i32 178, i32 113], align 16
@STGM_WRITE = common dso_local global i32 0, align 4
@STGM_SHARE_EXCLUSIVE = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@MAXIMUM_ALLOWED = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @OLECONVERT_CreateCompObjStream(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %15 = load i64, i64* @S_OK, align 8
  store i64 %15, i64* %7, align 8
  %16 = load i32, i32* @OLESTREAM_MAX_STR_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %20 = call i32 @memset(%struct.TYPE_3__* %8, i32 0, i32 72)
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @memcpy(i32* %22, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @OLECONVERT_CreateCompObjStream.pCompObjUnknown1, i64 0, i64 0), i32 48)
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @memcpy(i32* %25, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @OLECONVERT_CreateCompObjStream.pCompObjUnknown2, i64 0, i64 0), i32 16)
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @STGM_WRITE, align 4
  %29 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %30 = or i32 %28, %29
  %31 = call i64 @IStorage_CreateStream(i32 %27, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @OLECONVERT_CreateCompObjStream.wstrStreamName, i64 0, i64 0), i32 %30, i32 0, i32 0, i32** %5)
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @S_OK, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %150

35:                                               ; preds = %2
  %36 = load i8*, i8** %4, align 8
  %37 = call i8* @strlen(i8* %36)
  %38 = getelementptr i8, i8* %37, i64 1
  %39 = ptrtoint i8* %38 to i32
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  store i32 %39, i32* %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @strcpy(i32* %42, i8* %43)
  %45 = load i8*, i8** %4, align 8
  %46 = call i8* @strlen(i8* %45)
  %47 = getelementptr i8, i8* %46, i64 1
  %48 = ptrtoint i8* %47 to i32
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 4
  store i32 %48, i32* %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 5
  %51 = load i32*, i32** %50, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 @strcpy(i32* %51, i8* %52)
  %54 = load i32, i32* @CP_ACP, align 4
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 5
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* @OLESTREAM_MAX_STR_LEN, align 4
  %58 = call i32 @MultiByteToWideChar(i32 %54, i32 0, i32* %56, i32 -1, i32* %19, i32 %57)
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 8
  %60 = call i64 @CLSIDFromProgID(i32* %19, i32* %59)
  store i64 %60, i64* %7, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* @S_OK, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %94

64:                                               ; preds = %35
  %65 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %66 = load i32, i32* @MAXIMUM_ALLOWED, align 4
  %67 = call i64 @open_classes_key(i32 %65, i32* %19, i32 %66, i32* %11)
  store i64 %67, i64* %12, align 8
  %68 = load i64, i64* %12, align 8
  %69 = load i64, i64* @ERROR_SUCCESS, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %93

71:                                               ; preds = %64
  %72 = load i32, i32* @OLESTREAM_MAX_STR_LEN, align 4
  %73 = zext i32 %72 to i64
  %74 = call i8* @llvm.stacksave()
  store i8* %74, i8** %13, align 8
  %75 = alloca i8, i64 %73, align 16
  store i64 %73, i64* %14, align 8
  %76 = load i32, i32* @OLESTREAM_MAX_STR_LEN, align 4
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 6
  store i32 %76, i32* %77, align 8
  %78 = load i32, i32* %11, align 4
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 6
  %80 = bitcast i32* %79 to i64*
  %81 = call i64 @RegQueryValueA(i32 %78, i32* null, i8* %75, i64* %80)
  store i64 %81, i64* %12, align 8
  %82 = load i64, i64* %12, align 8
  %83 = load i64, i64* @ERROR_SUCCESS, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %71
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 7
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @strcpy(i32* %87, i8* %75)
  br label %89

89:                                               ; preds = %85, %71
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @RegCloseKey(i32 %90)
  %92 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %92)
  br label %93

93:                                               ; preds = %89, %64
  br label %94

94:                                               ; preds = %93, %35
  %95 = load i32*, i32** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = call i64 @IStream_Write(i32* %95, i32* %97, i32 8, i32* null)
  store i64 %98, i64* %7, align 8
  %99 = load i32*, i32** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 8
  %101 = call i32 @WriteClassStm(i32* %99, i32* %100)
  %102 = load i32*, i32** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 6
  %104 = call i64 @IStream_Write(i32* %102, i32* %103, i32 4, i32* null)
  store i64 %104, i64* %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 6
  %106 = load i32, i32* %105, align 8
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %94
  %109 = load i32*, i32** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 7
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 6
  %113 = load i32, i32* %112, align 8
  %114 = call i64 @IStream_Write(i32* %109, i32* %111, i32 %113, i32* null)
  store i64 %114, i64* %7, align 8
  br label %115

115:                                              ; preds = %108, %94
  %116 = load i32*, i32** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %118 = call i64 @IStream_Write(i32* %116, i32* %117, i32 4, i32* null)
  store i64 %118, i64* %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %115
  %123 = load i32*, i32** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i64 @IStream_Write(i32* %123, i32* %125, i32 %127, i32* null)
  store i64 %128, i64* %7, align 8
  br label %129

129:                                              ; preds = %122, %115
  %130 = load i32*, i32** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 4
  %132 = call i64 @IStream_Write(i32* %130, i32* %131, i32 4, i32* null)
  store i64 %132, i64* %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %129
  %137 = load i32*, i32** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 5
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = call i64 @IStream_Write(i32* %137, i32* %139, i32 %141, i32* null)
  store i64 %142, i64* %7, align 8
  br label %143

143:                                              ; preds = %136, %129
  %144 = load i32*, i32** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = call i64 @IStream_Write(i32* %144, i32* %146, i32 8, i32* null)
  store i64 %147, i64* %7, align 8
  %148 = load i32*, i32** %5, align 8
  %149 = call i32 @IStream_Release(i32* %148)
  br label %150

150:                                              ; preds = %143, %2
  %151 = load i64, i64* %7, align 8
  %152 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %152)
  ret i64 %151
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i64 @IStorage_CreateStream(i32, i32*, i32, i32, i32, i32**) #2

declare dso_local i8* @strlen(i8*) #2

declare dso_local i32 @strcpy(i32*, i8*) #2

declare dso_local i32 @MultiByteToWideChar(i32, i32, i32*, i32, i32*, i32) #2

declare dso_local i64 @CLSIDFromProgID(i32*, i32*) #2

declare dso_local i64 @open_classes_key(i32, i32*, i32, i32*) #2

declare dso_local i64 @RegQueryValueA(i32, i32*, i8*, i64*) #2

declare dso_local i32 @RegCloseKey(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i64 @IStream_Write(i32*, i32*, i32, i32*) #2

declare dso_local i32 @WriteClassStm(i32*, i32*) #2

declare dso_local i32 @IStream_Release(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
