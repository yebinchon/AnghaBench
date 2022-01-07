; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_fs-mgr.c_verify_seafdir_v0.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_fs-mgr.c_verify_seafdir_v0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEAF_DIR_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"[fs mgr] Corrupt seafdir object %s.\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@SEAF_METADATA_TYPE_DIR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Data does not contain a directory.\0A\00", align 1
@G_CHECKSUM_SHA1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Bad data format for dir objcet %s.\0A\00", align 1
@G_BYTE_ORDER = common dso_local global i64 0, align 8
@G_BIG_ENDIAN = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32*, i32, i64)* @verify_seafdir_v0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @verify_seafdir_v0(i8* %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [41 x i8], align 16
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca [20 x i32], align 16
  %21 = alloca i32, align 4
  %22 = alloca [41 x i8], align 16
  %23 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %24 = load i32, i32* @SEAF_DIR_NAME_LEN, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %14, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %15, align 8
  store i32 20, i32* %21, align 4
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp ult i64 %29, 4
  br i1 %30, label %31, label %35

31:                                               ; preds = %4
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %32)
  %34 = load i64, i64* @FALSE, align 8
  store i64 %34, i64* %5, align 8
  store i32 1, i32* %23, align 4
  br label %138

35:                                               ; preds = %4
  %36 = load i32*, i32** %7, align 8
  store i32* %36, i32** %16, align 8
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %17, align 4
  %38 = call i64 @get32bit(i32** %16)
  store i64 %38, i64* %10, align 8
  %39 = load i32, i32* %17, align 4
  %40 = sub nsw i32 %39, 4
  store i32 %40, i32* %17, align 4
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* @SEAF_METADATA_TYPE_DIR, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i64, i64* @FALSE, align 8
  store i64 %46, i64* %5, align 8
  store i32 1, i32* %23, align 4
  br label %138

47:                                               ; preds = %35
  %48 = load i64, i64* %9, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* @G_CHECKSUM_SHA1, align 4
  %52 = call i32* @g_checksum_new(i32 %51)
  store i32* %52, i32** %19, align 8
  br label %53

53:                                               ; preds = %50, %47
  store i32 56, i32* %18, align 4
  br label %54

54:                                               ; preds = %115, %53
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* %18, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %116

58:                                               ; preds = %54
  %59 = call i64 @get32bit(i32** %16)
  store i64 %59, i64* %11, align 8
  %60 = getelementptr inbounds [41 x i8], [41 x i8]* %12, i64 0, i64 0
  %61 = load i32*, i32** %16, align 8
  %62 = call i32 @memcpy(i8* %60, i32* %61, i64 40)
  %63 = getelementptr inbounds [41 x i8], [41 x i8]* %12, i64 0, i64 40
  store i8 0, i8* %63, align 8
  %64 = load i32*, i32** %16, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 40
  store i32* %65, i32** %16, align 8
  %66 = call i64 @get32bit(i32** %16)
  store i64 %66, i64* %13, align 8
  %67 = load i32, i32* %18, align 4
  %68 = load i32, i32* %17, align 4
  %69 = sub nsw i32 %68, %67
  store i32 %69, i32* %17, align 4
  %70 = load i32, i32* %17, align 4
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* %13, align 8
  %73 = icmp sge i64 %71, %72
  br i1 %73, label %74, label %90

74:                                               ; preds = %58
  %75 = load i64, i64* %13, align 8
  %76 = load i32, i32* @SEAF_DIR_NAME_LEN, align 4
  %77 = sub nsw i32 %76, 1
  %78 = call i64 @MIN(i64 %75, i32 %77)
  store i64 %78, i64* %13, align 8
  %79 = load i32*, i32** %16, align 8
  %80 = load i64, i64* %13, align 8
  %81 = call i32 @memcpy(i8* %27, i32* %79, i64 %80)
  %82 = load i64, i64* %13, align 8
  %83 = load i32*, i32** %16, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 %82
  store i32* %84, i32** %16, align 8
  %85 = load i64, i64* %13, align 8
  %86 = load i32, i32* %17, align 4
  %87 = sext i32 %86 to i64
  %88 = sub nsw i64 %87, %85
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %17, align 4
  br label %94

90:                                               ; preds = %58
  %91 = load i8*, i8** %6, align 8
  %92 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %91)
  %93 = load i64, i64* @FALSE, align 8
  store i64 %93, i64* %5, align 8
  store i32 1, i32* %23, align 4
  br label %138

94:                                               ; preds = %74
  %95 = load i64, i64* %9, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %115

97:                                               ; preds = %94
  %98 = load i64, i64* @G_BYTE_ORDER, align 8
  %99 = load i64, i64* @G_BIG_ENDIAN, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load i64, i64* %11, align 8
  %103 = call i64 @GUINT32_SWAP_LE_BE(i64 %102)
  store i64 %103, i64* %11, align 8
  br label %104

104:                                              ; preds = %101, %97
  %105 = load i32*, i32** %19, align 8
  %106 = getelementptr inbounds [41 x i8], [41 x i8]* %12, i64 0, i64 0
  %107 = call i32 @g_checksum_update(i32* %105, i8* %106, i32 40)
  %108 = load i32*, i32** %19, align 8
  %109 = load i64, i64* %13, align 8
  %110 = trunc i64 %109 to i32
  %111 = call i32 @g_checksum_update(i32* %108, i8* %27, i32 %110)
  %112 = load i32*, i32** %19, align 8
  %113 = bitcast i64* %11 to i8*
  %114 = call i32 @g_checksum_update(i32* %112, i8* %113, i32 8)
  br label %115

115:                                              ; preds = %104, %94
  br label %54

116:                                              ; preds = %54
  %117 = load i64, i64* %9, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %116
  %120 = load i64, i64* @TRUE, align 8
  store i64 %120, i64* %5, align 8
  store i32 1, i32* %23, align 4
  br label %138

121:                                              ; preds = %116
  %122 = load i32*, i32** %19, align 8
  %123 = getelementptr inbounds [20 x i32], [20 x i32]* %20, i64 0, i64 0
  %124 = call i32 @g_checksum_get_digest(i32* %122, i32* %123, i32* %21)
  %125 = getelementptr inbounds [20 x i32], [20 x i32]* %20, i64 0, i64 0
  %126 = getelementptr inbounds [41 x i8], [41 x i8]* %22, i64 0, i64 0
  %127 = call i32 @rawdata_to_hex(i32* %125, i8* %126, i32 20)
  %128 = load i32*, i32** %19, align 8
  %129 = call i32 @g_checksum_free(i32* %128)
  %130 = getelementptr inbounds [41 x i8], [41 x i8]* %22, i64 0, i64 0
  %131 = load i8*, i8** %6, align 8
  %132 = call i64 @strcmp(i8* %130, i8* %131)
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %121
  %135 = load i64, i64* @TRUE, align 8
  store i64 %135, i64* %5, align 8
  store i32 1, i32* %23, align 4
  br label %138

136:                                              ; preds = %121
  %137 = load i64, i64* @FALSE, align 8
  store i64 %137, i64* %5, align 8
  store i32 1, i32* %23, align 4
  br label %138

138:                                              ; preds = %136, %134, %119, %90, %44, %31
  %139 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %139)
  %140 = load i64, i64* %5, align 8
  ret i64 %140
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @seaf_warning(i8*, ...) #2

declare dso_local i64 @get32bit(i32**) #2

declare dso_local i32* @g_checksum_new(i32) #2

declare dso_local i32 @memcpy(i8*, i32*, i64) #2

declare dso_local i64 @MIN(i64, i32) #2

declare dso_local i64 @GUINT32_SWAP_LE_BE(i64) #2

declare dso_local i32 @g_checksum_update(i32*, i8*, i32) #2

declare dso_local i32 @g_checksum_get_digest(i32*, i32*, i32*) #2

declare dso_local i32 @rawdata_to_hex(i32*, i8*, i32) #2

declare dso_local i32 @g_checksum_free(i32*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
